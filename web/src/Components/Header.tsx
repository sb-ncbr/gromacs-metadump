import { GitHub, Mail, Help, AccountCircle } from "@mui/icons-material";
import { Box, Link, Divider, IconButton, Stack, Tooltip, Typography } from "@mui/material"
import logo from "../assets/logo.svg"
import { useNavigate } from "react-router-dom";

const Header = () => {

    const navigate = useNavigate();

    return (
        <Box sx={{mt: 3, mb: 3}}>
            <Stack direction="row" justifyContent="space-between" alignItems="center">
                <Stack direction={'column'} spacing={1} sx={{flexGrow: 1}}>
                    <Stack direction="row" alignItems="center" onClick={() => navigate("/")} sx={{color: "inherit", cursor: "pointer"}}>
                        <img src={logo} alt="logo" style={{marginRight: "0.5em", width: "3em", height: "3em"}}/>
                        <Typography variant="h1">GROMACS <span style={{color: "rgb(244, 125, 32)"}}>Meta</span>Dump</Typography>
                    </Stack>
                    <Typography variant="h3" sx={{mt: "0.5em"}}>A tool to describe molecular dynamics simulations with powerful metadata</Typography>
                </Stack>
                <Box>
                    <Tooltip title="Your profile">
                        <IconButton size="small" onClick={() => navigate("/profile")}>
                            <AccountCircle sx={{fontSize: "2em", color: "rgb(244, 125, 32)"}}/>
                        </IconButton>
                    </Tooltip>
                    <Tooltip title="Github">
                        <IconButton href="https://github.com/sb-ncbr/gromacs-metadata-extractor" size="small" target="_blank">
                            <GitHub sx={{fontSize: "2em"}}/>
                        </IconButton>
                    </Tooltip>
                    <Tooltip title="Contact us">
                        <IconButton href="mailto:adrian@muni.cz" size="small" target="_blank">
                            <Mail sx={{fontSize: "2em"}}/>
                        </IconButton>
                    </Tooltip>
                    <Tooltip title="Manual">
                        <IconButton href="https://github.com/sb-ncbr/gromacs-metadata-extractor/wiki" size="small" target="_blank">
                            <Help sx={{fontSize: "2em"}}/>
                        </IconButton>
                    </Tooltip>
                </Box>
            </Stack>
            <Divider sx={{mt: "1em"}}/>
        </Box>
    )
}

export default Header;