; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pmic_gpio_state = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip, i8, i8 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.spmi_device = type { %struct.device, ptr, i8 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pmic_gpio_pad = type { i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_spmi_gpio__227_1199_pmic_gpio_driver_init6 = internal global ptr @pmic_gpio_driver_init, section ".initcall6.init", align 4
@pmic_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pmic_gpio_probe, ptr @pmic_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pmic_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pmic_gpio_driver_exit = internal global ptr @pmic_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [61 x i8] c"pinctrl_spmi_gpio.author=Ivan T. Ivanov <iivanov@mm-sol.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [73 x i8] c"pinctrl_spmi_gpio.description=Qualcomm SPMI PMIC GPIO pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias230 = internal constant [48 x i8] c"pinctrl_spmi_gpio.alias=platform:qcom-spmi-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [62 x i8] c"pinctrl_spmi_gpio.file=drivers/pinctrl/qcom/pinctrl-spmi-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [33 x i8] c"pinctrl_spmi_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-spmi-gpio\00", [17 x i8] zeroinitializer }, align 32
@pmic_gpio_of_match = internal constant { [34 x %struct.of_device_id], [1688 x i8] } { [34 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm2250-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm660-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm660l-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6150-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6150l-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6350-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm7325-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8005-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8008-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8019-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmc8180-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150b-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150l-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmc8180c-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350b-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350c-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8916-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 36 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8950-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8994-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8998-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 26 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pma8084-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8950-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8994-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8998-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmk8350-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmm8155au-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmr735a-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmr735b-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pms405-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmx55-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id zeroinitializer], [1688 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pmic_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1007, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing base address\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pmic_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/qcom/pinctrl-spmi-gpio.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pmic_gpio_probe._entry_ptr = internal global ptr @pmic_gpio_probe._entry, section ".printk_index", align 4
@pmic_gpio_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pmic_gpio_get_groups_count, ptr @pmic_gpio_get_group_name, ptr @pmic_gpio_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@pmic_gpio_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pmic_gpio_get_functions_count, ptr @pmic_gpio_get_function_name, ptr @pmic_gpio_get_function_groups, ptr @pmic_gpio_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pmic_gpio_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pmic_gpio_config_get, ptr @pmic_gpio_config_set, ptr null, ptr @pmic_gpio_config_dbg_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@pmic_gpio_bindings = internal constant { [5 x %struct.pinconf_generic_params], [36 x i8] } { [5 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.59, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.60, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.61, i32 130, i32 0 }, %struct.pinconf_generic_params { ptr @.str.62, i32 131, i32 0 }, %struct.pinconf_generic_params { ptr @.str.63, i32 132, i32 0 }], [36 x i8] zeroinitializer }, align 32
@pmic_conf_items = internal constant { [5 x %struct.pin_config_item], [48 x i8] } { [5 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.64, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.65, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.66, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.67, ptr null, i8 1 }, %struct.pin_config_item { i32 132, ptr @.str.68, ptr null, i8 1 }], [48 x i8] zeroinitializer }, align 32
@pmic_gpio_groups = internal constant { [36 x ptr], [48 x i8] } { [36 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], [48 x i8] zeroinitializer }, align 32
@pmic_gpio_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @pmic_gpio_direction_input, ptr @pmic_gpio_direction_output, ptr @pmic_gpio_get, ptr null, ptr @pmic_gpio_set, ptr null, ptr null, ptr null, ptr @pmic_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pmic_gpio_of_xlate }, [68 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spmi-gpio\00", [22 x i8] zeroinitializer }, align 32
@pmic_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pmic_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pmic_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1105, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't add gpio chip\0A\00", [43 x i8] zeroinitializer }, align 32
@pmic_gpio_probe._entry_ptr.10 = internal global ptr @pmic_gpio_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@pmic_gpio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@pmic_gpio_probe._entry_ptr.14 = internal global ptr @pmic_gpio_probe._entry.12, section ".printk_index", align 4
@pmic_gpio_functions = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"paired\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func1\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func2\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func3\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func4\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest1\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest2\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest3\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dtest4\00", [25 x i8] zeroinitializer }, align 32
@pmic_gpio_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013function: %d is not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pmic_gpio_set_mux\00", [46 x i8] zeroinitializer }, align 32
@pmic_gpio_set_mux._entry_ptr = internal global ptr @pmic_gpio_set_mux._entry, section ".printk_index", align 4
@pmic_gpio_set_mux._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013LV/MV subtype doesn't have func3/func4\0A\00", [54 x i8] zeroinitializer }, align 32
@pmic_gpio_set_mux._entry_ptr.29 = internal global ptr @pmic_gpio_set_mux._entry.27, section ".printk_index", align 4
@pmic_gpio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write 0x%x failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pmic_gpio_write\00", [16 x i8] zeroinitializer }, align 32
@pmic_gpio_write._entry_ptr = internal global ptr @pmic_gpio_write._entry, section ".printk_index", align 4
@pmic_gpio_config_dbg_show.biases = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pull-up 30uA\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pull-up 1.5uA\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pull-up 31.5uA\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pull-up 1.5uA + 30uA boost\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pull-down 10uA\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no pull\00", [24 x i8] zeroinitializer }, align 32
@pmic_gpio_config_dbg_show.buffer_types = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40], [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"push-pull\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open-drain\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"open-source\00", [20 x i8] zeroinitializer }, align 32
@pmic_gpio_config_dbg_show.strengths = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"medium\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" gpio%-2d:\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ---\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" analog-pass\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-4s\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-7s\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" vin-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %-27s\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %-10s\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" atest-%d\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" dtest-%d\00", [22 x i8] zeroinitializer }, align 32
@pmic_gpio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read 0x%x failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmic_gpio_read\00", [17 x i8] zeroinitializer }, align 32
@pmic_gpio_read._entry_ptr = internal global ptr @pmic_gpio_read._entry, section ".printk_index", align 4
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,pull-up-strength\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,drive-strength\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom,atest\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,analog-pass\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,dtest-buffer\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pull up strength\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drive-strength\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atest\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"analog-pass\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dtest-buffer\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@pmic_gpio_populate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 795, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"incorrect block type 0x%x at 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pmic_gpio_populate\00", [45 x i8] zeroinitializer }, align 32
@pmic_gpio_populate._entry_ptr = internal global ptr @pmic_gpio_populate._entry, section ".printk_index", align 4
@pmic_gpio_populate._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.4, i32 827, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown GPIO type 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@pmic_gpio_populate._entry_ptr.109 = internal global ptr @pmic_gpio_populate._entry.107, section ".printk_index", align 4
@pmic_gpio_populate._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str.4, i32 877, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown GPIO direction\0A\00", [40 x i8] zeroinitializer }, align 32
@pmic_gpio_populate._entry_ptr.112 = internal global ptr @pmic_gpio_populate._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 5, i64 9, i64 13, i64 16, i64 17]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [18 x i64] [i64 16, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 12, i64 17, i64 18, i64 21, i64 128, i64 129, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.116 = internal global [18 x i64] [i64 16, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 12, i64 17, i64 18, i64 21, i64 128, i64 129, i64 130, i64 131, i64 132]
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"pmic_gpio_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1190, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1192, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"pmic_gpio_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1143, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1005, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1007, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"pmic_gpio_pinctrl_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 266, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"pmic_gpio_pinmux_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 370, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"pmic_gpio_pinconf_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 689, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"pmic_gpio_bindings\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 179, i32 44 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"pmic_conf_items\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 188, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"pmic_gpio_groups\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 197, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [24 x i8] c"pmic_gpio_gpio_template\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 773, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1084, i32 20 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1103, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1105, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1119, i32 43 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1123, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"pmic_gpio_functions\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 205, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 206, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 207, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 208, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 209, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 210, i32 33 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 211, i32 33 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 212, i32 34 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 213, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 214, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 215, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 304, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 316, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 241, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"biases\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 635, i32 27 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 636, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 636, i32 19 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 636, i32 36 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 637, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 637, i32 33 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 637, i32 51 }
@___asan_gen_.270 = private unnamed_addr constant [13 x i8] c"buffer_types\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 639, i32 27 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 640, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 640, i32 16 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 640, i32 30 }
@___asan_gen_.282 = private unnamed_addr constant [10 x i8] c"strengths\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 642, i32 27 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 643, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 643, i32 9 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 643, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 643, i32 27 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 648, i32 16 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 653, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 674, i32 16 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 676, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 677, i32 28 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 677, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 679, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 680, i32 17 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 681, i32 17 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 682, i32 17 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 684, i32 17 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 685, i32 17 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 226, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 180, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 181, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 182, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 183, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 184, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 189, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 190, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 191, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 192, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 193, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 11 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 20 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 29 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 38 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 47 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 56 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 198, i32 65 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 199, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 199, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 199, i32 21 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 199, i32 31 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 199, i32 41 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 199, i32 51 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 199, i32 61 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 200, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 200, i32 12 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 200, i32 22 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 200, i32 32 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 200, i32 42 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 200, i32 52 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 200, i32 62 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 12 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 22 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 32 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 42 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 52 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 201, i32 62 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 202, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 202, i32 12 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 202, i32 22 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 202, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 202, i32 42 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 202, i32 52 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 202, i32 62 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 794, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 827, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 877, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.502 = private constant [44 x i8] c"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 769, i32 15 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pmic_gpio_driver_exit, ptr @__initcall__kmod_pinctrl_spmi_gpio__227_1199_pmic_gpio_driver_init6, ptr @pmic_gpio_driver_exit, ptr @pmic_gpio_populate._entry, ptr @pmic_gpio_populate._entry.107, ptr @pmic_gpio_populate._entry.110, ptr @pmic_gpio_populate._entry_ptr, ptr @pmic_gpio_populate._entry_ptr.109, ptr @pmic_gpio_populate._entry_ptr.112, ptr @pmic_gpio_probe._entry, ptr @pmic_gpio_probe._entry.12, ptr @pmic_gpio_probe._entry.8, ptr @pmic_gpio_probe._entry_ptr, ptr @pmic_gpio_probe._entry_ptr.10, ptr @pmic_gpio_probe._entry_ptr.14, ptr @pmic_gpio_read._entry, ptr @pmic_gpio_read._entry_ptr, ptr @pmic_gpio_set_mux._entry, ptr @pmic_gpio_set_mux._entry.27, ptr @pmic_gpio_set_mux._entry_ptr, ptr @pmic_gpio_set_mux._entry_ptr.29, ptr @pmic_gpio_write._entry, ptr @pmic_gpio_write._entry_ptr, ptr @pmic_gpio_driver, ptr @.str, ptr @pmic_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pmic_gpio_pinctrl_ops, ptr @pmic_gpio_pinmux_ops, ptr @pmic_gpio_pinconf_ops, ptr @pmic_gpio_bindings, ptr @pmic_conf_items, ptr @pmic_gpio_groups, ptr @pmic_gpio_gpio_template, ptr @.str.7, ptr @pmic_gpio_probe.lock_key, ptr @pmic_gpio_probe.request_key, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @pmic_gpio_functions, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @pmic_gpio_config_dbg_show.biases, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @pmic_gpio_config_dbg_show.buffer_types, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @pmic_gpio_config_dbg_show.strengths, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.113], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_of_match to i32), i32 6664, i32 8352, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_bindings to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_conf_items to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_groups to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_functions to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_set_mux._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_config_dbg_show.biases to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_config_dbg_show.buffer_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_config_dbg_show.strengths to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_populate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_populate._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_gpio_populate._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pmic_gpio_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pmic_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @pmic_gpio_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %val.i304.i = alloca i32, align 4
  %val.i294.i = alloca i32, align 4
  %val.i284.i = alloca i32, align 4
  %val.i274.i = alloca i32, align 4
  %val.i264.i = alloca i32, align 4
  %val.i254.i = alloca i32, align 4
  %val.i244.i = alloca i32, align 4
  %val.i234.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #12
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !270
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @device_get_match_data(ptr noundef %dev1) #12
  %3 = ptrtoint ptr %call3 to i32
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 500, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call9 = call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #12
  %map = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %map, align 4
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %usid = getelementptr inbounds %struct.spmi_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %usid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %usid, align 4
  %usid12 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %usid12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %usid12, align 4
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %shr = lshr i32 %15, 8
  %conv = trunc i32 %shr to i8
  %pid_base = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %pid_base to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %pid_base, align 1
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 12) #12
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end6.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !271

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end6
  %19 = extractvalue { i32, i1 } %17, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %19, i32 noundef 3520) #12
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end16

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %devm_kcalloc.exit
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 44) #12
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.end16.cleanup_crit_edge, label %devm_kcalloc.exit215, !prof !271

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

