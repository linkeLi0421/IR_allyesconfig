; ModuleID = '/llk/IR_all_yes/drivers/regulator/twl6030-regulator.c_pt.bc'
source_filename = "../drivers/regulator/twl6030-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.twlreg_info = type { i8, i8, i8, %struct.regulator_desc, i32, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__UNIQUE_ID_alias288 = internal constant [45 x i8] c"twl6030_regulator.alias=platform:twl6030_reg\00", section ".modinfo", align 1
@__initcall__kmod_twl6030_regulator__289_767_twlreg_init4 = internal global ptr @twlreg_init, section ".initcall4.init", align 4
@twlreg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twlreg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twlreg_exit = internal global ptr @twlreg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"twl6030_regulator.description=TWL6030 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"twl6030_regulator.file=drivers/regulator/twl6030-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"twl6030_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl6030_reg\00", [20 x i8] zeroinitializer }, align 32
@twl_of_match = internal constant { [28 x %struct.of_device_id], [1360 x i8] } { [28 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdd1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VDD1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdd2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VDD2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdd3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VDD3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vaux1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VAUX1_6030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vaux2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VAUX2_6030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vaux3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VAUX3_6030 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VMMC }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VPP }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vusim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6030_INFO_VUSIM }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldo6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDO6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldoln\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDOLN }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-ldousb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWL6032_INFO_LDOUSB }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vana\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VANA }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vcxio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VCXIO }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vdac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VDAC }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-vusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_VUSB }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-v1v8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_V1V8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030-v2v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLFIXED_INFO_V2V1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-smps3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLSMPS_INFO_SMPS3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-smps4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLSMPS_INFO_SMPS4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032-vio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @TWLSMPS_INFO_VIO }, %struct.of_device_id zeroinitializer], [1360 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,retain-on-reset\00", [45 x i8] zeroinitializer }, align 32
@twlreg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 734, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't register %s, %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"twlreg_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/twl6030-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twlreg_probe._entry_ptr = internal global ptr @twlreg_probe._entry, section ".printk_index", align 4
@TWL6030_INFO_VDD1 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 0, i8 0, i8 0, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 0, i32 0, ptr @twl6030coresmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VDD2 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 0, i8 0, i8 0, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 0, i32 0, ptr @twl6030coresmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VDD3 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 0, i8 0, i8 0, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 0, i32 0, ptr @twl6030coresmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VAUX1_6030 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 84, i8 0, i8 0, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 37, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VAUX2_6030 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 88, i8 0, i8 0, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 38, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VAUX3_6030 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 92, i8 0, i8 0, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 39, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VMMC = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 104, i8 0, i8 0, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 40, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VPP = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 108, i8 0, i8 0, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 41, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6030_INFO_VUSIM = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 116, i8 0, i8 0, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 42, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDO2 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 84, i8 0, i8 0, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 49, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDO4 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 88, i8 0, i8 0, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 50, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDO3 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 92, i8 0, i8 0, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 51, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDO5 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 104, i8 0, i8 0, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 52, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDO1 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 108, i8 0, i8 0, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 53, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDO7 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 116, i8 0, i8 0, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 54, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDO6 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 96, i8 0, i8 0, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 55, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDOLN = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 100, i8 0, i8 0, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 56, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWL6032_INFO_LDOUSB = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 112, i8 0, i8 0, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 57, i8 0, i32 32, i32 0, ptr @twl6030ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @twl6030ldo_linear_range, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VANA = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 80, i8 0, i8 0, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 43, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 2100000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VCXIO = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 96, i8 0, i8 0, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 44, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VDAC = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 100, i8 0, i8 0, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 45, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_VUSB = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 112, i8 0, i8 0, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 46, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 3300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_V1V8 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 22, i8 0, i8 0, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLFIXED_INFO_V2V1 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 28, i8 0, i8 0, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 1, i32 0, ptr @twl6030fixed_ops, i32 0, i32 0, ptr null, i32 2100000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLSMPS_INFO_SMPS3 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 52, i8 0, i8 0, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 58, i8 0, i32 63, i32 0, ptr @twlsmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLSMPS_INFO_SMPS4 = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 16, i8 0, i8 0, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 59, i8 0, i32 63, i32 0, ptr @twlsmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@TWLSMPS_INFO_VIO = internal constant { %struct.twlreg_info, [64 x i8] } { %struct.twlreg_info { i8 22, i8 0, i8 0, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 60, i8 0, i32 63, i32 0, ptr @twlsmps_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, ptr null }, [64 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDD1\00", [27 x i8] zeroinitializer }, align 32
@twl6030coresmps_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr @twl6030coresmps_set_voltage, ptr null, ptr null, ptr @twl6030coresmps_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDD2\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDD3\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VAUX1_6030\00", [21 x i8] zeroinitializer }, align 32
@twl6030ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @twl6030ldo_set_voltage_sel, ptr null, ptr @twl6030ldo_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_enable, ptr @twl6030reg_disable, ptr @twl6030reg_is_enabled, ptr @twl6030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@twl6030ldo_linear_range = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 1000000, i32 1, i32 24, i32 100000 }, %struct.linear_range { i32 2750000, i32 31, i32 31, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VAUX2_6030\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VAUX3_6030\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMMC\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPP\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VUSIM\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDOLN\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LDOUSB\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VANA\00", [27 x i8] zeroinitializer }, align 32
@twl6030fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_enable, ptr @twl6030reg_disable, ptr @twl6030reg_is_enabled, ptr @twl6030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCXIO\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDAC\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VUSB\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V1V8\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V2V1\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS3\00", [26 x i8] zeroinitializer }, align 32
@twlsmps_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @twl6030smps_list_voltage, ptr null, ptr @twl6030smps_map_voltage, ptr @twl6030smps_set_voltage_sel, ptr null, ptr @twl6030smps_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_enable, ptr @twl6030reg_disable, ptr @twl6030reg_is_enabled, ptr @twl6030reg_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6030reg_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS4\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VIO\00", [28 x i8] zeroinitializer }, align 32
@switch.table.twl6030reg_get_status = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 4, i32 0, i32 6], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 58, i64 59, i64 60]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 58, i64 59, i64 60, i64 61, i64 62]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 58, i64 59, i64 60, i64 61, i64 62]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 58, i64 59, i64 60, i64 61, i64 62]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"twlreg_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 752, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 758, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"twl_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 637, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 723, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 733, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"TWL6030_INFO_VDD1\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"TWL6030_INFO_VDD2\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"TWL6030_INFO_VDD3\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"TWL6030_INFO_VAUX1_6030\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"TWL6030_INFO_VAUX2_6030\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"TWL6030_INFO_VAUX3_6030\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"TWL6030_INFO_VMMC\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"TWL6030_INFO_VPP\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"TWL6030_INFO_VUSIM\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"TWL6032_INFO_LDO2\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"TWL6032_INFO_LDO4\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"TWL6032_INFO_LDO3\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"TWL6032_INFO_LDO5\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"TWL6032_INFO_LDO1\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"TWL6032_INFO_LDO7\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"TWL6032_INFO_LDO6\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"TWL6032_INFO_LDOLN\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"TWL6032_INFO_LDOUSB\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"TWLFIXED_INFO_VANA\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"TWLFIXED_INFO_VCXIO\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"TWLFIXED_INFO_VDAC\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"TWLFIXED_INFO_VUSB\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"TWLFIXED_INFO_V1V8\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"TWLFIXED_INFO_V2V1\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"TWLSMPS_INFO_SMPS3\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"TWLSMPS_INFO_SMPS4\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"TWLSMPS_INFO_VIO\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 579, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"twl6030coresmps_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 247, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 580, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 581, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 582, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"twl6030ldo_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 275, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant [24 x i8] c"twl6030ldo_linear_range\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 498, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 583, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 584, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 585, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 586, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 587, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 589, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 590, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 591, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 592, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 593, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 594, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 595, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 596, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 597, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 598, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"twl6030fixed_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 290, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 599, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 600, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 601, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 602, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 603, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 604, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant [12 x i8] c"twlsmps_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 481, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 605, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [41 x i8] c"../drivers/regulator/twl6030-regulator.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 606, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [35 x i8] c"switch.table.twl6030reg_get_status\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_twlreg_exit, ptr @__initcall__kmod_twl6030_regulator__289_767_twlreg_init4, ptr @twlreg_exit, ptr @twlreg_probe._entry, ptr @twlreg_probe._entry_ptr, ptr @twlreg_driver, ptr @.str, ptr @twl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @TWL6030_INFO_VDD1, ptr @TWL6030_INFO_VDD2, ptr @TWL6030_INFO_VDD3, ptr @TWL6030_INFO_VAUX1_6030, ptr @TWL6030_INFO_VAUX2_6030, ptr @TWL6030_INFO_VAUX3_6030, ptr @TWL6030_INFO_VMMC, ptr @TWL6030_INFO_VPP, ptr @TWL6030_INFO_VUSIM, ptr @TWL6032_INFO_LDO2, ptr @TWL6032_INFO_LDO4, ptr @TWL6032_INFO_LDO3, ptr @TWL6032_INFO_LDO5, ptr @TWL6032_INFO_LDO1, ptr @TWL6032_INFO_LDO7, ptr @TWL6032_INFO_LDO6, ptr @TWL6032_INFO_LDOLN, ptr @TWL6032_INFO_LDOUSB, ptr @TWLFIXED_INFO_VANA, ptr @TWLFIXED_INFO_VCXIO, ptr @TWLFIXED_INFO_VDAC, ptr @TWLFIXED_INFO_VUSB, ptr @TWLFIXED_INFO_V1V8, ptr @TWLFIXED_INFO_V2V1, ptr @TWLSMPS_INFO_SMPS3, ptr @TWLSMPS_INFO_SMPS4, ptr @TWLSMPS_INFO_VIO, ptr @.str.7, ptr @twl6030coresmps_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @twl6030ldo_ops, ptr @twl6030ldo_linear_range, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @twl6030fixed_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @twlsmps_ops, ptr @.str.32, ptr @.str.33, ptr @switch.table.twl6030reg_get_status], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twlreg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_of_match to i32), i32 5488, i32 6848, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twlreg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VDD1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VDD2 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VDD3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VAUX1_6030 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VAUX2_6030 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VAUX3_6030 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VMMC to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VPP to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6030_INFO_VUSIM to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDO2 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDO4 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDO3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDO5 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDO1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDO7 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDO6 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDOLN to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWL6032_INFO_LDOUSB to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VANA to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VCXIO to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VDAC to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_VUSB to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_V1V8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLFIXED_INFO_V2V1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLSMPS_INFO_SMPS3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLSMPS_INFO_SMPS4 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TWLSMPS_INFO_VIO to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030coresmps_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030ldo_linear_range to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twlsmps_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.twl6030reg_get_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 0, i32 -1 }]
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
  %value.i138 = alloca i8, align 1
  %value.i136 = alloca i8, align 1
  %value.i134 = alloca i8, align 1
  %value.i132 = alloca i8, align 1
  %value.i130 = alloca i8, align 1
  %value.i = alloca i8, align 1
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = getelementptr inbounds i8, ptr %config, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 3
  %id2 = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id2, align 4
  %call5 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %3, ptr noundef %desc) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 256, i32 noundef 3264) #6
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
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end13.sw.epilog_crit_edge [
    i32 58, label %sw.bb
    i32 59, label %sw.bb32
    i32 60, label %sw.bb53
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %value.i, align 1, !annotation !127
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i, i8 noundef zeroext -77, i32 noundef 1) #6
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %14 = and i8 %13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %sw.bb.if.end21_crit_edge, label %if.then18

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 2
  %17 = or i8 %16, 2
  store i8 %17, ptr %flags, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %sw.bb.if.end21_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i130) #6
  %18 = ptrtoint ptr %value.i130 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %value.i130, align 1, !annotation !127
  %call.i.i131 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i130, i8 noundef zeroext -80, i32 noundef 1) #6
  %19 = ptrtoint ptr %value.i130 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %value.i130, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i130) #6
  %21 = and i8 %20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  br i1 %tobool25.not, label %if.end21.sw.epilog_crit_edge, label %if.end21.sw.epilog.sink.split_crit_edge

