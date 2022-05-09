; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-mux-pca954x.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-pca954x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.chip_desc = type { i8, i8, i8, i32, %struct.i2c_device_identity }
%struct.i2c_device_identity = type { i16, i16, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.pca954x = type { ptr, i8, i32, ptr, ptr, i32, %struct.raw_spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_mux_pca954x__291_563_pca954x_driver_init6 = internal global ptr @pca954x_driver_init, section ".initcall6.init", align 4
@pca954x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pca954x_probe, ptr @pca954x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pca954x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca954x_pm, ptr null, ptr null }, ptr @pca954x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca954x_driver_exit = internal global ptr @pca954x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [60 x i8] c"i2c_mux_pca954x.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [58 x i8] c"i2c_mux_pca954x.description=PCA954x I2C mux/switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [55 x i8] c"i2c_mux_pca954x.file=drivers/i2c/muxes/i2c-mux-pca954x\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [31 x i8] c"i2c_mux_pca954x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pca954x\00", [24 x i8] zeroinitializer }, align 32
@pca954x_of_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9540\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chips }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9542\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9543\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 32) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9544\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9545\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 64) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9546\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 80) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9547\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9548\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 112) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9846\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 128) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9847\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9848\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 160) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9849\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @chips, i64 176) }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@pca954x_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @pca954x_resume, ptr null, ptr @pca954x_resume, ptr null, ptr @pca954x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pca954x_id = internal constant { [13 x %struct.i2c_device_id], [72 x i8] } { [13 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca9540\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca9542\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pca9543\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"pca9544\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"pca9545\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"pca9546\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"pca9547\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"pca9548\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"pca9846\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pca9847\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"pca9848\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"pca9849\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@chips = internal constant { [12 x %struct.chip_desc], [32 x i8] } { [12 x %struct.chip_desc] [%struct.chip_desc { i8 2, i8 4, i8 0, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 2, i8 4, i8 1, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 2, i8 0, i8 1, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 4, i8 1, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 0, i8 1, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 8, i8 8, i8 0, i32 0, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 8, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 -1, i16 0, i8 0 } }, %struct.chip_desc { i8 4, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 0, i16 267, i8 0 } }, %struct.chip_desc { i8 8, i8 8, i8 0, i32 0, %struct.i2c_device_identity { i16 0, i16 264, i8 0 } }, %struct.chip_desc { i8 8, i8 0, i8 0, i32 1, %struct.i2c_device_identity { i16 0, i16 266, i8 0 } }, %struct.chip_desc { i8 4, i8 4, i8 0, i32 0, %struct.i2c_device_identity { i16 0, i16 265, i8 0 } }], [32 x i8] zeroinitializer }, align 32
@pca954x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 464, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unexpected device id %03x-%03x-%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pca954x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/muxes/i2c-mux-pca954x.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca954x_probe._entry_ptr = internal global ptr @pca954x_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idle-state\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c-mux-idle-disconnect\00", [40 x i8] zeroinitializer }, align 32
@pca954x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"probe failed\0A\00", [18 x i8] zeroinitializer }, align 32
@pca954x_probe._entry_ptr.11 = internal global ptr @pca954x_probe._entry.9, section ".printk_index", align 4
@dev_attr_idle_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idle_state_show, ptr @idle_state_store }, [36 x i8] zeroinitializer }, align 32
@pca954x_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 515, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"registered %d multiplexed busses for I2C %s %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pca954x_probe._entry_ptr.15 = internal global ptr @pca954x_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@pca954x_irq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@pca954x_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 369, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed irq create map\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca954x_irq_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pca954x_irq_setup._entry_ptr = internal global ptr @pca954x_irq_setup._entry, section ".printk_index", align 4
@pca954x_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca954x_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c-mux-pca954x\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idle_state\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@pca954x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 544, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to verify mux presence\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pca954x_resume\00", [17 x i8] zeroinitializer }, align 32
@pca954x_resume._entry_ptr = internal global ptr @pca954x_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"pca954x_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 552, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 554, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"pca954x_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 196, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"pca954x_pm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 550, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"pca954x_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 179, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 438, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"chips\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 94, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 462, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 470, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 471, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 483, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"dev_attr_idle_state\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 513, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 358, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 369, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"pca954x_irq_chip\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 344, i32 24 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 345, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 318, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 282, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [39 x i8] c"../drivers/i2c/muxes/i2c-mux-pca954x.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 544, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_pca954x_driver_exit, ptr @__initcall__kmod_i2c_mux_pca954x__291_563_pca954x_driver_init6, ptr @pca954x_driver_exit, ptr @pca954x_irq_setup._entry, ptr @pca954x_irq_setup._entry_ptr, ptr @pca954x_probe._entry, ptr @pca954x_probe._entry.12, ptr @pca954x_probe._entry.9, ptr @pca954x_probe._entry_ptr, ptr @pca954x_probe._entry_ptr.11, ptr @pca954x_probe._entry_ptr.15, ptr @pca954x_resume._entry, ptr @pca954x_resume._entry_ptr, ptr @pca954x_driver, ptr @.str, ptr @pca954x_of_match, ptr @pca954x_pm, ptr @pca954x_id, ptr @.str.1, ptr @chips, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @dev_attr_idle_state, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @pca954x_irq_setup.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pca954x_irq_chip, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_of_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_id to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chips to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idle_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_irq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca954x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca954x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca954x_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca954x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @pca954x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca954x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %id26 = alloca %struct.i2c_device_identity, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup103_crit_edge

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @i2c_mux_alloc(ptr noundef %1, ptr noundef %dev1, i32 noundef 8, i32 noundef 68, i32 noundef 0, ptr noundef nonnull @pca954x_select_chan, ptr noundef nonnull @pca954x_deselect_mux) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup103_crit_edge, label %if.end5