devm_kcalloc.exit215:                             ; preds = %if.end16
  %22 = extractvalue { i32, i1 } %20, 0
  %call5.i.i212 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %22, i32 noundef 3520) #12
  %tobool18.not = icmp eq ptr %call5.i.i212, null
  br i1 %tobool18.not, label %devm_kcalloc.exit215.cleanup_crit_edge, label %if.end20

devm_kcalloc.exit215.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit215
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %devm_kcalloc.exit215
  %call.i216 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #12
  %tobool22.not = icmp eq ptr %call.i216, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 3
  %23 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pmic_gpio_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 4
  %24 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pmic_gpio_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 5
  %25 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pmic_gpio_pinconf_ops, ptr %confops, align 4
  %owner = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 6
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %owner, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.dev_name.exit_crit_edge

if.end24.dev_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end24.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %if.end24.dev_name.exit_crit_edge ]
  %31 = ptrtoint ptr %call.i216 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i, ptr %call.i216, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 1
  %32 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i, ptr %pins, align 4
  %npins26 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 2
  %33 = ptrtoint ptr %npins26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %3, ptr %npins26, align 4
  %num_custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 7
  %34 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %num_custom_params, align 4
  %custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 8
  %35 = ptrtoint ptr %custom_params to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pmic_gpio_bindings, ptr %custom_params, align 4
  %custom_conf_items = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i216, i32 0, i32 9
  %36 = ptrtoint ptr %custom_conf_items to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pmic_conf_items, ptr %custom_conf_items, align 4
  %cmp27323 = icmp sgt ptr %call3, null
  br i1 %cmp27323, label %for.body.preheader, label %dev_name.exit.for.end_crit_edge

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %dev_name.exit
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0325 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pindesc.0324 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call5.i.i, %for.body.preheader ]
  %arrayidx = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325
  %drv_data = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pindesc.0324, i32 0, i32 2
  %37 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx, ptr %drv_data, align 4
  %38 = ptrtoint ptr %pindesc.0324 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.0325, ptr %pindesc.0324, align 4
  %arrayidx29 = getelementptr [36 x ptr], ptr @pmic_gpio_groups, i32 0, i32 %i.0325
  %39 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx29, align 4
  %name30 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pindesc.0324, i32 0, i32 1
  %41 = ptrtoint ptr %name30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %name30, align 4
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg, align 4
  %mul = shl i32 %i.0325, 8
  %add = add i32 %43, %mul
  %conv31 = trunc i32 %add to i16
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv31, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #12
  %45 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %val.i.i, align 4, !annotation !270
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 4
  %conv.i.i = and i32 %add, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call.i.i217 = call i32 @regmap_read(ptr noundef %47, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i217)
  %cmp.i.i = icmp slt i32 %call.i.i217, 0
  br i1 %cmp.i.i, label %pmic_gpio_read.exit.thread.i, label %pmic_gpio_read.exit.i

pmic_gpio_read.exit.thread.i:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.57, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  br label %cleanup

pmic_gpio_read.exit.i:                            ; preds = %for.body
  %50 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i = icmp slt i32 %51, 0
  br i1 %cmp.i, label %pmic_gpio_read.exit.i.cleanup_crit_edge, label %if.end.i218

pmic_gpio_read.exit.i.cleanup_crit_edge:          ; preds = %pmic_gpio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i218:                                      ; preds = %pmic_gpio_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %51)
  %cmp1.not.i = icmp eq i32 %51, 16
  br i1 %cmp1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx, align 4
  %conv.i = zext i16 %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.105, i32 noundef %51, i32 noundef %conv.i) #15
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i218
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i234.i) #12
  %56 = ptrtoint ptr %val.i234.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i234.i, align 4, !annotation !270
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx, align 4
  %conv.i236.i = zext i16 %60 to i32
  %add.i237.i = add nuw nsw i32 %conv.i236.i, 5
  %call.i238.i = call i32 @regmap_read(ptr noundef %58, i32 noundef %add.i237.i, ptr noundef nonnull %val.i234.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238.i)
  %cmp.i239.i = icmp slt i32 %call.i238.i, 0
  br i1 %cmp.i239.i, label %pmic_gpio_read.exit243.thread.i, label %pmic_gpio_read.exit243.i

pmic_gpio_read.exit243.thread.i:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.57, i32 noundef 5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i234.i) #12
  br label %cleanup

pmic_gpio_read.exit243.i:                         ; preds = %if.end3.i
  %63 = ptrtoint ptr %val.i234.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i234.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i234.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp5.i = icmp slt i32 %64, 0
  br i1 %cmp5.i, label %pmic_gpio_read.exit243.i.cleanup_crit_edge, label %if.end8.i

pmic_gpio_read.exit243.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit243.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %pmic_gpio_read.exit243.i
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %do.end23.i [
    i32 1, label %sw.bb.i
    i32 5, label %if.end8.i.sw.bb9.i_crit_edge
    i32 9, label %sw.bb10.i
    i32 13, label %if.end8.i.sw.bb12.i_crit_edge
    i32 16, label %sw.bb14.i
    i32 17, label %sw.bb17.i
  ]

if.end8.i.sw.bb12.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb12.i

if.end8.i.sw.bb9.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9.i

sw.bb.i:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %have_buffer.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 3
  %66 = ptrtoint ptr %have_buffer.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %have_buffer.i, align 4
  br label %sw.bb9.i

sw.bb9.i:                                         ; preds = %sw.bb.i, %if.end8.i.sw.bb9.i_crit_edge
  %num_sources.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 8
  %67 = ptrtoint ptr %num_sources.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %num_sources.i, align 4
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %have_buffer11.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 3
  %68 = ptrtoint ptr %have_buffer11.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %have_buffer11.i, align 4
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.bb10.i, %if.end8.i.sw.bb12.i_crit_edge
  %num_sources13.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 8
  %69 = ptrtoint ptr %num_sources13.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8, ptr %num_sources13.i, align 4
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_sources15.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 8
  %70 = ptrtoint ptr %num_sources15.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %num_sources15.i, align 4
  %have_buffer16.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 3
  %71 = ptrtoint ptr %have_buffer16.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %have_buffer16.i, align 4
  %lv_mv_type.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 7
  %72 = ptrtoint ptr %lv_mv_type.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %lv_mv_type.i, align 4
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_sources18.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 8
  %73 = ptrtoint ptr %num_sources18.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %num_sources18.i, align 4
  %have_buffer19.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 3
  %74 = ptrtoint ptr %have_buffer19.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %have_buffer19.i, align 4
  %lv_mv_type20.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 7
  %75 = ptrtoint ptr %lv_mv_type20.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %lv_mv_type20.i, align 4
  br label %sw.epilog.i

do.end23.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.108, i32 noundef %64) #15
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb14.i, %sw.bb12.i, %sw.bb9.i
  %lv_mv_type25.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 7
  %78 = ptrtoint ptr %lv_mv_type25.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %lv_mv_type25.i, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i219 = icmp eq i8 %79, 0
  br i1 %tobool.not.i219, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i244.i) #12
  %80 = ptrtoint ptr %val.i244.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %val.i244.i, align 4, !annotation !270
  %81 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map, align 4
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx, align 4
  %conv.i246.i = zext i16 %84 to i32
  %add.i247.i = add nuw nsw i32 %conv.i246.i, 68
  %call.i248.i = call i32 @regmap_read(ptr noundef %82, i32 noundef %add.i247.i, ptr noundef nonnull %val.i244.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248.i)
  %cmp.i249.i = icmp slt i32 %call.i248.i, 0
  br i1 %cmp.i249.i, label %pmic_gpio_read.exit253.thread.i, label %pmic_gpio_read.exit253.i

pmic_gpio_read.exit253.thread.i:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.57, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i244.i) #12
  br label %cleanup

pmic_gpio_read.exit253.i:                         ; preds = %if.then26.i
  %87 = ptrtoint ptr %val.i244.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i244.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i244.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp28.i = icmp slt i32 %88, 0
  br i1 %cmp28.i, label %pmic_gpio_read.exit253.i.cleanup_crit_edge, label %if.end31.i

pmic_gpio_read.exit253.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit253.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31.i:                                       ; preds = %pmic_gpio_read.exit253.i
  %out_value.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 2
  %89 = trunc i32 %88 to i8
  %90 = lshr i8 %89, 7
  %91 = ptrtoint ptr %out_value.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %out_value.i, align 1
  %and34.i = and i32 %88, 15
  %function.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 13
  %92 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and34.i, ptr %function.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i254.i) #12
  %93 = ptrtoint ptr %val.i254.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %val.i254.i, align 4, !annotation !270
  %94 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map, align 4
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx, align 4
  %conv.i256.i = zext i16 %97 to i32
  %add.i257.i = add nuw nsw i32 %conv.i256.i, 64
  %call.i258.i = call i32 @regmap_read(ptr noundef %95, i32 noundef %add.i257.i, ptr noundef nonnull %val.i254.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258.i)
  %cmp.i259.i = icmp slt i32 %call.i258.i, 0
  br i1 %cmp.i259.i, label %pmic_gpio_read.exit263.thread.i, label %pmic_gpio_read.exit263.i

