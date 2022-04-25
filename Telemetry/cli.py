import typer

from fileDataDisplay import process_file_data
from getCSV import process_data_csv
from sendToInflux import process_data_influx

app = typer.Typer()


@app.command()
def getCSV(
    input_dir: str,
    output_file: str = typer.Option("output.csv"),
    filter_id: str = typer.Argument("0"),
    filter_param: str = typer.Argument(...),
    format_time: bool = typer.Option(False, "--format-time", "-ft"),
):
    process_data_csv(
        input_dir, output_file, filter_id, filter_param, 1 if format_time else 0
    )


@app.command()
def fileDataDisplay(
    input_dir: str,
    filter_id: str = typer.Argument("0"),
    filter_param: str = typer.Argument(...),
):
    process_file_data(input_dir, filter_id, filter_param)


@app.command()
def sendToInflux(
    input_dir: str,
):
    process_data_influx(input_dir)


# @app.command()
# def serial_input(
#     port: str,
#     baudrate: int,
#     filters: Optional[List[DecodeID]] = typer.Option(None, "--filter", "-f"),
#     save: bool = typer.Option(False, "--save", "-s"),
#     plot: bool = typer.Option(False, "--plot", "-p"),
# ):
#     print(filters)
#     print(save)
#     print(plot)


if __name__ == "__main__":
    app()
