; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-pca953x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pca953x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pca953x_reg_config = type { i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pca953x_platform_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pca953x_chip = type { i32, %struct.mutex, ptr, %struct.mutex, [2 x i32], [2 x i32], [2 x i32], [2 x i32], %struct.irq_chip, %struct.atomic_t, ptr, %struct.gpio_chip, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_pca953x__288_1268_pca953x_init4 = internal global ptr @pca953x_init, section ".initcall4.init", align 4
@pca953x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pca953x_probe, ptr @pca953x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pca953x_dt_ids, ptr @pca953x_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pca953x_pm_ops, ptr null, ptr null }, ptr @pca953x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca953x_exit = internal global ptr @pca953x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"gpio_pca953x.author=eric miao <eric.miao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"gpio_pca953x.description=GPIO expander driver for PCA953x\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"gpio_pca953x.file=drivers/gpio/gpio-pca953x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"gpio_pca953x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pca953x\00", [24 x i8] zeroinitializer }, align 32
@pca953x_dt_ids = internal constant { [37 x %struct.of_device_id], [1804 x i8] } { [37 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca6416\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9505\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4392 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9506\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4392 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9534\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9535\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9536\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4100 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9537\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4356 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9538\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9539\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9554\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9555\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9556\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9557\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9574\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8456 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9575\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8464 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9698\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4136 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal6416\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4880 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal6524\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4888 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal9535\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4880 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal9554b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4872 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcal9555a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4880 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7310\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7312\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7313\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7315\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7318\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pca6107\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pca9536\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4100 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca6408\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca6416\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca6424\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4376 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tca9539\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,cat9554\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,pca9654\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4360 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,pca9655\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4368 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"exar,xra1202\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4104 to ptr) }, %struct.of_device_id zeroinitializer], [1804 x i8] zeroinitializer }, align 32
@pca953x_acpi_ids = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3491\00\00", i32 4880, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pca953x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pca953x_suspend, ptr @pca953x_resume, ptr @pca953x_suspend, ptr @pca953x_resume, ptr @pca953x_suspend, ptr @pca953x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pca953x_id = internal constant { [34 x %struct.i2c_device_id], [208 x i8] } { [34 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pca6416\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9505\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4392 }, %struct.i2c_device_id { [20 x i8] c"pca9506\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4392 }, %struct.i2c_device_id { [20 x i8] c"pca9534\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"pca9535\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9536\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4100 }, %struct.i2c_device_id { [20 x i8] c"pca9537\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4356 }, %struct.i2c_device_id { [20 x i8] c"pca9538\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"pca9539\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9554\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"pca9555\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca9556\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id { [20 x i8] c"pca9557\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id { [20 x i8] c"pca9574\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8456 }, %struct.i2c_device_id { [20 x i8] c"pca9575\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8464 }, %struct.i2c_device_id { [20 x i8] c"pca9698\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4136 }, %struct.i2c_device_id { [20 x i8] c"pcal6416\00\00\00\00\00\00\00\00\00\00\00\00", i32 4880 }, %struct.i2c_device_id { [20 x i8] c"pcal6524\00\00\00\00\00\00\00\00\00\00\00\00", i32 4888 }, %struct.i2c_device_id { [20 x i8] c"pcal9535\00\00\00\00\00\00\00\00\00\00\00\00", i32 4880 }, %struct.i2c_device_id { [20 x i8] c"pcal9554b\00\00\00\00\00\00\00\00\00\00\00", i32 4872 }, %struct.i2c_device_id { [20 x i8] c"pcal9555a\00\00\00\00\00\00\00\00\00\00\00", i32 4880 }, %struct.i2c_device_id { [20 x i8] c"max7310\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id { [20 x i8] c"max7312\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"max7313\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"max7315\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"max7318\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"pca6107\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"tca6408\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"tca6416\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"tca6424\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4376 }, %struct.i2c_device_id { [20 x i8] c"tca9539\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4368 }, %struct.i2c_device_id { [20 x i8] c"tca9554\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4360 }, %struct.i2c_device_id { [20 x i8] c"xra1202\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4104 }, %struct.i2c_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg get err\0A\00", [19 x i8] zeroinitializer }, align 32
@pca953x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 991, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg en err: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pca953x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-pca953x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca953x_probe._entry_ptr = internal global ptr @pca953x_probe._entry, section ".printk_index", align 4
@pca953x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1015, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"using AI\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pca953x_probe._entry_ptr.12 = internal global ptr @pca953x_probe._entry.9, section ".printk_index", align 4
@pca953x_ai_i2c_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @pca953x_writeable_register, ptr @pca953x_readable_register, ptr @pca953x_volatile_register, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 128, i32 128, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pca953x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1018, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"using no AI\0A\00", [19 x i8] zeroinitializer }, align 32
@pca953x_probe._entry_ptr.15 = internal global ptr @pca953x_probe._entry.13, section ".printk_index", align 4
@pca953x_i2c_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @pca953x_writeable_register, ptr @pca953x_readable_register, ptr @pca953x_volatile_register, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pca953x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gpio_pca953x:1022:(regmap_config)->lock\00", [56 x i8] zeroinitializer }, align 32
@pca953x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->i2c_lock\00", [16 x i8] zeroinitializer }, align 32
@pca953x_regs = internal constant { %struct.pca953x_reg_config, [16 x i8] } { %struct.pca953x_reg_config { i32 3, i32 1, i32 0, i32 2 }, [16 x i8] zeroinitializer }, align 32
@pca957x_regs = internal constant { %struct.pca953x_reg_config, [16 x i8] } { %struct.pca953x_reg_config { i32 4, i32 5, i32 0, i32 1 }, [16 x i8] zeroinitializer }, align 32
@pca953x_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca953x_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca953x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1076, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup failed, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pca953x_probe._entry_ptr.21 = internal global ptr @pca953x_probe._entry.18, section ".printk_index", align 4
@pca953x_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 415, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed reading register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca953x_read_regs\00", [46 x i8] zeroinitializer }, align 32
@pca953x_read_regs._entry_ptr = internal global ptr @pca953x_read_regs._entry, section ".printk_index", align 4
@pca953x_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 400, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed writing register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pca953x_write_regs\00", [45 x i8] zeroinitializer }, align 32
@pca953x_write_regs._entry_ptr = internal global ptr @pca953x_write_regs._entry, section ".printk_index", align 4
@pca953x_irq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@pca953x_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 874, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca953x_irq_setup\00", [46 x i8] zeroinitializer }, align 32
@pca953x_irq_setup._entry_ptr = internal global ptr @pca953x_irq_setup._entry, section ".printk_index", align 4
@pca953x_acpi_get_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 130, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't add GPIO ACPI mapping\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pca953x_acpi_get_irq\00", [43 x i8] zeroinitializer }, align 32
@pca953x_acpi_get_irq._entry_ptr = internal global ptr @pca953x_acpi_get_irq._entry, section ".printk_index", align 4
@pca953x_acpi_get_irq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.6, i32 136, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ACPI interrupt quirk (IRQ %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@pca953x_acpi_get_irq._entry_ptr.34 = internal global ptr @pca953x_acpi_get_irq._entry.32, section ".printk_index", align 4
@pca953x_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 703, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq %d: unsupported type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pca953x_irq_set_type\00", [43 x i8] zeroinitializer }, align 32
@pca953x_irq_set_type._entry_ptr = internal global ptr @pca953x_irq_set_type._entry, section ".printk_index", align 4
@pca953x_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.pca953x_irq_handler = private unnamed_addr constant [20 x i8] c"pca953x_irq_handler\00", align 1
@pca953x_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.pca953x_irq_handler, ptr @.str.6, i32 799, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unmapped interrupt %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pca953x_irq_handler._entry_ptr = internal global ptr @pca953x_irq_handler._entry, section ".printk_index", align 4
@pca953x_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 1096, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"teardown failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pca953x_remove\00", [17 x i8] zeroinitializer }, align 32
@pca953x_remove._entry_ptr = internal global ptr @pca953x_remove._entry, section ".printk_index", align 4
@pca953x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 1175, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pca953x_resume\00", [17 x i8] zeroinitializer }, align 32
@pca953x_resume._entry_ptr = internal global ptr @pca953x_resume._entry, section ".printk_index", align 4
@pca953x_resume._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.6, i32 1188, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to restore register map: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pca953x_resume._entry_ptr.45 = internal global ptr @pca953x_resume._entry.43, section ".printk_index", align 4
@pca953x_regcache_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 1119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to sync GPIO dir registers: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pca953x_regcache_sync\00", [42 x i8] zeroinitializer }, align 32
@pca953x_regcache_sync._entry_ptr = internal global ptr @pca953x_regcache_sync._entry, section ".printk_index", align 4
@pca953x_regcache_sync._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.6, i32 1126, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to sync GPIO out registers: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pca953x_regcache_sync._entry_ptr.50 = internal global ptr @pca953x_regcache_sync._entry.48, section ".printk_index", align 4
@pca953x_regcache_sync._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.6, i32 1136, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to sync INT latch registers: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pca953x_regcache_sync._entry_ptr.53 = internal global ptr @pca953x_regcache_sync._entry.51, section ".printk_index", align 4
@pca953x_regcache_sync._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.6, i32 1144, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to sync INT mask registers: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pca953x_regcache_sync._entry_ptr.56 = internal global ptr @pca953x_regcache_sync._entry.54, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"pca953x_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1249, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1251, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"pca953x_dt_ids\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1200, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"pca953x_acpi_ids\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 159, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"pca953x_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1247, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"pca953x_id\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 73, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 977, i32 54 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 985, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 987, i32 52 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 991, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1015, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"pca953x_ai_i2c_regmap\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 363, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1018, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"pca953x_i2c_regmap\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 350, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1022, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1030, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"pca953x_regs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 178, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant [13 x i8] c"pca957x_regs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 185, i32 40 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1068, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1076, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 415, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 400, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 846, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 873, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 130, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 136, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 702, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 799, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1096, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1175, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1188, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1119, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1126, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1135, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [31 x i8] c"../drivers/gpio/gpio-pca953x.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1143, i32 4 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pca953x_exit, ptr @__initcall__kmod_gpio_pca953x__288_1268_pca953x_init4, ptr @pca953x_acpi_get_irq._entry, ptr @pca953x_acpi_get_irq._entry.32, ptr @pca953x_acpi_get_irq._entry_ptr, ptr @pca953x_acpi_get_irq._entry_ptr.34, ptr @pca953x_exit, ptr @pca953x_irq_handler._entry, ptr @pca953x_irq_handler._entry_ptr, ptr @pca953x_irq_set_type._entry, ptr @pca953x_irq_set_type._entry_ptr, ptr @pca953x_irq_setup._entry, ptr @pca953x_irq_setup._entry_ptr, ptr @pca953x_probe._entry, ptr @pca953x_probe._entry.13, ptr @pca953x_probe._entry.18, ptr @pca953x_probe._entry.9, ptr @pca953x_probe._entry_ptr, ptr @pca953x_probe._entry_ptr.12, ptr @pca953x_probe._entry_ptr.15, ptr @pca953x_probe._entry_ptr.21, ptr @pca953x_read_regs._entry, ptr @pca953x_read_regs._entry_ptr, ptr @pca953x_regcache_sync._entry, ptr @pca953x_regcache_sync._entry.48, ptr @pca953x_regcache_sync._entry.51, ptr @pca953x_regcache_sync._entry.54, ptr @pca953x_regcache_sync._entry_ptr, ptr @pca953x_regcache_sync._entry_ptr.50, ptr @pca953x_regcache_sync._entry_ptr.53, ptr @pca953x_regcache_sync._entry_ptr.56, ptr @pca953x_remove._entry, ptr @pca953x_remove._entry_ptr, ptr @pca953x_resume._entry, ptr @pca953x_resume._entry.43, ptr @pca953x_resume._entry_ptr, ptr @pca953x_resume._entry_ptr.45, ptr @pca953x_write_regs._entry, ptr @pca953x_write_regs._entry_ptr, ptr @pca953x_driver, ptr @.str, ptr @pca953x_dt_ids, ptr @pca953x_acpi_ids, ptr @pca953x_pm_ops, ptr @pca953x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @pca953x_ai_i2c_regmap, ptr @.str.14, ptr @pca953x_i2c_regmap, ptr @pca953x_probe._key, ptr @.str.16, ptr @pca953x_probe.__key, ptr @.str.17, ptr @pca953x_regs, ptr @pca957x_regs, ptr @pca953x_probe.lock_key, ptr @pca953x_probe.request_key, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @pca953x_irq_setup.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @pca953x_irq_handler._rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_dt_ids to i32), i32 7252, i32 9056, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_acpi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_id to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_ai_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca957x_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_irq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_acpi_get_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_acpi_get_irq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_resume._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_regcache_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_regcache_sync._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_regcache_sync._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca953x_regcache_sync._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca953x_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @pca953x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_probe(ptr noundef %client, ptr noundef readonly %i2c_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 732, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup124_crit_edge, label %if.end

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_base4 = getelementptr inbounds %struct.pca953x_platform_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq_base4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base4, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i, align 4
  %invert5 = getelementptr inbounds %struct.pca953x_platform_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %invert5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %invert5, align 4
  %names = getelementptr inbounds %struct.pca953x_platform_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %names, align 4
  %names6 = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %names6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %names6, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %call.i, align 4
  %call9 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call9 to i32
  br label %cleanup124

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then3
  %irq_base.0 = phi i32 [ %3, %if.then3 ], [ 0, %if.else.if.end14_crit_edge ]
  %invert.0 = phi i32 [ %8, %if.then3 ], [ 0, %if.else.if.end14_crit_edge ]
  %client15 = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 10
  %14 = ptrtoint ptr %client15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %client15, align 4
  %call17 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %cmp.i204 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call17 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull @.str.3) #8
  br label %cleanup124

if.end23:                                         ; preds = %if.end14
  %call24 = tail call i32 @regulator_enable(ptr noundef %call17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call24) #11
  br label %cleanup124

if.end28:                                         ; preds = %if.end23
  %regulator = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %regulator, align 4
  %tobool29.not = icmp eq ptr %i2c_id, null
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %i2c_id, i32 0, i32 1
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  br label %if.end42

if.else32:                                        ; preds = %if.end28
  %call34 = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.else32.err_exit_crit_edge, label %cleanup39.thread

if.else32.err_exit_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

cleanup39.thread:                                 ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call34 to i32
  br label %if.end42

if.end42:                                         ; preds = %cleanup39.thread, %if.then30
  %.sink = phi i32 [ %19, %cleanup39.thread ], [ %18, %if.then30 ]
  %driver_data38 = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %driver_data38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %driver_data38, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data43 = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 13
  %direction_input.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 8
  %22 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pca953x_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 9
  %23 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pca953x_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 10
  %24 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pca953x_gpio_get_value, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 12
  %25 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pca953x_gpio_set_value, ptr %set.i, align 4
  %get_direction.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 7
  %26 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pca953x_gpio_get_direction, ptr %get_direction.i, align 4
  %get_multiple.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 11
  %27 = ptrtoint ptr %get_multiple.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pca953x_gpio_get_multiple, ptr %get_multiple.i, align 4
  %set_multiple.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 13
  %28 = ptrtoint ptr %set_multiple.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pca953x_gpio_set_multiple, ptr %set_multiple.i, align 4
  %set_config.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 14
  %29 = ptrtoint ptr %set_config.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pca953x_gpio_set_config, ptr %set_config.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 23
  %30 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %can_sleep.i, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i, align 4
  %base.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 19
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %base.i, align 4
  %34 = trunc i32 %.sink to i16
  %conv.i = and i16 %34, 255
  %ngpio.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 20
  %35 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %36 = ptrtoint ptr %client15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client15, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end42.pca953x_setup_gpio.exit_crit_edge

if.end42.pca953x_setup_gpio.exit_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_setup_gpio.exit

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  br label %pca953x_setup_gpio.exit

pca953x_setup_gpio.exit:                          ; preds = %if.end.i.i, %if.end42.pca953x_setup_gpio.exit_crit_edge
  %retval.0.i.i = phi ptr [ %41, %if.end.i.i ], [ %39, %if.end42.pca953x_setup_gpio.exit_crit_edge ]
  %gpio_chip.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11
  %42 = ptrtoint ptr %gpio_chip.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i.i, ptr %gpio_chip.i, align 4
  %parent.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 2
  %43 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev.i, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 4
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %owner.i, align 4
  %names.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 12
  %45 = ptrtoint ptr %names.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %names.i, align 4
  %names3.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 11, i32 22
  %47 = ptrtoint ptr %names3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %names3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv.i)
  %cmp44 = icmp ugt i16 %conv.i, 16
  %and47 = and i32 %.sink, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and47)
  %cmp48 = icmp eq i32 %and47, 8192
  %or.cond = select i1 %cmp44, i1 true, i1 %cmp48
  %.str.10..str.14 = select i1 %or.cond, ptr @.str.10, ptr @.str.14
  %pca953x_ai_i2c_regmap.pca953x_i2c_regmap = select i1 %or.cond, ptr @pca953x_ai_i2c_regmap, ptr @pca953x_i2c_regmap
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.10..str.14) #11
  %call61 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull %pca953x_ai_i2c_regmap.pca953x_i2c_regmap, ptr noundef nonnull @pca953x_probe._key, ptr noundef nonnull @.str.16) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call61, ptr %regmap, align 4
  %cmp.i205 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.then64, label %if.end67