pmic_gpio_read.exit263.thread.i:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.57, i32 noundef 64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i254.i) #12
  br label %cleanup

pmic_gpio_read.exit263.i:                         ; preds = %if.end31.i
  %100 = ptrtoint ptr %val.i254.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i254.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i254.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp36.i = icmp slt i32 %101, 0
  br i1 %cmp36.i, label %pmic_gpio_read.exit263.i.cleanup_crit_edge, label %if.end39.i

pmic_gpio_read.exit263.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit263.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39.i:                                       ; preds = %pmic_gpio_read.exit263.i
  call void @__sanitizer_cov_trace_pc() #14
  %and40.i = and i32 %101, 3
  br label %if.end55.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i264.i) #12
  %102 = ptrtoint ptr %val.i264.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %val.i264.i, align 4, !annotation !270
  %103 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map, align 4
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx, align 4
  %conv.i266.i = zext i16 %106 to i32
  %add.i267.i = add nuw nsw i32 %conv.i266.i, 64
  %call.i268.i = call i32 @regmap_read(ptr noundef %104, i32 noundef %add.i267.i, ptr noundef nonnull %val.i264.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268.i)
  %cmp.i269.i = icmp slt i32 %call.i268.i, 0
  br i1 %cmp.i269.i, label %pmic_gpio_read.exit273.thread.i, label %pmic_gpio_read.exit273.i

pmic_gpio_read.exit273.thread.i:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.57, i32 noundef 64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i264.i) #12
  br label %cleanup

pmic_gpio_read.exit273.i:                         ; preds = %if.else.i
  %109 = ptrtoint ptr %val.i264.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val.i264.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i264.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp42.i = icmp slt i32 %110, 0
  br i1 %cmp42.i, label %pmic_gpio_read.exit273.i.cleanup_crit_edge, label %if.end45.i

pmic_gpio_read.exit273.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit273.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45.i:                                       ; preds = %pmic_gpio_read.exit273.i
  call void @__sanitizer_cov_trace_pc() #14
  %out_value48.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 2
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = ptrtoint ptr %out_value48.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %out_value48.i, align 1
  %114 = lshr i32 %110, 4
  %and50.i = and i32 %114, 7
  %115 = lshr i32 %110, 1
  %function52.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 13
  %and54.i = and i32 %115, 7
  %116 = ptrtoint ptr %function52.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %and54.i, ptr %function52.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end45.i, %if.end39.i
  %dir.0.i = phi i32 [ %and40.i, %if.end39.i ], [ %and50.i, %if.end45.i ]
  %117 = zext i32 %dir.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %dir.0.i, label %do.end71.i [
    i32 0, label %sw.bb56.i
    i32 1, label %sw.bb57.i
    i32 2, label %sw.bb60.i
    i32 3, label %sw.bb63.i
  ]

sw.bb56.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %input_enabled.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 5
  %118 = ptrtoint ptr %input_enabled.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %input_enabled.i, align 2
  %output_enabled.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 4
  %119 = ptrtoint ptr %output_enabled.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %output_enabled.i, align 1
  br label %sw.epilog73.i

sw.bb57.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %input_enabled58.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 5
  %120 = ptrtoint ptr %input_enabled58.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %input_enabled58.i, align 2
  %output_enabled59.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 4
  %121 = ptrtoint ptr %output_enabled59.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %output_enabled59.i, align 1
  br label %sw.epilog73.i

sw.bb60.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %input_enabled61.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 5
  %122 = ptrtoint ptr %input_enabled61.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %input_enabled61.i, align 2
  %output_enabled62.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 4
  %123 = ptrtoint ptr %output_enabled62.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %output_enabled62.i, align 1
  br label %sw.epilog73.i

sw.bb63.i:                                        ; preds = %if.end55.i
  %124 = ptrtoint ptr %lv_mv_type25.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %lv_mv_type25.i, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool65.not.i = icmp eq i8 %125, 0
  br i1 %tobool65.not.i, label %sw.bb63.i.cleanup_crit_edge, label %if.end67.i

sw.bb63.i.cleanup_crit_edge:                      ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67.i:                                       ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #14
  %analog_pass.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 6
  %126 = ptrtoint ptr %analog_pass.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %analog_pass.i, align 1
  br label %sw.epilog73.i

do.end71.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.111) #15
  br label %cleanup

sw.epilog73.i:                                    ; preds = %if.end67.i, %sw.bb60.i, %sw.bb57.i, %sw.bb56.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i274.i) #12
  %129 = ptrtoint ptr %val.i274.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %val.i274.i, align 4, !annotation !270
  %130 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map, align 4
  %132 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx, align 4
  %conv.i276.i = zext i16 %133 to i32
  %add.i277.i = add nuw nsw i32 %conv.i276.i, 65
  %call.i278.i = call i32 @regmap_read(ptr noundef %131, i32 noundef %add.i277.i, ptr noundef nonnull %val.i274.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278.i)
  %cmp.i279.i = icmp slt i32 %call.i278.i, 0
  br i1 %cmp.i279.i, label %pmic_gpio_read.exit283.thread.i, label %pmic_gpio_read.exit283.i

pmic_gpio_read.exit283.thread.i:                  ; preds = %sw.epilog73.i
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.57, i32 noundef 65) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i274.i) #12
  br label %cleanup

pmic_gpio_read.exit283.i:                         ; preds = %sw.epilog73.i
  %136 = ptrtoint ptr %val.i274.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val.i274.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i274.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp75.i = icmp slt i32 %137, 0
  br i1 %cmp75.i, label %pmic_gpio_read.exit283.i.cleanup_crit_edge, label %if.end78.i

pmic_gpio_read.exit283.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end78.i:                                       ; preds = %pmic_gpio_read.exit283.i
  %power_source.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 9
  %and81.i = and i32 %137, 7
  %138 = ptrtoint ptr %power_source.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %and81.i, ptr %power_source.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i284.i) #12
  %139 = ptrtoint ptr %val.i284.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %val.i284.i, align 4, !annotation !270
  %140 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map, align 4
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx, align 4
  %conv.i286.i = zext i16 %143 to i32
  %add.i287.i = add nuw nsw i32 %conv.i286.i, 66
  %call.i288.i = call i32 @regmap_read(ptr noundef %141, i32 noundef %add.i287.i, ptr noundef nonnull %val.i284.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288.i)
  %cmp.i289.i = icmp slt i32 %call.i288.i, 0
  br i1 %cmp.i289.i, label %pmic_gpio_read.exit293.thread.i, label %pmic_gpio_read.exit293.i

pmic_gpio_read.exit293.thread.i:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.57, i32 noundef 66) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i284.i) #12
  br label %cleanup

pmic_gpio_read.exit293.i:                         ; preds = %if.end78.i
  %146 = ptrtoint ptr %val.i284.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %val.i284.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i284.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp83.i = icmp slt i32 %147, 0
  br i1 %cmp83.i, label %pmic_gpio_read.exit293.i.cleanup_crit_edge, label %if.end86.i

pmic_gpio_read.exit293.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit293.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end86.i:                                       ; preds = %pmic_gpio_read.exit293.i
  %pullup.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 11
  %and89.i = and i32 %147, 7
  %148 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %and89.i, ptr %pullup.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i294.i) #12
  %149 = ptrtoint ptr %val.i294.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %val.i294.i, align 4, !annotation !270
  %150 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %map, align 4
  %152 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx, align 4
  %conv.i296.i = zext i16 %153 to i32
  %add.i297.i = add nuw nsw i32 %conv.i296.i, 67
  %call.i298.i = call i32 @regmap_read(ptr noundef %151, i32 noundef %add.i297.i, ptr noundef nonnull %val.i294.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298.i)
  %cmp.i299.i = icmp slt i32 %call.i298.i, 0
  br i1 %cmp.i299.i, label %pmic_gpio_read.exit303.thread.i, label %pmic_gpio_read.exit303.i

pmic_gpio_read.exit303.thread.i:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.57, i32 noundef 67) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i294.i) #12
  br label %cleanup

pmic_gpio_read.exit303.i:                         ; preds = %if.end86.i
  %156 = ptrtoint ptr %val.i294.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %val.i294.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i294.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp91.i = icmp slt i32 %157, 0
  br i1 %cmp91.i, label %pmic_gpio_read.exit303.i.cleanup_crit_edge, label %if.end94.i

pmic_gpio_read.exit303.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit303.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end94.i:                                       ; preds = %pmic_gpio_read.exit303.i
  %158 = ptrtoint ptr %lv_mv_type25.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %lv_mv_type25.i, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool96.not.i = icmp eq i8 %159, 0
  %and98.i = and i32 %157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  %or.cond.i = select i1 %tobool96.not.i, i1 true, i1 %tobool99.not.i
  br i1 %or.cond.i, label %if.else102.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %and101.i = and i32 %157, 7
  %add.i = add nuw nsw i32 %and101.i, 1
  br label %if.end110.i

if.else102.i:                                     ; preds = %if.end94.i
  br i1 %tobool96.not.i, label %if.then105.i, label %if.else102.i.if.end110.i_crit_edge

if.else102.i.if.end110.i_crit_edge:               ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

if.then105.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #14
  %160 = call i32 @llvm.cttz.i32(i32 %157, i1 true) #12, !range !273
  %161 = add nuw nsw i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %iszero.i = icmp eq i32 %157, 0
  %ffs.i = select i1 %iszero.i, i32 0, i32 %161
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then105.i, %if.else102.i.if.end110.i_crit_edge, %if.then100.i
  %ffs.sink.i = phi i32 [ %ffs.i, %if.then105.i ], [ %add.i, %if.then100.i ], [ 0, %if.else102.i.if.end110.i_crit_edge ]
  %dtest_buffer106.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 15
  %162 = ptrtoint ptr %dtest_buffer106.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %ffs.sink.i, ptr %dtest_buffer106.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i304.i) #12
  %163 = ptrtoint ptr %val.i304.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %val.i304.i, align 4, !annotation !270
  %164 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %map, align 4
  %166 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx, align 4
  %conv.i306.i = zext i16 %167 to i32
  %add.i307.i = add nuw nsw i32 %conv.i306.i, 69
  %call.i308.i = call i32 @regmap_read(ptr noundef %165, i32 noundef %add.i307.i, ptr noundef nonnull %val.i304.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308.i)
  %cmp.i309.i = icmp slt i32 %call.i308.i, 0
  br i1 %cmp.i309.i, label %pmic_gpio_read.exit313.thread.i, label %pmic_gpio_read.exit313.i