if.end21.sw.epilog.sink.split_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i132) #6
  %22 = ptrtoint ptr %value.i132 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %value.i132, align 1, !annotation !127
  %call.i.i133 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i132, i8 noundef zeroext -77, i32 noundef 1) #6
  %23 = ptrtoint ptr %value.i132 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value.i132, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i132) #6
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool36.not = icmp eq i8 %25, 0
  br i1 %tobool36.not, label %sw.bb32.if.end42_crit_edge, label %if.then37

sw.bb32.if.end42_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  %flags38 = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 2
  %26 = ptrtoint ptr %flags38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags38, align 2
  %28 = or i8 %27, 2
  store i8 %28, ptr %flags38, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %sw.bb32.if.end42_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i134) #6
  %29 = ptrtoint ptr %value.i134 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %value.i134, align 1, !annotation !127
  %call.i.i135 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i134, i8 noundef zeroext -80, i32 noundef 1) #6
  %30 = ptrtoint ptr %value.i134 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %value.i134, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i134) #6
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool46.not = icmp eq i8 %32, 0
  br i1 %tobool46.not, label %if.end42.sw.epilog_crit_edge, label %if.end42.sw.epilog.sink.split_crit_edge

if.end42.sw.epilog.sink.split_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i136) #6
  %33 = ptrtoint ptr %value.i136 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %value.i136, align 1, !annotation !127
  %call.i.i137 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i136, i8 noundef zeroext -77, i32 noundef 1) #6
  %34 = ptrtoint ptr %value.i136 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %value.i136, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i136) #6
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool57.not = icmp eq i8 %36, 0
  br i1 %tobool57.not, label %sw.bb53.if.end63_crit_edge, label %if.then58