if.end.cleanup103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %client7 = getelementptr inbounds %struct.pca954x, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %client7, align 4
  %call8 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #8
  %cmp.i161 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call8 to i32
  br label %cleanup103

if.end12:                                         ; preds = %if.end5
  %tobool13.not = icmp eq ptr %call8, null
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call8, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %call16 = tail call ptr @device_get_match_data(ptr noundef %dev1) #8
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %7, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [12 x %struct.chip_desc], ptr @chips, i32 0, i32 %15
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %7, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %id23 = getelementptr inbounds %struct.chip_desc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %id23 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %id23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp.not = icmp eq i16 %20, -1
  br i1 %cmp.not, label %if.end21.if.end57_crit_edge, label %if.then25

if.end21.if.end57_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then25:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %id26) #8
  %21 = call ptr @memset(ptr %id26, i32 255, i32 6)
  %call27 = call i32 @i2c_get_device_id(ptr noundef %client, ptr noundef nonnull %id26) #8
  %22 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call27, label %if.then25.cleanup_crit_edge [
    i32 0, label %land.lhs.true34
    i32 -95, label %if.then25.cleanup.thread_crit_edge
  ]

if.then25.cleanup.thread_crit_edge:               ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.then25
  %23 = ptrtoint ptr %id26 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id26, align 2
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %id38 = getelementptr inbounds %struct.chip_desc, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %id38 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id38, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %28)
  %cmp41.not = icmp eq i16 %24, %28
  br i1 %cmp41.not, label %lor.lhs.false, label %land.lhs.true34.do.end_crit_edge

land.lhs.true34.do.end_crit_edge:                 ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %part_id = getelementptr inbounds %struct.i2c_device_identity, ptr %id26, i32 0, i32 1
  %29 = ptrtoint ptr %part_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %part_id, align 2
  %part_id46 = getelementptr inbounds %struct.chip_desc, ptr %26, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %part_id46 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %part_id46, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp48.not = icmp eq i16 %30, %32
  br i1 %cmp48.not, label %lor.lhs.false.cleanup.thread_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true34.do.end_crit_edge
  %conv52 = zext i16 %24 to i32
  %part_id53 = getelementptr inbounds %struct.i2c_device_identity, ptr %id26, i32 0, i32 1
  %33 = ptrtoint ptr %part_id53 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %part_id53, align 2
  %conv54 = zext i16 %34 to i32
  %die_revision = getelementptr inbounds %struct.i2c_device_identity, ptr %id26, i32 0, i32 2
  %35 = ptrtoint ptr %die_revision to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %die_revision, align 2
  %conv55 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv55) #11
  br label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %if.then25.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %id26) #8
  br label %if.end57