pmic_gpio_read.exit313.thread.i:                  ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #14
  %168 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.57, i32 noundef 69) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i304.i) #12
  br label %cleanup

pmic_gpio_read.exit313.i:                         ; preds = %if.end110.i
  %170 = ptrtoint ptr %val.i304.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %val.i304.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i304.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp112.i = icmp slt i32 %171, 0
  br i1 %cmp112.i, label %pmic_gpio_read.exit313.i.cleanup_crit_edge, label %if.end115.i

pmic_gpio_read.exit313.i.cleanup_crit_edge:       ; preds = %pmic_gpio_read.exit313.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end115.i:                                      ; preds = %pmic_gpio_read.exit313.i
  %strength.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 12
  %and118.i = and i32 %171, 3
  %172 = ptrtoint ptr %strength.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %and118.i, ptr %strength.i, align 4
  %173 = lshr i32 %171, 4
  %buffer_type.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 10
  %and121.i = and i32 %173, 3
  %174 = ptrtoint ptr %buffer_type.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %and121.i, ptr %buffer_type.i, align 4
  %175 = ptrtoint ptr %lv_mv_type25.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %lv_mv_type25.i, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool123.not.i = icmp eq i8 %176, 0
  br i1 %tobool123.not.i, label %if.end115.i.for.inc_crit_edge, label %if.then124.i

if.end115.i.for.inc_crit_edge:                    ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then124.i:                                     ; preds = %if.end115.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %177 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -1, ptr %val.i, align 4, !annotation !270
  %178 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %map, align 4
  %180 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx, align 4
  %conv.i236 = zext i16 %181 to i32
  %add.i237 = add nuw nsw i32 %conv.i236, 74
  %call.i238 = call i32 @regmap_read(ptr noundef %179, i32 noundef %add.i237, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp.i239 = icmp slt i32 %call.i238, 0
  br i1 %cmp.i239, label %pmic_gpio_read.exit.thread, label %pmic_gpio_read.exit

pmic_gpio_read.exit.thread:                       ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #14
  %182 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.57, i32 noundef 74) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %cleanup

pmic_gpio_read.exit:                              ; preds = %if.then124.i
  %184 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp126.i = icmp slt i32 %185, 0
  br i1 %cmp126.i, label %pmic_gpio_read.exit.cleanup_crit_edge, label %if.end129.i

pmic_gpio_read.exit.cleanup_crit_edge:            ; preds = %pmic_gpio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end129.i:                                      ; preds = %pmic_gpio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and130.i = and i32 %185, 3
  %add131.i = add nuw nsw i32 %and130.i, 1
  %atest.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 14
  %186 = ptrtoint ptr %atest.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add131.i, ptr %atest.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end129.i, %if.end115.i.for.inc_crit_edge
  %is_enabled.i = getelementptr %struct.pmic_gpio_pad, ptr %call5.i.i212, i32 %i.0325, i32 1
  %187 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %is_enabled.i, align 2
  %inc = add nuw nsw i32 %i.0325, 1
  %incdec.ptr = getelementptr %struct.pinctrl_pin_desc, ptr %pindesc.0324, i32 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dev_name.exit.for.end_crit_edge
  %chip = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3
  %188 = call ptr @memcpy(ptr %chip, ptr @pmic_gpio_gpio_template, i32 348)
  %parent38 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 2
  %189 = ptrtoint ptr %parent38 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %dev1, ptr %parent38, align 4
  %base40 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 19
  %190 = ptrtoint ptr %base40 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %base40, align 4
  %conv41 = trunc i32 %3 to i16
  %ngpio = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 20
  %191 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv41, ptr %ngpio, align 4
  %192 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i222 = icmp eq ptr %193, null
  br i1 %tobool.not.i222, label %if.end.i223, label %for.end.dev_name.exit225_crit_edge

for.end.dev_name.exit225_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit225

if.end.i223:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %194 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit225

dev_name.exit225:                                 ; preds = %if.end.i223, %for.end.dev_name.exit225_crit_edge
  %retval.0.i224 = phi ptr [ %195, %if.end.i223 ], [ %193, %for.end.dev_name.exit225_crit_edge ]
  %196 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %retval.0.i224, ptr %chip, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 40
  %197 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %can_sleep = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 23
  %198 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %can_sleep, align 4
  %call47 = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef nonnull %call.i216, ptr noundef nonnull %call.i) #12
  %ctrl = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 2
  %199 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call47, ptr %ctrl, align 4
  %cmp.i226 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %if.then50, label %if.end53

if.then50:                                        ; preds = %dev_name.exit225
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %dev_name.exit225
  %201 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %call.i, align 4
  %of_node55 = getelementptr inbounds %struct.device, ptr %202, i32 0, i32 27
  %203 = ptrtoint ptr %of_node55 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %of_node55, align 8
  %call56 = call ptr @of_irq_find_parent(ptr noundef %204) #12
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end53.cleanup_crit_edge, label %if.end59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call56, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #12
  %205 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %206 = call ptr @memset(ptr %205, i32 0, i32 68)
  %207 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #12
  %tobool.not.i227 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i227, label %irq_find_host.exit, label %irq_find_host.exit.thread

irq_find_host.exit.thread:                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  call void @of_node_put(ptr noundef nonnull %call56) #12
  br label %if.end63

irq_find_host.exit:                               ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #12
  %208 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %209 = call ptr @memset(ptr %208, i32 0, i32 68)
  %210 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #12
  call void @of_node_put(ptr noundef nonnull %call56) #12
  %tobool61.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool61.not, label %irq_find_host.exit.cleanup_crit_edge, label %irq_find_host.exit.if.end63_crit_edge

irq_find_host.exit.if.end63_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

irq_find_host.exit.cleanup_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end63:                                         ; preds = %irq_find_host.exit.if.end63_crit_edge, %irq_find_host.exit.thread
  %d.0.i253 = phi ptr [ %call.i.i.i, %irq_find_host.exit.thread ], [ %call.i.i8.i, %irq_find_host.exit.if.end63_crit_edge ]
  %irq = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4
  %name64 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4, i32 1
  %211 = ptrtoint ptr %name64 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @.str.7, ptr %name64, align 4
  %irq_ack = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4, i32 6
  %212 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @irq_chip_ack_parent, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4, i32 7
  %213 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @irq_chip_mask_parent, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4, i32 9
  %214 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @irq_chip_unmask_parent, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4, i32 13
  %215 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @irq_chip_set_type_parent, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4, i32 14
  %216 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @irq_chip_set_wake_parent, ptr %irq_set_wake, align 4
  %flags = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 4, i32 33
  %217 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 4, ptr %flags, align 4
  %irq72 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37
  %218 = ptrtoint ptr %irq72 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %irq, ptr %irq72, align 4
  %default_type = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 10
  %219 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 9
  %220 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @handle_level_irq, ptr %handler, align 4
  %221 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %call.i, align 4
  %of_node76 = getelementptr inbounds %struct.device, ptr %222, i32 0, i32 27
  %223 = ptrtoint ptr %of_node76 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %of_node76, align 8
  %tobool.not.i229 = icmp eq ptr %224, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %224, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i229, ptr null, ptr %fwnode.i
  %fwnode = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 3
  %225 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %spec.select.i, ptr %fwnode, align 4
  %parent_domain78 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 4
  %226 = ptrtoint ptr %parent_domain78 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %d.0.i253, ptr %parent_domain78, align 4
  %child_to_parent_hwirq = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 5
  %227 = ptrtoint ptr %child_to_parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @pmic_gpio_child_to_parent_hwirq, ptr %child_to_parent_hwirq, align 4
  %populate_parent_alloc_arg = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 6
  %228 = ptrtoint ptr %populate_parent_alloc_arg to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @pmic_gpio_populate_parent_fwspec, ptr %populate_parent_alloc_arg, align 4
  %child_offset_to_irq = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 7
  %229 = ptrtoint ptr %child_offset_to_irq to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @pmic_gpio_child_offset_to_irq, ptr %child_offset_to_irq, align 4
  %translate = getelementptr inbounds %struct.pmic_gpio_state, ptr %call.i, i32 0, i32 3, i32 37, i32 8, i32 9
  %230 = ptrtoint ptr %translate to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @pmic_gpio_domain_translate, ptr %translate, align 4
  %call80 = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef %call.i, ptr noundef nonnull @pmic_gpio_probe.lock_key, ptr noundef nonnull @pmic_gpio_probe.request_key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %231 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.9) #15
  br label %cleanup

if.end87:                                         ; preds = %if.end63
  %233 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %of_node, align 8
  %call.i230 = call ptr @of_find_property(ptr noundef %234, ptr noundef nonnull @.str.11, ptr noundef null) #12
  %tobool.i.not = icmp eq ptr %call.i230, null
  br i1 %tobool.i.not, label %if.then90, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then90:                                        ; preds = %if.end87
  %235 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i232 = icmp eq ptr %236, null
  br i1 %tobool.not.i232, label %if.end.i233, label %if.then90.dev_name.exit235_crit_edge

if.then90.dev_name.exit235_crit_edge:             ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit235

if.end.i233:                                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %237 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit235

