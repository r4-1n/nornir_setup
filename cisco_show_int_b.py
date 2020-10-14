from nornir import InitNornir
from nornir_scrapli.tasks import send_command
from nornir_utils.plugins.functions.print_result import print_result

nr = InitNornir(config_file='config.yaml')
result = nr.run(task=send_command, command=
                "show interface brief")
print_result(result)