cleanup:                                          ; preds = %do.end, %if.then25.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call27, %if.then25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %id26) #8
  br label %cleanup103

if.end57:                                         ; preds = %cleanup.thread, %if.end21.if.end57_crit_edge
  %idle_state = getelementptr inbounds %struct.pca954x, ptr %7, i32 0, i32 2
  %37 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %idle_state, align 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %idle_state, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.end57.if.end66_crit_edge, label %if.then61

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then61:                                        ; preds = %if.end57
  %call.i162 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br i1 %call.i162, label %if.end66.thread, label %if.then61.if.end66_crit_edge

if.then61.if.end66_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end66.thread:                                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -2, ptr %idle_state, align 4
  br label %if.end.i

if.end66:                                         ; preds = %if.then61.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %39 = ptrtoint ptr %idle_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %idle_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.i163 = icmp sgt i32 %.pr, -1
  br i1 %cmp.i163, label %if.then.i, label %if.end66.if.end.i_crit_edge

if.end66.if.end.i_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end66
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %muxtype.i.i = getelementptr inbounds %struct.chip_desc, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %muxtype.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %muxtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i164 = trunc i32 %.pr to i8
  %enable.i.i = getelementptr inbounds %struct.chip_desc, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enable.i.i, align 1
  %or8.i.i = or i8 %45, %conv.i164
  %or.i.i = zext i8 %or8.i.i to i32
  br label %pca954x_regval.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i = and i32 %.pr, 255
  %shl.i.i = shl nuw i32 1, %conv4.i.i
  br label %pca954x_regval.exit.i

pca954x_regval.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %shl.i.i, %if.else.i.i ]
  %retval.0.i.i = trunc i32 %retval.0.in.i.i to i8
  br label %if.end.i

if.end.i:                                         ; preds = %pca954x_regval.exit.i, %if.end66.if.end.i_crit_edge, %if.end66.thread
  %.sink.i = phi i8 [ %retval.0.i.i, %pca954x_regval.exit.i ], [ 0, %if.end66.if.end.i_crit_edge ], [ 0, %if.end66.thread ]
  %last_chan2.i = getelementptr inbounds %struct.pca954x, ptr %7, i32 0, i32 1
  %46 = ptrtoint ptr %last_chan2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink.i, ptr %last_chan2.i, align 4
  %call4.i = call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %.sink.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end73, label %if.end74

do.end73:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %last_chan2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %last_chan2.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %cleanup103

if.end74:                                         ; preds = %if.end.i
  %48 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv.i, align 4
  %client1.i = getelementptr inbounds %struct.pca954x, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client1.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %has_irq.i = getelementptr inbounds %struct.chip_desc, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %has_irq.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %has_irq.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.end74.pca954x_irq_setup.exit_crit_edge, label %lor.lhs.false.i

if.end74.pca954x_irq_setup.exit_crit_edge:        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca954x_irq_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end74
  %irq2.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 6
  %56 = ptrtoint ptr %irq2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i165 = icmp slt i32 %57, 1
  br i1 %cmp.i165, label %lor.lhs.false.i.pca954x_irq_setup.exit_crit_edge, label %do.body.i

lor.lhs.false.i.pca954x_irq_setup.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca954x_irq_setup.exit

do.body.i:                                        ; preds = %lor.lhs.false.i
  %lock.i = getelementptr inbounds %struct.pca954x, ptr %49, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @pca954x_irq_setup.__key, i16 noundef signext 2) #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4, i32 27
  %58 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node.i, align 8
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %49, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  %conv.i166 = zext i8 %63 to i32
  %tobool.not.i.i.i = icmp eq ptr %59, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %59, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i, i32 noundef %conv.i166, i32 noundef %conv.i166, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef %49) #8
  %irq5.i = getelementptr inbounds %struct.pca954x, ptr %49, i32 0, i32 4
  %64 = ptrtoint ptr %irq5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call1.i.i, ptr %irq5.i, align 4
  %tobool7.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool7.not.i, label %do.body.i.fail_cleanup_crit_edge, label %for.cond.preheader.i

