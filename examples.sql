INSERT INTO jobs (
        id,
        status,
        created_at,
        keep,
        options,
        processed_files,
        result_metadata,
        password
    )
VALUES (
        'md_tutorial_lysozyme',
        'completed',
        '2025-05-01 00:00:00.000000',
        TRUE,
        '{"keep": true}',
        '["1AKI.top", "md_tutorials_lysozome_1AKI.tpr", "md.gro", "optional.json"]',
        '{
    "simulation": {
        "forcefield": "amber99",
        "filename": "/tmp/tmp7jvoo2pu/md_tutorials_lysozome_1AKI.tpr",
        "inputrec": {
            "integrator": "md",
            "tinit": 0,
            "dt": 0.002,
            "nsteps": 500000,
            "init-step": 0,
            "simulation-part": 1,
            "mts": "false",
            "mass-repartition-factor": 1,
            "comm-mode": "Linear",
            "nstcomm": 100,
            "bd-fric": 0,
            "ld-seed": -168632321,
            "emtol": 10,
            "emstep": 0.01,
            "niter": 20,
            "fcstep": 0,
            "nstcgsteep": 1000,
            "nbfgscorr": 10,
            "rtpi": 0.05,
            "nstxout": 0,
            "nstvout": 0,
            "nstfout": 0,
            "nstlog": 5000,
            "nstcalcenergy": 100,
            "nstenergy": 5000,
            "nstxout-compressed": 5000,
            "compressed-x-precision": 1000,
            "cutoff-scheme": "Verlet",
            "nstlist": 10,
            "pbc": "xyz",
            "periodic-molecules": "false",
            "verlet-buffer-tolerance": 0.005,
            "verlet-buffer-pressure-tolerance": 0.5,
            "rlist": 1,
            "coulombtype": "PME",
            "coulomb-modifier": "Potential-shift",
            "rcoulomb-switch": 0,
            "rcoulomb": 1,
            "epsilon-r": 1,
            "epsilon-rf": "inf",
            "vdw-type": "Cut-off",
            "vdw-modifier": "Potential-shift",
            "rvdw-switch": 0,
            "rvdw": 1,
            "DispCorr": "EnerPres",
            "table-extension": 1,
            "fourierspacing": 0.16,
            "fourier-nx": 48,
            "fourier-ny": 48,
            "fourier-nz": 48,
            "pme-order": 4,
            "ewald-rtol": 1e-05,
            "ewald-rtol-lj": 0.001,
            "lj-pme-comb-rule": "Geometric",
            "ewald-geometry": "3d",
            "epsilon-surface": 0,
            "ensemble-temperature-setting": "constant",
            "ensemble-temperature": 300,
            "tcoupl": "V-rescale",
            "nsttcouple": 10,
            "nh-chain-length": 0,
            "print-nose-hoover-chain-variables": "false",
            "pcoupl": "Parrinello-Rahman",
            "pcoupltype": "Isotropic",
            "nstpcouple": 50,
            "tau-p": 2,
            "compressibility (3x3)": [
                [
                    4.5e-05,
                    0,
                    0
                ],
                [
                    0,
                    4.5e-05,
                    0
                ],
                [
                    0,
                    0,
                    4.5e-05
                ]
            ],
            "ref-p (3x3)": [
                [
                    1,
                    0,
                    0
                ],
                [
                    0,
                    1,
                    0
                ],
                [
                    0,
                    0,
                    1
                ]
            ],
            "refcoord-scaling": "No",
            "posres-coms": [
                0,
                0,
                0
            ],
            "posres-comBs": [
                0,
                0,
                0
            ],
            "QMMM": "false"
        },
        "qm-opts": {
            "ngQM": 0,
            "constraint-algorithm": "Lincs",
            "continuation": "true",
            "Shake-SOR": "false",
            "shake-tol": 0.0001,
            "lincs-order": 4,
            "lincs-iter": 1,
            "lincs-warnangle": 30,
            "nwall": 0,
            "wall-type": "9-3",
            "wall-r-linpot": -1,
            "wall-atomtype[0]": -1,
            "wall-atomtype[1]": -1,
            "wall-density[0]": 0,
            "wall-density[1]": 0,
            "wall-ewald-zfac": 3,
            "pull": "false",
            "awh": "false",
            "rotation": "false",
            "interactiveMD": "false",
            "disre": "No",
            "disre-weighting": "Conservative",
            "disre-mixed": "false",
            "dr-fc": 1000,
            "dr-tau": 0,
            "nstdisreout": 100,
            "orire-fc": 0,
            "orire-tau": 0,
            "nstorireout": 100,
            "free-energy": "no",
            "cos-acceleration": 0,
            "deform (3x3)": [
                [
                    0,
                    0,
                    0
                ],
                [
                    0,
                    0,
                    0
                ],
                [
                    0,
                    0,
                    0
                ]
            ],
            "simulated-tempering": "false",
            "swapcoords": "no",
            "userint1": 0,
            "userint2": 0,
            "userint3": 0,
            "userint4": 0,
            "userreal1": 0,
            "userreal2": 0,
            "userreal3": 0,
            "userreal4": 0,
            "applied-forces": {
                "electric-field": {
                    "x": {
                        "E0": "0",
                        "omega": "0",
                        "t0": "0",
                        "sigma": "0"
                    },
                    "y": {
                        "E0": "0",
                        "omega": "0",
                        "t0": "0",
                        "sigma": "0"
                    },
                    "z": {
                        "E0": "0",
                        "omega": "0",
                        "t0": "0",
                        "sigma": "0"
                    }
                },
                "density-guided-simulation": {
                    "active": "false",
                    "group": "protein",
                    "similarity-measure": "inner-product",
                    "atom-spreading-weight": "unity",
                    "force-constant": "1e+09",
                    "gaussian-transform-spreading-width": "0.2",
                    "gaussian-transform-spreading-range-in-multiples-of-width": "4",
                    "reference-density-filename": "reference.mrc",
                    "nst": "1",
                    "normalize-densities": "true",
                    "adaptive-force-scaling": "false",
                    "adaptive-force-scaling-time-constant": "4",
                    "shift-vector": "",
                    "transformation-matrix": ""
                },
                "qmmm-cp2k": {
                    "active": "false",
                    "qmgroup": "System",
                    "qmmethod": "PBE",
                    "qmfilenames": "",
                    "qmcharge": "0",
                    "qmmultiplicity": "1"
                },
                "colvars": {
                    "active": "false",
                    "configfile": "",
                    "seed": "-1"
                }
            }
        },
        "grpopts": {
            "nrdf": [
                4920.81,
                72837.2
            ],
            "ref-t": [
                300,
                300
            ],
            "tau-t": [
                0.1,
                0.1
            ]
        },
        "annealing": [
            "No",
            "No"
        ],
        "annealing-npoints": [
            0,
            0
        ],
        "acc": [
            0,
            0,
            0
        ],
        "nfreeze": [
            "N",
            "N",
            "N"
        ],
        "energygrp-flags": [
            [
                0
            ]
        ],
        "header": {
            "bIr": "present",
            "bBox": "present",
            "bTop": "present",
            "bX": "present",
            "bV": "present",
            "bF": "not present",
            "natoms": 38376,
            "lambda": "0.000000e+00",
            "buffer size": 1419896
        },
        "box (3x3)": [
            [
                7.28868,
                0,
                0
            ],
            [
                0,
                7.28868,
                0
            ],
            [
                0,
                0,
                7.28868
            ]
        ],
        "box_rel (3x3)": [
            [
                0,
                0,
                0
            ],
            [
                0,
                1,
                0
            ],
            [
                0,
                0,
                1
            ]
        ],
        "boxv (3x3)": [
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ]
        ],
        "pres_prev (3x3)": [
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ]
        ],
        "svir_prev (3x3)": [
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ]
        ],
        "fvir_prev (3x3)": [
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ],
            [
                0,
                0,
                0
            ]
        ],
        "nosehoover_xi": "Not available",
        "Group statistics": {
            "T-Coupling": {
                "atoms": [
                    1960,
                    36416
                ],
                "total atoms": 38376
            },
            "Energy Mon.": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "Acc. not used": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "Freeze": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "User1": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "User2": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "VCM": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "Compressed X": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "Or. Res. Fit": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            },
            "QMMM": {
                "atoms": [
                    38376
                ],
                "total atoms": 38376
            }
        }
    },
    "system": {
        "water_model": "tip3p",
        "box_size_and_shape": [
            7.29118,
            7.29118,
            7.29118
        ]
    },
    "administrative": {
        "software_information": {
            "software": "GROMACS",
            "version": "2024.3-plumed_2.10b"
        },
        "creator": "0000-0002-7748-5590",
        "publication_year": 2025,
        "publishing_institution": "https://ror.org/009nz6031",
        "title": "GROMACS Tutorial - Lysozyme in Water"
    },
    "simulated_object": {
        "protein_id": [
            {
                "identifier": "1AKI",
                "type": "PDB ID"
            }
        ]
    }
}',
        NULL
    );
