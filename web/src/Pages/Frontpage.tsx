import { Stack, Grid, Typography, Button, IconButton, Table, TableCell, TableRow, TableBody, Dialog, DialogTitle, DialogContent, DialogActions, Box, Alert, AlertTitle, Tooltip, Tab, TextField, Divider } from "@mui/material"
import Dropzone from "../Components/Dropzone"
import Example from "../Components/Example"
import { Link, useNavigate } from "react-router-dom"
import { use, useEffect, useState } from "react"
import { CheckCircle, Edit, Help, RemoveCircle } from "@mui/icons-material"
import { FileWithPath } from "react-dropzone/."
import FormsWrapped from "../Components/FormsWrapper"
import customMetadataSchema from "../schemas/custom-metadata.schema.json"
import customMetadataUISchema from "../schemas/custom-metadata.ui.schema.json"
import Sessions, { AnnotationSessionRecord } from "../Components/Sessions"
import { UserProfile } from "./Profile"

const Frontpage = () => {
    const navigate = useNavigate()


    const [uploaded, setUploaded] = useState(false)
    const [uploadedFiles, setUploadedFiles] = useState<FileWithPath[]>([])
    const [analyzing, setAnalyzing] = useState(false)

    const [error, setError] = useState<boolean>(false)

    const clearFiles = () => {
        setUploaded(false)
        setAnalyzing(false)
        setError(false)
    }

    const clearFile = (file: FileWithPath) => {
        setUploadedFiles(uploadedFiles.filter(f => f !== file))
        setError(false)
    }

    const editFile = async () => {
        setAnalyzing(true)
        let data = new FormData()
        for (const [index, value] of uploadedFiles.entries()) {
            data.append(`file-${index}`, value)
        }

        const request_id = await fetch('/api/annotate', { body: data, method: 'POST' })
            .then(response => response.text())
            .then(text => JSON.parse(text))
            .then(data => data.uuid)
            .catch(error => setError(true))

        setAnalyzing(false)

        if (request_id) {
            const storedRequests = JSON.parse(localStorage.getItem('request_ids') || '[]');
            var record: AnnotationSessionRecord = {
                id: request_id,
                title: customMetadata?.dataset_metadata?.title || uploadedFiles.filter(file => file.name.endsWith('.tpr') || file.name.endsWith('.zip') || file.name.endsWith('.tar') || file.name.endsWith('.gz'))[0]?.name || "Untitled",
                uploadedFiles: uploadedFiles.map(file => file.name),
                date: new Date().toISOString()
            }
            storedRequests.push(record);
            localStorage.setItem('request_ids', JSON.stringify(storedRequests));
            navigate(`/results/${request_id}`)
        }
        
        if (error) {
            console.error("Error has occured while analyzing file", error)
            return
        }
    }

    const [customMetadataModalState, setCustomMetadataModalState] = useState(false)
    const [customMetadataConfirm, setCustomMetadataConfirm] = useState(false)
    const [customMetadataEditor, setCustomMetadataEditor] = useState<"form" | "textfield">("form")
    const [customMetadataEditorValue, setCustomMetadataEditorValue] = useState("")

    const switchEditor = () => {
        if (customMetadataEditor === "form") 
            setCustomMetadataEditorValue(JSON.stringify(customMetadata, null, 2))
        else {
            try {
                setCustomMetadata(JSON.parse(customMetadataEditorValue))
            } catch (e) {
                console.error("Error parsing JSON", e)
            }
        }
        setCustomMetadataEditor(customMetadataEditor === "form" ? "textfield" : "form")
    }

    const [profile, setProfile] = useState<UserProfile>({
        name: '',
        orcid: '',
        organization: '',
        sessions: [],
    });

    useEffect(() => {
        const storedProfile = localStorage.getItem('userProfile');
        if (storedProfile) {
            const parsedProfile = JSON.parse(storedProfile);
            parsedProfile.sessions = [];
            setProfile(parsedProfile);
        }
    }, [])

    useEffect(() => {
        if (profile.name && profile.orcid && profile.organization) {
            setCustomMetadata({
                dataset_metadata: {
                    title: profile.name,
                    creator: profile.orcid,
                    publishing_institution: profile.organization,
                    publication_year: new Date().getFullYear()
                }
            })
        }
    }, [profile])

    const fileSuffix = (name: string) => {
        return name.split('.').pop() || ""
    }

    const shortName = (name: string) => {
        return name.length > 35 ? name.substring(0, 35) + "...." + fileSuffix(name): name
    }

    interface CustomMetadata {
        dataset_metadata?: {
            title?: string;
            creator?: string;
            publishing_institution?: string;
            publication_year?: number;
        };
    }

    const [customMetadata, setCustomMetadata] = useState<CustomMetadata>({})
    const setCustomAnnotations = (value: boolean) => {
        setCustomMetadataModalState(false)
        // if (!value) setCustomMetadata({})
        // setCustomMetadataConfirm(value)
        const customMetadataBlob = new Blob([JSON.stringify(customMetadata)], { type: 'application/json' });
        const customMetadataFile = new File([customMetadataBlob], 'md.custom-metadata', { type: 'application/json' });
        setUploadedFiles([...uploadedFiles, customMetadataFile as FileWithPath]);
    }

    return (
        <>
            <Stack direction="column" spacing={5}>
                <Typography>
                    This tool is designed to help you create FAIR metadata annotations to a biomolecular simulation dataset for publishing it to data repositories and citing the dataset in your paper.
                    Currently, the tool works for GROMACS TPR file as an entry to the editor, as from TPR file we are ale to obtain most of the information. After uploading your TPR and quick analysis of your TPR file, a metadata editor will be displayed where you can validate and edit the metadata and finally download it in JSON or YAML format.
                </Typography>
                <Divider sx={{mt: "0.2em"}}/>
                <Typography>
                    <span style={{fontWeight: "bold"}}>If you found Gromacs MetaDump useful, please cite:</span><br/>
                    Rošinec, A., Slanináková, T., Pavlík, T. et al. <Link to="https://doi.org/10.1186/s13321-025-01082-5">Gromacs MetaDump: a tool for extracting GROMACS simulation metadata</Link>. J Cheminform 17, 160 (2025). https://doi.org/10.1186/s13321-025-01082-5
                </Typography>
                <Divider sx={{mt: "0.2em"}}/>
                <Stack direction="row" spacing={2} alignItems={"center"}>
                    <Typography variant="h1">Annotate GROMACS Files</Typography>
                    <Tooltip title="Manual">
                        <Button href="https://github.com/sb-ncbr/gromacs-metadata-extractor/wiki" size="small" variant="outlined" target="_blank">
                            Manual
                        </Button>
                    </Tooltip>
                </Stack>
                <Grid container columnSpacing={{ xs: 0, sm: 0, md: 2, lg: 2 }} sx={{width: "100% !important", mt: "2em !important"}} alignItems="stretch" justifyContent="space-between">
                    <Grid item xs={12} md={8}>
                        <Dropzone setUploadedFiles={setUploadedFiles} setUploaded={setUploaded} />
                        {(uploadedFiles.length > 0 || customMetadataConfirm) && (
                            <Stack direction="column" spacing={1} justifyItems={"center"} sx={{ p: 2 }}>
                                <Typography variant="h3">Uploaded files</Typography>
                                <Table
                                    sx={{ width: "100%" }}
                                    size="small"
                                >
                                    <TableBody>
                                        {uploadedFiles.map((file, key) => (
                                            <TableRow key={key}>
                                                <TableCell sx={{width: "84%"}}>{shortName(file.name)}</TableCell>
                                                <TableCell sx={{width: "10%"}}>
                                                    <Stack direction={"row"} spacing={2} alignItems={"center"} alignContent={"center"}>
                                                        <CheckCircle sx={{color: 'primary.main'}} />
                                                        {fileSuffix(file.name).toLocaleUpperCase()}
                                                    </Stack>
                                                </TableCell>
                                                <TableCell sx={{width: "12%"}}>
                                                    <Stack direction={"row"} spacing={2} alignItems={"center"} alignContent={"center"}>
                                                        <Tooltip title="Remove file" arrow>
                                                        <IconButton onClick={() => clearFile(file)}><RemoveCircle /></IconButton>
                                                        </Tooltip>
                                                        {(file.name === "md.custom-metadata" || file.name === "md.custom-metadata.json") ? 
                                                        <Tooltip title="Edit metadata" arrow><IconButton onClick={() => setCustomMetadataModalState(true)}><Edit/></IconButton></Tooltip> : ""}
                                                    </Stack>
                                                </TableCell>
                                            </TableRow>
                                        ))}
                                    </TableBody>
                                    </Table>
                            </Stack>
                        )}
                                <Stack direction={{ xs: "column-reverse", md: "row" }} sx={{mt: 2}} spacing={2}>
                                    <Tooltip 
                                        title="Annotate your uploaded files" 
                                        arrow 
                                        placement="right"
                                    >
                                        <Button 
                                            variant="contained" 
                                            sx={{ width: "100%" }} 
                                            onClick={editFile} 
                                            size="large"
                                            disabled={(!customMetadataConfirm && !uploadedFiles.length) || analyzing} 
                                            endIcon={analyzing ? <Button /> : <></>}
                                        >
                                            Annotate
                                        </Button>
                                    </Tooltip>
                                    <Tooltip 
                                        title="Add optional metadata file if not uploaded as .json or .yaml" 
                                        arrow 
                                        placement="right"
                                    >
                                        <Button 
                                            variant="outlined" 
                                            sx={{ padding: "4px 8px" }} 
                                            onClick={() => setCustomMetadataModalState(!customMetadataModalState)} 
                                            size="small"
                                        >
                                            Add optional metadata
                                        </Button>
                                    </Tooltip>
                                </Stack>
                                {error && (
                                    <Alert severity="error" sx={{ mt: 2 }}>
                                        There was an error processing your request. Please try again later.
                                    </Alert>
                                )}
                    </Grid>
                    <Grid item xs={12} md={4} justifyContent={"flex-end"} alignItems={"center"}>
                    </Grid>
                </Grid>
                
                <Sessions />
                
                <Typography variant="h1" mb={5}>Examples</Typography>
                <Grid container justifyContent="center" display="flex" alignItems="stretch" rowSpacing={{xs: 2, sm: 2, md:0}}>
                    <Grid item xs={12} md={4} display={"flex"}>
                        <Example name="Lysozyme in Water" description={<span>Showcase of metadata of simulation system with Lysozyme protein in water box with ions from a <a href="http://www.mdtutorials.com/gmx/lysozyme/">MDTutorials guide</a>.</span>} id="md_tutorial_lysozyme" img="1aki_assembly-1.jpeg" />
                    </Grid>
                    <Grid item xs={12} md={4}>
                        <Example name="Helicobacter pylori TonB-CTD (residues 194-285)" description={<span>Showcase of metadata of Helicobacter pylori TonB-CTD (residues 194-285) simulation data from a publication: <a href="https://pubs.acs.org/doi/10.1021/acs.jpcb.8b02250">10.1021/acs.jpcb.8b02250</a>.</span>} id="helicobacter_pylori" img="5lw8_models.jpeg" />
                    </Grid>
                    <Grid item xs={12} md={4}>                    
                        <Example name="Cryo-EM structure of human KATP bound to ATP and ADP in quatrefoil form" description={<span>Showcase of metadata of Cryo-EM structure 6C3O of human KATP bound to ATP and ADP in quatrefoil form a publication: <a href="https://www.frontiersin.org/journals/molecular-biosciences/articles/10.3389/fmolb.2021.711975/full">10.3389/fmolb.2021.711975</a>.</span>} id="cryoem-human-katp-atp" img="6c3o_assembly-1.jpeg" />
                    </Grid>
                </Grid>
            </Stack>
            <Dialog fullWidth maxWidth="md" open={customMetadataModalState} onClose={setCustomMetadataModalState}>
                <DialogTitle>Optional metadata</DialogTitle>
                <DialogContent>
                    <Typography>Fill out this metadata to make your dataset ready for FAIR publishing.</Typography>
                </DialogContent>
                <Divider />
                <Box sx={{p: 2}}>
                    <Box display={customMetadataEditor === "form" ? "block" : "none"}>
                    <FormsWrapped schema={customMetadataSchema} uischema={customMetadataUISchema} data={customMetadata} setData={setCustomMetadata} setErrors={() => {}} />
                    </Box>
                    <Box display={customMetadataEditor === "textfield" ? "block" : "none"}>
                        <TextField
                            label="Code editor"
                            multiline
                            rows={10}
                            placeholder="Paste valid JSON object here"
                            value={customMetadataEditorValue}
                            onChange={(e) => setCustomMetadataEditorValue(e.target.value)}
                            fullWidth
                        />
                        <Typography variant="caption">You may store content of the form for later use using this code editor.</Typography>
                    </Box>
                    {profile && (<Typography variant="caption">Your <Link to={"/profile"}>profile</Link> information has been prefilled in the metadata.</Typography>)}
                    <Typography variant="caption">You can also upload a metadata file in JSON or YAML format. The file will be automatically detected and the metadata will be extracted. <Link to={"https://github.com/sb-ncbr/gromacs-metadump/wiki/Manual#optional-metadata"} target="_blank">See the manual for more details.</Link></Typography>
                </Box>
                <DialogActions>
                    <Button variant="outlined" onClick={switchEditor}>
                            Switch to {customMetadataEditor === "form" ? "Text Editor" : "Form Editor"}
                    </Button>
                    <Button variant="outlined" onClick={() => {setCustomMetadataModalState(false)}}>Cancel</Button>
                    <Button variant="contained" disabled={Object.keys(customMetadata).length === 0} onClick={() => setCustomAnnotations(true)}>Add annotations</Button>
                </DialogActions>
            </Dialog>
        </>
    )
}

export default Frontpage