do.body.i.fail_cleanup_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_cleanup

for.cond.preheader.i:                             ; preds = %do.body.i
  %65 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %49, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp1344.not.i = icmp eq i8 %68, 0
  br i1 %cmp1344.not.i, label %for.cond.preheader.i.pca954x_irq_setup.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.pca954x_irq_setup.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca954x_irq_setup.exit

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %c.045.i = phi i32 [ %inc.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %irq5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq5.i, align 4
  %call.i.i167 = call i32 @irq_create_mapping_affinity(ptr noundef %70, i32 noundef %c.045.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %tobool17.not.i = icmp eq i32 %call.i.i167, 0
  br i1 %tobool17.not.i, label %do.end21.i, label %if.end23.i

do.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #11
  br label %fail_cleanup

if.end23.i:                                       ; preds = %for.body.i
  %call24.i = call i32 @irq_set_chip_data(i32 noundef %call.i.i167, ptr noundef %49) #8
  call void @irq_set_chip_and_handler_name(i32 noundef %call.i.i167, ptr noundef nonnull @pca954x_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #8
  %inc.i = add nuw nsw i32 %c.045.i, 1
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %49, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv12.i = zext i8 %74 to i32
  %cmp13.i = icmp ult i32 %inc.i, %conv12.i
  br i1 %cmp13.i, label %if.end23.i.for.body.i_crit_edge, label %if.end23.i.pca954x_irq_setup.exit_crit_edge

if.end23.i.pca954x_irq_setup.exit_crit_edge:      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca954x_irq_setup.exit

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

pca954x_irq_setup.exit:                           ; preds = %if.end23.i.pca954x_irq_setup.exit_crit_edge, %for.cond.preheader.i.pca954x_irq_setup.exit_crit_edge, %lor.lhs.false.i.pca954x_irq_setup.exit_crit_edge, %if.end74.pca954x_irq_setup.exit_crit_edge
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %7, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp81186.not = icmp eq i8 %78, 0
  br i1 %cmp81186.not, label %pca954x_irq_setup.exit.for.end_crit_edge, label %pca954x_irq_setup.exit.for.body_crit_edge

pca954x_irq_setup.exit.for.body_crit_edge:        ; preds = %pca954x_irq_setup.exit
  br label %for.body

pca954x_irq_setup.exit.for.end_crit_edge:         ; preds = %pca954x_irq_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %pca954x_irq_setup.exit.for.body_crit_edge
  %num.0187 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %pca954x_irq_setup.exit.for.body_crit_edge ]
  %call83 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef %num.0187, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %for.inc, label %for.body.fail_cleanup_crit_edge

for.body.fail_cleanup_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %num.0187, 1
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %7, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 4
  %conv80 = zext i8 %82 to i32
  %cmp81 = icmp ult i32 %inc, %conv80
  br i1 %cmp81, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pca954x_irq_setup.exit.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %pca954x_irq_setup.exit.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %irq = getelementptr inbounds %struct.pca954x, ptr %7, i32 0, i32 4
  %83 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %irq, align 4
  %tobool87.not = icmp eq ptr %84, null
  br i1 %tobool87.not, label %for.end.if.end95_crit_edge, label %if.then88

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then88:                                        ; preds = %for.end
  %85 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %client7, align 4
  %irq90 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %irq90 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq90, align 4
  %call91 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %88, ptr noundef null, ptr noundef nonnull @pca954x_irq_handler, i32 noundef 8320, ptr noundef nonnull @.str, ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then88.if.end95_crit_edge, label %if.then88.fail_cleanup_crit_edge

if.then88.fail_cleanup_crit_edge:                 ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_cleanup

if.then88.if.end95_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.end95:                                         ; preds = %if.then88.if.end95_crit_edge, %for.end.if.end95_crit_edge
  %call96 = call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_idle_state) #8
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %7, align 4
  %muxtype = getelementptr inbounds %struct.chip_desc, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %muxtype to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %muxtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp101 = icmp eq i32 %92, 0
  %cond = select i1 %cmp101, ptr @.str.16, ptr @.str.17
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %num.0.lcssa, ptr noundef nonnull %cond, ptr noundef %name) #11
  br label %cleanup103

