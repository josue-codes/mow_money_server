if __name__ == '__main__':  # pragma: no cover
    import os
    os.popen(f'uvicorn mow_money.main:app --host 0.0.0.0 --port 80')