dev_name.exit235:                                 ; preds = %if.end.i233, %if.then90.dev_name.exit235_crit_edge
  %retval.0.i234 = phi ptr [ %238, %if.end.i233 ], [ %236, %if.then90.dev_name.exit235_crit_edge ]
  %call93 = call i32 @gpiochip_add_pin_range(ptr noundef %chip, ptr noundef %retval.0.i234, i32 noundef 0, i32 noundef 0, i32 noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %dev_name.exit235.cleanup_crit_edge, label %do.end98

dev_name.exit235.cleanup_crit_edge:               ; preds = %dev_name.exit235
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end98:                                         ; preds = %dev_name.exit235
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #15
  call void @gpiochip_remove(ptr noundef %chip) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %dev_name.exit235.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %do.end85, %irq_find_host.exit.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then50, %pmic_gpio_read.exit.cleanup_crit_edge, %pmic_gpio_read.exit.thread, %pmic_gpio_read.exit313.i.cleanup_crit_edge, %pmic_gpio_read.exit313.thread.i, %pmic_gpio_read.exit303.i.cleanup_crit_edge, %pmic_gpio_read.exit303.thread.i, %pmic_gpio_read.exit293.i.cleanup_crit_edge, %pmic_gpio_read.exit293.thread.i, %pmic_gpio_read.exit283.i.cleanup_crit_edge, %pmic_gpio_read.exit283.thread.i, %do.end71.i, %sw.bb63.i.cleanup_crit_edge, %pmic_gpio_read.exit273.i.cleanup_crit_edge, %pmic_gpio_read.exit273.thread.i, %pmic_gpio_read.exit263.i.cleanup_crit_edge, %pmic_gpio_read.exit263.thread.i, %pmic_gpio_read.exit253.i.cleanup_crit_edge, %pmic_gpio_read.exit253.thread.i, %do.end23.i, %pmic_gpio_read.exit243.i.cleanup_crit_edge, %pmic_gpio_read.exit243.thread.i, %do.end.i, %pmic_gpio_read.exit.i.cleanup_crit_edge, %pmic_gpio_read.exit.thread.i, %if.end20.cleanup_crit_edge, %devm_kcalloc.exit215.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %200, %if.then50 ], [ %call80, %do.end85 ], [ %call93, %do.end98 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit215.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -6, %if.end53.cleanup_crit_edge ], [ -6, %irq_find_host.exit.cleanup_crit_edge ], [ 0, %dev_name.exit235.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %call.i238, %pmic_gpio_read.exit.thread ], [ %call.i308.i, %pmic_gpio_read.exit313.thread.i ], [ %call.i298.i, %pmic_gpio_read.exit303.thread.i ], [ %call.i288.i, %pmic_gpio_read.exit293.thread.i ], [ %call.i278.i, %pmic_gpio_read.exit283.thread.i ], [ %call.i268.i, %pmic_gpio_read.exit273.thread.i ], [ %call.i258.i, %pmic_gpio_read.exit263.thread.i ], [ %call.i248.i, %pmic_gpio_read.exit253.thread.i ], [ %call.i238.i, %pmic_gpio_read.exit243.thread.i ], [ %call.i.i217, %pmic_gpio_read.exit.thread.i ], [ -19, %do.end71.i ], [ -19, %do.end23.i ], [ -19, %do.end.i ], [ %51, %pmic_gpio_read.exit.i.cleanup_crit_edge ], [ %64, %pmic_gpio_read.exit243.i.cleanup_crit_edge ], [ %88, %pmic_gpio_read.exit253.i.cleanup_crit_edge ], [ %101, %pmic_gpio_read.exit263.i.cleanup_crit_edge ], [ %110, %pmic_gpio_read.exit273.i.cleanup_crit_edge ], [ -19, %sw.bb63.i.cleanup_crit_edge ], [ %137, %pmic_gpio_read.exit283.i.cleanup_crit_edge ], [ %147, %pmic_gpio_read.exit293.i.cleanup_crit_edge ], [ %157, %pmic_gpio_read.exit303.i.cleanup_crit_edge ], [ %171, %pmic_gpio_read.exit313.i.cleanup_crit_edge ], [ %185, %pmic_gpio_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.pmic_gpio_state, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %chip) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_child_to_parent_hwirq(ptr noundef %chip, i32 noundef %child_hwirq, i32 noundef %child_type, ptr nocapture noundef writeonly %parent_hwirq, ptr nocapture noundef writeonly %parent_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  %pid_base = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pid_base to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pid_base, align 1
  %conv = zext i8 %1 to i32
  %add = add i32 %conv, %child_hwirq
  %2 = ptrtoint ptr %parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %parent_hwirq, align 4
  %3 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %child_type, ptr %parent_type, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @pmic_gpio_populate_parent_fwspec(ptr noundef %chip, i32 noundef %parent_hwirq, i32 noundef %parent_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %parent_domain = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 37, i32 4
  %1 = ptrtoint ptr %parent_domain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent_domain, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwnode, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %param_count, align 4
  %usid = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %usid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %usid, align 4
  %conv = zext i8 %8 to i32
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %param, align 8
  %arrayidx4 = getelementptr %struct.irq_fwspec, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %parent_hwirq, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %call7.i.i, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent_type, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_child_offset_to_irq(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_domain_translate(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %2 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp5 = icmp ugt i32 %5, %conv
  br i1 %cmp5, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %5, -1
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %hwirq, align 4
  %arrayidx10 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_groups_count(ptr nocapture noundef readonly %pctldev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_gpio_get_group_name(ptr nocapture noundef readonly %pctldev, i32 noundef %pin) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_group_pins(ptr nocapture noundef readonly %pctldev, i32 noundef %pin, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins1 = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %pins, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_functions_count(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_gpio_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [10 x ptr], ptr @pmic_gpio_functions, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_function_groups(ptr nocapture noundef readonly %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_qgroups) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pmic_gpio_groups, ptr %groups, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npins, align 4
  %5 = ptrtoint ptr %num_qgroups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_qgroups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %function)
  %cmp = icmp ugt i32 %function, 9
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %function) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %lv_mv_type = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %lv_mv_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lv_mv_type, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %8 = and i32 %function, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %switch = icmp eq i32 %8, 4
  br i1 %switch, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end11:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %function)
  %cmp12 = icmp ugt i32 %function, 5
  %sub = add nsw i32 %function, -2
  %spec.select = select i1 %cmp12, i32 %sub, i32 %function
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %if.end.if.end15_crit_edge
  %function.addr.0 = phi i32 [ %function, %if.end.if.end15_crit_edge ], [ %spec.select, %if.end11 ]
  %function16 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %function16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %function.addr.0, ptr %function16, align 4
  %analog_pass = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %analog_pass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %analog_pass, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.else, label %if.end15.if.end29_crit_edge

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.else:                                          ; preds = %if.end15
  %output_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %output_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %output_enabled, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %if.else.if.else22_crit_edge, label %land.lhs.true

if.else.if.else22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

land.lhs.true:                                    ; preds = %if.else
  %input_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %input_enabled, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  br i1 %tobool20.not, label %land.lhs.true.if.else22_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true.if.else22_crit_edge, %if.else.if.else22_crit_edge
  %not.tobool19.not = xor i1 %tobool19.not, true
  %. = zext i1 %not.tobool19.not to i32
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %land.lhs.true.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %val.0 = phi i32 [ 3, %if.end15.if.end29_crit_edge ], [ 2, %land.lhs.true.if.end29_crit_edge ], [ %., %if.else22 ]
  br i1 %tobool.not, label %if.else49, label %if.then32

if.then32:                                        ; preds = %if.end29
  %map.i = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 4
  %conv.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv.i, 64
  %call.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add.i, i32 noundef %val.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pmic_gpio_write.exit.thread, label %if.end36

pmic_gpio_write.exit.thread:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef 64) #15
  br label %cleanup

if.end36:                                         ; preds = %if.then32
  %atest = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 14
  %22 = ptrtoint ptr %atest to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %atest, align 4
  %sub37 = add i32 %23, -1
  %24 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map.i, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %5, align 4
  %conv.i116 = zext i16 %27 to i32
  %add.i117 = add nuw nsw i32 %conv.i116, 74
  %call.i118 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add.i117, i32 noundef %sub37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp.i119, label %pmic_gpio_write.exit121.thread, label %if.end41

pmic_gpio_write.exit121.thread:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.30, i32 noundef 74) #15
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %out_value = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %out_value to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %out_value, align 1, !range !272
  %32 = shl nuw i8 %31, 7
  %shl = zext i8 %32 to i32
  %33 = ptrtoint ptr %function16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %function16, align 4
  %and = and i32 %34, 15
  %or = or i32 %and, %shl
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %5, align 4
  %conv.i123 = zext i16 %38 to i32
  %add.i124 = add nuw nsw i32 %conv.i123, 68
  %call.i125 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef %add.i124, i32 noundef %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp.i126 = icmp slt i32 %call.i125, 0
  br i1 %cmp.i126, label %pmic_gpio_write.exit128.thread, label %if.end41.if.end64_crit_edge

if.end41.if.end64_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

pmic_gpio_write.exit128.thread:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.30, i32 noundef 68) #15
  br label %cleanup

if.else49:                                        ; preds = %if.end29
  %shl50 = shl nuw nsw i32 %val.0, 4
  %shl52 = shl nuw nsw i32 %function.addr.0, 1
  %or53 = or i32 %shl50, %shl52
  %out_value54 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 2
  %41 = ptrtoint ptr %out_value54 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %out_value54, align 1, !range !272
  %43 = zext i8 %42 to i32
  %or58 = or i32 %or53, %43
  %map.i129 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 1
  %44 = ptrtoint ptr %map.i129 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i129, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %5, align 4
  %conv.i130 = zext i16 %47 to i32
  %add.i131 = add nuw nsw i32 %conv.i130, 64
  %call.i132 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %add.i131, i32 noundef %or58) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i133 = icmp slt i32 %call.i132, 0
  br i1 %cmp.i133, label %pmic_gpio_write.exit135.thread, label %if.else49.if.end64_crit_edge

if.else49.if.end64_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

pmic_gpio_write.exit135.thread:                   ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.30, i32 noundef 64) #15
  br label %cleanup