fail_cleanup:                                     ; preds = %if.then88.fail_cleanup_crit_edge, %for.body.fail_cleanup_crit_edge, %do.end21.i, %do.body.i.fail_cleanup_crit_edge
  %ret.0 = phi i32 [ %call91, %if.then88.fail_cleanup_crit_edge ], [ -19, %do.body.i.fail_cleanup_crit_edge ], [ -22, %do.end21.i ], [ %call83, %for.body.fail_cleanup_crit_edge ]
  %93 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv.i, align 4
  %irq1.i = getelementptr inbounds %struct.pca954x, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %irq1.i, align 4
  %tobool.not.i169 = icmp eq ptr %96, null
  br i1 %tobool.not.i169, label %fail_cleanup.pca954x_cleanup.exit_crit_edge, label %for.cond.preheader.i170

fail_cleanup.pca954x_cleanup.exit_crit_edge:      ; preds = %fail_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca954x_cleanup.exit

for.cond.preheader.i170:                          ; preds = %fail_cleanup
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %94, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp13.not.i = icmp eq i8 %100, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i170.for.end.i_crit_edge, label %for.cond.preheader.i170.for.body.i172_crit_edge

for.cond.preheader.i170.for.body.i172_crit_edge:  ; preds = %for.cond.preheader.i170
  br label %for.body.i172