if.then64:                                        ; preds = %pca953x_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call61 to i32
  br label %err_exit

if.end67:                                         ; preds = %pca953x_setup_gpio.exit
  tail call void @regcache_mark_dirty(ptr noundef %call61) #8
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @pca953x_probe.__key) #8
  %dep_map = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dep_map, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 8
  %call75 = tail call i32 @i2c_adapter_depth(ptr noundef %53) #8
  %wait_type_inner = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 1, i32 5, i32 4
  %54 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.17, ptr noundef %51, i32 noundef %call75, i8 noundef zeroext %55, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %56 = ptrtoint ptr %driver_data43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %driver_data43, align 4
  %and81 = and i32 %57, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 4096
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call.i, i32 0, i32 15
  br i1 %cmp82, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @pca953x_regs, ptr %regs, align 4
  %call85 = tail call fastcc i32 @device_pca95xx_init(ptr noundef nonnull %call.i, i32 noundef %invert.0)
  br label %if.end89

if.else86:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @pca957x_regs, ptr %regs, align 4
  %call88 = tail call fastcc i32 @device_pca957x_init(ptr noundef nonnull %call.i, i32 noundef %invert.0)
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then84
  %ret.1 = phi i32 [ %call85, %if.then84 ], [ %call88, %if.else86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool90.not = icmp eq i32 %ret.1, 0
  br i1 %tobool90.not, label %if.end92, label %if.end89.err_exit_crit_edge

if.end89.err_exit_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end92:                                         ; preds = %if.end89
  %call93 = tail call fastcc i32 @pca953x_irq_setup(ptr noundef nonnull %call.i, i32 noundef %irq_base.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end92.err_exit_crit_edge

if.end92.err_exit_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end96:                                         ; preds = %if.end92
  %call100 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio_chip.i, ptr noundef nonnull %call.i, ptr noundef nonnull @pca953x_probe.lock_key, ptr noundef nonnull @pca953x_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end96.err_exit_crit_edge

if.end96.err_exit_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

if.end103:                                        ; preds = %if.end96
  br i1 %tobool.not, label %if.end103.cleanup124_crit_edge, label %land.lhs.true

if.end103.cleanup124_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

land.lhs.true:                                    ; preds = %if.end103
  %setup = getelementptr inbounds %struct.pca953x_platform_data, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %setup, align 4
  %tobool105.not = icmp eq ptr %61, null
  br i1 %tobool105.not, label %land.lhs.true.cleanup124_crit_edge, label %if.then106

land.lhs.true.cleanup124_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

if.then106:                                       ; preds = %land.lhs.true
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base.i, align 4
  %64 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ngpio.i, align 4
  %conv111 = zext i16 %65 to i32
  %context = getelementptr inbounds %struct.pca953x_platform_data, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %context, align 4
  %call112 = tail call i32 %61(ptr noundef %client, i32 noundef %63, i32 noundef %conv111, ptr noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.end118, label %if.then106.cleanup124_crit_edge

if.then106.cleanup124_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup124

do.end118:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call112) #11
  br label %cleanup124

err_exit:                                         ; preds = %if.end96.err_exit_crit_edge, %if.end92.err_exit_crit_edge, %if.end89.err_exit_crit_edge, %if.then64, %if.else32.err_exit_crit_edge
  %ret.2 = phi i32 [ %49, %if.then64 ], [ %ret.1, %if.end89.err_exit_crit_edge ], [ %call93, %if.end92.err_exit_crit_edge ], [ %call100, %if.end96.err_exit_crit_edge ], [ -19, %if.else32.err_exit_crit_edge ]
  %68 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regulator, align 4
  %call123 = tail call i32 @regulator_disable(ptr noundef %69) #8
  br label %cleanup124

cleanup124:                                       ; preds = %err_exit, %do.end118, %if.then106.cleanup124_crit_edge, %land.lhs.true.cleanup124_crit_edge, %if.end103.cleanup124_crit_edge, %do.end, %if.then19, %cleanup.thread, %entry.cleanup124_crit_edge
  %retval.2 = phi i32 [ %call22, %if.then19 ], [ %call24, %do.end ], [ %ret.2, %err_exit ], [ -12, %entry.cleanup124_crit_edge ], [ 0, %if.then106.cleanup124_crit_edge ], [ 0, %do.end118 ], [ 0, %land.lhs.true.cleanup124_crit_edge ], [ 0, %if.end103.cleanup124_crit_edge ], [ %13, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %teardown = getelementptr inbounds %struct.pca953x_platform_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %teardown, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 11, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 11, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %9 to i32
  %context = getelementptr inbounds %struct.pca953x_platform_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %call5 = tail call i32 %5(ptr noundef %client, i32 noundef %7, i32 noundef %conv, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call5) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end ], [ %call5, %if.then.if.end9_crit_edge ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ]
  %regulator = getelementptr inbounds %struct.pca953x_chip, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regulator, align 4
  %call10 = tail call i32 @regulator_disable(ptr noundef %13) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_adapter_depth(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_pca95xx_init(ptr nocapture noundef readonly %chip, i32 noundef %invert) unnamed_addr #2 align 64 {
entry:
  %value.i = alloca [5 x i8], align 1
  %val = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 15
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %output = getelementptr inbounds %struct.pca953x_reg_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output, align 4
  %ngpio = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  %sub = add nuw nsw i32 %conv, 7
  %div38 = lshr i32 %sub, 3
  %add3 = add i32 %div38, %5
  %call = tail call i32 @regcache_sync_region(ptr noundef %1, i32 noundef %5, i32 noundef %add3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ngpio, align 4
  %conv10 = zext i16 %15 to i32
  %sub12 = add nuw nsw i32 %conv10, 7
  %div1339 = lshr i32 %sub12, 3
  %add14 = add i32 %div1339, %13
  %call15 = tail call i32 @regcache_sync_region(ptr noundef %9, i32 noundef %13, i32 noundef %add14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invert)
  %tobool19.not = icmp ne i32 %invert, 0
  %. = sext i1 %tobool19.not to i64
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %., ptr %val, align 8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %invert24 = getelementptr inbounds %struct.pca953x_reg_config, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %invert24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %invert24, align 4
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ngpio, align 4
  %conv.i.i.i = zext i16 %22 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  %div.i.i.i = sdiv i32 %sub.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %22)
  %23 = icmp ult i16 %22, 9
  %24 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i.i, i1 true) #8, !range !155
  %sub.i.i.i.i = sub nuw nsw i32 32, %24
  %cond.i.i.i.i = select i1 %23, i32 0, i32 %sub.i.i.i.i
  %and.i.i = and i32 %20, 31
  %shl.i.i = shl i32 %and.i.i, %cond.i.i.i.i
  %and1.i.i = shl i32 %20, 1
  %shl2.i.i = and i32 %and1.i.i, 192
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %value.i) #8
  %sub.i = add nuw nsw i32 %conv.i.i.i, 7
  %div25.i = lshr i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp27.not.i = icmp eq i16 %22, 0
  %25 = call ptr @memset(ptr %value.i, i32 255, i32 5)
  br i1 %cmp27.not.i, label %if.end18.for.end.i_crit_edge, label %for.body.preheader.i

if.end18.for.end.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end18
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div25.i, i32 1) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul.i = shl i32 %i.028.i, 3
  %div2.i.i = lshr i32 %mul.i, 5
  %rem.i.i = and i32 %mul.i, 24
  %arrayidx.i.i = getelementptr i32, ptr %val, i32 %div2.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %27, %rem.i.i
  %conv3.i = trunc i32 %shr.i.i to i8
  %arrayidx.i = getelementptr [5 x i8], ptr %value.i, i32 0, i32 %i.028.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end18.for.end.i_crit_edge
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %shl.i.masked.i = and i32 %shl.i.i, 255
  %conv4.i = or i32 %shl.i.masked.i, %shl2.i.i
  %call11.i = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef %conv4.i, ptr noundef nonnull %value.i, i32 noundef %div25.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i, label %for.end.i.pca953x_write_regs.exit_crit_edge

