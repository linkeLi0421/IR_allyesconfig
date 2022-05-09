; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-uniphier.c_pt.bc'
source_filename = "../drivers/reset/reset-uniphier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.uniphier_reset_data = type { i32, i32, i32, i32 }
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
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.uniphier_reset_priv = type { %struct.reset_controller_dev, ptr, ptr, ptr }

@__initcall__kmod_reset_uniphier__172_520_uniphier_reset_driver_init6 = internal global ptr @uniphier_reset_driver_init, section ".initcall6.init", align 4
@uniphier_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_reset_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_reset_driver_exit = internal global ptr @uniphier_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [70 x i8] c"reset_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [60 x i8] c"reset_uniphier.description=UniPhier Reset Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [49 x i8] c"reset_uniphier.file=drivers/reset/reset-uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [27 x i8] c"reset_uniphier.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uniphier-reset\00", [17 x i8] zeroinitializer }, align 32
@uniphier_reset_match = internal constant { [31 x %struct.of_device_id], [1508 x i8] } { [31 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sld8-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_nx1_sys_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sld8-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-mio-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_mio_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-sd-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_sd_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sld8-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-peri-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_peri_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-adamv-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_adamv_reset_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-adamv-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_adamv_reset_data }, %struct.of_device_id zeroinitializer], [1508 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/reset/reset-uniphier.c\00", [33 x i8] zeroinitializer }, align 32
@uniphier_reset_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get regmap (error %ld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uniphier_reset_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_reset_probe._entry_ptr = internal global ptr @uniphier_reset_probe._entry, section ".printk_index", align 4
@uniphier_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @uniphier_reset_assert, ptr @uniphier_reset_deassert, ptr @uniphier_reset_status }, [16 x i8] zeroinitializer }, align 32
@uniphier_reset_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reset_id=%lu was not handled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uniphier_reset_update\00", [42 x i8] zeroinitializer }, align 32
@uniphier_reset_update._entry_ptr = internal global ptr @uniphier_reset_update._entry, section ".printk_index", align 4
@uniphier_reset_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reset_id=%lu was not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uniphier_reset_status\00", [42 x i8] zeroinitializer }, align 32
@uniphier_reset_status._entry_ptr = internal global ptr @uniphier_reset_status._entry, section ".printk_index", align 4
@uniphier_ld4_sys_reset_data = internal constant { [3 x %struct.uniphier_reset_data], [48 x i8] } { [3 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@uniphier_pro4_sys_reset_data = internal constant { [11 x %struct.uniphier_reset_data], [48 x i8] } { [11 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8192, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8192, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8192, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 8196, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 28, i32 8192, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 29, i32 8196, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 30, i32 8192, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8192, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@uniphier_pro5_sys_reset_data = internal constant { [8 x %struct.uniphier_reset_data], [32 x i8] } { [8 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8192, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8192, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 8196, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8200, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8192, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@uniphier_pxs2_sys_reset_data = internal constant { [14 x %struct.uniphier_reset_data], [32 x i8] } { [14 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8192, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8192, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8192, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8192, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 8196, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8212, i32 4, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8212, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8212, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 20, i32 8212, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 21, i32 8212, i32 1, i32 1 }, %struct.uniphier_reset_data { i32 28, i32 8212, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 30, i32 8212, i32 8, i32 0 }, %struct.uniphier_reset_data { i32 40, i32 8192, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@uniphier_ld11_sys_reset_data = internal constant { [9 x %struct.uniphier_reset_data], [48 x i8] } { [9 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 8204, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 8204, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8200, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 41, i32 8200, i32 1, i32 1 }, %struct.uniphier_reset_data { i32 42, i32 8208, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@uniphier_ld20_sys_reset_data = internal constant { [15 x %struct.uniphier_reset_data], [48 x i8] } { [15 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 8204, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 8204, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 8204, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8204, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8204, i32 13, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8204, i32 14, i32 1 }, %struct.uniphier_reset_data { i32 19, i32 8204, i32 15, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8204, i32 4, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8200, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 41, i32 8200, i32 1, i32 1 }, %struct.uniphier_reset_data { i32 42, i32 8208, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@uniphier_pxs3_sys_reset_data = internal constant { [19 x %struct.uniphier_reset_data], [80 x i8] } { [19 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 2, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 8204, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 8204, i32 10, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 8204, i32 12, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8204, i32 4, i32 1 }, %struct.uniphier_reset_data { i32 13, i32 8204, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8204, i32 16, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8204, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8204, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 20, i32 8204, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 21, i32 8204, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8204, i32 3, i32 1 }, %struct.uniphier_reset_data { i32 28, i32 8204, i32 7, i32 1 }, %struct.uniphier_reset_data { i32 29, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 30, i32 8204, i32 21, i32 1 }, %struct.uniphier_reset_data { i32 40, i32 8200, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 42, i32 8208, i32 2, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@uniphier_nx1_sys_reset_data = internal constant { [10 x %struct.uniphier_reset_data], [32 x i8] } { [10 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 4, i32 8200, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 8204, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 8204, i32 16, i32 1 }, %struct.uniphier_reset_data { i32 16, i32 8204, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 17, i32 8204, i32 25, i32 1 }, %struct.uniphier_reset_data { i32 18, i32 8204, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 24, i32 8204, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 52, i32 8208, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 58, i32 8208, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@uniphier_ld4_mio_reset_data = internal constant { [15 x %struct.uniphier_reset_data], [48 x i8] } { [15 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 272, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 784, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 2, i32 1296, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 3, i32 272, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 784, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 5, i32 1296, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 640, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 272, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 276, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 788, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 10, i32 1300, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 272, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 13, i32 784, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 1296, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@uniphier_pro5_sd_reset_data = internal constant { [4 x %struct.uniphier_reset_data], [32 x i8] } { [4 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 272, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 784, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 640, i32 0, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@uniphier_ld4_peri_reset_data = internal constant { [11 x %struct.uniphier_reset_data], [48 x i8] } { [11 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 276, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 276, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 2, i32 276, i32 21, i32 1 }, %struct.uniphier_reset_data { i32 3, i32 276, i32 22, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 276, i32 5, i32 1 }, %struct.uniphier_reset_data { i32 5, i32 276, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 276, i32 7, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 276, i32 8, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 276, i32 9, i32 1 }, %struct.uniphier_reset_data { i32 11, i32 272, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@uniphier_pro4_peri_reset_data = internal constant { [17 x %struct.uniphier_reset_data], [80 x i8] } { [17 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 276, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 1, i32 276, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 2, i32 276, i32 21, i32 1 }, %struct.uniphier_reset_data { i32 3, i32 276, i32 22, i32 1 }, %struct.uniphier_reset_data { i32 4, i32 276, i32 24, i32 1 }, %struct.uniphier_reset_data { i32 5, i32 276, i32 25, i32 1 }, %struct.uniphier_reset_data { i32 6, i32 276, i32 26, i32 1 }, %struct.uniphier_reset_data { i32 7, i32 276, i32 27, i32 1 }, %struct.uniphier_reset_data { i32 8, i32 276, i32 28, i32 1 }, %struct.uniphier_reset_data { i32 9, i32 276, i32 29, i32 1 }, %struct.uniphier_reset_data { i32 10, i32 276, i32 30, i32 1 }, %struct.uniphier_reset_data { i32 11, i32 272, i32 17, i32 1 }, %struct.uniphier_reset_data { i32 12, i32 272, i32 18, i32 1 }, %struct.uniphier_reset_data { i32 13, i32 272, i32 19, i32 1 }, %struct.uniphier_reset_data { i32 14, i32 272, i32 20, i32 1 }, %struct.uniphier_reset_data { i32 15, i32 276, i32 14, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@uniphier_ld11_adamv_reset_data = internal constant { [2 x %struct.uniphier_reset_data], [32 x i8] } { [2 x %struct.uniphier_reset_data] [%struct.uniphier_reset_data { i32 0, i32 16, i32 6, i32 1 }, %struct.uniphier_reset_data { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"uniphier_reset_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 513, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 516, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"uniphier_reset_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 384, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 354, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 361, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"uniphier_reset_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 338, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 293, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 334, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"uniphier_ld4_sys_reset_data\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 44, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"uniphier_pro4_sys_reset_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 50, i32 41 }
@___asan_gen_.64 = private unnamed_addr constant [29 x i8] c"uniphier_pro5_sys_reset_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 64, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"uniphier_pxs2_sys_reset_data\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 75, i32 41 }
@___asan_gen_.70 = private unnamed_addr constant [29 x i8] c"uniphier_ld11_sys_reset_data\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 92, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant [29 x i8] c"uniphier_ld20_sys_reset_data\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 104, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant [29 x i8] c"uniphier_pxs3_sys_reset_data\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 122, i32 41 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"uniphier_nx1_sys_reset_data\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 144, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant [28 x i8] c"uniphier_ld4_mio_reset_data\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 176, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"uniphier_pro5_sd_reset_data\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 194, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant [29 x i8] c"uniphier_ld4_peri_reset_data\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 217, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant [30 x i8] c"uniphier_pro4_peri_reset_data\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 231, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [31 x i8] c"uniphier_ld11_adamv_reset_data\00", align 1
@___asan_gen_.95 = private constant [34 x i8] c"../drivers/reset/reset-uniphier.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 252, i32 41 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_uniphier_reset_driver_exit, ptr @__initcall__kmod_reset_uniphier__172_520_uniphier_reset_driver_init6, ptr @uniphier_reset_driver_exit, ptr @uniphier_reset_probe._entry, ptr @uniphier_reset_probe._entry_ptr, ptr @uniphier_reset_status._entry, ptr @uniphier_reset_status._entry_ptr, ptr @uniphier_reset_update._entry, ptr @uniphier_reset_update._entry_ptr, ptr @uniphier_reset_driver, ptr @.str, ptr @uniphier_reset_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @uniphier_reset_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @uniphier_ld4_sys_reset_data, ptr @uniphier_pro4_sys_reset_data, ptr @uniphier_pro5_sys_reset_data, ptr @uniphier_pxs2_sys_reset_data, ptr @uniphier_ld11_sys_reset_data, ptr @uniphier_ld20_sys_reset_data, ptr @uniphier_pxs3_sys_reset_data, ptr @uniphier_nx1_sys_reset_data, ptr @uniphier_ld4_mio_reset_data, ptr @uniphier_pro5_sd_reset_data, ptr @uniphier_ld4_peri_reset_data, ptr @uniphier_pro4_peri_reset_data, ptr @uniphier_ld11_adamv_reset_data], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_reset_match to i32), i32 6076, i32 7584, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_reset_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_reset_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_reset_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_sys_reset_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_sys_reset_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro5_sys_reset_data to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_sys_reset_data to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld11_sys_reset_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld20_sys_reset_data to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs3_sys_reset_data to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_nx1_sys_reset_data to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_mio_reset_data to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro5_sd_reset_data to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_peri_reset_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_peri_reset_data to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld11_adamv_reset_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_reset_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_reset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_reset_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !72

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call25 = tail call ptr @of_get_parent(ptr noundef %1) #6
  %call26 = tail call ptr @syscon_node_to_regmap(ptr noundef %call25) #6
  tail call void @of_node_put(ptr noundef %call25) #6
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %2) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #6
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %for.cond.preheader

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end34
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not88 = icmp eq i32 %4, -1
  br i1 %cmp.not88, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %5 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ %4, %for.cond.preheader.for.body_crit_edge ]
  %nr_resets.090 = phi i32 [ %6, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %p.089 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw i32 %5, 1
  %6 = tail call i32 @llvm.umax.i32(i32 %nr_resets.090, i32 %add)
  %incdec.ptr = getelementptr %struct.uniphier_reset_data, ptr %p.089, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %8, -1
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nr_resets.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %6, %for.body.for.end_crit_edge ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uniphier_reset_ops, ptr %call.i, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  %owner43 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %owner43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %owner43, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node46 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %of_node46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node46, align 4
  %nr_resets48 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %nr_resets48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %nr_resets.0.lcssa, ptr %nr_resets48, align 4
  %dev49 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %dev49, align 4
  %regmap50 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %regmap50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call26, ptr %regmap50, align 4
  %data51 = getelementptr inbounds %struct.uniphier_reset_priv, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %data51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %data51, align 4
  %call54 = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end34.cleanup_crit_edge, %do.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %2, %do.end31 ], [ %call54, %for.end ], [ -12, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not26.i = icmp eq i32 %3, -1
  br i1 %cmp.not26.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %4 = phi i32 [ %15, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %p.027.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %id)
  %cmp3.not.i = icmp eq i32 %4, %id
  br i1 %cmp3.not.i, label %cleanup.thread.i, label %for.inc.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %bit.i = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.027.i, i32 0, i32 2
  %5 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %6
  %flags.i = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.027.i, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %9 = and i32 %8, 1
  %sext.i = sub nsw i32 0, %9
  %val.1.i = xor i32 %shl.i, %sext.i
  %regmap.i = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.027.i, i32 0, i32 1
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %shl.i, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %uniphier_reset_update.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.uniphier_reset_data, ptr %p.027.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %15, -1
  br i1 %cmp.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %id) #9
  br label %uniphier_reset_update.exit

uniphier_reset_update.exit:                       ; preds = %do.end.i, %cleanup.thread.i
  %retval.2.i = phi i32 [ -22, %do.end.i ], [ %call.i.i, %cleanup.thread.i ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not26.i = icmp eq i32 %3, -1
  br i1 %cmp.not26.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %4 = phi i32 [ %15, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %p.027.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %id)
  %cmp3.not.i = icmp eq i32 %4, %id
  br i1 %cmp3.not.i, label %cleanup.thread.i, label %for.inc.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %bit.i = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.027.i, i32 0, i32 2
  %5 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %6
  %flags.i = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.027.i, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %9 = and i32 %8, 1
  %sext.i.not = add nsw i32 %9, -1
  %val.1.i = xor i32 %sext.i.not, %shl.i
  %regmap.i = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.027.i, i32 0, i32 1
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %shl.i, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %uniphier_reset_update.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.uniphier_reset_data, ptr %p.027.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %15, -1
  br i1 %cmp.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %id) #9
  br label %uniphier_reset_update.exit

uniphier_reset_update.exit:                       ; preds = %do.end.i, %cleanup.thread.i
  %retval.2.i = phi i32 [ -22, %do.end.i ], [ %call.i.i, %cleanup.thread.i ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not31 = icmp eq i32 %3, -1
  br i1 %cmp.not31, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.032 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !73
  %5 = ptrtoint ptr %p.032 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p.032, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %id)
  %cmp3.not = icmp eq i32 %6, %id
  br i1 %cmp3.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %regmap = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.032, i32 0, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %bit = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.032, i32 0, i32 2
  %13 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %14
  %and = and i32 %shl, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6 = icmp ne i32 %and, 0
  %flags = getelementptr inbounds %struct.uniphier_reset_data, ptr %p.032, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and8 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %spec.select = xor i1 %tobool6, %tobool9.not
  %asserted.0 = zext i1 %spec.select to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end5, %if.end.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call, %if.end.cleanup.thread_crit_edge ], [ %asserted.0, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %cleanup17

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  %incdec.ptr = getelementptr %struct.uniphier_reset_data, ptr %p.032, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %18, -1
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.uniphier_reset_priv, ptr %rcdev, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef %id) #9
  br label %cleanup17

cleanup17:                                        ; preds = %do.end, %cleanup.thread
  %retval.2 = phi i32 [ -22, %do.end ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_reset_uniphier__172_520_uniphier_reset_driver_init6, !1, !"__initcall__kmod_reset_uniphier__172_520_uniphier_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-uniphier.c", i32 520, i32 1}
!2 = !{ptr @__exitcall_uniphier_reset_driver_exit, !1, !"__exitcall_uniphier_reset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author173, !4, !"__UNIQUE_ID_author173", i1 false, i1 false}
!4 = !{!"../drivers/reset/reset-uniphier.c", i32 522, i32 1}
!5 = !{ptr @__UNIQUE_ID_description174, !6, !"__UNIQUE_ID_description174", i1 false, i1 false}
!6 = !{!"../drivers/reset/reset-uniphier.c", i32 523, i32 1}
!7 = !{ptr @__UNIQUE_ID_file175, !8, !"__UNIQUE_ID_file175", i1 false, i1 false}
!8 = !{!"../drivers/reset/reset-uniphier.c", i32 524, i32 1}
!9 = !{ptr @__UNIQUE_ID_license176, !8, !"__UNIQUE_ID_license176", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/reset/reset-uniphier.c", i32 516, i32 11}
!12 = !{ptr @uniphier_reset_driver, !13, !"uniphier_reset_driver", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-uniphier.c", i32 513, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/reset/reset-uniphier.c", i32 354, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/reset/reset-uniphier.c", i32 361, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @uniphier_reset_probe._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @uniphier_reset_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @uniphier_reset_ops, !24, !"uniphier_reset_ops", i1 false, i1 false}
!24 = !{!"../drivers/reset/reset-uniphier.c", i32 338, i32 39}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/reset/reset-uniphier.c", i32 293, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @uniphier_reset_update._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @uniphier_reset_update._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/reset/reset-uniphier.c", i32 334, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @uniphier_reset_status._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @uniphier_reset_status._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @uniphier_reset_match, !36, !"uniphier_reset_match", i1 false, i1 false}
!36 = !{!"../drivers/reset/reset-uniphier.c", i32 384, i32 34}
!37 = !{ptr @uniphier_ld4_sys_reset_data, !38, !"uniphier_ld4_sys_reset_data", i1 false, i1 false}
!38 = !{!"../drivers/reset/reset-uniphier.c", i32 44, i32 41}
!39 = !{ptr @uniphier_pro4_sys_reset_data, !40, !"uniphier_pro4_sys_reset_data", i1 false, i1 false}
!40 = !{!"../drivers/reset/reset-uniphier.c", i32 50, i32 41}
!41 = !{ptr @uniphier_pro5_sys_reset_data, !42, !"uniphier_pro5_sys_reset_data", i1 false, i1 false}
!42 = !{!"../drivers/reset/reset-uniphier.c", i32 64, i32 41}
!43 = !{ptr @uniphier_pxs2_sys_reset_data, !44, !"uniphier_pxs2_sys_reset_data", i1 false, i1 false}
!44 = !{!"../drivers/reset/reset-uniphier.c", i32 75, i32 41}
!45 = !{ptr @uniphier_ld11_sys_reset_data, !46, !"uniphier_ld11_sys_reset_data", i1 false, i1 false}
!46 = !{!"../drivers/reset/reset-uniphier.c", i32 92, i32 41}
!47 = !{ptr @uniphier_ld20_sys_reset_data, !48, !"uniphier_ld20_sys_reset_data", i1 false, i1 false}
!48 = !{!"../drivers/reset/reset-uniphier.c", i32 104, i32 41}
!49 = !{ptr @uniphier_pxs3_sys_reset_data, !50, !"uniphier_pxs3_sys_reset_data", i1 false, i1 false}
!50 = !{!"../drivers/reset/reset-uniphier.c", i32 122, i32 41}
!51 = !{ptr @uniphier_nx1_sys_reset_data, !52, !"uniphier_nx1_sys_reset_data", i1 false, i1 false}
!52 = !{!"../drivers/reset/reset-uniphier.c", i32 144, i32 41}
!53 = !{ptr @uniphier_ld4_mio_reset_data, !54, !"uniphier_ld4_mio_reset_data", i1 false, i1 false}
!54 = !{!"../drivers/reset/reset-uniphier.c", i32 176, i32 41}
!55 = !{ptr @uniphier_pro5_sd_reset_data, !56, !"uniphier_pro5_sd_reset_data", i1 false, i1 false}
!56 = !{!"../drivers/reset/reset-uniphier.c", i32 194, i32 41}
!57 = !{ptr @uniphier_ld4_peri_reset_data, !58, !"uniphier_ld4_peri_reset_data", i1 false, i1 false}
!58 = !{!"../drivers/reset/reset-uniphier.c", i32 217, i32 41}
!59 = !{ptr @uniphier_pro4_peri_reset_data, !60, !"uniphier_pro4_peri_reset_data", i1 false, i1 false}
!60 = !{!"../drivers/reset/reset-uniphier.c", i32 231, i32 41}
!61 = !{ptr @uniphier_ld11_adamv_reset_data, !62, !"uniphier_ld11_adamv_reset_data", i1 false, i1 false}
!62 = !{!"../drivers/reset/reset-uniphier.c", i32 252, i32 41}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"auto-init"}