INSERT INTO jobs (
        id,
        status,
        created_at,
        keep,
        options,
        processed_files,
        result_metadata,
        password
    )
VALUES (
        'helicobacter_pylori',
        'completed',
        '2025-05-01 00:00:00.000000',
        TRUE,
        '{"keep": true}',
        '["run.gro", "run.tpr", "topol.top", "optional.json"]',
        '{
  "administrative": {
    "creator": "http://orcid.org/0000-0002-8728-1006",
    "identifier": "10.5281/zenodo.1010356",
    "publication_year": 2017,
    "publishing_institution": "https://ror.org/040af2s02",
    "software_information": {
      "software": "GROMACS",
      "version": "5.1.3-dev-20160627-f16daab"
    },
    "title": "MD simulation data for Helicobacter pylori TonB-CTD (residues 194-285) (PDB ID: 5LW8; BMRB entry: 34043), Amber ff99SB-ILDN, OPC4, 310K, Gromacs"
  },
  "simulated_object": {
    "protein_id": [
      {
        "type": "PDB ID",
        "identifier": "5lw8"
      }
    ]
  },
  "simulation": {
    "Group statistics": {
      "Acc. not used": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      },
      "Compressed X": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      },
      "Energy Mon.": {
        "atoms": [
          1451,
          35780
        ],
        "total atoms": 37231
      },
      "Freeze": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      },
      "Or. Res. Fit": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      },
      "QMMM": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      },
      "T-Coupling": {
        "atoms": [
          1451,
          35780
        ],
        "total atoms": 37231
      },
      "User1": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      },
      "User2": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      },
      "VCM": {
        "atoms": [
          37231
        ],
        "total atoms": 37231
      }
    },
    "acc": [
      0,
      0,
      0
    ],
    "annealing": [
      "No",
      "No"
    ],
    "annealing-npoints": [
      0,
      0
    ],
    "box (3x3)": [
      [
        6.60253,
        0,
        0
      ],
      [
        0,
        6.5592,
        0
      ],
      [
        0,
        0,
        6.57258
      ]
    ],
    "box_rel (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0.993437,
        0
      ],
      [
        0,
        0,
        0.995464
      ]
    ],
    "boxv (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ],
    "energygrp-flags": [
      [
        0,
        0
      ],
      [
        0,
        0
      ]
    ],
    "forcefield": "amber99sb-ildn",
    "filename": "/app/data/b9689a4e-1cb8-4c20-a4c3-a9c03e03fb01/uploads/1010357_run.tpr",
    "fvir_prev (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ],
    "grpopts": {
      "nrdf": [
        2890.85,
        53667.2
      ],
      "ref-t": [
        310,
        310
      ],
      "tau-t": [
        0.1,
        0.1
      ]
    },
    "header": {
      "bBox": "present",
      "bF": "not present",
      "bIr": "present",
      "bTop": "present",
      "bV": "present",
      "bX": "present",
      "buffer size": 0,
      "lambda": "0.000000e+00",
      "natoms": 37231
    },
    "inputrec": {
      "DispCorr": "EnerPres",
      "QMMM": "false",
      "bd-fric": 0,
      "comm-mode": "Linear",
      "compressed-x-precision": 1000,
      "compressibility (3x3)": [
        [
          0.000045,
          0,
          0
        ],
        [
          0,
          0.000045,
          0
        ],
        [
          0,
          0,
          0.000045
        ]
      ],
      "coulomb-modifier": "None",
      "coulombtype": "PME",
      "cutoff-scheme": "Group",
      "dt": 0.002,
      "emstep": 0.01,
      "emtol": 10,
      "ensemble-temperature": 310,
      "ensemble-temperature-setting": "constant",
      "epsilon-r": 1,
      "epsilon-rf": "inf",
      "epsilon-surface": 0,
      "ewald-geometry": "3d",
      "ewald-rtol": 0.00001,
      "ewald-rtol-lj": 0.001,
      "fcstep": 0,
      "fourier-nx": 42,
      "fourier-ny": 42,
      "fourier-nz": 42,
      "fourierspacing": 0.16,
      "init-step": 0,
      "integrator": "md",
      "ld-seed": 2657823144,
      "lj-pme-comb-rule": "Geometric",
      "mass-repartition-factor": 1,
      "mts": "false",
      "nbfgscorr": 10,
      "nh-chain-length": 0,
      "niter": 20,
      "nstcalcenergy": 100,
      "nstcgsteep": 1000,
      "nstcomm": 100,
      "nstenergy": 5000,
      "nsteps": 200000000,
      "nstfout": 0,
      "nstlist": 5,
      "nstlog": 5000,
      "nstpcouple": 5,
      "nsttcouple": 5,
      "nstvout": 5000,
      "nstxout": 5000,
      "nstxout-compressed": 5000,
      "pbc": "xyz",
      "pcoupl": "Parrinello-Rahman",
      "pcoupltype": "Isotropic",
      "periodic-molecules": "false",
      "pme-order": 4,
      "posres-comBs": [
        0,
        0,
        0
      ],
      "posres-coms": [
        0,
        0,
        0
      ],
      "print-nose-hoover-chain-variables": "false",
      "rcoulomb": 1,
      "rcoulomb-switch": 0,
      "ref-p (3x3)": [
        [
          1,
          0,
          0
        ],
        [
          0,
          1,
          0
        ],
        [
          0,
          0,
          1
        ]
      ],
      "refcoord-scaling": "No",
      "rlist": 1,
      "rtpi": 0.05,
      "rvdw": 1,
      "rvdw-switch": 0,
      "simulation-part": 1,
      "table-extension": 1,
      "tau-p": 2,
      "tcoupl": "V-rescale",
      "tinit": 0,
      "vdw-modifier": "None",
      "vdw-type": "Cut-off",
      "verlet-buffer-pressure-tolerance": -1,
      "verlet-buffer-tolerance": 0.005
    },
    "nfreeze": [
      "N",
      "N",
      "N"
    ],
    "nosehoover_xi": "Not available",
    "pres_prev (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ],
    "qm-opts": {
      "Shake-SOR": "false",
      "applied-forces": {
        "colvars": {
          "active": "false",
          "configfile": "",
          "seed": "-1"
        },
        "density-guided-simulation": {
          "active": "false",
          "adaptive-force-scaling": "false",
          "adaptive-force-scaling-time-constant": "4",
          "atom-spreading-weight": "unity",
          "force-constant": "1e+09",
          "gaussian-transform-spreading-range-in-multiples-of-width": "4",
          "gaussian-transform-spreading-width": "0.2",
          "group": "protein",
          "normalize-densities": "true",
          "nst": "1",
          "reference-density-filename": "reference.mrc",
          "shift-vector": "",
          "similarity-measure": "inner-product",
          "transformation-matrix": ""
        },
        "electric-field": {
          "x": {
            "E0": "0",
            "omega": "0",
            "sigma": "0",
            "t0": "0"
          },
          "y": {
            "E0": "0",
            "omega": "0",
            "sigma": "0",
            "t0": "0"
          },
          "z": {
            "E0": "0",
            "omega": "0",
            "sigma": "0",
            "t0": "0"
          }
        },
        "qmmm-cp2k": {
          "active": "false",
          "qmcharge": "0",
          "qmfilenames": "",
          "qmgroup": "System",
          "qmmethod": "PBE",
          "qmmultiplicity": "1"
        }
      },
      "awh": "false",
      "constraint-algorithm": "Lincs",
      "continuation": "true",
      "cos-acceleration": 0,
      "deform (3x3)": [
        [
          0,
          0,
          0
        ],
        [
          0,
          0,
          0
        ],
        [
          0,
          0,
          0
        ]
      ],
      "disre": "No",
      "disre-mixed": "false",
      "disre-weighting": "Conservative",
      "dr-fc": 1000,
      "dr-tau": 0,
      "free-energy": "no",
      "interactiveMD": "false",
      "lincs-iter": 1,
      "lincs-order": 4,
      "lincs-warnangle": 30,
      "ngQM": 0,
      "nstdisreout": 100,
      "nstorireout": 100,
      "nwall": 0,
      "orire-fc": 0,
      "orire-tau": 0,
      "pull": "false",
      "rotation": "false",
      "shake-tol": 0.0001,
      "simulated-tempering": "false",
      "swapcoords": "no",
      "userint1": 0,
      "userint2": 0,
      "userint3": 0,
      "userint4": 0,
      "userreal1": 0,
      "userreal2": 0,
      "userreal3": 0,
      "userreal4": 0,
      "wall-atomtype[0]": -1,
      "wall-atomtype[1]": -1,
      "wall-density[0]": 0,
      "wall-density[1]": 0,
      "wall-ewald-zfac": 3,
      "wall-r-linpot": -1,
      "wall-type": "9-3"
    },
    "svir_prev (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ]
  },
  "system": {
    "box_size_and_shape": [
      6.57626,
      6.5331,
      6.54643
    ],
    "water_model": "opc"
  }
}',
        NULL
    );