for.end.i.pca953x_write_regs.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_write_regs.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 10
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  br label %pca953x_write_regs.exit

pca953x_write_regs.exit:                          ; preds = %do.end.i, %for.end.i.pca953x_write_regs.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %do.end.i ], [ 0, %for.end.i.pca953x_write_regs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %value.i) #8
  br label %out

out:                                              ; preds = %pca953x_write_regs.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call15, %if.end.out_crit_edge ], [ %retval.0.i, %pca953x_write_regs.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_pca957x_init(ptr nocapture noundef readonly %chip, i32 noundef %invert) unnamed_addr #2 align 64 {
entry:
  %value.i = alloca [5 x i8], align 1
  %val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !156
  %1 = getelementptr inbounds [2 x i32], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !156
  %call = tail call fastcc i32 @device_pca95xx_init(ptr noundef %chip, i32 noundef %invert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ngpio = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 20
  %3 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %4 to i32
  %sub = add nuw nsw i32 %conv, 7
  %div15 = lshr i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp20.not = icmp eq i16 %4, 0
  br i1 %cmp20.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div15, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.021, 3
  %div7.i = lshr i32 %mul, 5
  %rem.i = and i32 %mul, 24
  %shl.i = shl nuw i32 255, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %arrayidx.i = getelementptr i32, ptr %val, i32 %div7.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %6, %neg.i
  %shl1.i = shl nuw nsw i32 2, %rem.i
  %or.i = or i32 %and.i, %shl1.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub.i.i.i = add nsw i32 %conv, -1
  %div.i.i.i = sdiv i32 %sub.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %7 = icmp ult i16 %4, 9
  %8 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i.i, i1 true) #8, !range !155
  %sub.i.i.i.i = sub nuw nsw i32 32, %8
  %sub.i.i.i.i.op = shl i32 2, %sub.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %value.i) #8
  %9 = call ptr @memset(ptr %value.i, i32 255, i32 5)
  br i1 %cmp20.not, label %for.end.for.end.i_crit_edge, label %for.body.preheader.i

for.end.for.end.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.end
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div15, i32 1) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul.i = shl i32 %i.028.i, 3
  %div2.i.i = lshr i32 %mul.i, 5
  %rem.i.i = and i32 %mul.i, 24
  %arrayidx.i.i = getelementptr i32, ptr %val, i32 %div2.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %11, %rem.i.i
  %conv3.i = trunc i32 %shr.i.i to i8
  %arrayidx.i16 = getelementptr [5 x i8], ptr %value.i, i32 0, i32 %i.028.i
  %12 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i, ptr %arrayidx.i16, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.end.for.end.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 2
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %sub.i.i.i.i.op.op = and i32 %sub.i.i.i.i.op, 254
  %shl.i.masked.i = select i1 %7, i32 2, i32 %sub.i.i.i.i.op.op
  %call11.i = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef %shl.i.masked.i, ptr noundef nonnull %value.i, i32 noundef %div15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %pca953x_write_regs.exit, label %pca953x_write_regs.exit.thread

pca953x_write_regs.exit.thread:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %value.i) #8
  br label %cleanup

