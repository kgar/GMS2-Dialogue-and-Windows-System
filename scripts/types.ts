type Dialogue = {
    text: string;
    next?: Dialogue;
    choices?: Choice[];
    name?: string;
}

type Choice = {
    options: Option[];
}

type Option = {
    text: string;
    onOptionSelected?: any;
    next?: Dialogue;
}