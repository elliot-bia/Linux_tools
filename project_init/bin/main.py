from pathlib import Path
import sys
BASE_DIR = str(Path(__file__).resolve().parent.parent)
sys.path.append(BASE_DIR)

from module import log_factory
log_factory.DEBUGGER.info('这里是日志')

def main():
    "主函数入口"
    pass

if __name__ == '__main__':
    if not sys.version_info >= (3, 0):
        sys, exit('[x] WARNING - this script requires Python 3.x  Exiting')
    main()