; ModuleID = '/llk/IR_all_yes/drivers/regulator/twl-regulator.c_pt.bc'
source_filename = "../drivers/regulator/twl-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.twlreg_info = type { i8, i8, i8, ptr, i8, %struct.regulator_desc, i32, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__UNIQUE_ID_alias288 = internal constant [41 x i8] c"twl_regulator.alias=platform:twl4030_reg\00", section ".modinfo", align 1
@__initcall__kmod_twl_regulator__289_667_twlreg_init4 = internal global ptr @twlreg_init, section ".initcall4.init", align 4
@twlreg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twlreg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twlreg_exit = internal global ptr @twlreg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [51 x i8] c"twl_regulator.description=TWL4030 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [51 x i8] c"twl_regulator.file=drivers/regulator/twl-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"twl_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl4030_reg\00", [20 x i8] zeroinitializer }, align 32
@twl_of_match = internal constant { [21 x %struct.of_device_id], [1036 x i8] } { [21 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX2_4030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl5030-vaux2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vaux4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VAUX4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vmmc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VMMC1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vmmc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VMMC2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vpll1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VPLL1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vpll2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VPLL2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vsim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VSIM }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vdac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VDAC }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vintana2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VINTANA2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VIO }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vdd1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VDD1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vdd2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL4030_INFO_VDD2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vintana1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VINTANA1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vintdig\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VINTDIG }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vusb1v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB1V5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vusb1v8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB1V8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-vusb3v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB3V1 }, %struct.of_device_id zeroinitializer], [1036 x i8] zeroinitializer }, align 32
@twlreg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't register %s, %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"twlreg_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/regulator/twl-regulator.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twlreg_probe._entry_ptr = internal global ptr @twlreg_probe._entry, section ".printk_index", align 4
@TWL4030_INFO_VAUX1 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 23, i8 1, i8 8, ptr @VAUX1_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VAUX2_4030 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 27, i8 2, i8 16, ptr @VAUX2_4030_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VAUX2 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 27, i8 2, i8 16, ptr @VAUX2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VAUX3 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 31, i8 3, i8 8, ptr @VAUX3_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VAUX4 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 35, i8 4, i8 16, ptr @VAUX4_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VMMC1 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 39, i8 5, i8 4, ptr @VMMC1_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VMMC2 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 43, i8 6, i8 16, ptr @VMMC2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VPLL1 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 47, i8 7, i8 8, ptr @VPLL1_VSEL_table, i8 0, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VPLL2 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 51, i8 8, i8 16, ptr @VPLL2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 16, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VSIM = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 55, i8 9, i8 8, ptr @VSIM_VSEL_table, i8 0, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 8, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VDAC = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 59, i8 10, i8 4, ptr @VDAC_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 4, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VINTANA2 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 67, i8 12, i8 2, ptr @VINTANA2_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VIO = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 75, i8 14, i8 2, ptr @VIO_VSEL_table, i8 8, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 2, i32 0, ptr @twl4030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1000, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VDD1 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 85, i8 15, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 68, i32 0, ptr @twl4030smps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @VDD1_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1000, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWL4030_INFO_VDD2 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 99, i8 16, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 69, i32 0, ptr @twl4030smps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @VDD2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1000, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VINTANA1 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 63, i8 11, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VINTDIG = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 71, i8 13, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VUSB1V5 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 113, i8 17, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VUSB1V8 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 116, i8 18, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VUSB3V1 = internal constant { %struct.twlreg_info, [88 x i8] } { %struct.twlreg_info { i8 119, i8 19, i8 0, ptr null, i8 8, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @twl4030fixed_ops, i32 0, i32 0, ptr null, i32 3100000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 150, i32 0, i32 0, ptr @twl4030reg_map_mode }, i32 0, ptr null }, [88 x i8] zeroinitializer }, align 32
@VAUX1_VSEL_table = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 -31268, i16 -30968, i16 2500, i16 2800, i16 3000, i16 3000, i16 3000, i16 3000], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VAUX1\00", [26 x i8] zeroinitializer }, align 32
@twl4030ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @twl4030ldo_list_voltage, ptr null, ptr null, ptr @twl4030ldo_set_voltage_sel, ptr null, ptr @twl4030ldo_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_enable, ptr @twl4030reg_disable, ptr @twl4030reg_is_enabled, ptr @twl4030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@VAUX2_4030_VSEL_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 -31768, i16 -31768, i16 -31568, i16 1300, i16 1500, i16 1800, i16 -30918, i16 2500, i16 -30168, i16 2800, i16 -29918, i16 -29768, i16 -29618, i16 -29618, i16 -29618, i16 -29618], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VAUX2_4030\00", [21 x i8] zeroinitializer }, align 32
@VAUX2_VSEL_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 1700, i16 1700, i16 1900, i16 1300, i16 1500, i16 1800, i16 2000, i16 2500, i16 2100, i16 2800, i16 2200, i16 2300, i16 2400, i16 2400, i16 2400, i16 2400], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VAUX2\00", [26 x i8] zeroinitializer }, align 32
@VAUX3_VSEL_table = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1500, i16 1800, i16 2500, i16 2800, i16 3000, i16 3000, i16 3000, i16 3000], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VAUX3\00", [26 x i8] zeroinitializer }, align 32
@VAUX4_VSEL_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 700, i16 1000, i16 1200, i16 -31468, i16 1500, i16 1800, i16 -30918, i16 2500, i16 -30168, i16 2800, i16 -29918, i16 -29768, i16 -29618, i16 -29618, i16 -29618, i16 -29618], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VAUX4\00", [26 x i8] zeroinitializer }, align 32
@VMMC1_VSEL_table = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1850, i16 2850, i16 3000, i16 3150], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VMMC1\00", [26 x i8] zeroinitializer }, align 32
@VMMC2_VSEL_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 -31768, i16 -31768, i16 -31568, i16 -31468, i16 -31268, i16 -30968, i16 1850, i16 -30268, i16 2600, i16 2800, i16 2850, i16 3000, i16 3150, i16 3150, i16 3150, i16 3150], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VMMC2\00", [26 x i8] zeroinitializer }, align 32
@VPLL1_VSEL_table = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 1000, i16 1200, i16 1300, i16 1800, i16 -29968, i16 -29768, i16 -29768, i16 -29768], [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VPLL1\00", [26 x i8] zeroinitializer }, align 32
@VPLL2_VSEL_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 700, i16 1000, i16 1200, i16 1300, i16 -31268, i16 1800, i16 -30918, i16 -30268, i16 -30168, i16 -29968, i16 -29918, i16 -29768, i16 -29618, i16 -29618, i16 -29618, i16 -29618], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VPLL2\00", [26 x i8] zeroinitializer }, align 32
@VSIM_VSEL_table = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 -31768, i16 -31568, i16 -31468, i16 1800, i16 2800, i16 3000, i16 3000, i16 3000], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VSIM\00", [27 x i8] zeroinitializer }, align 32
@VDAC_VSEL_table = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1200, i16 1300, i16 1800, i16 1800], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDAC\00", [27 x i8] zeroinitializer }, align 32
@VINTANA2_VSEL_table = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 2500, i16 2750], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VINTANA2\00", [23 x i8] zeroinitializer }, align 32
@VIO_VSEL_table = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 1800, i16 1850], [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VIO\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDD1\00", [27 x i8] zeroinitializer }, align 32
@twl4030smps_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr @twl4030smps_set_voltage, ptr null, ptr null, ptr @twl4030smps_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@VDD1_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 68, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDD2\00", [27 x i8] zeroinitializer }, align 32
@VDD2_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 68, i32 12500 }, %struct.linear_range { i32 1500000, i32 69, i32 69, i32 12500 }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VINTANA1\00", [23 x i8] zeroinitializer }, align 32
@twl4030fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_enable, ptr @twl4030reg_disable, ptr @twl4030reg_is_enabled, ptr @twl4030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VINTDIG\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VUSB1V5\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VUSB1V8\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VUSB3V1\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"twlreg_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 652, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 658, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"twl_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 553, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 631, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VAUX1\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"TWL4030_INFO_VAUX2_4030\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VAUX2\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VAUX3\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VAUX4\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VMMC1\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VMMC2\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VPLL1\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"TWL4030_INFO_VPLL2\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"TWL4030_INFO_VSIM\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"TWL4030_INFO_VDAC\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"TWL4030_INFO_VINTANA2\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"TWL4030_INFO_VIO\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"TWL4030_INFO_VDD1\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"TWL4030_INFO_VDD2\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"TWLFIXED_INFO_VINTANA1\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"TWLFIXED_INFO_VINTDIG\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"TWLFIXED_INFO_VUSB1V5\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"TWLFIXED_INFO_VUSB1V8\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"TWLFIXED_INFO_VUSB3V1\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"VAUX1_VSEL_table\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 297, i32 18 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 519, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"twl4030ldo_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 396, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"VAUX2_4030_VSEL_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 301, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 520, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"VAUX2_VSEL_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 307, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 521, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"VAUX3_VSEL_table\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 313, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 522, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"VAUX4_VSEL_table\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 317, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 523, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"VMMC1_VSEL_table\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 323, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 524, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"VMMC2_VSEL_table\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 326, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 525, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"VPLL1_VSEL_table\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 332, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 526, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"VPLL2_VSEL_table\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 336, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 527, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"VSIM_VSEL_table\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 342, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 528, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"VDAC_VSEL_table\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 346, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 529, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"VINTANA2_VSEL_table\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 352, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 530, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"VIO_VSEL_table\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 349, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 531, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 532, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"twl4030smps_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 434, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"VDD1_ranges\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 357, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 533, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"VDD2_ranges\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 362, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 535, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"twl4030fixed_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 443, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 536, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 537, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 538, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [37 x i8] c"../drivers/regulator/twl-regulator.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 539, i32 1 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_twlreg_exit, ptr @__initcall__kmod_twl_regulator__289_667_twlreg_init4, ptr @twlreg_exit, ptr @twlreg_probe._entry, ptr @twlreg_probe._entry_ptr, ptr @twlreg_driver, ptr @.str, ptr @twl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @TWL4030_INFO_VAUX1, ptr @TWL4030_INFO_VAUX2_4030, ptr @TWL4030_INFO_VAUX2, ptr @TWL4030_INFO_VAUX3, ptr @TWL4030_INFO_VAUX4, ptr @TWL4030_INFO_VMMC1, ptr @TWL4030_INFO_VMMC2, ptr @TWL4030_INFO_VPLL1, ptr @TWL4030_INFO_VPLL2, ptr @TWL4030_INFO_VSIM, ptr @TWL4030_INFO_VDAC, ptr @TWL4030_INFO_VINTANA2, ptr @TWL4030_INFO_VIO, ptr @TWL4030_INFO_VDD1, ptr @TWL4030_INFO_VDD2, ptr @TWLFIXED_INFO_VINTANA1, ptr @TWLFIXED_INFO_VINTDIG, ptr @TWLFIXED_INFO_VUSB1V5, ptr @TWLFIXED_INFO_VUSB1V8, ptr @TWLFIXED_INFO_VUSB3V1, ptr @VAUX1_VSEL_table, ptr @.str.6, ptr @twl4030ldo_ops, ptr @VAUX2_4030_VSEL_table, ptr @.str.7, ptr @VAUX2_VSEL_table, ptr @.str.8, ptr @VAUX3_VSEL_table, ptr @.str.9, ptr @VAUX4_VSEL_table, ptr @.str.10, ptr @VMMC1_VSEL_table, ptr @.str.11, ptr @VMMC2_VSEL_table, ptr @.str.12, ptr @VPLL1_VSEL_table, ptr @.str.13, ptr @VPLL2_VSEL_table, ptr @.str.14, ptr @VSIM_VSEL_table, ptr @.str.15, ptr @VDAC_VSEL_table, ptr @.str.16, ptr @VINTANA2_VSEL_table, ptr @.str.17, ptr @VIO_VSEL_table, ptr @.str.18, ptr @.str.19, ptr @twl4030smps_ops, ptr @VDD1_ranges, ptr @.str.20, ptr @VDD2_ranges, ptr @.str.21, ptr @twl4030fixed_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twlreg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_of_match to i32), i32 4116, i32 5152, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twlreg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VAUX1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VAUX2_4030 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VAUX2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VAUX3 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VAUX4 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VMMC1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VMMC2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VPLL1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VPLL2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VSIM to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VDAC to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VINTANA2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VIO to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VDD1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL4030_INFO_VDD2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VINTANA1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VINTDIG to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VUSB1V5 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VUSB1V8 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VUSB3V1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX1_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX2_4030_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX2_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX3_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX4_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VMMC1_VSEL_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VMMC2_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VPLL1_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VPLL2_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VSIM_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDAC_VSEL_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VINTANA2_VSEL_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VIO_VSEL_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030smps_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDD1_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDD2_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twlreg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twlreg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twlreg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twlreg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twlreg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = getelementptr inbounds i8, ptr %config, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 5
  %id1 = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %5, ptr noundef %desc) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 264, i32 noundef 3264) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %valid_modes_mask = getelementptr inbounds %struct.regulator_init_data, ptr %call5, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %valid_modes_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid_modes_mask, align 4
  %and = and i32 %7, 10
  store i32 %and, ptr %valid_modes_mask, align 4
  %valid_ops_mask = getelementptr inbounds %struct.regulator_init_data, ptr %call5, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %valid_ops_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %valid_ops_mask, align 4
  %and14 = and i32 %9, 13
  store i32 %and14, ptr %valid_ops_mask, align 4
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end13.sw.epilog_crit_edge [
    i32 2, label %if.end13.sw.bb_crit_edge
    i32 0, label %if.end13.sw.bb_crit_edge60
    i32 1, label %if.end13.sw.bb_crit_edge61
    i32 4, label %if.end13.sw.bb_crit_edge62
    i32 14, label %if.end13.sw.bb_crit_edge63
    i32 15, label %if.end13.sw.bb_crit_edge64
    i32 16, label %if.end13.sw.bb_crit_edge65
  ]