if.end64:                                         ; preds = %if.else49.if.end64_crit_edge, %if.end41.if.end64_crit_edge
  %is_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_enabled, align 2, !range !272
  %52 = shl nuw i8 %51, 7
  %shl67 = zext i8 %52 to i32
  %map.i136 = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 1
  %53 = ptrtoint ptr %map.i136 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map.i136, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %5, align 4
  %conv.i137 = zext i16 %56 to i32
  %add.i138 = add nuw nsw i32 %conv.i137, 70
  %call.i139 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef %add.i138, i32 noundef %shl67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp.i140 = icmp slt i32 %call.i139, 0
  br i1 %cmp.i140, label %do.end.i141, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i141:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.30, i32 noundef 70) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.i141, %if.end64.cleanup_crit_edge, %pmic_gpio_write.exit135.thread, %pmic_gpio_write.exit128.thread, %pmic_gpio_write.exit121.thread, %pmic_gpio_write.exit.thread, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ %call.i, %pmic_gpio_write.exit.thread ], [ %call.i118, %pmic_gpio_write.exit121.thread ], [ %call.i125, %pmic_gpio_write.exit128.thread ], [ %call.i132, %pmic_gpio_write.exit135.thread ], [ %call.i139, %if.end64.cleanup_crit_edge ], [ %call.i139, %do.end.i141 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_config_get(ptr nocapture noundef readonly %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %pin, i32 2
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %trunc = trunc i32 %1 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 8, label %sw.bb
    i8 6, label %sw.bb1
    i8 7, label %sw.bb6
    i8 3, label %sw.bb11
    i8 1, label %sw.bb15
    i8 5, label %sw.bb20
    i8 2, label %sw.bb25
    i8 21, label %sw.bb28
    i8 12, label %sw.bb29
    i8 18, label %sw.bb33
    i8 17, label %sw.bb35
    i8 -128, label %sw.bb38
    i8 -127, label %sw.bb40
    i8 -126, label %sw.bb41
    i8 -125, label %sw.bb42
    i8 -124, label %sw.bb45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %buffer_type = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 10
  %9 = ptrtoint ptr %buffer_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %buffer_type2 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 10
  %11 = ptrtoint ptr %buffer_type2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp3.not = icmp eq i32 %12, 1
  br i1 %cmp3.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %buffer_type7 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 10
  %13 = ptrtoint ptr %buffer_type7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_type7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp8.not = icmp eq i32 %14, 2
  br i1 %cmp8.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %pullup = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 11
  %15 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp12.not = icmp eq i32 %16, 4
  br i1 %cmp12.not, label %sw.bb11.sw.epilog_crit_edge, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %pullup16 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 11
  %17 = ptrtoint ptr %pullup16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pullup16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp17.not = icmp eq i32 %18, 5
  br i1 %cmp17.not, label %sw.bb15.sw.epilog_crit_edge, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %pullup21 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 11
  %19 = ptrtoint ptr %pullup21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pullup21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22.not = icmp eq i32 %20, 0
  br i1 %cmp22.not, label %sw.bb20.sw.epilog_crit_edge, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %is_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_enabled, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %sw.bb25.sw.epilog_crit_edge, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %power_source = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 9
  %23 = ptrtoint ptr %power_source to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_source, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %input_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 5
  %25 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %input_enabled, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30.not = icmp eq i8 %26, 0
  br i1 %tobool30.not, label %sw.bb29.cleanup_crit_edge, label %sw.bb29.sw.epilog_crit_edge

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %output_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 4
  %27 = ptrtoint ptr %output_enabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %output_enabled, align 1, !range !272
  %29 = zext i8 %28 to i32
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %out_value = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %out_value to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %out_value, align 1, !range !272
  %32 = zext i8 %31 to i32
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pullup39 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 11
  %33 = ptrtoint ptr %pullup39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pullup39, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %strength = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 12
  %35 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %strength, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %atest = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 14
  %37 = ptrtoint ptr %atest to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %atest, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %analog_pass = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 6
  %39 = ptrtoint ptr %analog_pass to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %analog_pass, align 1, !range !272
  %41 = zext i8 %40 to i32
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dtest_buffer = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 15
  %42 = ptrtoint ptr %dtest_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dtest_buffer, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb38, %sw.bb35, %sw.bb33, %sw.bb29.sw.epilog_crit_edge, %sw.bb28, %sw.bb25.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arg.0 = phi i32 [ %43, %sw.bb45 ], [ %41, %sw.bb42 ], [ %38, %sw.bb41 ], [ %36, %sw.bb40 ], [ %34, %sw.bb38 ], [ %32, %sw.bb35 ], [ %29, %sw.bb33 ], [ %24, %sw.bb28 ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 1, %sw.bb1.sw.epilog_crit_edge ], [ 1, %sw.bb6.sw.epilog_crit_edge ], [ 1, %sw.bb11.sw.epilog_crit_edge ], [ 1, %sw.bb15.sw.epilog_crit_edge ], [ 1, %sw.bb20.sw.epilog_crit_edge ], [ 1, %sw.bb25.sw.epilog_crit_edge ], [ 1, %sw.bb29.sw.epilog_crit_edge ]
  %shl.i = shl i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %44 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb29.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %sw.bb29.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %nconfs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #12
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %is_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nconfs)
  %cmp330.not = icmp eq i32 %nconfs, 0
  br i1 %cmp330.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dtest_buffer = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 15
  %lv_mv_type55 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 7
  %analog_pass = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 6
  %atest = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 14
  %strength = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 12
  %pullup44 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 11
  %output_enabled37 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 4
  %out_value = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 2
  %input_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 5
  %num_sources = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 8
  %power_source = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 9
  %have_buffer8 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 3
  %buffer_type12 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0331 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.0331
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  %shr.i = lshr i32 %8, 8
  %trunc = trunc i32 %8 to i8
  %9 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 8, label %sw.bb
    i8 6, label %sw.bb5
    i8 7, label %sw.bb7
    i8 1, label %sw.bb13
    i8 5, label %sw.bb14
    i8 3, label %sw.bb16
    i8 2, label %sw.bb22
    i8 21, label %sw.bb24
    i8 12, label %sw.bb28
    i8 18, label %sw.bb31
    i8 17, label %sw.bb36
    i8 -128, label %sw.bb40
    i8 -127, label %sw.bb45
    i8 -126, label %sw.bb49
    i8 -125, label %sw.bb54
    i8 -124, label %sw.bb59
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %buffer_type12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer_type12, align 4
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  %11 = ptrtoint ptr %have_buffer8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %have_buffer8, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %sw.bb5.cleanup_crit_edge, label %if.end

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %buffer_type12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %buffer_type12, align 4
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  %14 = ptrtoint ptr %have_buffer8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %have_buffer8, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %sw.bb7.cleanup_crit_edge, label %if.end11

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %buffer_type12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %buffer_type12, align 4
  br label %for.inc

sw.bb13:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %pullup44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %pullup44, align 4
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %pullup44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pullup44, align 4
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %tobool17.not = icmp ult i32 %8, 256
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %pullup44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %pullup44, align 4
  br label %for.inc

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %pullup44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %pullup44, align 4
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_enabled, align 2
  br label %for.inc

sw.bb24:                                          ; preds = %for.body
  %22 = ptrtoint ptr %num_sources to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_sources, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %23)
  %cmp25.not = icmp ult i32 %shr.i, %23
  br i1 %cmp25.not, label %if.end27, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %power_source to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i, ptr %power_source, align 4
  br label %for.inc

sw.bb28:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %tobool29 = icmp ugt i32 %8, 255
  %frombool = zext i1 %tobool29 to i8
  %25 = ptrtoint ptr %input_enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %input_enabled, align 2
  br label %for.inc

sw.bb31:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %tobool32 = icmp ugt i32 %8, 255
  %frombool35 = zext i1 %tobool32 to i8
  %26 = ptrtoint ptr %output_enabled37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool35, ptr %output_enabled37, align 1
  br label %for.inc

sw.bb36:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %output_enabled37 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %output_enabled37, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %tobool38 = icmp ugt i32 %8, 255
  %frombool39 = zext i1 %tobool38 to i8
  %28 = ptrtoint ptr %out_value to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool39, ptr %out_value, align 1
  br label %for.inc

sw.bb40:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %8)
  %cmp41 = icmp ugt i32 %8, 1023
  br i1 %cmp41, label %sw.bb40.cleanup_crit_edge, label %if.end43

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %pullup44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.i, ptr %pullup44, align 4
  br label %for.inc

sw.bb45:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %8)
  %cmp46 = icmp ugt i32 %8, 1023
  br i1 %cmp46, label %sw.bb45.cleanup_crit_edge, label %if.end48

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr.i, ptr %strength, align 4
  br label %for.inc

sw.bb49:                                          ; preds = %for.body
  %31 = ptrtoint ptr %lv_mv_type55 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lv_mv_type55, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool50.not = icmp eq i8 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %8)
  %cmp51 = icmp ugt i32 %8, 1279
  %or.cond = select i1 %tobool50.not, i1 true, i1 %cmp51
  br i1 %or.cond, label %sw.bb49.cleanup_crit_edge, label %if.end53

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %atest to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr.i, ptr %atest, align 4
  br label %for.inc

sw.bb54:                                          ; preds = %for.body
  %34 = ptrtoint ptr %lv_mv_type55 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lv_mv_type55, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool56.not = icmp eq i8 %35, 0
  br i1 %tobool56.not, label %sw.bb54.cleanup_crit_edge, label %if.end58

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end58:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %analog_pass to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %analog_pass, align 1
  br label %for.inc

sw.bb59:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %8)
  %cmp60 = icmp ugt i32 %8, 1279
  br i1 %cmp60, label %sw.bb59.cleanup_crit_edge, label %if.end62

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %dtest_buffer to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr.i, ptr %dtest_buffer, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end62, %if.end58, %if.end53, %if.end48, %if.end43, %sw.bb36, %sw.bb31, %sw.bb28, %if.end27, %sw.bb22, %if.else, %if.then18, %sw.bb14, %sw.bb13, %if.end11, %if.end, %sw.bb
  %inc = add nuw i32 %i.0331, 1
  %exitcond.not = icmp eq i32 %inc, %nconfs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %power_source63 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 9
  %38 = ptrtoint ptr %power_source63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %power_source63, align 4
  %map.i = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 1
  %40 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i, align 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %5, align 4
  %conv.i = zext i16 %43 to i32
  %add.i = add nuw nsw i32 %conv.i, 65
  %call.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %add.i, i32 noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.end.cleanup.sink.split_crit_edge, label %if.end67

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end67:                                         ; preds = %for.end
  %pullup68 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 11
  %44 = ptrtoint ptr %pullup68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pullup68, align 4
  %46 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map.i, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %5, align 4
  %conv.i275 = zext i16 %49 to i32
  %add.i276 = add nuw nsw i32 %conv.i275, 66
  %call.i277 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %add.i276, i32 noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %cmp.i278 = icmp slt i32 %call.i277, 0
  br i1 %cmp.i278, label %if.end67.cleanup.sink.split_crit_edge, label %if.end73

if.end67.cleanup.sink.split_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end73:                                         ; preds = %if.end67
  %buffer_type74 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 10
  %50 = ptrtoint ptr %buffer_type74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buffer_type74, align 4
  %shl75 = shl i32 %51, 4
  %strength76 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 12
  %52 = ptrtoint ptr %strength76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %strength76, align 4
  %or = or i32 %shl75, %53
  %54 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i, align 4
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %5, align 4
  %conv.i282 = zext i16 %57 to i32
  %add.i283 = add nuw nsw i32 %conv.i282, 69
  %call.i284 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef %add.i283, i32 noundef %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %cmp.i285 = icmp slt i32 %call.i284, 0
  br i1 %cmp.i285, label %if.end73.cleanup.sink.split_crit_edge, label %if.end81

if.end73.cleanup.sink.split_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end81:                                         ; preds = %if.end73
  %dtest_buffer82 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 15
  %58 = ptrtoint ptr %dtest_buffer82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dtest_buffer82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp83 = icmp eq i32 %59, 0
  br i1 %cmp83, label %if.end81.if.end96_crit_edge, label %if.else85

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.else85:                                        ; preds = %if.end81
  %lv_mv_type86 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 7
  %60 = ptrtoint ptr %lv_mv_type86 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %lv_mv_type86, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool87.not = icmp eq i8 %61, 0
  %sub93 = add i32 %59, -1
  br i1 %tobool87.not, label %if.else91, label %if.then88

if.then88:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #14
  %or90 = or i32 %sub93, 128
  br label %if.end96