sw.bb53.if.end63_crit_edge:                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then58:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  %flags59 = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 2
  %37 = ptrtoint ptr %flags59 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags59, align 2
  %39 = or i8 %38, 2
  store i8 %39, ptr %flags59, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %sw.bb53.if.end63_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i138) #6
  %40 = ptrtoint ptr %value.i138 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %value.i138, align 1, !annotation !127
  %call.i.i139 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i138, i8 noundef zeroext -80, i32 noundef 1) #6
  %41 = ptrtoint ptr %value.i138 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %value.i138, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i138) #6
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool67.not = icmp eq i8 %43, 0
  br i1 %tobool67.not, label %if.end63.sw.epilog_crit_edge, label %if.end63.sw.epilog.sink.split_crit_edge

if.end63.sw.epilog.sink.split_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end63.sw.epilog.sink.split_crit_edge, %if.end42.sw.epilog.sink.split_crit_edge, %if.end21.sw.epilog.sink.split_crit_edge
  %flags27 = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 2
  %44 = ptrtoint ptr %flags27 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags27, align 2
  %46 = or i8 %45, 1
  store i8 %46, ptr %flags27, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end63.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %call74 = call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %sw.epilog.if.end81_crit_edge, label %if.then76

sw.epilog.if.end81_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then76:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %flags77 = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 2
  %47 = ptrtoint ptr %flags77 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags77, align 2
  %49 = or i8 %48, 8
  store i8 %49, ptr %flags77, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %sw.epilog.if.end81_crit_edge
  %50 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev, ptr %config, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %51 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %52 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call10, ptr %driver_data, align 4
  %of_node84 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %53 = ptrtoint ptr %of_node84 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %3, ptr %of_node84, align 4
  %desc86 = getelementptr inbounds %struct.twlreg_info, ptr %call10, i32 0, i32 3
  %call87 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc86, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end94