pca953x_write_regs.exit:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 10
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %value.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pca953x_write_regs.exit, %pca953x_write_regs.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pca953x_write_regs.exit.thread ], [ %call, %entry.cleanup_crit_edge ], [ %call11.i, %pca953x_write_regs.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pca953x_irq_setup(ptr noundef %chip, i32 noundef %irq_base) unnamed_addr #2 align 64 {
entry:
  %reg_direction = alloca [2 x i32], align 4
  %irq_stat = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %irq_chip2 = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_direction) #8
  %2 = ptrtoint ptr %reg_direction to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_direction, align 4, !annotation !156
  %3 = getelementptr inbounds [2 x i32], ptr %reg_direction, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %irq_stat) #8
  %5 = ptrtoint ptr %irq_stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %irq_stat, align 4, !annotation !156
  %6 = getelementptr inbounds [2 x i32], ptr %irq_stat, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !156
  %irq6 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq_base)
  %cmp10 = icmp eq i32 %irq_base, -1
  %or.cond = or i1 %cmp10, %tobool7.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 13
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 15
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %input = getelementptr inbounds %struct.pca953x_reg_config, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input, align 4
  %call16 = call fastcc i32 @pca953x_read_regs(ptr noundef %chip, i32 noundef %15, ptr noundef nonnull %irq_stat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %call22 = call fastcc i32 @pca953x_read_regs(ptr noundef %chip, i32 noundef %19, ptr noundef nonnull %reg_direction)
  %ngpio = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 20
  %20 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %21 to i32
  %irq_stat23 = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 5
  %call.i = call i32 @__bitmap_and(ptr noundef %irq_stat23, ptr noundef nonnull %irq_stat, ptr noundef nonnull %reg_direction, i32 noundef %conv) #8
  %irq_lock = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 3
  call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @pca953x_irq_setup.__key) #8
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i91, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i91:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev28, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i91, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i91 ], [ %23, %if.end19.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %name, align 4
  %irq_mask = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 7
  %27 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pca953x_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 9
  %28 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pca953x_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_wake = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 14
  %29 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pca953x_irq_set_wake, ptr %irq_set_wake, align 4
  %irq_bus_lock = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 15
  %30 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pca953x_irq_bus_lock, ptr %irq_bus_lock, align 4
  %irq_bus_sync_unlock = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 16
  %31 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @pca953x_irq_bus_sync_unlock, ptr %irq_bus_sync_unlock, align 4
  %irq_set_type = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 13
  %32 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pca953x_irq_set_type, ptr %irq_set_type, align 4
  %irq_shutdown = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %irq_shutdown to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pca953x_irq_shutdown, ptr %irq_shutdown, align 4
  %irq31 = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37
  %34 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %irq_chip2, ptr %irq31, align 4
  %parent_handler = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37, i32 13
  %35 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37, i32 15
  %36 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37, i32 16
  %37 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37, i32 10
  %38 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37, i32 9
  %39 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %threaded = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37, i32 18
  %40 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %threaded, align 4
  %first = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 37, i32 23
  %41 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %irq_base, ptr %first, align 4
  %42 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq6, align 4
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i93 = icmp eq ptr %45, null
  br i1 %tobool.not.i93, label %if.end.i94, label %dev_name.exit.dev_name.exit96_crit_edge

dev_name.exit.dev_name.exit96_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit96

if.end.i94:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev28, align 4
  br label %dev_name.exit96

dev_name.exit96:                                  ; preds = %if.end.i94, %dev_name.exit.dev_name.exit96_crit_edge
  %retval.0.i95 = phi ptr [ %47, %if.end.i94 ], [ %45, %dev_name.exit.dev_name.exit96_crit_edge ]
  %call37 = call i32 @devm_request_threaded_irq(ptr noundef %dev28, i32 noundef %43, ptr noundef null, ptr noundef nonnull @pca953x_irq_handler, i32 noundef 8320, ptr noundef %retval.0.i95, ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %dev_name.exit96.cleanup_crit_edge, label %do.end42

dev_name.exit96.cleanup_crit_edge:                ; preds = %dev_name.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %dev_name.exit96
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.27, i32 noundef %49) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %dev_name.exit96.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %do.end42 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ 0, %dev_name.exit96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %irq_stat) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_direction) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_direction_input(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %3, 31
  %shl.i = shl i32 %and.i, %cond.i.i.i
  %and1.i = shl i32 %3, 1
  %shl2.i = and i32 %and1.i, 192
  %div.i = sdiv i32 %off, 8
  %or.i = or i32 %shl2.i, %div.i
  %or3.i = or i32 %or.i, %shl.i
  %rem = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %rem
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %conv2 = and i32 %or3.i, 255
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %conv2, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_direction_output(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %div.i = sdiv i32 %off, 8
  %output = getelementptr inbounds %struct.pca953x_reg_config, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output, align 4
  %and.i32 = and i32 %9, 31
  %shl.i33 = shl i32 %and.i32, %cond.i.i.i
  %and1.i34 = shl i32 %9, 1
  %shl2.i35 = and i32 %and1.i34, 192
  %or.i37 = or i32 %shl2.i35, %div.i
  %or3.i38 = or i32 %or.i37, %shl.i33
  %rem = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %rem
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %conv4 = and i32 %or3.i38, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv4, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = shl i32 %3, 1
  %shl2.i = and i32 %and1.i, 192
  %or.i = or i32 %shl2.i, %div.i
  %and.i = and i32 %3, 31
  %shl.i = shl i32 %and.i, %cond.i.i.i
  %or3.i = or i32 %or.i, %shl.i
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %conv10 = and i32 %or3.i, 255
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %conv10, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.exit_crit_edge ], [ %call.i40, %if.end ]
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_get_value(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %input = getelementptr inbounds %struct.pca953x_reg_config, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %3, 31
  %shl.i = shl i32 %and.i, %cond.i.i.i
  %and1.i = shl i32 %3, 1
  %shl2.i = and i32 %and1.i, 192
  %div.i = sdiv i32 %off, 8
  %or.i = or i32 %shl2.i, %div.i
  %or3.i = or i32 %or.i, %shl.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #8
  %8 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg_val, align 4, !annotation !156
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %conv2 = and i32 %or3.i, 255
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef %conv2, ptr noundef nonnull %reg_val) #8
  call void @mutex_unlock(ptr noundef %i2c_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem = and i32 %off, 7
  %11 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_val, align 4
  %13 = lshr i32 %12, %rem
  %14 = and i32 %13, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_gpio_set_value(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %output = getelementptr inbounds %struct.pca953x_reg_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 4
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %3, 31
  %shl.i = shl i32 %and.i, %cond.i.i.i
  %and1.i = shl i32 %3, 1
  %shl2.i = and i32 %and1.i, 192
  %div.i = sdiv i32 %off, 8
  %or.i = or i32 %shl2.i, %div.i
  %or3.i = or i32 %or.i, %shl.i
  %rem = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %rem
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %conv2 = and i32 %or3.i, 255
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %conv2, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_get_direction(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %3, 31
  %shl.i = shl i32 %and.i, %cond.i.i.i
  %and1.i = shl i32 %3, 1
  %shl2.i = and i32 %and1.i, 192
  %div.i = sdiv i32 %off, 8
  %or.i = or i32 %shl2.i, %div.i
  %or3.i = or i32 %or.i, %shl.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #8
  %8 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg_val, align 4, !annotation !156
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %conv2 = and i32 %or3.i, 255
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef %conv2, ptr noundef nonnull %reg_val) #8
  call void @mutex_unlock(ptr noundef %i2c_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem = and i32 %off, 7
  %11 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_val, align 4
  %13 = lshr i32 %12, %rem
  %14 = and i32 %13, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %14, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_get_multiple(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits) #2 align 64 {
entry:
  %reg_val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_val) #8
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !156
  %1 = getelementptr inbounds [2 x i32], ptr %reg_val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !156
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %input = getelementptr inbounds %struct.pca953x_reg_config, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input, align 4
  %call1 = call fastcc i32 @pca953x_read_regs(ptr noundef %call, i32 noundef %6, ptr noundef nonnull %reg_val)
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %7 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %8 to i32
  call void @__bitmap_replace(ptr noundef %bits, ptr noundef %bits, ptr noundef nonnull %reg_val, ptr noundef %mask, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_val) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_gpio_set_multiple(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits) #2 align 64 {
entry:
  %value.i = alloca [5 x i8], align 1
  %reg_val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_val) #8
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !156
  %1 = getelementptr inbounds [2 x i32], ptr %reg_val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !156
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %output = getelementptr inbounds %struct.pca953x_reg_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %output, align 4
  %call1 = call fastcc i32 @pca953x_read_regs(ptr noundef %call, i32 noundef %6, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else.i, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else.i:                                        ; preds = %entry
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %7 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %8 to i32
  call void @__bitmap_replace(ptr noundef nonnull %reg_val, ptr noundef nonnull %reg_val, ptr noundef %bits, ptr noundef %mask, i32 noundef %conv) #8
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %output5 = getelementptr inbounds %struct.pca953x_reg_config, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %output5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %output5, align 4
  %ngpio.i.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 11, i32 20
  %13 = ptrtoint ptr %ngpio.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ngpio.i.i.i, align 4
  %conv.i.i.i = zext i16 %14 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  %div.i.i.i = sdiv i32 %sub.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %14)
  %15 = icmp ult i16 %14, 9
  %16 = call i32 @llvm.ctlz.i32(i32 %div.i.i.i, i1 true) #8, !range !155
  %sub.i.i.i.i = sub nuw nsw i32 32, %16
  %cond.i.i.i.i = select i1 %15, i32 0, i32 %sub.i.i.i.i
  %and.i.i = and i32 %12, 31
  %shl.i.i = shl i32 %and.i.i, %cond.i.i.i.i
  %and1.i.i = shl i32 %12, 1
  %shl2.i.i = and i32 %and1.i.i, 192
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %value.i) #8
  %sub.i = add nuw nsw i32 %conv.i.i.i, 7
  %div25.i = lshr i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp27.not.i = icmp eq i16 %14, 0
  %17 = call ptr @memset(ptr %value.i, i32 255, i32 5)
  br i1 %cmp27.not.i, label %if.else.i.for.end.i_crit_edge, label %for.body.preheader.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.else.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div25.i, i32 1) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul.i = shl i32 %i.028.i, 3
  %div2.i.i = lshr i32 %mul.i, 5
  %rem.i.i = and i32 %mul.i, 24
  %arrayidx.i.i = getelementptr i32, ptr %reg_val, i32 %div2.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %19, %rem.i.i
  %conv3.i = trunc i32 %shr.i.i to i8
  %arrayidx.i = getelementptr [5 x i8], ptr %value.i, i32 0, i32 %i.028.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %shl.i.masked.i = and i32 %shl.i.i, 255
  %conv4.i = or i32 %shl.i.masked.i, %shl2.i.i
  %call11.i = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef %conv4.i, ptr noundef nonnull %value.i, i32 noundef %div25.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i, label %for.end.i.pca953x_write_regs.exit_crit_edge

for.end.i.pca953x_write_regs.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_write_regs.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 10
  %23 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  br label %pca953x_write_regs.exit

pca953x_write_regs.exit:                          ; preds = %do.end.i, %for.end.i.pca953x_write_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %value.i) #8
  br label %exit

exit:                                             ; preds = %pca953x_write_regs.exit, %entry.exit_crit_edge
  call void @mutex_unlock(ptr noundef %i2c_lock) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_gpio_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 5, label %entry.sw.bb_crit_edge
    i8 4, label %entry.sw.bb_crit_edge5
    i8 3, label %entry.sw.bb_crit_edge6
    i8 1, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %ngpio.i.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 11, i32 20
  %1 = ptrtoint ptr %ngpio.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ngpio.i.i.i, align 4
  %conv.i.i.i = zext i16 %2 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  %div.i.i.i = sdiv i32 %sub.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %2)
  %3 = icmp ult i16 %2, 9
  %4 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i.i, i1 true) #8, !range !155
  %sub.i.i.i.i = sub nuw nsw i32 32, %4
  %cond.i.i.i.i = select i1 %3, i32 0, i32 %sub.i.i.i.i
  %shl.i.i = shl i32 3, %cond.i.i.i.i
  %div.i.i = sdiv i32 %offset, 8
  %or.i.i = or i32 %div.i.i, 64
  %or3.i.i = or i32 %shl.i.i, %or.i.i
  %shl.i65.i = shl i32 4, %cond.i.i.i.i
  %or3.i68.i = or i32 %shl.i65.i, %or.i.i
  %rem.i = and i32 %offset, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %driver_data.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data.i, align 4
  %and.i4 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %i2c_lock.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock.i, i32 noundef 0) #8
  %7 = zext i32 %config to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %config, label %if.end.i.if.else28.i_crit_edge [
    i32 5, label %if.end.i.if.end17.i_crit_edge
    i32 3, label %if.then10.i
    i32 1, label %if.end.i.exit.sink.split.i_crit_edge
  ]

if.end.i.exit.sink.split.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end.i.if.else28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else28.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then10.i, %if.end.i.if.end17.i_crit_edge
  %.sink76.i = phi i32 [ 0, %if.then10.i ], [ %shl.i, %if.end.i.if.end17.i_crit_edge ]
  %regmap11.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %regmap11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap11.i, align 4
  %conv12.i = and i32 %or3.i68.i, 255
  %call.i70.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %conv12.i, i32 noundef %shl.i, i32 noundef %.sink76.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool18.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.else28.i_crit_edge, label %if.end17.i.exit.i_crit_edge