if.else91:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #14
  %shl94 = shl nuw i32 1, %sub93
  br label %if.end96

if.end96:                                         ; preds = %if.else91, %if.then88, %if.end81.if.end96_crit_edge
  %val.0 = phi i32 [ %or90, %if.then88 ], [ %shl94, %if.else91 ], [ 0, %if.end81.if.end96_crit_edge ]
  %62 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %map.i, align 4
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %5, align 4
  %conv.i289 = zext i16 %65 to i32
  %add.i290 = add nuw nsw i32 %conv.i289, 67
  %call.i291 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef %add.i290, i32 noundef %val.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %cmp.i292 = icmp slt i32 %call.i291, 0
  br i1 %cmp.i292, label %if.end96.cleanup.sink.split_crit_edge, label %if.end100

if.end96.cleanup.sink.split_crit_edge:            ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end100:                                        ; preds = %if.end96
  %analog_pass101 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 6
  %66 = ptrtoint ptr %analog_pass101 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %analog_pass101, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool102.not = icmp eq i8 %67, 0
  br i1 %tobool102.not, label %if.else104, label %if.end100.if.end117_crit_edge

if.end100.if.end117_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.else104:                                       ; preds = %if.end100
  %output_enabled105 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 4
  %68 = ptrtoint ptr %output_enabled105 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %output_enabled105, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool106.not = icmp eq i8 %69, 0
  br i1 %tobool106.not, label %if.else104.if.else110_crit_edge, label %land.lhs.true

if.else104.if.else110_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else110

land.lhs.true:                                    ; preds = %if.else104
  %input_enabled107 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 5
  %70 = ptrtoint ptr %input_enabled107 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %input_enabled107, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool108.not = icmp eq i8 %71, 0
  br i1 %tobool108.not, label %land.lhs.true.if.else110_crit_edge, label %land.lhs.true.if.end117_crit_edge

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

land.lhs.true.if.else110_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else110

if.else110:                                       ; preds = %land.lhs.true.if.else110_crit_edge, %if.else104.if.else110_crit_edge
  %not.tobool106.not = xor i1 %tobool106.not, true
  %. = zext i1 %not.tobool106.not to i32
  br label %if.end117

if.end117:                                        ; preds = %if.else110, %land.lhs.true.if.end117_crit_edge, %if.end100.if.end117_crit_edge
  %val.1 = phi i32 [ 3, %if.end100.if.end117_crit_edge ], [ 2, %land.lhs.true.if.end117_crit_edge ], [ %., %if.else110 ]
  %lv_mv_type118 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 7
  %72 = ptrtoint ptr %lv_mv_type118 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lv_mv_type118, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool119.not = icmp eq i8 %73, 0
  br i1 %tobool119.not, label %if.else140, label %if.then120

if.then120:                                       ; preds = %if.end117
  %74 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i, align 4
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %5, align 4
  %conv.i296 = zext i16 %77 to i32
  %add.i297 = add nuw nsw i32 %conv.i296, 64
  %call.i298 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef %add.i297, i32 noundef %val.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %cmp.i299 = icmp slt i32 %call.i298, 0
  br i1 %cmp.i299, label %if.then120.cleanup.sink.split_crit_edge, label %if.end124

if.then120.cleanup.sink.split_crit_edge:          ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end124:                                        ; preds = %if.then120
  %atest125 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 14
  %78 = ptrtoint ptr %atest125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %atest125, align 4
  %sub126 = add i32 %79, -1
  %80 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map.i, align 4
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %5, align 4
  %conv.i303 = zext i16 %83 to i32
  %add.i304 = add nuw nsw i32 %conv.i303, 74
  %call.i305 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef %add.i304, i32 noundef %sub126) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp.i306 = icmp slt i32 %call.i305, 0
  br i1 %cmp.i306, label %if.end124.cleanup.sink.split_crit_edge, label %if.end130

if.end124.cleanup.sink.split_crit_edge:           ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end130:                                        ; preds = %if.end124
  %out_value131 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 2
  %84 = ptrtoint ptr %out_value131 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %out_value131, align 1, !range !272
  %86 = shl nuw i8 %85, 7
  %shl133 = zext i8 %86 to i32
  %function = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 13
  %87 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %function, align 4
  %and = and i32 %88, 15
  %or134 = or i32 %and, %shl133
  %89 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map.i, align 4
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %5, align 4
  %conv.i310 = zext i16 %92 to i32
  %add.i311 = add nuw nsw i32 %conv.i310, 68
  %call.i312 = tail call i32 @regmap_write(ptr noundef %90, i32 noundef %add.i311, i32 noundef %or134) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %cmp.i313 = icmp slt i32 %call.i312, 0
  br i1 %cmp.i313, label %if.end130.cleanup.sink.split_crit_edge, label %if.end130.if.end155_crit_edge

if.end130.if.end155_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.end130.cleanup.sink.split_crit_edge:           ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else140:                                       ; preds = %if.end117
  %shl141 = shl nuw nsw i32 %val.1, 4
  %function142 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 13
  %93 = ptrtoint ptr %function142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %function142, align 4
  %shl143 = shl i32 %94, 1
  %or144 = or i32 %shl143, %shl141
  %out_value145 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 2
  %95 = ptrtoint ptr %out_value145 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %out_value145, align 1, !range !272
  %97 = zext i8 %96 to i32
  %or149 = or i32 %or144, %97
  %98 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map.i, align 4
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %5, align 4
  %conv.i317 = zext i16 %101 to i32
  %add.i318 = add nuw nsw i32 %conv.i317, 64
  %call.i319 = tail call i32 @regmap_write(ptr noundef %99, i32 noundef %add.i318, i32 noundef %or149) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %cmp.i320 = icmp slt i32 %call.i319, 0
  br i1 %cmp.i320, label %if.else140.cleanup.sink.split_crit_edge, label %if.else140.if.end155_crit_edge

if.else140.if.end155_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.else140.cleanup.sink.split_crit_edge:          ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end155:                                        ; preds = %if.else140.if.end155_crit_edge, %if.end130.if.end155_crit_edge
  %102 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %is_enabled, align 2, !range !272
  %104 = shl nuw i8 %103, 7
  %shl159 = zext i8 %104 to i32
  %105 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %map.i, align 4
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %5, align 4
  %conv.i324 = zext i16 %108 to i32
  %add.i325 = add nuw nsw i32 %conv.i324, 70
  %call.i326 = tail call i32 @regmap_write(ptr noundef %106, i32 noundef %add.i325, i32 noundef %shl159) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %cmp.i327 = icmp slt i32 %call.i326, 0
  br i1 %cmp.i327, label %if.end155.cleanup.sink.split_crit_edge, label %if.end155.cleanup_crit_edge

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end155.cleanup.sink.split_crit_edge:           ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end155.cleanup.sink.split_crit_edge, %if.else140.cleanup.sink.split_crit_edge, %if.end130.cleanup.sink.split_crit_edge, %if.end124.cleanup.sink.split_crit_edge, %if.then120.cleanup.sink.split_crit_edge, %if.end96.cleanup.sink.split_crit_edge, %if.end73.cleanup.sink.split_crit_edge, %if.end67.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.sink332 = phi i32 [ 65, %for.end.cleanup.sink.split_crit_edge ], [ 66, %if.end67.cleanup.sink.split_crit_edge ], [ 69, %if.end73.cleanup.sink.split_crit_edge ], [ 67, %if.end96.cleanup.sink.split_crit_edge ], [ 64, %if.then120.cleanup.sink.split_crit_edge ], [ 74, %if.end124.cleanup.sink.split_crit_edge ], [ 68, %if.end130.cleanup.sink.split_crit_edge ], [ 64, %if.else140.cleanup.sink.split_crit_edge ], [ 70, %if.end155.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %for.end.cleanup.sink.split_crit_edge ], [ %call.i277, %if.end67.cleanup.sink.split_crit_edge ], [ %call.i284, %if.end73.cleanup.sink.split_crit_edge ], [ %call.i291, %if.end96.cleanup.sink.split_crit_edge ], [ %call.i298, %if.then120.cleanup.sink.split_crit_edge ], [ %call.i305, %if.end124.cleanup.sink.split_crit_edge ], [ %call.i312, %if.end130.cleanup.sink.split_crit_edge ], [ %call.i319, %if.else140.cleanup.sink.split_crit_edge ], [ %call.i326, %if.end155.cleanup.sink.split_crit_edge ]
  %109 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.30, i32 noundef %.sink332) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end155.cleanup_crit_edge, %sw.bb59.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i326, %if.end155.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %sw.bb40.cleanup_crit_edge ], [ -22, %sw.bb45.cleanup_crit_edge ], [ -22, %sw.bb49.cleanup_crit_edge ], [ -22, %sw.bb54.cleanup_crit_edge ], [ -22, %sw.bb59.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_gpio_config_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  %val.i67 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #12
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %add = add i32 %pin, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %add) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !270
  %map.i = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %5, align 4
  %conv.i = zext i16 %10 to i32
  %add.i = add nuw nsw i32 %conv.i, 70
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add.i, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pmic_gpio_read.exit.thread, label %pmic_gpio_read.exit

pmic_gpio_read.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57, i32 noundef 70) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %if.then

pmic_gpio_read.exit:                              ; preds = %entry
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %pmic_gpio_read.exit.if.then_crit_edge, label %if.else

pmic_gpio_read.exit.if.then_crit_edge:            ; preds = %pmic_gpio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %pmic_gpio_read.exit.if.then_crit_edge, %pmic_gpio_read.exit.thread
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.46) #12
  br label %cleanup

if.else:                                          ; preds = %pmic_gpio_read.exit
  %input_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %input_enabled, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %if.else.if.end8_crit_edge, label %if.then3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i67) #12
  %18 = ptrtoint ptr %val.i67 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i67, align 4, !annotation !270
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %5, align 4
  %conv.i69 = zext i16 %22 to i32
  %add.i70 = add nuw nsw i32 %conv.i69, 16
  %call.i71 = call i32 @regmap_read(ptr noundef %20, i32 noundef %add.i70, ptr noundef nonnull %val.i67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %pmic_gpio_read.exit76.thread, label %pmic_gpio_read.exit76

pmic_gpio_read.exit76.thread:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.57, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i67) #12
  br label %cleanup

pmic_gpio_read.exit76:                            ; preds = %if.then3
  %25 = ptrtoint ptr %val.i67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp5 = icmp slt i32 %26, 0
  br i1 %cmp5, label %pmic_gpio_read.exit76.cleanup_crit_edge, label %if.end

