var dialogue = [
    {
        text: "Hello, you must be new here. I am the first test dialogue sring.",
        name: "Fluvio",
    },
    {
        text: "How neat is that?",
        name: "Fluvio",
        choices: [
            {
                options: [
                    { text: "That's pretty cool" },
                    {
                        text: "Uh, yeah, that's neat... Cool...",
                        next: {
                            text: "Hey!",
                            name: "Fluvio",
                        },
                    },
                ],
            },
        ],
    },
];