if.end13.sw.bb_crit_edge65:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end13.sw.bb_crit_edge64:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end13.sw.bb_crit_edge63:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end13.sw.bb_crit_edge62:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end13.sw.bb_crit_edge61:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end13.sw.bb_crit_edge60:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end13.sw.bb_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13.sw.bb_crit_edge, %if.end13.sw.bb_crit_edge60, %if.end13.sw.bb_crit_edge61, %if.end13.sw.bb_crit_edge62, %if.end13.sw.bb_crit_edge63, %if.end13.sw.bb_crit_edge64, %if.end13.sw.bb_crit_edge65
  %always_on = getelementptr inbounds %struct.regulator_init_data, ptr %call5, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %always_on to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %always_on, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %always_on, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end13.sw.epilog_crit_edge
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %config, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %13 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %driver_data, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node19 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %17 = ptrtoint ptr %of_node19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node19, align 4
  %desc21 = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 5
  %call22 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc21, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end29

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %desc21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc21, align 4
  %20 = ptrtoint ptr %call22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %20) #9
  br label %cleanup

if.end29:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call22, ptr %driver_data.i.i, align 4
  %remap = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 4
  %22 = ptrtoint ptr %remap to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %remap, align 4
  %24 = ptrtoint ptr %call10 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call10, align 4
  %conv2.i = add i8 %25, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %26 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %do.end ], [ 0, %if.end29 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl4030reg_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 8
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mode)
  %switch.selectcmp2 = icmp eq i32 %mode, 14
  %switch.select3 = select i1 %switch.selectcmp2, i32 2, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030ldo_list_voltage(ptr noundef %rdev, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %table = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %arrayidx = getelementptr i16, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and1 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %and3 = and i32 %conv, 32767
  %mul = mul nuw nsw i32 %and3, 1000
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi i32 [ %mul, %cond.false ], [ 0, %land.lhs.true.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030ldo_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %conv = trunc i32 %selector to i8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4
  %conv2.i = add i8 %1, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %2 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030ldo_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !130
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 4
  %conv2.i = add i8 %2, 3
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %twlreg_read.exit.thread, label %twlreg_read.exit

twlreg_read.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  br label %cleanup

twlreg_read.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i, align 1
  %conv4.i = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %table_len = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %table_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %table_len, align 2
  %conv = zext i8 %6 to i32
  %sub = add nuw nsw i32 %conv, 255
  %and = and i32 %sub, %conv4.i
  br label %cleanup

cleanup:                                          ; preds = %twlreg_read.exit, %twlreg_read.exit.thread
  %retval.0 = phi i32 [ %and, %twlreg_read.exit ], [ %call.i.i, %twlreg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030reg_enable(ptr noundef %rdev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i.i, align 1, !annotation !130
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call.i, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twlreg_grp.exit.thread, label %twlreg_grp.exit

twlreg_grp.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  br label %cleanup

twlreg_grp.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %conv = or i8 %4, 32
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %7 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %6, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %twlreg_grp.exit, %twlreg_grp.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %twlreg_grp.exit ], [ %call.i.i.i, %twlreg_grp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030reg_disable(ptr noundef %rdev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i.i, align 1, !annotation !130
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call.i, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twlreg_grp.exit.thread, label %twlreg_grp.exit

twlreg_grp.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  br label %cleanup

twlreg_grp.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %conv = and i8 %4, 31
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %7 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %6, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %twlreg_grp.exit, %twlreg_grp.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %twlreg_grp.exit ], [ %call.i.i.i, %twlreg_grp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030reg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i.i, align 1, !annotation !130
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call.i, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.twlreg_grp.exit_crit_edge, label %cond.false.i.i

entry.twlreg_grp.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %twlreg_grp.exit

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i.i, align 1
  %conv4.i.i = zext i8 %4 to i32
  br label %twlreg_grp.exit

twlreg_grp.exit:                                  ; preds = %cond.false.i.i, %entry.twlreg_grp.exit_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.false.i.i ], [ %call.i.i.i, %entry.twlreg_grp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp = icmp slt i32 %cond.i.i, 0
  %and = and i32 %cond.i.i, 32
  %retval.0 = select i1 %cmp, i32 %cond.i.i, i32 %and
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030reg_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  %val.addr.i60.i = alloca i8, align 1
  %val.i48.i = alloca i8, align 1
  %val.addr.i46.i = alloca i8, align 1
  %val.addr.i44.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 8200, %sw.bb2 ], [ 8206, %entry.sw.epilog_crit_edge ]
  %id3 = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %id3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id3, align 1
  %conv4 = zext i8 %2 to i32
  %shl5 = shl nuw nsw i32 %conv4, 4
  %or7 = or i32 %shl5, %.sink
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !130
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.epilog.twl4030_send_pb_msg.exit_crit_edge, label %if.end.i

sw.epilog.twl4030_send_pb_msg.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_send_pb_msg.exit

if.end.i:                                         ; preds = %sw.epilog
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  %6 = or i8 %5, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %7 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %val.addr.i.i, align 1
  %call.i43.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %cmp3.i = icmp slt i32 %call.i43.i, 0
  br i1 %cmp3.i, label %if.end.i.twl4030_send_pb_msg.exit_crit_edge, label %if.end6.i

if.end.i.twl4030_send_pb_msg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_send_pb_msg.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i.i, align 1, !annotation !130
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end2.i.i.do.body.i.i_crit_edge, %if.end6.i
  %timeout.0.i.i = phi i32 [ 10, %if.end6.i ], [ %dec.i.i, %if.end2.i.i.do.body.i.i_crit_edge ]
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge, label %if.end.i.i

do.body.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_wait_pb_ready.exit.thread.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i.i, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.end11.i, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #6
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool3.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end2.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge, label %if.end2.i.i.do.body.i.i_crit_edge

if.end2.i.i.do.body.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.end2.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_wait_pb_ready.exit.thread.i

twl4030_wait_pb_ready.exit.thread.i:              ; preds = %if.end2.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge, %do.body.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -110, %if.end2.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge ], [ %call.i.i.i, %do.body.i.i.twl4030_wait_pb_ready.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  br label %twl4030_send_pb_msg.exit

if.end11.i:                                       ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  %shr.i = lshr i32 %or7, 8
  %conv12.i = trunc i32 %shr.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i44.i) #6
  %13 = ptrtoint ptr %val.addr.i44.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv12.i, ptr %val.addr.i44.i, align 1
  %call.i45.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i44.i, i8 noundef zeroext 21, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i44.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %cmp14.i = icmp slt i32 %call.i45.i, 0
  br i1 %cmp14.i, label %if.end11.i.twl4030_send_pb_msg.exit_crit_edge, label %if.end17.i

if.end11.i.twl4030_send_pb_msg.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_send_pb_msg.exit

if.end17.i:                                       ; preds = %if.end11.i
  %conv18.i = trunc i32 %or7 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i46.i) #6
  %14 = ptrtoint ptr %val.addr.i46.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv18.i, ptr %val.addr.i46.i, align 1
  %call.i47.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i46.i, i8 noundef zeroext 22, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i46.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp20.i = icmp slt i32 %call.i47.i, 0
  br i1 %cmp20.i, label %if.end17.i.twl4030_send_pb_msg.exit_crit_edge, label %if.end23.i

if.end17.i.twl4030_send_pb_msg.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_send_pb_msg.exit

if.end23.i:                                       ; preds = %if.end17.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i48.i) #6
  %15 = ptrtoint ptr %val.i48.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %val.i48.i, align 1, !annotation !130
  br label %do.body.i52.i

do.body.i52.i:                                    ; preds = %if.end2.i57.i.do.body.i52.i_crit_edge, %if.end23.i
  %timeout.0.i49.i = phi i32 [ 10, %if.end23.i ], [ %dec.i55.i, %if.end2.i57.i.do.body.i52.i_crit_edge ]
  %call.i.i50.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i48.i, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50.i)
  %cmp.i51.i = icmp slt i32 %call.i.i50.i, 0
  br i1 %cmp.i51.i, label %do.body.i52.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge, label %if.end.i54.i