do.end:                                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %desc86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc86, align 4
  %56 = ptrtoint ptr %call87 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %55, i32 noundef %56) #9
  br label %cleanup

if.end94:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call87, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %56, %do.end ], [ 0, %if.end94 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
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
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl6030coresmps_set_voltage(ptr nocapture noundef readnone %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef readnone %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl6030coresmps_get_voltage(ptr nocapture noundef readnone %rdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030ldo_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %flags = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = shl i8 %1, 4
  %3 = and i8 %2, -128
  %4 = trunc i32 %selector to i8
  %conv1 = or i8 %3, %4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call, align 4
  %conv2.i = add i8 %6, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %7 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030ldo_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !127
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 4
  %conv2.i = add i8 %2, 3
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
  %flags = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 2
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %and2 = and i32 %cond.i, -129
  %spec.select = select i1 %tobool.not, i32 %cond.i, i32 %and2
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030reg_enable(ptr noundef %rdev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call.i = tail call i32 @twl_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24624, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 24624
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i13 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %2 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value.i.i, align 1, !annotation !127
  %3 = ptrtoint ptr %call.i13 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call.i13, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.thread17, label %if.end

if.end.thread17:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %phi.bo = shl i8 %6, 5
  %phi.bo20 = or i8 %phi.bo, 1
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true.if.end5_crit_edge
  %grp.016 = phi i8 [ %phi.bo20, %if.end ], [ 1, %land.lhs.true.if.end5_crit_edge ]
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call, align 4
  %conv2.i = add i8 %8, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %9 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %grp.016, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.thread17
  %retval.0 = phi i32 [ %call.i.i, %if.end5 ], [ %call.i.i.i, %if.end.thread17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030reg_disable(ptr noundef %rdev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call.i = tail call i32 @twl_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24624, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 24624
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %grp.0 = phi i8 [ 0, %land.lhs.true.if.end_crit_edge ], [ -32, %if.then ]
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call, align 4
  %conv2.i = add i8 %3, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %4 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %grp.0, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030reg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call.i = tail call i32 @twl_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24624, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 24624
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i19 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %2 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value.i.i, align 1, !annotation !127
  %3 = ptrtoint ptr %call.i19 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call.i19, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twlreg_grp.exit.thread, label %twlreg_grp.exit

twlreg_grp.exit.thread:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  br label %cleanup

twlreg_grp.exit:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %phi.cmp = icmp ne i8 %7, 0
  br label %if.end6

if.end6:                                          ; preds = %twlreg_grp.exit, %land.lhs.true.if.end6_crit_edge
  %grp.0 = phi i1 [ %phi.cmp, %twlreg_grp.exit ], [ true, %land.lhs.true.if.end6_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %value.i, align 1, !annotation !127
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call, align 4
  %conv2.i = add i8 %10, 2
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i20 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i20, label %if.end6.twlreg_read.exit_crit_edge, label %cond.false.i

if.end6.twlreg_read.exit_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %twlreg_read.exit

cond.false.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value.i, align 1
  %conv4.i = zext i8 %12 to i32
  br label %twlreg_read.exit

twlreg_read.exit:                                 ; preds = %cond.false.i, %if.end6.twlreg_read.exit_crit_edge
  %cond.i21 = phi i32 [ %conv4.i, %cond.false.i ], [ %call.i.i, %if.end6.twlreg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %13 = and i32 %cond.i21, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp10 = icmp eq i32 %13, 4
  %narrow = select i1 %grp.0, i1 %cmp10, i1 false
  %14 = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %twlreg_read.exit, %twlreg_grp.exit.thread
  %retval.0 = phi i32 [ %14, %twlreg_read.exit ], [ %call.i.i.i, %twlreg_grp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030reg_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call.i = tail call i32 @twl_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24624, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 24624
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i17 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %2 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value.i.i, align 1, !annotation !127
  %3 = ptrtoint ptr %call.i17 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call.i17, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.thread21, label %if.end

if.end.thread21:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %phi.bo = shl i8 %6, 5
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true.if.end5_crit_edge
  %grp.020 = phi i8 [ %phi.bo, %if.end ], [ 0, %land.lhs.true.if.end5_crit_edge ]
  %7 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mode, label %if.end5.cleanup_crit_edge [
    i32 2, label %if.end5.sw.epilog_crit_edge
    i32 8, label %sw.bb6
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end5.sw.epilog_crit_edge
  %.sink = phi i8 [ 3, %sw.bb6 ], [ 1, %if.end5.sw.epilog_crit_edge ]
  %or7 = or i8 %grp.020, %.sink
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call, align 4
  %conv2.i = add i8 %9, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %10 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or7, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end5.cleanup_crit_edge, %if.end.thread21
  %retval.0 = phi i32 [ %call.i.i, %sw.epilog ], [ -22, %if.end5.cleanup_crit_edge ], [ %call.i.i.i, %if.end.thread21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030reg_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i.i, align 1, !annotation !127
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call.i, align 4
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i.i, i8 noundef zeroext %2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %twlreg_grp.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

twlreg_grp.exit:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %value.i, align 1, !annotation !127
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call, align 4
  %conv2.i = add i8 %5, 2
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %value.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %twlreg_grp.exit.twlreg_read.exit_crit_edge, label %cond.false.i

twlreg_grp.exit.twlreg_read.exit_crit_edge:       ; preds = %twlreg_grp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %twlreg_read.exit

cond.false.i:                                     ; preds = %twlreg_grp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %value.i, align 1
  %conv4.i = zext i8 %7 to i32
  br label %twlreg_read.exit

twlreg_read.exit:                                 ; preds = %cond.false.i, %twlreg_grp.exit.twlreg_read.exit_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.false.i ], [ %call.i.i, %twlreg_grp.exit.twlreg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %and = lshr i32 %cond.i, 2
  %8 = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.twl6030reg_get_status, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %twlreg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %entry.cleanup_crit_edge ], [ %switch.load, %twlreg_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030smps_list_voltage(ptr noundef %rdev, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %flags = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %1, label %entry.sw.epilog33_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %entry.sw.bb1_crit_edge
    i8 2, label %sw.bb9
    i8 3, label %sw.bb21
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.epilog33_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %voltage.0 = phi i32 [ 0, %entry.sw.bb1_crit_edge ], [ 100000, %sw.bb ]
  %3 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %index, label %sw.default [
    i32 0, label %sw.bb1.sw.epilog33_crit_edge
    i32 58, label %sw.bb3
    i32 59, label %sw.bb4
    i32 60, label %sw.bb5
    i32 61, label %sw.bb6
    i32 62, label %sw.bb7
  ]

sw.bb1.sw.epilog33_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb3:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb4:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb5:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb6:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb7:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.default:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %4 = mul i32 %index, 12500
  %add = add i32 %4, 587500
  %add8 = add i32 %add, %voltage.0
  br label %sw.epilog33

sw.bb9:                                           ; preds = %entry
  %5 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %index, label %sw.default16 [
    i32 0, label %sw.bb9.sw.epilog33_crit_edge
    i32 58, label %sw.bb11
    i32 59, label %sw.bb12
    i32 60, label %sw.bb13
    i32 61, label %sw.bb14
    i32 62, label %sw.bb15
  ]

sw.bb9.sw.epilog33_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb11:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb12:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb13:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb14:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb15:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.default16:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = mul i32 %index, 38600
  %add19 = add i32 %6, 1813400
  br label %sw.epilog33

sw.bb21:                                          ; preds = %entry
  %7 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %index, label %sw.default28 [
    i32 0, label %sw.bb21.sw.epilog33_crit_edge
    i32 58, label %sw.bb23
    i32 59, label %sw.bb24
    i32 60, label %sw.bb25
    i32 61, label %sw.bb26
    i32 62, label %sw.bb27
  ]

sw.bb21.sw.epilog33_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb23:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb24:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb25:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb26:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.bb27:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog33

sw.default28:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %8 = mul i32 %index, 38600
  %add31 = add i32 %8, 2122400
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb21.sw.epilog33_crit_edge, %sw.default16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb9.sw.epilog33_crit_edge, %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb1.sw.epilog33_crit_edge, %entry.sw.epilog33_crit_edge
  %voltage.1 = phi i32 [ 0, %entry.sw.epilog33_crit_edge ], [ %add31, %sw.default28 ], [ 3241000, %sw.bb27 ], [ 2932000, %sw.bb26 ], [ 2778000, %sw.bb25 ], [ 2315000, %sw.bb24 ], [ 4167000, %sw.bb23 ], [ %add19, %sw.default16 ], [ 3241000, %sw.bb15 ], [ 2932000, %sw.bb14 ], [ 2778000, %sw.bb13 ], [ 2315000, %sw.bb12 ], [ 2084000, %sw.bb11 ], [ %add8, %sw.default ], [ 2100000, %sw.bb7 ], [ 1900000, %sw.bb6 ], [ 1800000, %sw.bb5 ], [ 1500000, %sw.bb4 ], [ 1350000, %sw.bb3 ], [ %index, %sw.bb1.sw.epilog33_crit_edge ], [ %index, %sw.bb9.sw.epilog33_crit_edge ], [ %index, %sw.bb21.sw.epilog33_crit_edge ]
  ret i32 %voltage.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030smps_map_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %flags = getelementptr inbounds %struct.twlreg_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb50
    i8 2, label %sw.bb101
    i8 3, label %sw.bb119
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_uV)
  %cmp = icmp eq i32 %min_uV, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %3 = add i32 %min_uV, -600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 700001, i32 %3)
  %4 = icmp ult i32 %3, 700001
  br i1 %4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub7 = add nsw i32 %min_uV, -587501
  %div188 = udiv i32 %sub7, 12500
  %inc = add nuw nsw i32 %div188, 1
  br label %sw.epilog

if.else8:                                         ; preds = %if.else
  %5 = add i32 %min_uV, -1900001
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %5)
  %6 = icmp ult i32 %5, 200000
  br i1 %6, label %if.else8.sw.epilog_crit_edge, label %if.else15

if.else8.sw.epilog_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else15:                                        ; preds = %if.else8
  %7 = add i32 %min_uV, -1800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %7)
  %8 = icmp ult i32 %7, 100000
  br i1 %8, label %if.else15.sw.epilog_crit_edge, label %if.else22

if.else15.sw.epilog_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else22:                                        ; preds = %if.else15
  %9 = add i32 %min_uV, -1500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %9)
  %10 = icmp ult i32 %9, 300000
  br i1 %10, label %if.else22.sw.epilog_crit_edge, label %if.else29

if.else22.sw.epilog_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else29:                                        ; preds = %if.else22
  %11 = add i32 %min_uV, -1350001
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %11)
  %12 = icmp ult i32 %11, 150000
  br i1 %12, label %if.else29.sw.epilog_crit_edge, label %if.else36

if.else29.sw.epilog_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else36:                                        ; preds = %if.else29
  %13 = add i32 %min_uV, -1300001
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %13)
  %14 = icmp ult i32 %13, 50000
  br i1 %14, label %if.else36.sw.epilog_crit_edge, label %if.else36.cleanup_crit_edge

if.else36.cleanup_crit_edge:                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else36.sw.epilog_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_uV)
  %cmp51 = icmp eq i32 %min_uV, 0
  br i1 %cmp51, label %sw.bb50.sw.epilog_crit_edge, label %if.else54

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else54:                                        ; preds = %sw.bb50
  %15 = add i32 %min_uV, -700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 720001, i32 %15)
  %16 = icmp ult i32 %15, 720001
  br i1 %16, label %if.then60, label %if.else66

if.then60:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  %sub63 = add nsw i32 %min_uV, -687501
  %div64189 = udiv i32 %sub63, 12500
  %inc65 = add nuw nsw i32 %div64189, 1
  br label %sw.epilog

if.else66:                                        ; preds = %if.else54
  %17 = add i32 %min_uV, -1900001
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %17)
  %18 = icmp ult i32 %17, 200000
  br i1 %18, label %if.else66.sw.epilog_crit_edge, label %if.else73

if.else66.sw.epilog_crit_edge:                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else73:                                        ; preds = %if.else66
  %19 = add i32 %min_uV, -1800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %19)
  %20 = icmp ult i32 %19, 100000
  br i1 %20, label %if.else73.sw.epilog_crit_edge, label %if.else80

if.else73.sw.epilog_crit_edge:                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else80:                                        ; preds = %if.else73
  %21 = add i32 %min_uV, -1500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %21)
  %22 = icmp ult i32 %21, 300000
  br i1 %22, label %if.else80.sw.epilog_crit_edge, label %if.else87