INSERT INTO jobs (
        id,
        status,
        created_at,
        keep,
        options,
        processed_files,
        result_metadata,
        password
    )
VALUES (
        'cryoem-human-katp-atp',
        'completed',
        '2025-05-01 00:00:00.000000',
        TRUE,
        '{"keep": true}',
        '["md1_kir62_6c3o_1000ns.tpr", "md1_kir62_6c3o_1000ns.gro", "optional.json"]
',
        '{
  "administrative": {
    "software_information": {
      "software": "GROMACS",
      "version": "2018.8"
    },
    "publication_year": 2021,
    "title": "Simulating PIP2-induced gating transitions in Kir6.2 channels - 6c3o",
    "identifier": "10.5281/zenodo.4770526",
    "creator": "https://orcid.org/0000-0002-7954-833X",
    "publishing_institution": "https://ror.org/03prydq77"
  },
  "simulated_object": {
    "protein_id": [
      {
        "type": "PDB ID",
        "identifier": "6c3o"
      }
    ]
  },
  "simulation": {
    "Group statistics": {
      "Acc. not used": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "Compressed X": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "Energy Mon.": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "Freeze": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "Or. Res. Fit": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "QMMM": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "T-Coupling": {
        "atoms": [
          51652,
          247087
        ],
        "total atoms": 298739
      },
      "User1": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "User2": {
        "atoms": [
          298739
        ],
        "total atoms": 298739
      },
      "VCM": {
        "atoms": [
          51652,
          247087
        ],
        "total atoms": 298739
      }
    },
    "acc": [
      0,
      0,
      0
    ],
    "annealing": [
      "No",
      "No"
    ],
    "annealing-npoints": [
      0,
      0
    ],
    "box (3x3)": [
      [
        14.9377,
        0,
        0
      ],
      [
        0,
        14.9377,
        0
      ],
      [
        0,
        0,
        15.4864
      ]
    ],
    "box_rel (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        1,
        0
      ],
      [
        0,
        0,
        0
      ]
    ],
    "boxv (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ],
    "energygrp-flags": [
      [
        0
      ]
    ],
    "filename": "/app/data/ceefbc82-2350-4509-8365-8e7a40d4fae4/uploads/md1_kir62_6c3o_1000ns(1).tpr",
    "fvir_prev (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ],
    "grpopts": {
      "nrdf": [
        103653,
        494865
      ],
      "ref-t": [
        310,
        310
      ],
      "tau-t": [
        0.5,
        0.5
      ]
    },
    "header": {
      "bBox": "present",
      "bF": "not present",
      "bIr": "present",
      "bTop": "present",
      "bV": "present",
      "bX": "present",
      "buffer size": 0,
      "lambda": "0.000000e+00",
      "natoms": 298739
    },
    "inputrec": {
      "DispCorr": "EnerPres",
      "QMMM": "false",
      "bd-fric": 0,
      "comm-mode": "Linear",
      "compressed-x-precision": 1000,
      "compressibility (3x3)": [
        [
          0.000045,
          0,
          0
        ],
        [
          0,
          0.000045,
          0
        ],
        [
          0,
          0,
          0.000045
        ]
      ],
      "coulomb-modifier": "Potential-shift",
      "coulombtype": "PME",
      "cutoff-scheme": "Verlet",
      "dt": 0.002,
      "emstep": 0.01,
      "emtol": 10,
      "ensemble-temperature": 310,
      "ensemble-temperature-setting": "constant",
      "epsilon-r": 1,
      "epsilon-rf": "inf",
      "epsilon-surface": 0,
      "ewald-geometry": "3d",
      "ewald-rtol": 0.00001,
      "ewald-rtol-lj": 0.001,
      "fcstep": 0,
      "fourier-nx": 96,
      "fourier-ny": 96,
      "fourier-nz": 100,
      "fourierspacing": 0.16,
      "init-step": 0,
      "integrator": "md",
      "ld-seed": -1388787235,
      "lj-pme-comb-rule": "Geometric",
      "mass-repartition-factor": 1,
      "mts": "false",
      "nbfgscorr": 10,
      "nh-chain-length": 0,
      "niter": 20,
      "nstcalcenergy": 100,
      "nstcgsteep": 1000,
      "nstcomm": 100,
      "nstenergy": 10000,
      "nsteps": 500000000,
      "nstfout": 100000,
      "nstlist": 10,
      "nstlog": 10000,
      "nstpcouple": 10,
      "nsttcouple": 10,
      "nstvout": 100000,
      "nstxout": 100000,
      "nstxout-compressed": 10000,
      "pbc": "xyz",
      "pcoupl": "Parrinello-Rahman",
      "pcoupltype": "Semiisotropic",
      "periodic-molecules": "false",
      "pme-order": 4,
      "posres-comBs": [
        0,
        0,
        0
      ],
      "posres-coms": [
        0,
        0,
        0
      ],
      "print-nose-hoover-chain-variables": "false",
      "rcoulomb": 1,
      "rcoulomb-switch": 0,
      "ref-p (3x3)": [
        [
          1,
          0,
          0
        ],
        [
          0,
          1,
          0
        ],
        [
          0,
          0,
          1
        ]
      ],
      "refcoord-scaling": "No",
      "rlist": 1,
      "rtpi": 0.05,
      "rvdw": 1,
      "rvdw-switch": 0,
      "simulation-part": 1,
      "table-extension": 1,
      "tau-p": 2,
      "tcoupl": "V-rescale",
      "tinit": 0,
      "vdw-modifier": "Potential-shift",
      "vdw-type": "Cut-off",
      "verlet-buffer-pressure-tolerance": -1,
      "verlet-buffer-tolerance": 0.005
    },
    "nfreeze": [
      "N",
      "N",
      "N"
    ],
    "nosehoover_xi": "Not available",
    "pres_prev (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ],
    "qm-opts": {
      "Shake-SOR": "false",
      "applied-forces": {
        "colvars": {
          "active": "false",
          "configfile": "",
          "seed": "-1"
        },
        "density-guided-simulation": {
          "active": "false",
          "adaptive-force-scaling": "false",
          "adaptive-force-scaling-time-constant": "4",
          "atom-spreading-weight": "unity",
          "force-constant": "1e+09",
          "gaussian-transform-spreading-range-in-multiples-of-width": "4",
          "gaussian-transform-spreading-width": "0.2",
          "group": "protein",
          "normalize-densities": "true",
          "nst": "1",
          "reference-density-filename": "reference.mrc",
          "shift-vector": "",
          "similarity-measure": "inner-product",
          "transformation-matrix": ""
        },
        "electric-field": {
          "x": {
            "E0": "0",
            "omega": "0",
            "sigma": "0",
            "t0": "0"
          },
          "y": {
            "E0": "0",
            "omega": "0",
            "sigma": "0",
            "t0": "0"
          },
          "z": {
            "E0": "0",
            "omega": "0",
            "sigma": "0",
            "t0": "0"
          }
        },
        "qmmm-cp2k": {
          "active": "false",
          "qmcharge": "0",
          "qmfilenames": "",
          "qmgroup": "System",
          "qmmethod": "PBE",
          "qmmultiplicity": "1"
        }
      },
      "awh": "false",
      "constraint-algorithm": "Lincs",
      "continuation": "true",
      "cos-acceleration": 0,
      "deform (3x3)": [
        [
          0,
          0,
          0
        ],
        [
          0,
          0,
          0
        ],
        [
          0,
          0,
          0
        ]
      ],
      "disre": "No",
      "disre-mixed": "false",
      "disre-weighting": "Conservative",
      "dr-fc": 1000,
      "dr-tau": 0,
      "free-energy": "no",
      "interactiveMD": "false",
      "lincs-iter": 1,
      "lincs-order": 4,
      "lincs-warnangle": 30,
      "ngQM": 0,
      "nstdisreout": 100,
      "nstorireout": 100,
      "nwall": 0,
      "orire-fc": 0,
      "orire-tau": 0,
      "pull": "false",
      "rotation": "false",
      "shake-tol": 0.0001,
      "simulated-tempering": "false",
      "swapcoords": "no",
      "userint1": 0,
      "userint2": 0,
      "userint3": 0,
      "userint4": 0,
      "userreal1": 0,
      "userreal2": 0,
      "userreal3": 0,
      "userreal4": 0,
      "wall-atomtype[0]": -1,
      "wall-atomtype[1]": -1,
      "wall-density[0]": 0,
      "wall-density[1]": 0,
      "wall-ewald-zfac": 3,
      "wall-r-linpot": -1,
      "wall-type": "9-3"
    },
    "svir_prev (3x3)": [
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ],
      [
        0,
        0,
        0
      ]
    ]
  },
  "system": {
    "box_size_and_shape": [
      13.96198,
      13.96198,
      17.42325
    ]
  }
}',
        NULL
    );