do.body.i52.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge: ; preds = %do.body.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_wait_pb_ready.exit59.thread.i

if.end.i54.i:                                     ; preds = %do.body.i52.i
  %16 = ptrtoint ptr %val.i48.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i48.i, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i53.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i53.i, label %if.end28.i, label %if.end2.i57.i

if.end2.i57.i:                                    ; preds = %if.end.i54.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #6
  %dec.i55.i = add nsw i32 %timeout.0.i49.i, -1
  %tobool3.not.i56.i = icmp eq i32 %dec.i55.i, 0
  br i1 %tobool3.not.i56.i, label %if.end2.i57.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge, label %if.end2.i57.i.do.body.i52.i_crit_edge

if.end2.i57.i.do.body.i52.i_crit_edge:            ; preds = %if.end2.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i52.i

if.end2.i57.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge: ; preds = %if.end2.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_wait_pb_ready.exit59.thread.i

twl4030_wait_pb_ready.exit59.thread.i:            ; preds = %if.end2.i57.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge, %do.body.i52.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge
  %retval.0.i58.ph.i = phi i32 [ -110, %if.end2.i57.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge ], [ %call.i.i50.i, %do.body.i52.i.twl4030_wait_pb_ready.exit59.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i48.i) #6
  br label %twl4030_send_pb_msg.exit