if.end17.i.exit.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end17.i.if.else28.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else28.i

if.else28.i:                                      ; preds = %if.end17.i.if.else28.i_crit_edge, %if.end.i.if.else28.i_crit_edge
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %if.else28.i, %if.end.i.exit.sink.split.i_crit_edge
  %.sink77.i = phi i32 [ %shl.i, %if.else28.i ], [ 0, %if.end.i.exit.sink.split.i_crit_edge ]
  %regmap24.i = getelementptr inbounds %struct.pca953x_chip, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %regmap24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap24.i, align 4
  %conv25.i = and i32 %or3.i.i, 255
  %call.i71.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv25.i, i32 noundef %shl.i, i32 noundef %.sink77.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %if.end17.i.exit.i_crit_edge
  %ret.1.i = phi i32 [ %call.i70.i, %if.end17.i.exit.i_crit_edge ], [ %call.i71.i, %exit.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %i2c_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %ret.1.i, %exit.i ], [ -524, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pca953x_read_regs(ptr nocapture noundef readonly %chip, i32 noundef %reg, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  %value = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 11, i32 20
  %0 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %1)
  %2 = icmp ult i16 %1, 9
  %3 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %3
  %cond.i.i.i = select i1 %2, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %reg, 31
  %shl.i = shl i32 %and.i, %cond.i.i.i
  %and1.i = shl i32 %reg, 1
  %shl2.i = and i32 %and1.i, 192
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %value) #8
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 2
  %4 = call ptr @memset(ptr %value, i32 255, i32 5)
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %shl.i.masked = and i32 %shl.i, 255
  %conv = or i32 %shl.i.masked, %shl2.i
  %sub = add nuw nsw i32 %conv.i.i, 7
  %div24 = lshr i32 %sub, 3
  %call2 = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %value, i32 noundef %div24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ngpio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp1031.not = icmp eq i16 %8, 0
  br i1 %cmp1031.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.pca953x_chip, ptr %chip, i32 0, i32 10
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i8], ptr %value, i32 0, i32 %i.032
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %12 to i32
  %mul = shl i32 %i.032, 3
  %div7.i = lshr i32 %mul, 5
  %rem.i = and i32 %mul, 24
  %shl.i26 = shl nuw i32 255, %rem.i
  %neg.i = xor i32 %shl.i26, -1
  %arrayidx.i = getelementptr i32, ptr %val, i32 %div7.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %and.i27 = and i32 %14, %neg.i
  %shl1.i = shl nuw i32 %conv12, %rem.i
  %or.i = or i32 %and.i27, %shl1.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %15 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ngpio.i.i, align 4
  %conv6 = zext i16 %16 to i32
  %sub8 = add nuw nsw i32 %conv6, 7
  %div925 = lshr i32 %sub8, 3
  %cmp10 = icmp ult i32 %inc, %div925
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pca953x_writeable_register(ptr nocapture noundef readonly %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %and = and i32 %3, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp = icmp eq i32 %and, 4096
  %. = select i1 %cmp, i32 14, i32 54
  %and2 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or = or i32 %., 15360
  %bank.1 = select i1 %tobool.not, i32 %., i32 %or
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %reg, 63
  %shr.i = lshr i32 %and.i, %cond.i.i.i
  %notmask.i = shl nsw i32 -1, %cond.i.i.i
  %sub.i = xor i32 %notmask.i, -1
  %and1.i = and i32 %sub.i, %reg
  %and2.i = and i32 %reg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not, label %if.then.i.pca953x_check_register.exit_crit_edge, label %if.end.i

if.then.i.pca953x_check_register.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_check_register.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %shr.i, 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %entry.if.end6.i_crit_edge
  %bank.0.i = phi i32 [ %add.i, %if.end.i ], [ %shr.i, %entry.if.end6.i_crit_edge ]
  %shl7.i = shl nuw i32 1, %bank.0.i
  %and8.i = and i32 %shl7.i, %bank.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.pca953x_check_register.exit_crit_edge, label %if.end11.i

if.end6.i.pca953x_check_register.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_check_register.exit

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub13.i = add nuw nsw i32 %conv.i.i, 7
  %div25.i = lshr i32 %sub13.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %div25.i)
  %cmp.not.i = icmp slt i32 %and1.i, %div25.i
  br label %pca953x_check_register.exit

pca953x_check_register.exit:                      ; preds = %if.end11.i, %if.end6.i.pca953x_check_register.exit_crit_edge, %if.then.i.pca953x_check_register.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.then.i.pca953x_check_register.exit_crit_edge ], [ false, %if.end6.i.pca953x_check_register.exit_crit_edge ], [ %cmp.not.i, %if.end11.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pca953x_readable_register(ptr nocapture noundef readonly %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %and = and i32 %3, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp = icmp eq i32 %and, 4096
  %. = select i1 %cmp, i32 15, i32 55
  %and2 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or = or i32 %., 31744
  %bank.1 = select i1 %tobool.not, i32 %., i32 %or
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %reg, 63
  %shr.i = lshr i32 %and.i, %cond.i.i.i
  %notmask.i = shl nsw i32 -1, %cond.i.i.i
  %sub.i = xor i32 %notmask.i, -1
  %and1.i = and i32 %sub.i, %reg
  %and2.i = and i32 %reg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not, label %if.then.i.pca953x_check_register.exit_crit_edge, label %if.end.i

if.then.i.pca953x_check_register.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_check_register.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %shr.i, 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %entry.if.end6.i_crit_edge
  %bank.0.i = phi i32 [ %add.i, %if.end.i ], [ %shr.i, %entry.if.end6.i_crit_edge ]
  %shl7.i = shl nuw i32 1, %bank.0.i
  %and8.i = and i32 %shl7.i, %bank.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.pca953x_check_register.exit_crit_edge, label %if.end11.i

if.end6.i.pca953x_check_register.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_check_register.exit

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub13.i = add nuw nsw i32 %conv.i.i, 7
  %div25.i = lshr i32 %sub13.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %div25.i)
  %cmp.not.i = icmp slt i32 %and1.i, %div25.i
  br label %pca953x_check_register.exit

pca953x_check_register.exit:                      ; preds = %if.end11.i, %if.end6.i.pca953x_check_register.exit_crit_edge, %if.then.i.pca953x_check_register.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.then.i.pca953x_check_register.exit_crit_edge ], [ false, %if.end6.i.pca953x_check_register.exit_crit_edge ], [ %cmp.not.i, %if.end11.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pca953x_volatile_register(ptr nocapture noundef readonly %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %and2 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %bank.1 = select i1 %tobool.not, i32 1, i32 16385
  %ngpio.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 11, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %div.i.i = sdiv i32 %sub.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %6 = icmp ult i16 %5, 9
  %7 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #8, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %6, i32 0, i32 %sub.i.i.i
  %and.i = and i32 %reg, 63
  %shr.i = lshr i32 %and.i, %cond.i.i.i
  %notmask.i = shl nsw i32 -1, %cond.i.i.i
  %sub.i = xor i32 %notmask.i, -1
  %and1.i = and i32 %sub.i, %reg
  %and2.i = and i32 %reg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not, label %if.then.i.pca953x_check_register.exit_crit_edge, label %if.end.i

if.then.i.pca953x_check_register.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_check_register.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %shr.i, 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %entry.if.end6.i_crit_edge
  %bank.0.i = phi i32 [ %add.i, %if.end.i ], [ %shr.i, %entry.if.end6.i_crit_edge ]
  %shl7.i = shl nuw i32 1, %bank.0.i
  %and8.i = and i32 %shl7.i, %bank.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.pca953x_check_register.exit_crit_edge, label %if.end11.i

if.end6.i.pca953x_check_register.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_check_register.exit

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub13.i = add nuw nsw i32 %conv.i.i, 7
  %div25.i = lshr i32 %sub13.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %div25.i)
  %cmp.not.i = icmp slt i32 %and1.i, %div25.i
  br label %pca953x_check_register.exit

pca953x_check_register.exit:                      ; preds = %if.end11.i, %if.end6.i.pca953x_check_register.exit_crit_edge, %if.then.i.pca953x_check_register.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.then.i.pca953x_check_register.exit_crit_edge ], [ false, %if.end6.i.pca953x_check_register.exit_crit_edge ], [ %cmp.not.i, %if.end11.i ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %irq_mask = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_mask) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %irq_mask = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_mask) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %wakeup_path2 = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 9
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup_path2, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %wakeup_path2, i32 1, i32 3, i32 1) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path2, ptr %wakeup_path2, i32 1, ptr elementtype(i32) %wakeup_path2) #8, !srcloc !157
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path2, ptr %wakeup_path2, i32 1, ptr elementtype(i32) %wakeup_path2) #8, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %client = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 10
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call3 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %on) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %irq_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %value.i57 = alloca [5 x i8], align 1
  %value.i = alloca [5 x i8], align 1
  %irq_mask = alloca [2 x i32], align 4
  %reg_direction = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %irq_mask) #8
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq_mask, align 4, !annotation !156
  %3 = getelementptr inbounds [2 x i32], ptr %irq_mask, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_direction) #8
  %5 = ptrtoint ptr %reg_direction to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg_direction, align 4, !annotation !156
  %6 = getelementptr inbounds [2 x i32], ptr %reg_direction, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !156
  %driver_data = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 13
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %irq_mask2 = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 4
  %ngpio.i.i.i = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 11, i32 20
  %10 = ptrtoint ptr %ngpio.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ngpio.i.i.i, align 4
  %conv.i.i.i = zext i16 %11 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  %div.i.i.i = sdiv i32 %sub.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %11)
  %12 = icmp ult i16 %11, 9
  %13 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i.i, i1 true) #8, !range !155
  %sub.i.i.i.i = sub nuw nsw i32 32, %13
  %sub.i.i.i.i.op = shl i32 2, %sub.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %value.i) #8
  %sub.i = add nuw nsw i32 %conv.i.i.i, 7
  %div25.i = lshr i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp27.not.i = icmp eq i16 %11, 0
  %14 = call ptr @memset(ptr %value.i, i32 255, i32 5)
  br i1 %cmp27.not.i, label %if.then.for.end.i_crit_edge, label %for.body.preheader.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div25.i, i32 1) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul.i = shl i32 %i.028.i, 3
  %div2.i.i = lshr i32 %mul.i, 5
  %rem.i.i = and i32 %mul.i, 24
  %arrayidx.i.i = getelementptr i32, ptr %irq_mask2, i32 %div2.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %16, %rem.i.i
  %conv3.i = trunc i32 %shr.i.i to i8
  %arrayidx.i = getelementptr [5 x i8], ptr %value.i, i32 0, i32 %i.028.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 2
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %sub.i.i.i.i.op.op = and i32 %sub.i.i.i.i.op, 190
  %sub.i.i.i.i.op.op.op = or i32 %sub.i.i.i.i.op.op, 64
  %conv4.i = select i1 %12, i32 66, i32 %sub.i.i.i.i.op.op.op
  %call11.i = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef %conv4.i, ptr noundef nonnull %value.i, i32 noundef %div25.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end.i, label %for.end.i.pca953x_write_regs.exit_crit_edge