if.else80.sw.epilog_crit_edge:                    ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else87:                                        ; preds = %if.else80
  %23 = add i32 %min_uV, -1350001
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %23)
  %24 = icmp ult i32 %23, 150000
  br i1 %24, label %if.else87.sw.epilog_crit_edge, label %if.else87.cleanup_crit_edge

if.else87.cleanup_crit_edge:                      ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else87.sw.epilog_crit_edge:                    ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb101:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1851999, i32 %min_uV)
  %cmp106 = icmp sgt i32 %min_uV, 1851999
  call void @__sanitizer_cov_trace_const_cmp4(i32 4013601, i32 %max_uV)
  %cmp109 = icmp slt i32 %max_uV, 4013601
  %or.cond185 = and i1 %cmp106, %cmp109
  br i1 %or.cond185, label %if.then111, label %sw.bb101.sw.epilog_crit_edge

sw.bb101.sw.epilog_crit_edge:                     ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then111:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #8
  %sub114 = add nsw i32 %min_uV, -1813401
  %div115190 = udiv i32 %sub114, 38600
  %inc116 = add nuw nsw i32 %div115190, 1
  br label %sw.epilog

sw.bb119:                                         ; preds = %entry
  %25 = add i32 %min_uV, -2161000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160001, i32 %25)
  %26 = icmp ult i32 %25, 2160001
  br i1 %26, label %if.then129, label %sw.bb119.sw.epilog_crit_edge