if.end28.i:                                       ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i48.i) #6
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i60.i) #6
  %22 = ptrtoint ptr %val.addr.i60.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %val.addr.i60.i, align 1
  %call.i61.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i60.i, i8 noundef zeroext 20, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i60.i) #6
  br label %twl4030_send_pb_msg.exit

twl4030_send_pb_msg.exit:                         ; preds = %if.end28.i, %twl4030_wait_pb_ready.exit59.thread.i, %if.end17.i.twl4030_send_pb_msg.exit_crit_edge, %if.end11.i.twl4030_send_pb_msg.exit_crit_edge, %twl4030_wait_pb_ready.exit.thread.i, %if.end.i.twl4030_send_pb_msg.exit_crit_edge, %sw.epilog.twl4030_send_pb_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i61.i, %if.end28.i ], [ %call.i.i, %sw.epilog.twl4030_send_pb_msg.exit_crit_edge ], [ %call.i43.i, %if.end.i.twl4030_send_pb_msg.exit_crit_edge ], [ %call.i45.i, %if.end11.i.twl4030_send_pb_msg.exit_crit_edge ], [ %call.i47.i, %if.end17.i.twl4030_send_pb_msg.exit_crit_edge ], [ %retval.0.i.ph.i, %twl4030_wait_pb_ready.exit.thread.i ], [ %retval.0.i58.ph.i, %twl4030_wait_pb_ready.exit59.thread.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %twl4030_send_pb_msg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %twl4030_send_pb_msg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030reg_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i.i, align 1, !annotation !130
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call.i, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twlreg_grp.exit.thread, label %twlreg_grp.exit

twlreg_grp.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  br label %cleanup

twlreg_grp.exit:                                  ; preds = %entry
  %3 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i.i, align 1
  %conv4.i.i = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %and = and i32 %conv4.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %twlreg_grp.exit.cleanup_crit_edge, label %if.end2

twlreg_grp.exit.cleanup_crit_edge:                ; preds = %twlreg_grp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %twlreg_grp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i32 %conv4.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool4.not, i32 6, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %twlreg_grp.exit.cleanup_crit_edge, %twlreg_grp.exit.thread
  %retval.0 = phi i32 [ %cond, %if.end2 ], [ 0, %twlreg_grp.exit.cleanup_crit_edge ], [ %call.i.i.i, %twlreg_grp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030smps_set_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef readnone %selector) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %sub1 = add i32 %min_uV, -587501
  %div = sdiv i32 %sub1, 12500
  %conv = trunc i32 %div to i8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4
  %conv2.i = add i8 %1, 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %2 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030smps_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !130
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 4
  %conv2.i = add i8 %2, 9
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.twlreg_read.exit_crit_edge, label %cond.false.i

entry.twlreg_read.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %twlreg_read.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i, align 1
  %conv4.i = zext i8 %4 to i32
  br label %twlreg_read.exit

twlreg_read.exit:                                 ; preds = %cond.false.i, %entry.twlreg_read.exit_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.false.i ], [ %call.i.i, %entry.twlreg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %mul = mul i32 %cond.i, 12500
  %add = add i32 %mul, 600000
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !69, !70, !72, !74, !75, !77, !79, !80, !82, !84, !85, !87, !89, !90, !92, !94, !95, !97, !99, !101, !102, !104, !106, !107, !109, !111, !112, !114, !115, !117, !118, !120}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__UNIQUE_ID_alias288, !1, !"__UNIQUE_ID_alias288", i1 false, i1 false}
!1 = !{!"../drivers/regulator/twl-regulator.c", i32 650, i32 1}
!2 = !{ptr @__initcall__kmod_twl_regulator__289_667_twlreg_init4, !3, !"__initcall__kmod_twl_regulator__289_667_twlreg_init4", i1 false, i1 false}
!3 = !{!"../drivers/regulator/twl-regulator.c", i32 667, i32 1}
!4 = !{ptr @__exitcall_twlreg_exit, !5, !"__exitcall_twlreg_exit", i1 false, i1 false}
!5 = !{!"../drivers/regulator/twl-regulator.c", i32 673, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/twl-regulator.c", i32 675, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/twl-regulator.c", i32 676, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/twl-regulator.c", i32 658, i32 12}
!13 = !{ptr @twlreg_driver, !14, !"twlreg_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/twl-regulator.c", i32 652, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/twl-regulator.c", i32 631, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @twlreg_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @twlreg_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @twl_of_match, !24, !"twl_of_match", i1 false, i1 false}
!24 = !{!"../drivers/regulator/twl-regulator.c", i32 553, i32 34}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/twl-regulator.c", i32 519, i32 1}
!27 = !{ptr @TWL4030_INFO_VAUX1, !26, !"TWL4030_INFO_VAUX1", i1 false, i1 false}
!28 = !{ptr @VAUX1_VSEL_table, !29, !"VAUX1_VSEL_table", i1 false, i1 false}
!29 = !{!"../drivers/regulator/twl-regulator.c", i32 297, i32 18}
!30 = !{ptr @twl4030ldo_ops, !31, !"twl4030ldo_ops", i1 false, i1 false}
!31 = !{!"../drivers/regulator/twl-regulator.c", i32 396, i32 35}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/twl-regulator.c", i32 520, i32 1}
!34 = !{ptr @TWL4030_INFO_VAUX2_4030, !33, !"TWL4030_INFO_VAUX2_4030", i1 false, i1 false}
!35 = !{ptr @VAUX2_4030_VSEL_table, !36, !"VAUX2_4030_VSEL_table", i1 false, i1 false}
!36 = !{!"../drivers/regulator/twl-regulator.c", i32 301, i32 18}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/twl-regulator.c", i32 521, i32 1}
!39 = !{ptr @TWL4030_INFO_VAUX2, !38, !"TWL4030_INFO_VAUX2", i1 false, i1 false}
!40 = !{ptr @VAUX2_VSEL_table, !41, !"VAUX2_VSEL_table", i1 false, i1 false}
!41 = !{!"../drivers/regulator/twl-regulator.c", i32 307, i32 18}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/twl-regulator.c", i32 522, i32 1}
!44 = !{ptr @TWL4030_INFO_VAUX3, !43, !"TWL4030_INFO_VAUX3", i1 false, i1 false}
!45 = !{ptr @VAUX3_VSEL_table, !46, !"VAUX3_VSEL_table", i1 false, i1 false}
!46 = !{!"../drivers/regulator/twl-regulator.c", i32 313, i32 18}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/twl-regulator.c", i32 523, i32 1}
!49 = !{ptr @TWL4030_INFO_VAUX4, !48, !"TWL4030_INFO_VAUX4", i1 false, i1 false}
!50 = !{ptr @VAUX4_VSEL_table, !51, !"VAUX4_VSEL_table", i1 false, i1 false}
!51 = !{!"../drivers/regulator/twl-regulator.c", i32 317, i32 18}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/twl-regulator.c", i32 524, i32 1}
!54 = !{ptr @TWL4030_INFO_VMMC1, !53, !"TWL4030_INFO_VMMC1", i1 false, i1 false}
!55 = !{ptr @VMMC1_VSEL_table, !56, !"VMMC1_VSEL_table", i1 false, i1 false}
!56 = !{!"../drivers/regulator/twl-regulator.c", i32 323, i32 18}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/twl-regulator.c", i32 525, i32 1}
!59 = !{ptr @TWL4030_INFO_VMMC2, !58, !"TWL4030_INFO_VMMC2", i1 false, i1 false}
!60 = !{ptr @VMMC2_VSEL_table, !61, !"VMMC2_VSEL_table", i1 false, i1 false}
!61 = !{!"../drivers/regulator/twl-regulator.c", i32 326, i32 18}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/twl-regulator.c", i32 526, i32 1}
!64 = !{ptr @TWL4030_INFO_VPLL1, !63, !"TWL4030_INFO_VPLL1", i1 false, i1 false}
!65 = !{ptr @VPLL1_VSEL_table, !66, !"VPLL1_VSEL_table", i1 false, i1 false}
!66 = !{!"../drivers/regulator/twl-regulator.c", i32 332, i32 18}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/twl-regulator.c", i32 527, i32 1}
!69 = !{ptr @TWL4030_INFO_VPLL2, !68, !"TWL4030_INFO_VPLL2", i1 false, i1 false}
!70 = !{ptr @VPLL2_VSEL_table, !71, !"VPLL2_VSEL_table", i1 false, i1 false}
!71 = !{!"../drivers/regulator/twl-regulator.c", i32 336, i32 18}
!72 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/twl-regulator.c", i32 528, i32 1}
!74 = !{ptr @TWL4030_INFO_VSIM, !73, !"TWL4030_INFO_VSIM", i1 false, i1 false}
!75 = !{ptr @VSIM_VSEL_table, !76, !"VSIM_VSEL_table", i1 false, i1 false}
!76 = !{!"../drivers/regulator/twl-regulator.c", i32 342, i32 18}
!77 = !{ptr @.str.16, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/twl-regulator.c", i32 529, i32 1}
!79 = !{ptr @TWL4030_INFO_VDAC, !78, !"TWL4030_INFO_VDAC", i1 false, i1 false}
!80 = !{ptr @VDAC_VSEL_table, !81, !"VDAC_VSEL_table", i1 false, i1 false}
!81 = !{!"../drivers/regulator/twl-regulator.c", i32 346, i32 18}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/twl-regulator.c", i32 530, i32 1}
!84 = !{ptr @TWL4030_INFO_VINTANA2, !83, !"TWL4030_INFO_VINTANA2", i1 false, i1 false}
!85 = !{ptr @VINTANA2_VSEL_table, !86, !"VINTANA2_VSEL_table", i1 false, i1 false}
!86 = !{!"../drivers/regulator/twl-regulator.c", i32 352, i32 18}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/twl-regulator.c", i32 531, i32 1}
!89 = !{ptr @TWL4030_INFO_VIO, !88, !"TWL4030_INFO_VIO", i1 false, i1 false}
!90 = !{ptr @VIO_VSEL_table, !91, !"VIO_VSEL_table", i1 false, i1 false}
!91 = !{!"../drivers/regulator/twl-regulator.c", i32 349, i32 18}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/twl-regulator.c", i32 532, i32 1}
!94 = !{ptr @TWL4030_INFO_VDD1, !93, !"TWL4030_INFO_VDD1", i1 false, i1 false}
!95 = !{ptr @twl4030smps_ops, !96, !"twl4030smps_ops", i1 false, i1 false}
!96 = !{!"../drivers/regulator/twl-regulator.c", i32 434, i32 35}
!97 = !{ptr @VDD1_ranges, !98, !"VDD1_ranges", i1 false, i1 false}
!98 = !{!"../drivers/regulator/twl-regulator.c", i32 357, i32 34}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/twl-regulator.c", i32 533, i32 1}
!101 = !{ptr @TWL4030_INFO_VDD2, !100, !"TWL4030_INFO_VDD2", i1 false, i1 false}
!102 = !{ptr @VDD2_ranges, !103, !"VDD2_ranges", i1 false, i1 false}
!103 = !{!"../drivers/regulator/twl-regulator.c", i32 362, i32 34}
!104 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/twl-regulator.c", i32 535, i32 1}
!106 = !{ptr @TWLFIXED_INFO_VINTANA1, !105, !"TWLFIXED_INFO_VINTANA1", i1 false, i1 false}
!107 = !{ptr @twl4030fixed_ops, !108, !"twl4030fixed_ops", i1 false, i1 false}
!108 = !{!"../drivers/regulator/twl-regulator.c", i32 443, i32 35}
!109 = !{ptr @.str.22, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/twl-regulator.c", i32 536, i32 1}
!111 = !{ptr @TWLFIXED_INFO_VINTDIG, !110, !"TWLFIXED_INFO_VINTDIG", i1 false, i1 false}
!112 = !{ptr @.str.23, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/twl-regulator.c", i32 537, i32 1}
!114 = !{ptr @TWLFIXED_INFO_VUSB1V5, !113, !"TWLFIXED_INFO_VUSB1V5", i1 false, i1 false}
!115 = !{ptr @.str.24, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/twl-regulator.c", i32 538, i32 1}
!117 = !{ptr @TWLFIXED_INFO_VUSB1V8, !116, !"TWLFIXED_INFO_VUSB1V8", i1 false, i1 false}
!118 = !{ptr @.str.25, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/twl-regulator.c", i32 539, i32 1}
!120 = !{ptr @TWLFIXED_INFO_VUSB3V1, !119, !"TWLFIXED_INFO_VUSB3V1", i1 false, i1 false}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"auto-init"}