for.end.i.pca953x_write_regs.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_write_regs.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 10
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #11
  br label %pca953x_write_regs.exit

pca953x_write_regs.exit:                          ; preds = %do.end.i, %for.end.i.pca953x_write_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %value.i) #8
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %23 to i32
  call void @__bitmap_complement(ptr noundef nonnull %irq_mask, ptr noundef %irq_mask2, i32 noundef %conv) #8
  %24 = ptrtoint ptr %ngpio.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ngpio.i.i.i, align 4
  %conv.i.i.i59 = zext i16 %25 to i32
  %sub.i.i.i60 = add nsw i32 %conv.i.i.i59, -1
  %div.i.i.i61 = sdiv i32 %sub.i.i.i60, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %25)
  %26 = icmp ult i16 %25, 9
  %27 = call i32 @llvm.ctlz.i32(i32 %div.i.i.i61, i1 true) #8, !range !155
  %sub.i.i.i.i62 = sub nuw nsw i32 32, %27
  %sub.i.i.i.i62.op = shl i32 5, %sub.i.i.i.i62
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %value.i57) #8
  %sub.i65 = add nuw nsw i32 %conv.i.i.i59, 7
  %div25.i66 = lshr i32 %sub.i65, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp27.not.i67 = icmp eq i16 %25, 0
  %28 = call ptr @memset(ptr %value.i57, i32 255, i32 5)
  br i1 %cmp27.not.i67, label %pca953x_write_regs.exit.for.end.i86_crit_edge, label %for.body.preheader.i69

pca953x_write_regs.exit.for.end.i86_crit_edge:    ; preds = %pca953x_write_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i86

for.body.preheader.i69:                           ; preds = %pca953x_write_regs.exit
  %umax.i68 = call i32 @llvm.umax.i32(i32 %div25.i66, i32 1) #8
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %for.body.preheader.i69
  %i.028.i70 = phi i32 [ %inc.i78, %for.body.i80.for.body.i80_crit_edge ], [ 0, %for.body.preheader.i69 ]
  %mul.i71 = shl i32 %i.028.i70, 3
  %div2.i.i72 = lshr i32 %mul.i71, 5
  %rem.i.i73 = and i32 %mul.i71, 24
  %arrayidx.i.i74 = getelementptr i32, ptr %irq_mask, i32 %div2.i.i72
  %29 = ptrtoint ptr %arrayidx.i.i74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i74, align 4
  %shr.i.i75 = lshr i32 %30, %rem.i.i73
  %conv3.i76 = trunc i32 %shr.i.i75 to i8
  %arrayidx.i77 = getelementptr [5 x i8], ptr %value.i57, i32 0, i32 %i.028.i70
  %31 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv3.i76, ptr %arrayidx.i77, align 1
  %inc.i78 = add nuw nsw i32 %i.028.i70, 1
  %exitcond.not.i79 = icmp eq i32 %inc.i78, %umax.i68
  br i1 %exitcond.not.i79, label %for.body.i80.for.end.i86_crit_edge, label %for.body.i80.for.body.i80_crit_edge

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i80

for.body.i80.for.end.i86_crit_edge:               ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i86

for.end.i86:                                      ; preds = %for.body.i80.for.end.i86_crit_edge, %pca953x_write_regs.exit.for.end.i86_crit_edge
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %sub.i.i.i.i62.op.op = and i32 %sub.i.i.i.i62.op, 191
  %sub.i.i.i.i62.op.op.op = or i32 %sub.i.i.i.i62.op.op, 64
  %conv4.i83 = select i1 %26, i32 69, i32 %sub.i.i.i.i62.op.op.op
  %call11.i84 = call i32 @regmap_bulk_write(ptr noundef %33, i32 noundef %conv4.i83, ptr noundef nonnull %value.i57, i32 noundef %div25.i66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i84)
  %cmp12.i85 = icmp slt i32 %call11.i84, 0
  br i1 %cmp12.i85, label %do.end.i89, label %for.end.i86.pca953x_write_regs.exit91_crit_edge

for.end.i86.pca953x_write_regs.exit91_crit_edge:  ; preds = %for.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_write_regs.exit91

do.end.i89:                                       ; preds = %for.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  %client.i87 = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 10
  %34 = ptrtoint ptr %client.i87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client.i87, align 4
  %dev.i88 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i88, ptr noundef nonnull @.str.24) #11
  br label %pca953x_write_regs.exit91

pca953x_write_regs.exit91:                        ; preds = %do.end.i89, %for.end.i86.pca953x_write_regs.exit91_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %value.i57) #8
  br label %if.end

if.end:                                           ; preds = %pca953x_write_regs.exit91, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 15
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %call10 = call fastcc i32 @pca953x_read_regs(ptr noundef %call1, i32 noundef %39, ptr noundef nonnull %reg_direction)
  %ngpio14 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %ngpio14 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ngpio14, align 4
  %conv15 = zext i16 %41 to i32
  %irq_trig_raise = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 6
  %irq_trig_fall = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 7
  call void @__bitmap_or(ptr noundef nonnull %irq_mask, ptr noundef %irq_trig_fall, ptr noundef %irq_trig_raise, i32 noundef %conv15) #8
  %42 = ptrtoint ptr %ngpio14 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ngpio14, align 4
  %conv19 = zext i16 %43 to i32
  call void @__bitmap_complement(ptr noundef nonnull %reg_direction, ptr noundef nonnull %reg_direction, i32 noundef %conv19) #8
  %44 = ptrtoint ptr %ngpio14 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ngpio14, align 4
  %conv24 = zext i16 %45 to i32
  %call.i = call i32 @__bitmap_and(ptr noundef nonnull %irq_mask, ptr noundef nonnull %irq_mask, ptr noundef nonnull %reg_direction, i32 noundef %conv24) #8
  %46 = ptrtoint ptr %ngpio14 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ngpio14, align 4
  %conv28 = zext i16 %47 to i32
  %call29 = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_mask, i32 noundef %conv28, i32 noundef 0) #8
  %48 = ptrtoint ptr %ngpio14 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ngpio14, align 4
  %conv31109 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %conv31109)
  %cmp110 = icmp slt i32 %call29, %conv31109
  br i1 %cmp110, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %gpio_chip = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %level.0111 = phi i32 [ %call29, %for.body.lr.ph ], [ %call37, %for.body.for.body_crit_edge ]
  %call.i100 = call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #8
  %regs.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i100, i32 0, i32 15
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %ngpio.i.i.i101 = getelementptr inbounds %struct.pca953x_chip, ptr %call.i100, i32 0, i32 11, i32 20
  %54 = ptrtoint ptr %ngpio.i.i.i101 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ngpio.i.i.i101, align 4
  %conv.i.i.i102 = zext i16 %55 to i32
  %sub.i.i.i103 = add nsw i32 %conv.i.i.i102, -1
  %div.i.i.i104 = sdiv i32 %sub.i.i.i103, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %55)
  %56 = icmp ult i16 %55, 9
  %57 = call i32 @llvm.ctlz.i32(i32 %div.i.i.i104, i1 true) #8, !range !155
  %sub.i.i.i.i105 = sub nuw nsw i32 32, %57
  %cond.i.i.i.i106 = select i1 %56, i32 0, i32 %sub.i.i.i.i105
  %and.i.i = and i32 %53, 31
  %shl.i.i107 = shl i32 %and.i.i, %cond.i.i.i.i106
  %and1.i.i = shl i32 %53, 1
  %shl2.i.i = and i32 %and1.i.i, 192
  %div.i.i = sdiv i32 %level.0111, 8
  %or.i.i = or i32 %shl2.i.i, %div.i.i
  %or3.i.i = or i32 %or.i.i, %shl.i.i107
  %rem.i = and i32 %level.0111, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %i2c_lock.i = getelementptr inbounds %struct.pca953x_chip, ptr %call.i100, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %i2c_lock.i, i32 noundef 0) #8
  %regmap.i108 = getelementptr inbounds %struct.pca953x_chip, ptr %call.i100, i32 0, i32 2
  %58 = ptrtoint ptr %regmap.i108 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i108, align 4
  %conv2.i = and i32 %or3.i.i, 255
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %conv2.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @mutex_unlock(ptr noundef %i2c_lock.i) #8
  %60 = ptrtoint ptr %ngpio14 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ngpio14, align 4
  %conv36 = zext i16 %61 to i32
  %add = add nsw i32 %level.0111, 1
  %call37 = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_mask, i32 noundef %conv36, i32 noundef %add) #8
  %62 = ptrtoint ptr %ngpio14 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ngpio14, align 4
  %conv31 = zext i16 %63 to i32
  %cmp = icmp slt i32 %call37, %conv31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %irq_lock = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %irq_lock) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_direction) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %irq_mask) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 10
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %7, i32 noundef %type) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_trig_fall = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 7
  %and3 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_trig_fall) #8
  br label %assign_bit.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_trig_fall) #8
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.else.i, %if.then.i
  %irq_trig_raise = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 6
  %and6 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.i19, label %if.then.i18

if.then.i18:                                      ; preds = %assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_trig_raise) #8
  br label %cleanup