pmic_gpio_read.exit76.cleanup_crit_edge:          ; preds = %pmic_gpio_read.exit76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pmic_gpio_read.exit76
  call void @__sanitizer_cov_trace_pc() #14
  %out_value = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 2
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = ptrtoint ptr %out_value to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %out_value, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.else.if.end8_crit_edge
  %function9 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 13
  %30 = ptrtoint ptr %function9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %function9, align 4
  %lv_mv_type = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %lv_mv_type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lv_mv_type, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool10.not = icmp eq i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp12 = icmp ugt i32 %31, 3
  %or.cond66 = select i1 %tobool10.not, i1 %cmp12, i1 false
  %add14 = add i32 %31, 2
  %function.0 = select i1 %or.cond66, i32 %add14, i32 %31
  %analog_pass = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %analog_pass to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %analog_pass, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not = icmp eq i8 %35, 0
  br i1 %tobool16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.47) #12
  br label %if.end20

if.else18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %output_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %output_enabled to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %output_enabled, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool19.not = icmp eq i8 %37, 0
  %cond = select i1 %tobool19.not, ptr @.str.50, ptr @.str.49
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond) #12
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then17
  %out_value21 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %out_value21 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %out_value21, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool22.not = icmp eq i8 %39, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.44, ptr @.str.42
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond23) #12
  %arrayidx24 = getelementptr [10 x ptr], ptr @pmic_gpio_functions, i32 0, i32 %function.0
  %40 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx24, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef %41) #12
  %power_source = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 9
  %42 = ptrtoint ptr %power_source to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %power_source, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef %43) #12
  %pullup = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 11
  %44 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pullup, align 4
  %arrayidx25 = getelementptr [6 x ptr], ptr @pmic_gpio_config_dbg_show.biases, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx25, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef %47) #12
  %buffer_type = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 10
  %48 = ptrtoint ptr %buffer_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buffer_type, align 4
  %arrayidx26 = getelementptr [3 x ptr], ptr @pmic_gpio_config_dbg_show.buffer_types, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx26, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef %51) #12
  %strength = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 12
  %52 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %strength, align 4
  %arrayidx27 = getelementptr [4 x ptr], ptr @pmic_gpio_config_dbg_show.strengths, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx27, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef %55) #12
  %atest = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 14
  %56 = ptrtoint ptr %atest to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %atest, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %57) #12
  %dtest_buffer = getelementptr inbounds %struct.pmic_gpio_pad, ptr %5, i32 0, i32 15
  %58 = ptrtoint ptr %dtest_buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dtest_buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %59) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %pmic_gpio_read.exit76.cleanup_crit_edge, %pmic_gpio_read.exit76.thread, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_direction_input(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #12
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 268, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @pmic_gpio_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_direction_output(ptr noundef %chip, i32 noundef %pin, i32 noundef %val) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #12
  %shl.i = shl i32 %val, 8
  %or.i = or i32 %shl.i, 17
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or.i, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @pmic_gpio_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_gpio_get(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  %ctrl = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %pin, i32 2
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %is_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_enabled, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_enabled = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %input_enabled, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !270
  %map.i = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %7, align 4
  %conv.i = zext i16 %16 to i32
  %add.i = add nuw nsw i32 %conv.i, 16
  %call.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %add.i, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pmic_gpio_read.exit.thread, label %pmic_gpio_read.exit

pmic_gpio_read.exit.thread:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.57, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %cleanup

pmic_gpio_read.exit:                              ; preds = %if.then2
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %pmic_gpio_read.exit.cleanup_crit_edge, label %if.end5

pmic_gpio_read.exit.cleanup_crit_edge:            ; preds = %pmic_gpio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %pmic_gpio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %out_value = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 2
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = ptrtoint ptr %out_value to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %out_value, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end.if.end7_crit_edge
  %out_value8 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %out_value8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %out_value8, align 1, !range !272
  %26 = zext i8 %25 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %pmic_gpio_read.exit.cleanup_crit_edge, %pmic_gpio_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %20, %pmic_gpio_read.exit.cleanup_crit_edge ], [ %call.i, %pmic_gpio_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_gpio_set(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #12
  %shl.i = shl i32 %value, 8
  %or.i = or i32 %shl.i, 17
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or.i, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @pmic_gpio_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp7.not = icmp eq i16 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ctrl = getelementptr inbounds %struct.pmic_gpio_state, ptr %call, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  tail call void @pmic_gpio_config_dbg_show(ptr noundef %3, ptr noundef %s, i32 noundef %i.08)
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.113) #12
  %inc = add nuw nsw i32 %i.08, 1
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_of_xlate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %gpio_desc, ptr noundef writeonly %flags) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %gpio_desc, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %args3 = getelementptr inbounds %struct.of_phandle_args, ptr %gpio_desc, i32 0, i32 2
  %5 = ptrtoint ptr %args3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args3, align 4
  %sub = add i32 %6, -1
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end2 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !259}
!llvm.module.flags = !{!261, !262, !263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !{ptr @__initcall__kmod_pinctrl_spmi_gpio__227_1199_pmic_gpio_driver_init6, !1, !"__initcall__kmod_pinctrl_spmi_gpio__227_1199_pmic_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1199, i32 1}
!2 = !{ptr @__exitcall_pmic_gpio_driver_exit, !1, !"__exitcall_pmic_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1201, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1202, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias230, !8, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1203, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1204, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1192, i32 14}
!14 = !{ptr @pmic_gpio_driver, !15, !"pmic_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1190, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1005, i32 43}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1007, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pmic_gpio_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pmic_gpio_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1084, i32 20}
!28 = !{ptr @pmic_gpio_probe.lock_key, !29, !"lock_key", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1103, i32 8}
!30 = !{ptr @pmic_gpio_probe.request_key, !29, !"request_key", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1105, i32 3}
!33 = !{ptr @pmic_gpio_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pmic_gpio_probe._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1119, i32 43}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1123, i32 4}
!39 = !{ptr @pmic_gpio_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pmic_gpio_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @pmic_gpio_pinctrl_ops, !42, !"pmic_gpio_pinctrl_ops", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 266, i32 33}
!43 = !{ptr @pmic_gpio_pinmux_ops, !44, !"pmic_gpio_pinmux_ops", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 370, i32 32}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 206, i32 34}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 207, i32 34}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 208, i32 33}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 209, i32 33}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 210, i32 33}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 211, i32 33}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 212, i32 34}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 213, i32 34}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 214, i32 34}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 215, i32 34}
!65 = !{ptr @pmic_gpio_functions, !66, !"pmic_gpio_functions", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 205, i32 26}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 304, i32 3}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pmic_gpio_set_mux._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @pmic_gpio_set_mux._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 316, i32 4}
!74 = !{ptr @pmic_gpio_set_mux._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pmic_gpio_set_mux._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 241, i32 3}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pmic_gpio_write._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @pmic_gpio_write._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @pmic_gpio_pinconf_ops, !82, !"pmic_gpio_pinconf_ops", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 689, i32 33}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 636, i32 3}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 636, i32 19}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 636, i32 36}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 637, i32 3}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 637, i32 33}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 637, i32 51}
!95 = !{ptr @pmic_gpio_config_dbg_show.biases, !96, !"biases", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 635, i32 27}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 640, i32 3}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 640, i32 16}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 640, i32 30}
!103 = !{ptr @pmic_gpio_config_dbg_show.buffer_types, !104, !"buffer_types", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 639, i32 27}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 643, i32 3}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 643, i32 9}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 643, i32 17}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 643, i32 27}
!113 = !{ptr @pmic_gpio_config_dbg_show.strengths, !114, !"strengths", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 642, i32 27}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 648, i32 16}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 653, i32 15}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 674, i32 16}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 676, i32 18}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 677, i32 28}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 677, i32 36}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 679, i32 17}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 680, i32 17}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 681, i32 17}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 682, i32 17}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 684, i32 17}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 685, i32 17}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 226, i32 3}
!141 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @pmic_gpio_read._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @pmic_gpio_read._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 180, i32 3}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 181, i32 3}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 182, i32 3}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 183, i32 3}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 184, i32 3}
!154 = !{ptr @pmic_gpio_bindings, !155, !"pmic_gpio_bindings", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 179, i32 44}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 189, i32 2}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 190, i32 2}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 191, i32 2}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 192, i32 2}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 193, i32 2}
!166 = !{ptr @pmic_conf_items, !167, !"pmic_conf_items", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 188, i32 37}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 2}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 11}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 20}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 29}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 38}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 47}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 56}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 198, i32 65}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 199, i32 2}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 199, i32 11}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 199, i32 21}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 199, i32 31}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 199, i32 41}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 199, i32 51}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 199, i32 61}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 200, i32 2}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 200, i32 12}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 200, i32 22}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 200, i32 32}
!206 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 200, i32 42}
!208 = !{ptr @.str.89, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 200, i32 52}
!210 = !{ptr @.str.90, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 200, i32 62}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 201, i32 2}
!214 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 201, i32 12}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 201, i32 22}
!218 = !{ptr @.str.94, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 201, i32 32}
!220 = !{ptr @.str.95, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 201, i32 42}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 201, i32 52}
!224 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 201, i32 62}
!226 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 202, i32 2}
!228 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 202, i32 12}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 202, i32 22}
!232 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 202, i32 32}
!234 = !{ptr @.str.102, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 202, i32 42}
!236 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 202, i32 52}
!238 = !{ptr @.str.104, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 202, i32 62}
!240 = !{ptr @pmic_gpio_groups, !241, !"pmic_gpio_groups", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 197, i32 26}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 794, i32 3}
!244 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @pmic_gpio_populate._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @pmic_gpio_populate._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 827, i32 3}
!249 = !{ptr @pmic_gpio_populate._entry.107, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @pmic_gpio_populate._entry_ptr.109, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 877, i32 3}
!253 = !{ptr @pmic_gpio_populate._entry.110, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @pmic_gpio_populate._entry_ptr.112, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @pmic_gpio_gpio_template, !256, !"pmic_gpio_gpio_template", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 773, i32 31}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 769, i32 15}
!259 = !{ptr @pmic_gpio_of_match, !260, !"pmic_gpio_of_match", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c", i32 1143, i32 34}
!261 = !{i32 1, !"wchar_size", i32 2}
!262 = !{i32 1, !"min_enum_size", i32 4}
!263 = !{i32 8, !"branch-target-enforcement", i32 0}
!264 = !{i32 8, !"sign-return-address", i32 0}
!265 = !{i32 8, !"sign-return-address-all", i32 0}
!266 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!267 = !{i32 7, !"uwtable", i32 1}
!268 = !{i32 7, !"frame-pointer", i32 2}
!269 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!270 = !{!"auto-init"}
!271 = !{!"branch_weights", i32 1, i32 2000}
!272 = !{i8 0, i8 2}
!273 = !{i32 0, i32 33}