for.cond.preheader.i170.for.end.i_crit_edge:      ; preds = %for.cond.preheader.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i172:                                    ; preds = %irq_find_mapping.exit.i.for.body.i172_crit_edge, %for.cond.preheader.i170.for.body.i172_crit_edge
  %c.014.i = phi i32 [ %inc.i175, %irq_find_mapping.exit.i.for.body.i172_crit_edge ], [ 0, %for.cond.preheader.i170.for.body.i172_crit_edge ]
  %101 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %irq1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #8
  %103 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !79
  %call.i.i171 = call ptr @__irq_resolve_mapping(ptr noundef %102, i32 noundef %c.014.i, ptr noundef nonnull %irq.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i171, null
  br i1 %tobool.not.i.i, label %for.body.i172.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i173

for.body.i172.irq_find_mapping.exit.i_crit_edge:  ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit.i

if.then.i.i173:                                   ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i173, %for.body.i172.irq_find_mapping.exit.i_crit_edge
  %retval.0.i.i174 = phi i32 [ %105, %if.then.i.i173 ], [ 0, %for.body.i172.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #8
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.i174) #8
  %inc.i175 = add nuw nsw i32 %c.014.i, 1
  %106 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %94, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 4
  %conv.i176 = zext i8 %109 to i32
  %cmp.i177 = icmp ult i32 %inc.i175, %conv.i176
  br i1 %cmp.i177, label %irq_find_mapping.exit.i.for.body.i172_crit_edge, label %irq_find_mapping.exit.i.for.end.i_crit_edge

irq_find_mapping.exit.i.for.end.i_crit_edge:      ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

irq_find_mapping.exit.i.for.body.i172_crit_edge:  ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i172

for.end.i:                                        ; preds = %irq_find_mapping.exit.i.for.end.i_crit_edge, %for.cond.preheader.i170.for.end.i_crit_edge
  %110 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %irq1.i, align 4
  call void @irq_domain_remove(ptr noundef %111) #8
  br label %pca954x_cleanup.exit

pca954x_cleanup.exit:                             ; preds = %for.end.i, %fail_cleanup.pca954x_cleanup.exit_crit_edge
  call void @i2c_mux_del_adapters(ptr noundef nonnull %call2) #8
  br label %cleanup103

cleanup103:                                       ; preds = %pca954x_cleanup.exit, %if.end95, %do.end73, %cleanup, %if.then10, %if.end.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.1 = phi i32 [ %10, %if.then10 ], [ -19, %do.end73 ], [ %ret.0, %pca954x_cleanup.exit ], [ 0, %if.end95 ], [ %retval.0, %cleanup ], [ -19, %entry.cleanup103_crit_edge ], [ -12, %if.end.cleanup103_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca954x_remove(ptr noundef %client) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_idle_state) #8
  %priv.i.i = getelementptr inbounds %struct.i2c_mux_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %irq1.i = getelementptr inbounds %struct.pca954x, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.pca954x_cleanup.exit_crit_edge, label %for.cond.preheader.i

entry.pca954x_cleanup.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca954x_cleanup.exit

for.cond.preheader.i:                             ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13.not.i = icmp eq i8 %9, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %irq_find_mapping.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %c.014.i = phi i32 [ %inc.i, %irq_find_mapping.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #8
  %12 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !79
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef %c.014.i, ptr noundef nonnull %irq.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i

for.body.i.irq_find_mapping.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i, %for.body.i.irq_find_mapping.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %14, %if.then.i.i ], [ 0, %for.body.i.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #8
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.i) #8
  %inc.i = add nuw nsw i32 %c.014.i, 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv.i = zext i8 %18 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %irq_find_mapping.exit.i.for.body.i_crit_edge, label %irq_find_mapping.exit.i.for.end.i_crit_edge

irq_find_mapping.exit.i.for.end.i_crit_edge:      ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

irq_find_mapping.exit.i.for.body.i_crit_edge:     ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %irq_find_mapping.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %19 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq1.i, align 4
  call void @irq_domain_remove(ptr noundef %20) #8
  br label %pca954x_cleanup.exit

pca954x_cleanup.exit:                             ; preds = %for.end.i, %entry.pca954x_cleanup.exit_crit_edge
  call void @i2c_mux_del_adapters(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca954x_select_chan(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %dummy.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %client1 = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %muxtype.i = getelementptr inbounds %struct.chip_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %muxtype.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %muxtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %chan to i8
  %enable.i = getelementptr inbounds %struct.chip_desc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable.i, align 1
  %or8.i = or i8 %9, %conv
  %or.i = zext i8 %or8.i to i32
  br label %pca954x_regval.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = and i32 %chan, 255
  %shl.i = shl nuw i32 1, %conv4.i
  br label %pca954x_regval.exit

pca954x_regval.exit:                              ; preds = %if.else.i, %if.then.i
  %retval.0.in.i = phi i32 [ %or.i, %if.then.i ], [ %shl.i, %if.else.i ]
  %retval.0.i = trunc i32 %retval.0.in.i to i8
  %last_chan = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %last_chan to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %last_chan, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %retval.0.i)
  %cmp.not = icmp eq i8 %11, %retval.0.i
  br i1 %cmp.not, label %pca954x_regval.exit.if.end_crit_edge, label %if.then

pca954x_regval.exit.if.end_crit_edge:             ; preds = %pca954x_regval.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pca954x_regval.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %muxc, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %dummy.i) #8
  %14 = call ptr @memset(ptr %dummy.i, i32 255, i32 34)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %13, i16 noundef zeroext %16, i16 noundef zeroext %18, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i, i32 noundef 1, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp7, i8 0, i8 %retval.0.i
  %19 = ptrtoint ptr %last_chan to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %last_chan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pca954x_regval.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %pca954x_regval.exit.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca954x_deselect_mux(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %dummy.i = alloca %union.i2c_smbus_data, align 2
  %dummy.i.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %client1 = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %idle_state2 = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %idle_state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %idle_state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %muxtype.i.i = getelementptr inbounds %struct.chip_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %muxtype.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %muxtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %5 to i8
  %enable.i.i = getelementptr inbounds %struct.chip_desc, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable.i.i, align 1
  %or8.i.i = or i8 %11, %conv.i
  %or.i.i = zext i8 %or8.i.i to i32
  br label %pca954x_regval.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i = and i32 %5, 255
  %shl.i.i = shl nuw i32 1, %conv4.i.i
  br label %pca954x_regval.exit.i

pca954x_regval.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %shl.i.i, %if.else.i.i ]
  %retval.0.i.i = trunc i32 %retval.0.in.i.i to i8
  %last_chan.i = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %last_chan.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %last_chan.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %retval.0.i.i)
  %cmp.not.i = icmp eq i8 %13, %retval.0.i.i
  br i1 %cmp.not.i, label %pca954x_regval.exit.i.cleanup_crit_edge, label %if.then.i