if.else.i19:                                      ; preds = %assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_trig_raise) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i19, %if.then.i18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then.i18 ], [ 0, %if.else.i19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pca953x_irq_shutdown(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %irq_trig_raise = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_trig_raise) #8
  %irq_trig_fall = getelementptr inbounds %struct.pca953x_chip, ptr %call1, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_trig_fall) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_irq_handler(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %reg_direction.i = alloca [2 x i32], align 4
  %old_stat.i = alloca [2 x i32], align 4
  %cur_stat.i = alloca [2 x i32], align 4
  %new_stat.i = alloca [2 x i32], align 4
  %trigger.i = alloca [2 x i32], align 4
  %pending = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending) #8
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %pending, align 8
  %i2c_lock = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_direction.i) #8
  %1 = ptrtoint ptr %reg_direction.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg_direction.i, align 4, !annotation !156
  %2 = getelementptr inbounds [2 x i32], ptr %reg_direction.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_stat.i) #8
  %4 = ptrtoint ptr %old_stat.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %old_stat.i, align 4, !annotation !156
  %5 = getelementptr inbounds [2 x i32], ptr %old_stat.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur_stat.i) #8
  %7 = ptrtoint ptr %cur_stat.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cur_stat.i, align 4, !annotation !156
  %8 = getelementptr inbounds [2 x i32], ptr %cur_stat.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_stat.i) #8
  %10 = ptrtoint ptr %new_stat.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %new_stat.i, align 4, !annotation !156
  %11 = getelementptr inbounds [2 x i32], ptr %new_stat.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger.i) #8
  %13 = ptrtoint ptr %trigger.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %trigger.i, align 4, !annotation !156
  %14 = getelementptr inbounds [2 x i32], ptr %trigger.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !156
  %driver_data.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 13
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data.i, align 4
  %and.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end20.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call fastcc i32 @pca953x_read_regs(ptr noundef %devid, i32 noundef 38, ptr noundef nonnull %trigger.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.pca953x_irq_pending.exit.thread_crit_edge

if.then.i.pca953x_irq_pending.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_irq_pending.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %regs.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 15
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %input.i = getelementptr inbounds %struct.pca953x_reg_config, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %input.i, align 4
  %call4.i = call fastcc i32 @pca953x_read_regs(ptr noundef %devid, i32 noundef %21, ptr noundef nonnull %cur_stat.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.pca953x_irq_pending.exit.thread_crit_edge

if.end.i.pca953x_irq_pending.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_irq_pending.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %ngpio.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 11, i32 20
  %22 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %23 to i32
  %irq_trig_raise.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 6
  %irq_trig_fall.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 7
  call void @__bitmap_replace(ptr noundef nonnull %new_stat.i, ptr noundef %irq_trig_fall.i, ptr noundef %irq_trig_raise.i, ptr noundef nonnull %cur_stat.i, i32 noundef %conv.i) #8
  %24 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ngpio.i, align 4
  %conv15.i = zext i16 %25 to i32
  %call.i.i = call i32 @__bitmap_and(ptr noundef nonnull %pending, ptr noundef nonnull %new_stat.i, ptr noundef nonnull %trigger.i, i32 noundef %conv15.i) #8
  %26 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ngpio.i, align 4
  %conv18.i = zext i16 %27 to i32
  %call.i138.i = call i32 @_find_first_bit_be(ptr noundef nonnull %pending, i32 noundef %conv18.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i138.i, i32 %conv18.i)
  %cmp4.i.i = icmp eq i32 %call.i138.i, %conv18.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_direction.i) #8
  call void @mutex_unlock(ptr noundef %i2c_lock) #8
  br i1 %cmp4.i.i, label %if.end7.i.if.end26_crit_edge, label %if.end7.i.if.then_crit_edge

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end7.i.if.end26_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end20.i:                                       ; preds = %entry
  %regs21.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 15
  %28 = ptrtoint ptr %regs21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs21.i, align 4
  %input22.i = getelementptr inbounds %struct.pca953x_reg_config, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %input22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %input22.i, align 4
  %call24.i = call fastcc i32 @pca953x_read_regs(ptr noundef %devid, i32 noundef %31, ptr noundef nonnull %cur_stat.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end20.i.pca953x_irq_pending.exit.thread_crit_edge

if.end20.i.pca953x_irq_pending.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_irq_pending.exit.thread

if.end27.i:                                       ; preds = %if.end20.i
  %32 = ptrtoint ptr %regs21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs21.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %call30.i = call fastcc i32 @pca953x_read_regs(ptr noundef %devid, i32 noundef %35, ptr noundef nonnull %reg_direction.i) #8
  %irq_stat.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 5
  %ngpio33.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 11, i32 20
  %36 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ngpio33.i, align 4
  %conv34.i = zext i16 %37 to i32
  %sub.i140.i = add nuw nsw i32 %conv34.i, 31
  %38 = lshr i32 %sub.i140.i, 3
  %mul.i.i = and i32 %38, 16380
  %39 = call ptr @memcpy(ptr %old_stat.i, ptr %irq_stat.i, i32 %mul.i.i)
  %call.i147.i = call i32 @__bitmap_and(ptr noundef nonnull %new_stat.i, ptr noundef nonnull %cur_stat.i, ptr noundef nonnull %reg_direction.i, i32 noundef %conv34.i) #8
  %40 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ngpio33.i, align 4
  %conv45.i = zext i16 %41 to i32
  call void @__bitmap_xor(ptr noundef nonnull %cur_stat.i, ptr noundef nonnull %new_stat.i, ptr noundef nonnull %old_stat.i, i32 noundef %conv45.i) #8
  %42 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ngpio33.i, align 4
  %conv50.i = zext i16 %43 to i32
  %irq_mask.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 4
  %call.i159.i = call i32 @__bitmap_and(ptr noundef nonnull %trigger.i, ptr noundef nonnull %cur_stat.i, ptr noundef %irq_mask.i, i32 noundef %conv50.i) #8
  %44 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ngpio33.i, align 4
  %conv54.i = zext i16 %45 to i32
  %call.i168.i = call i32 @_find_first_bit_be(ptr noundef nonnull %trigger.i, i32 noundef %conv54.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i168.i, i32 %conv54.i)
  %cmp4.i169.i = icmp eq i32 %call.i168.i, %conv54.i
  br i1 %cmp4.i169.i, label %if.end27.i.pca953x_irq_pending.exit.thread_crit_edge, label %if.end57.i

if.end27.i.pca953x_irq_pending.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pca953x_irq_pending.exit.thread

if.end57.i:                                       ; preds = %if.end27.i
  %46 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ngpio33.i, align 4
  %conv62.i = zext i16 %47 to i32
  %sub.i173.i = add nuw nsw i32 %conv62.i, 31
  %48 = lshr i32 %sub.i173.i, 3
  %mul.i174.i = and i32 %48, 16380
  %49 = call ptr @memcpy(ptr %irq_stat.i, ptr %new_stat.i, i32 %mul.i174.i)
  %50 = load i16, ptr %ngpio33.i, align 4
  %conv68.i = zext i16 %50 to i32
  %irq_trig_fall64.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 7
  %call.i181.i = call i32 @__bitmap_and(ptr noundef nonnull %cur_stat.i, ptr noundef %irq_trig_fall64.i, ptr noundef nonnull %old_stat.i, i32 noundef %conv68.i) #8
  %51 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ngpio33.i, align 4
  %conv75.i = zext i16 %52 to i32
  %irq_trig_raise71.i = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 6
  %call.i190.i = call i32 @__bitmap_and(ptr noundef nonnull %old_stat.i, ptr noundef %irq_trig_raise71.i, ptr noundef nonnull %new_stat.i, i32 noundef %conv75.i) #8
  %53 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ngpio33.i, align 4
  %conv81.i = zext i16 %54 to i32
  call void @__bitmap_or(ptr noundef nonnull %new_stat.i, ptr noundef nonnull %old_stat.i, ptr noundef nonnull %cur_stat.i, i32 noundef %conv81.i) #8
  %55 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ngpio33.i, align 4
  %conv85.i = zext i16 %56 to i32
  %call.i203.i = call i32 @__bitmap_and(ptr noundef nonnull %pending, ptr noundef nonnull %new_stat.i, ptr noundef nonnull %trigger.i, i32 noundef %conv85.i) #8
  %57 = ptrtoint ptr %ngpio33.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ngpio33.i, align 4
  %conv88.i = zext i16 %58 to i32
  %call.i212.i = call i32 @_find_first_bit_be(ptr noundef nonnull %pending, i32 noundef %conv88.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i212.i, i32 %conv88.i)
  %cmp4.i213.i = icmp eq i32 %call.i212.i, %conv88.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_direction.i) #8
  call void @mutex_unlock(ptr noundef %i2c_lock) #8
  br i1 %cmp4.i213.i, label %if.end57.i.if.end26_crit_edge, label %if.end57.i.if.then_crit_edge

if.end57.i.if.then_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end57.i.if.end26_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

pca953x_irq_pending.exit.thread:                  ; preds = %if.end27.i.pca953x_irq_pending.exit.thread_crit_edge, %if.end20.i.pca953x_irq_pending.exit.thread_crit_edge, %if.end.i.pca953x_irq_pending.exit.thread_crit_edge, %if.then.i.pca953x_irq_pending.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_stat.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_direction.i) #8
  call void @mutex_unlock(ptr noundef %i2c_lock) #8
  br label %if.end26

if.then:                                          ; preds = %if.end57.i.if.then_crit_edge, %if.end7.i.if.then_crit_edge
  %ngpio = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 11, i32 20
  %59 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %60 to i32
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv, i32 noundef 0) #8
  %61 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ngpio, align 4
  %conv654 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %conv654)
  %cmp55 = icmp slt i32 %call4, %conv654
  br i1 %cmp55, label %for.body.lr.ph, label %if.then.if.end26.loopexit_crit_edge

if.then.if.end26.loopexit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.loopexit

for.body.lr.ph:                                   ; preds = %if.then
  %domain = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 11, i32 37, i32 1
  %parent = getelementptr inbounds %struct.pca953x_chip, ptr %devid, i32 0, i32 11, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ret.058 = phi i8 [ 0, %for.body.lr.ph ], [ %ret.1, %cleanup.for.body_crit_edge ]
  %level.056 = phi i32 [ %call4, %for.body.lr.ph ], [ %call25, %cleanup.for.body_crit_edge ]
  %63 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %65 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %irq.i, align 4, !annotation !156
  %call.i47 = call ptr @__irq_resolve_mapping(ptr noundef %64, i32 noundef %level.056, ptr noundef nonnull %irq.i) #8
  %tobool.not.i48 = icmp eq ptr %call.i47, null
  br i1 %tobool.not.i48, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  br label %do.body

irq_find_mapping.exit:                            ; preds = %for.body
  %66 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp10 = icmp slt i32 %67, 1
  br i1 %cmp10, label %irq_find_mapping.exit.do.body_crit_edge, label %if.end21, !prof !159

irq_find_mapping.exit.do.body_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %irq_find_mapping.exit.do.body_crit_edge, %irq_find_mapping.exit.thread
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @pca953x_irq_handler._rs, ptr noundef nonnull @__func__.pca953x_irq_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parent, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.38, i32 noundef %level.056) #11
  br label %cleanup

