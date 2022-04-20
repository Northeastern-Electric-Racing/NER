from ast import Str
from pathlib import Path
from enum import Enum
from typing import Optional, List
import typer
from getCSV import process_data


app = typer.Typer()


@app.command()
def getCSV(
    input_dir: str,
    output_file: str = typer.Option("output.csv"),
    filter_id: str = typer.Argument("0"),
    filter_param: str = typer.Argument(...),
    format_time: bool = typer.Option(False, "--format-time", "-ft"),
    # save: bool = typer.Option(False, "--save", "-s"),
    # plot: bool = typer.Option(False, "--plot", "-p"),
):
    process_data(
        input_dir, output_file, filter_id, filter_param, 1 if format_time else 0
    )


@app.command()
def serial_input(
    port: str,
    baudrate: int,
    # filters: Optional[List[DecodeID]] = typer.Option(None, "--filter", "-f"),
    save: bool = typer.Option(False, "--save", "-s"),
    plot: bool = typer.Option(False, "--plot", "-p"),
):
    print(filters)
    print(save)
    print(plot)


if __name__ == "__main__":
    app()