pca954x_regval.exit.i.cleanup_crit_edge:          ; preds = %pca954x_regval.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %pca954x_regval.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %muxc, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %dummy.i.i) #8
  %16 = call ptr @memset(ptr %dummy.i.i, i32 255, i32 34)
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i.i, align 2
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 8
  %call.i.i = call i32 @__i2c_smbus_xfer(ptr noundef %15, i16 noundef zeroext %18, i16 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i.i, i32 noundef 1, ptr noundef nonnull %dummy.i.i) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %dummy.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp7.i, i8 0, i8 %retval.0.i.i
  %21 = ptrtoint ptr %last_chan.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select.i, ptr %last_chan.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %cmp4 = icmp eq i32 %5, -2
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %last_chan = getelementptr inbounds %struct.pca954x, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %last_chan to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %last_chan, align 4
  %23 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %muxc, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %dummy.i) #8
  %25 = call ptr @memset(ptr %dummy.i, i32 255, i32 34)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr.i, align 2
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %3, align 8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %24, i16 noundef zeroext %27, i16 noundef zeroext %29, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %dummy.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then.i, %pca954x_regval.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.then.i ], [ 0, %pca954x_regval.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_get_device_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca954x_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #8
  %client = getelementptr inbounds %struct.pca954x, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr27 = lshr i32 %call, 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr27, %sub
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %pending, align 4
  %7 = load i8, ptr %3, align 4
  %conv3 = zext i8 %7 to i32
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv3, i32 noundef 0) #8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv728 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %conv728)
  %cmp829 = icmp slt i32 %call4, %conv728
  br i1 %cmp829, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %irq10 = getelementptr inbounds %struct.pca954x, ptr %dev_id, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %irq_linear_revmap.exit.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ %call4, %for.body.lr.ph ], [ %call15, %irq_linear_revmap.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #8
  %14 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !79
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %13, i32 noundef %i.030, ptr noundef nonnull %irq.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.irq_linear_revmap.exit_crit_edge, label %if.then.i.i

for.body.irq_linear_revmap.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_linear_revmap.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i.i, align 4
  br label %irq_linear_revmap.exit

irq_linear_revmap.exit:                           ; preds = %if.then.i.i, %for.body.irq_linear_revmap.exit_crit_edge
  %retval.0.i.i = phi i32 [ %16, %if.then.i.i ], [ 0, %for.body.irq_linear_revmap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #8
  call void @handle_nested_irq(i32 noundef %retval.0.i.i) #8
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_id, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %conv14 = zext i8 %20 to i32
  %add = add nsw i32 %i.030, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv14, i32 noundef %add) #8
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv7 = zext i8 %24 to i32
  %cmp8 = icmp slt i32 %call15, %conv7
  br i1 %cmp8, label %irq_linear_revmap.exit.for.body_crit_edge, label %irq_linear_revmap.exit.for.end_crit_edge

irq_linear_revmap.exit.for.end_crit_edge:         ; preds = %irq_linear_revmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

irq_linear_revmap.exit.for.body_crit_edge:        ; preds = %irq_linear_revmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %irq_linear_revmap.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %25 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp ne i32 %26, 0
  %cond = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pca954x_irq_set_type(ptr nocapture noundef readnone %idata, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp.not = icmp eq i32 %and, 8
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %idle_state = getelementptr inbounds %struct.pca954x, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %idle_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %idle_state, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_state_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !79
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %6)
  %switch = icmp ugt i32 %6, -3
  br i1 %switch, label %if.end.if.end10_crit_edge, label %land.lhs.true5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true5:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %land.lhs.true5.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp7.not = icmp ult i32 %6, %conv
  br i1 %cmp7.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %lor.lhs.false.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock_ops.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  call void %16(ptr noundef %12, i32 noundef 2) #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %idle_state = getelementptr inbounds %struct.pca954x, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %18, ptr %idle_state, align 4
  %last_chan = getelementptr inbounds %struct.pca954x, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %last_chan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %last_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %18)
  %cmp19.not = icmp eq i32 %18, -2
  %or.cond = select i1 %tobool.not, i1 %cmp19.not, i1 false
  br i1 %or.cond, label %if.end10.if.end23_crit_edge, label %if.then21

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 @pca954x_deselect_mux(ptr noundef %1, i32 noundef 0)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end10.if.end23_crit_edge
  %ret.0 = phi i32 [ %call22, %if.then21 ], [ %call2, %if.end10.if.end23_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %lock_ops.i39 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %lock_ops.i39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock_ops.i39, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlock_bus.i, align 4
  call void %27(ptr noundef %23, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp25 = icmp slt i32 %ret.0, 0
  %ret.0.count = select i1 %cmp25, i32 %ret.0, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.count, %if.end23 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca954x_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %idle_state.i = getelementptr inbounds %struct.pca954x, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %idle_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idle_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %muxtype.i.i = getelementptr inbounds %struct.chip_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %muxtype.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %muxtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %5 to i8
  %enable.i.i = getelementptr inbounds %struct.chip_desc, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable.i.i, align 1
  %or8.i.i = or i8 %11, %conv.i
  %or.i.i = zext i8 %or8.i.i to i32
  br label %pca954x_regval.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.i = and i32 %5, 255
  %shl.i.i = shl nuw i32 1, %conv4.i.i
  br label %pca954x_regval.exit.i

pca954x_regval.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %shl.i.i, %if.else.i.i ]
  %retval.0.i.i = trunc i32 %retval.0.in.i.i to i8
  br label %if.end.i

if.end.i:                                         ; preds = %pca954x_regval.exit.i, %entry.if.end.i_crit_edge
  %.sink.i = phi i8 [ %retval.0.i.i, %pca954x_regval.exit.i ], [ 0, %entry.if.end.i_crit_edge ]
  %last_chan2.i = getelementptr inbounds %struct.pca954x, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %last_chan2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink.i, ptr %last_chan2.i, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr, i8 noundef zeroext %.sink.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %last_chan2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %last_chan2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  ret i32 %call4.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !37, !38, !39, !41, !43, !44, !46, !47, !48, !49, !50, !52, !54, !56, !57, !59, !61, !63, !65, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_i2c_mux_pca954x__291_563_pca954x_driver_init6, !1, !"__initcall__kmod_i2c_mux_pca954x__291_563_pca954x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 563, i32 1}
!2 = !{ptr @__exitcall_pca954x_driver_exit, !1, !"__exitcall_pca954x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 565, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 566, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 567, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 554, i32 11}
!12 = !{ptr @pca954x_driver, !13, !"pca954x_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 552, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 438, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 462, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pca954x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pca954x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 470, i32 36}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 471, i32 38}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 483, i32 3}
!30 = !{ptr @pca954x_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pca954x_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 513, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pca954x_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @pca954x_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @chips, !40, !"chips", i1 false, i1 false}
!40 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 94, i32 31}
!41 = !{ptr @pca954x_irq_setup.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 358, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 369, i32 4}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pca954x_irq_setup._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @pca954x_irq_setup._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 345, i32 10}
!52 = !{ptr @pca954x_irq_chip, !53, !"pca954x_irq_chip", i1 false, i1 false}
!53 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 344, i32 24}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 318, i32 8}
!56 = !{ptr @dev_attr_idle_state, !55, !"dev_attr_idle_state", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 282, i32 22}
!59 = !{ptr @pca954x_of_match, !60, !"pca954x_of_match", i1 false, i1 false}
!60 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 196, i32 34}
!61 = !{ptr @pca954x_pm, !62, !"pca954x_pm", i1 false, i1 false}
!62 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 550, i32 8}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 544, i32 3}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pca954x_resume._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pca954x_resume._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @pca954x_id, !69, !"pca954x_id", i1 false, i1 false}
!69 = !{!"../drivers/i2c/muxes/i2c-mux-pca954x.c", i32 179, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