if.end21:                                         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @handle_nested_irq(i32 noundef %67) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %do.body.cleanup_crit_edge
  %ret.1 = phi i8 [ 1, %if.end21 ], [ %ret.058, %do.end ], [ %ret.058, %do.body.cleanup_crit_edge ]
  %70 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ngpio, align 4
  %conv24 = zext i16 %71 to i32
  %add = add nsw i32 %level.056, 1
  %call25 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv24, i32 noundef %add) #8
  %72 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ngpio, align 4
  %conv6 = zext i16 %73 to i32
  %cmp = icmp slt i32 %call25, %conv6
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.if.end26.loopexit_crit_edge

cleanup.if.end26.loopexit_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.loopexit

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end26.loopexit:                                ; preds = %cleanup.if.end26.loopexit_crit_edge, %if.then.if.end26.loopexit_crit_edge
  %ret.0.lcssa = phi i8 [ 0, %if.then.if.end26.loopexit_crit_edge ], [ %ret.1, %cleanup.if.end26.loopexit_crit_edge ]
  %74 = and i8 %ret.0.lcssa, 1
  %75 = zext i8 %74 to i32
  br label %if.end26

if.end26:                                         ; preds = %if.end26.loopexit, %pca953x_irq_pending.exit.thread, %if.end57.i.if.end26_crit_edge, %if.end7.i.if.end26_crit_edge
  %ret.2.off0 = phi i32 [ 0, %if.end57.i.if.end26_crit_edge ], [ 0, %pca953x_irq_pending.exit.thread ], [ 0, %if.end7.i.if.end26_crit_edge ], [ %75, %if.end26.loopexit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending) #8
  ret i32 %ret.2.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_suspend(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  %wakeup_path = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup_path, i32 noundef 4) #8
  %4 = ptrtoint ptr %wakeup_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %wakeup_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %6 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %wakeup_path.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %wakeup_path.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regulator = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regulator, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca953x_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wakeup_path = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup_path, i32 noundef 4) #8
  %2 = ptrtoint ptr %wakeup_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %wakeup_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %regulator = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call2) #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %regmap = getelementptr inbounds %struct.pca953x_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.pca953x_chip, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %regs.i = getelementptr inbounds %struct.pca953x_chip, ptr %11, i32 0, i32 15
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %ngpio.i = getelementptr inbounds %struct.pca953x_chip, ptr %11, i32 0, i32 11, i32 20
  %18 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %19 to i32
  %sub.i = add nuw nsw i32 %conv.i, 7
  %div84.i = lshr i32 %sub.i, 3
  %add3.i = add i32 %div84.i, %17
  %call4.i = tail call i32 @regcache_sync_region(ptr noundef %13, i32 noundef %17, i32 noundef %add3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call4.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %output.i = getelementptr inbounds %struct.pca953x_reg_config, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %output.i, align 4
  %26 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ngpio.i, align 4
  %conv11.i = zext i16 %27 to i32
  %sub13.i = add nuw nsw i32 %conv11.i, 7
  %div1485.i = lshr i32 %sub13.i, 3
  %add15.i = add i32 %div1485.i, %25
  %call16.i = tail call i32 @regcache_sync_region(ptr noundef %21, i32 noundef %25, i32 noundef %add15.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end22.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %call16.i) #11
  br label %cleanup

if.end22.i:                                       ; preds = %if.end.i
  %driver_data.i33 = getelementptr inbounds %struct.pca953x_chip, ptr %11, i32 0, i32 13
  %28 = ptrtoint ptr %driver_data.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data.i33, align 4
  %and.i = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.end10_crit_edge, label %if.then24.i

if.end22.i.if.end10_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then24.i:                                      ; preds = %if.end22.i
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %32 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio.i, align 4
  %conv28.i = zext i16 %33 to i32
  %sub30.i = add nuw nsw i32 %conv28.i, 7
  %div3186.i = lshr i32 %sub30.i, 3
  %add32.i = add nuw nsw i32 %div3186.i, 34
  %call33.i = tail call i32 @regcache_sync_region(ptr noundef %31, i32 noundef 34, i32 noundef %add32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end39.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call33.i) #11
  br label %cleanup

if.end39.i:                                       ; preds = %if.then24.i
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %36 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ngpio.i, align 4
  %conv43.i = zext i16 %37 to i32
  %sub45.i = add nuw nsw i32 %conv43.i, 7
  %div4687.i = lshr i32 %sub45.i, 3
  %add47.i = add nuw nsw i32 %div4687.i, 37
  %call48.i = tail call i32 @regcache_sync_region(ptr noundef %35, i32 noundef 37, i32 noundef %add47.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end39.i.if.end10_crit_edge, label %do.end53.i

if.end39.i.if.end10_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end53.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call48.i) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end39.i.if.end10_crit_edge, %if.end22.i.if.end10_crit_edge
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regcache_sync(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %do.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %call12) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end10.cleanup_crit_edge, %do.end53.i, %do.end38.i, %do.end21.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ 0, %do.end ], [ 0, %if.end10.cleanup_crit_edge ], [ %call48.i, %do.end53.i ], [ %call33.i, %do.end38.i ], [ %call16.i, %do.end21.i ], [ %call4.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !73, !75, !76, !77, !78, !80, !82, !83, !84, !85, !87, !89, !90, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !109, !110, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_gpio_pca953x__288_1268_pca953x_init4, !1, !"__initcall__kmod_gpio_pca953x__288_1268_pca953x_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1268, i32 1}
!2 = !{ptr @__exitcall_pca953x_exit, !3, !"__exitcall_pca953x_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1274, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1276, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1277, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1278, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1251, i32 11}
!13 = !{ptr @pca953x_driver, !14, !"pca953x_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1249, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-pca953x.c", i32 977, i32 54}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-pca953x.c", i32 985, i32 41}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-pca953x.c", i32 987, i32 52}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-pca953x.c", i32 991, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pca953x_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @pca953x_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1015, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pca953x_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @pca953x_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1018, i32 3}
!36 = !{ptr @pca953x_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pca953x_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @pca953x_probe._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1022, i32 17}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pca953x_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1030, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pca953x_probe.lock_key, !45, !"lock_key", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1068, i32 8}
!46 = !{ptr @pca953x_probe.request_key, !45, !"request_key", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1076, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pca953x_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pca953x_probe._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-pca953x.c", i32 415, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pca953x_read_regs._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @pca953x_read_regs._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-pca953x.c", i32 400, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pca953x_write_regs._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @pca953x_write_regs._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @pca953x_ai_i2c_regmap, !63, !"pca953x_ai_i2c_regmap", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-pca953x.c", i32 363, i32 35}
!64 = !{ptr @pca953x_i2c_regmap, !65, !"pca953x_i2c_regmap", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-pca953x.c", i32 350, i32 35}
!66 = !{ptr @pca953x_regs, !67, !"pca953x_regs", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-pca953x.c", i32 178, i32 40}
!68 = !{ptr @pca957x_regs, !69, !"pca957x_regs", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-pca953x.c", i32 185, i32 40}
!70 = !{ptr @pca953x_irq_setup.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpio-pca953x.c", i32 846, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpio/gpio-pca953x.c", i32 873, i32 3}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pca953x_irq_setup._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pca953x_irq_setup._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"pca953x_dmi_acpi_irq_info", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpio-pca953x.c", i32 140, i32 35}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpio/gpio-pca953x.c", i32 130, i32 3}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pca953x_acpi_get_irq._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @pca953x_acpi_get_irq._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpio/gpio-pca953x.c", i32 132, i32 54}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpio/gpio-pca953x.c", i32 136, i32 2}
!89 = !{ptr @pca953x_acpi_get_irq._entry.32, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pca953x_acpi_get_irq._entry_ptr.34, !88, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"pca953x_acpi_irq_gpios", i1 false, i1 false}
!92 = !{!"../drivers/gpio/gpio-pca953x.c", i32 119, i32 39}
!93 = distinct !{null, !94, !"pca953x_irq_gpios", i1 false, i1 false}
!94 = !{!"../drivers/gpio/gpio-pca953x.c", i32 117, i32 38}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpio/gpio-pca953x.c", i32 702, i32 3}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pca953x_irq_set_type._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @pca953x_irq_set_type._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpio/gpio-pca953x.c", i32 799, i32 5}
!102 = !{ptr @pca953x_irq_handler._rs, !101, !"_rs", i1 false, i1 false}
!103 = !{ptr @__func__.pca953x_irq_handler, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pca953x_irq_handler._entry, !101, !"_entry", i1 false, i1 false}
!106 = !{ptr @pca953x_irq_handler._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1096, i32 4}
!109 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @pca953x_remove._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @pca953x_remove._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @pca953x_dt_ids, !113, !"pca953x_dt_ids", i1 false, i1 false}
!113 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1200, i32 34}
!114 = !{ptr @pca953x_acpi_ids, !115, !"pca953x_acpi_ids", i1 false, i1 false}
!115 = !{!"../drivers/gpio/gpio-pca953x.c", i32 159, i32 36}
!116 = !{ptr @pca953x_pm_ops, !117, !"pca953x_pm_ops", i1 false, i1 false}
!117 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1247, i32 8}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1175, i32 4}
!120 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @pca953x_resume._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @pca953x_resume._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1188, i32 3}
!125 = !{ptr @pca953x_resume._entry.43, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @pca953x_resume._entry_ptr.45, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1119, i32 3}
!129 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @pca953x_regcache_sync._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @pca953x_regcache_sync._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1126, i32 3}
!134 = !{ptr @pca953x_regcache_sync._entry.48, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @pca953x_regcache_sync._entry_ptr.50, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1135, i32 4}
!138 = !{ptr @pca953x_regcache_sync._entry.51, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @pca953x_regcache_sync._entry_ptr.53, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpio/gpio-pca953x.c", i32 1143, i32 4}
!142 = !{ptr @pca953x_regcache_sync._entry.54, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @pca953x_regcache_sync._entry_ptr.56, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @pca953x_id, !145, !"pca953x_id", i1 false, i1 false}
!145 = !{!"../drivers/gpio/gpio-pca953x.c", i32 73, i32 35}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i32 0, i32 33}
!156 = !{!"auto-init"}
!157 = !{i64 2148336885, i64 2148336911, i64 2148336940, i64 2148336974, i64 2148337005, i64 2148337028}
!158 = !{i64 2148339350, i64 2148339376, i64 2148339405, i64 2148339439, i64 2148339470, i64 2148339493}
!159 = !{!"branch_weights", i32 1, i32 2000}