sw.bb119.sw.epilog_crit_edge:                     ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then129:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #8
  %sub132 = add nsw i32 %min_uV, -2122401
  %div133191 = udiv i32 %sub132, 38600
  %inc134 = add nuw nsw i32 %div133191, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then129, %sw.bb119.sw.epilog_crit_edge, %if.then111, %sw.bb101.sw.epilog_crit_edge, %if.else87.sw.epilog_crit_edge, %if.else80.sw.epilog_crit_edge, %if.else73.sw.epilog_crit_edge, %if.else66.sw.epilog_crit_edge, %if.then60, %sw.bb50.sw.epilog_crit_edge, %if.else36.sw.epilog_crit_edge, %if.else29.sw.epilog_crit_edge, %if.else22.sw.epilog_crit_edge, %if.else15.sw.epilog_crit_edge, %if.else8.sw.epilog_crit_edge, %if.then6, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %vsel.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %inc134, %if.then129 ], [ %inc116, %if.then111 ], [ %inc65, %if.then60 ], [ %inc, %if.then6 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 62, %if.else8.sw.epilog_crit_edge ], [ 61, %if.else15.sw.epilog_crit_edge ], [ 60, %if.else22.sw.epilog_crit_edge ], [ 59, %if.else29.sw.epilog_crit_edge ], [ 58, %if.else36.sw.epilog_crit_edge ], [ 0, %sw.bb50.sw.epilog_crit_edge ], [ 62, %if.else66.sw.epilog_crit_edge ], [ 61, %if.else73.sw.epilog_crit_edge ], [ 60, %if.else80.sw.epilog_crit_edge ], [ 59, %if.else87.sw.epilog_crit_edge ], [ 0, %sw.bb101.sw.epilog_crit_edge ], [ 0, %sw.bb119.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else87.cleanup_crit_edge, %if.else36.cleanup_crit_edge
  %retval.0 = phi i32 [ %vsel.0, %sw.epilog ], [ -22, %if.else36.cleanup_crit_edge ], [ -22, %if.else87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030smps_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %conv = trunc i32 %selector to i8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4
  %conv2.i = add i8 %1, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %2 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %conv2.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030smps_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !127
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 4
  %conv2.i = add i8 %2, 4
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
  ret i32 %cond.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !114, !115, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__UNIQUE_ID_alias288, !1, !"__UNIQUE_ID_alias288", i1 false, i1 false}
!1 = !{!"../drivers/regulator/twl6030-regulator.c", i32 750, i32 1}
!2 = !{ptr @__initcall__kmod_twl6030_regulator__289_767_twlreg_init4, !3, !"__initcall__kmod_twl6030_regulator__289_767_twlreg_init4", i1 false, i1 false}
!3 = !{!"../drivers/regulator/twl6030-regulator.c", i32 767, i32 1}
!4 = !{ptr @__exitcall_twlreg_exit, !5, !"__exitcall_twlreg_exit", i1 false, i1 false}
!5 = !{!"../drivers/regulator/twl6030-regulator.c", i32 773, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/twl6030-regulator.c", i32 775, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/twl6030-regulator.c", i32 776, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/twl6030-regulator.c", i32 758, i32 12}
!13 = !{ptr @twlreg_driver, !14, !"twlreg_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/twl6030-regulator.c", i32 752, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/twl6030-regulator.c", i32 723, i32 26}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/twl6030-regulator.c", i32 733, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @twlreg_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @twlreg_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @twl_of_match, !26, !"twl_of_match", i1 false, i1 false}
!26 = !{!"../drivers/regulator/twl6030-regulator.c", i32 637, i32 34}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/twl6030-regulator.c", i32 579, i32 1}
!29 = !{ptr @TWL6030_INFO_VDD1, !28, !"TWL6030_INFO_VDD1", i1 false, i1 false}
!30 = !{ptr @twl6030coresmps_ops, !31, !"twl6030coresmps_ops", i1 false, i1 false}
!31 = !{!"../drivers/regulator/twl6030-regulator.c", i32 247, i32 35}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/twl6030-regulator.c", i32 580, i32 1}
!34 = !{ptr @TWL6030_INFO_VDD2, !33, !"TWL6030_INFO_VDD2", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/twl6030-regulator.c", i32 581, i32 1}
!37 = !{ptr @TWL6030_INFO_VDD3, !36, !"TWL6030_INFO_VDD3", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/twl6030-regulator.c", i32 582, i32 1}
!40 = !{ptr @TWL6030_INFO_VAUX1_6030, !39, !"TWL6030_INFO_VAUX1_6030", i1 false, i1 false}
!41 = !{ptr @twl6030ldo_ops, !42, !"twl6030ldo_ops", i1 false, i1 false}
!42 = !{!"../drivers/regulator/twl6030-regulator.c", i32 275, i32 35}
!43 = !{ptr @twl6030ldo_linear_range, !44, !"twl6030ldo_linear_range", i1 false, i1 false}
!44 = !{!"../drivers/regulator/twl6030-regulator.c", i32 498, i32 34}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/twl6030-regulator.c", i32 583, i32 1}
!47 = !{ptr @TWL6030_INFO_VAUX2_6030, !46, !"TWL6030_INFO_VAUX2_6030", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/twl6030-regulator.c", i32 584, i32 1}
!50 = !{ptr @TWL6030_INFO_VAUX3_6030, !49, !"TWL6030_INFO_VAUX3_6030", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/twl6030-regulator.c", i32 585, i32 1}
!53 = !{ptr @TWL6030_INFO_VMMC, !52, !"TWL6030_INFO_VMMC", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/twl6030-regulator.c", i32 586, i32 1}
!56 = !{ptr @TWL6030_INFO_VPP, !55, !"TWL6030_INFO_VPP", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/twl6030-regulator.c", i32 587, i32 1}
!59 = !{ptr @TWL6030_INFO_VUSIM, !58, !"TWL6030_INFO_VUSIM", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/twl6030-regulator.c", i32 589, i32 1}
!62 = !{ptr @TWL6032_INFO_LDO2, !61, !"TWL6032_INFO_LDO2", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/twl6030-regulator.c", i32 590, i32 1}
!65 = !{ptr @TWL6032_INFO_LDO4, !64, !"TWL6032_INFO_LDO4", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/twl6030-regulator.c", i32 591, i32 1}
!68 = !{ptr @TWL6032_INFO_LDO3, !67, !"TWL6032_INFO_LDO3", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/twl6030-regulator.c", i32 592, i32 1}
!71 = !{ptr @TWL6032_INFO_LDO5, !70, !"TWL6032_INFO_LDO5", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/twl6030-regulator.c", i32 593, i32 1}
!74 = !{ptr @TWL6032_INFO_LDO1, !73, !"TWL6032_INFO_LDO1", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/twl6030-regulator.c", i32 594, i32 1}
!77 = !{ptr @TWL6032_INFO_LDO7, !76, !"TWL6032_INFO_LDO7", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/twl6030-regulator.c", i32 595, i32 1}
!80 = !{ptr @TWL6032_INFO_LDO6, !79, !"TWL6032_INFO_LDO6", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/twl6030-regulator.c", i32 596, i32 1}
!83 = !{ptr @TWL6032_INFO_LDOLN, !82, !"TWL6032_INFO_LDOLN", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/twl6030-regulator.c", i32 597, i32 1}
!86 = !{ptr @TWL6032_INFO_LDOUSB, !85, !"TWL6032_INFO_LDOUSB", i1 false, i1 false}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/twl6030-regulator.c", i32 598, i32 1}
!89 = !{ptr @TWLFIXED_INFO_VANA, !88, !"TWLFIXED_INFO_VANA", i1 false, i1 false}
!90 = !{ptr @twl6030fixed_ops, !91, !"twl6030fixed_ops", i1 false, i1 false}
!91 = !{!"../drivers/regulator/twl6030-regulator.c", i32 290, i32 35}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/twl6030-regulator.c", i32 599, i32 1}
!94 = !{ptr @TWLFIXED_INFO_VCXIO, !93, !"TWLFIXED_INFO_VCXIO", i1 false, i1 false}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/twl6030-regulator.c", i32 600, i32 1}
!97 = !{ptr @TWLFIXED_INFO_VDAC, !96, !"TWLFIXED_INFO_VDAC", i1 false, i1 false}
!98 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/twl6030-regulator.c", i32 601, i32 1}
!100 = !{ptr @TWLFIXED_INFO_VUSB, !99, !"TWLFIXED_INFO_VUSB", i1 false, i1 false}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/twl6030-regulator.c", i32 602, i32 1}
!103 = !{ptr @TWLFIXED_INFO_V1V8, !102, !"TWLFIXED_INFO_V1V8", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/twl6030-regulator.c", i32 603, i32 1}
!106 = !{ptr @TWLFIXED_INFO_V2V1, !105, !"TWLFIXED_INFO_V2V1", i1 false, i1 false}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/twl6030-regulator.c", i32 604, i32 1}
!109 = !{ptr @TWLSMPS_INFO_SMPS3, !108, !"TWLSMPS_INFO_SMPS3", i1 false, i1 false}
!110 = !{ptr @twlsmps_ops, !111, !"twlsmps_ops", i1 false, i1 false}
!111 = !{!"../drivers/regulator/twl6030-regulator.c", i32 481, i32 35}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/twl6030-regulator.c", i32 605, i32 1}
!114 = !{ptr @TWLSMPS_INFO_SMPS4, !113, !"TWLSMPS_INFO_SMPS4", i1 false, i1 false}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/twl6030-regulator.c", i32 606, i32 1}
!117 = !{ptr @TWLSMPS_INFO_VIO, !116, !"TWLSMPS_INFO_VIO", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
