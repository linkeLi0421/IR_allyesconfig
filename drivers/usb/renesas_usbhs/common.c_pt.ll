; ModuleID = '/llk/IR_all_yes/drivers/usb/renesas_usbhs/common.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_driver_pipe_config = type { i8, i16, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.renesas_usbhs_platform_info = type { %struct.renesas_usbhs_platform_callback, %struct.renesas_usbhs_driver_param }
%struct.renesas_usbhs_platform_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.usbhs_mod_info = type { [2 x ptr], ptr, ptr, ptr }
%struct.usbhs_pipe_info = type { ptr, i32, ptr }
%struct.usbhs_fifo_info = type { %struct.usbhs_fifo, [4 x %struct.usbhs_fifo] }
%struct.usbhs_fifo = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.sh_dmae_slave, %struct.sh_dmae_slave }
%struct.sh_dmae_slave = type { %struct.shdma_slave }
%struct.shdma_slave = type { i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }

@usbhs_bus_send_sof_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbhs should be reset\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usbhs_bus_send_sof_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/renesas_usbhs/common.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhs_bus_send_sof_enable._entry_ptr = internal global ptr @usbhs_bus_send_sof_enable._entry, section ".printk_index", align 4
@usbhs_set_device_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot set speed to unknown device %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbhs_set_device_config\00", [40 x i8] zeroinitializer }, align 32
@usbhs_set_device_config._entry_ptr = internal global ptr @usbhs_set_device_config._entry, section ".printk_index", align 4
@usbhs_set_device_config._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported hub number %d\0A\00", [37 x i8] zeroinitializer }, align 32
@usbhs_set_device_config._entry_ptr.9 = internal global ptr @usbhs_set_device_config._entry.7, section ".printk_index", align 4
@usbhs_set_device_config._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported speed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@usbhs_set_device_config._entry_ptr.12 = internal global ptr @usbhs_set_device_config._entry.10, section ".printk_index", align 4
@__initcall__kmod_renesas_usbhs__238_832_renesas_usbhs_driver_init6 = internal global ptr @renesas_usbhs_driver_init, section ".initcall6.init", align 4
@renesas_usbhs_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usbhs_probe, ptr @usbhs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usbhs_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbhsc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_renesas_usbhs_driver_exit = internal global ptr @renesas_usbhs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [59 x i8] c"renesas_usbhs.file=drivers/usb/renesas_usbhs/renesas_usbhs\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [26 x i8] c"renesas_usbhs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [45 x i8] c"renesas_usbhs.description=Renesas USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [74 x i8] c"renesas_usbhs.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas_usbhs\00", [18 x i8] zeroinitializer }, align 32
@usbhs_of_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_with_pll_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_with_pll_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usbhs-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_with_pll_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen2_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rcar_gen3_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rza1-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rza1_plat_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rza2-usbhs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usbhs_rza2_plat_info }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@usbhsc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @usbhsc_suspend, ptr @usbhsc_resume, ptr @usbhsc_suspend, ptr @usbhsc_resume, ptr @usbhsc_suspend, ptr @usbhsc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@usbhs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 606, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no platform information\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbhs_probe\00", [20 x i8] zeroinitializer }, align 32
@usbhs_probe._entry_ptr = internal global ptr @usbhs_probe._entry, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@usbhs_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 641, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no platform callbacks\0A\00", [41 x i8] zeroinitializer }, align 32
@usbhs_probe._entry_ptr.19 = internal global ptr @usbhs_probe._entry.17, section ".printk_index", align 4
@usbhsc_new_pipe = internal global { [16 x %struct.renesas_usbhs_driver_pipe_config], [32 x i8] } { [16 x %struct.renesas_usbhs_driver_pipe_config] [%struct.renesas_usbhs_driver_pipe_config { i8 0, i16 64, i8 0, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 8, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 40, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 72, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 88, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 104, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 4, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 5, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 6, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 120, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -120, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -104, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -88, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -72, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -56, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 -40, i8 1 }], [32 x i8] zeroinitializer }, align 32
@usbhsc_default_pipe = internal global { [10 x %struct.renesas_usbhs_driver_pipe_config], [36 x i8] } { [10 x %struct.renesas_usbhs_driver_pipe_config] [%struct.renesas_usbhs_driver_pipe_config { i8 0, i16 64, i8 0, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 8, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 1, i16 1024, i8 24, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 40, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 56, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 2, i16 512, i8 72, i8 1 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 4, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 5, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 6, i8 0 }, %struct.renesas_usbhs_driver_pipe_config { i8 3, i16 64, i8 7, i8 0 }], [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,buswait\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"renesas,enable\00", [17 x i8] zeroinitializer }, align 32
@usbhs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&priv->notify_hotplug_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@usbhs_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&priv->notify_hotplug_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@usbhs_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbhs_priv_to_lock(priv)\00", [39 x i8] zeroinitializer }, align 32
@usbhs_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.2, i32 709, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"USB function not selected (GPIO)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usbhs_probe._entry_ptr.30 = internal global ptr @usbhs_probe._entry.27, section ".printk_index", align 4
@usbhs_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.2, i32 724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"platform init failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@usbhs_probe._entry_ptr.33 = internal global ptr @usbhs_probe._entry.31, section ".printk_index", align 4
@usbhs_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.2, i32 745, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"probed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usbhs_probe._entry_ptr.37 = internal global ptr @usbhs_probe._entry.34, section ".printk_index", align 4
@usbhs_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.15, ptr @.str.2, i32 760, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"probe failed (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@usbhs_probe._entry_ptr.40 = internal global ptr @usbhs_probe._entry.38, section ".printk_index", align 4
@usbhsc_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 464, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"USB cable plugged in doesn't match the selected role!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usbhsc_hotplug\00", [17 x i8] zeroinitializer }, align 32
@usbhsc_hotplug._entry_ptr = internal global ptr @usbhsc_hotplug._entry, section ".printk_index", align 4
@usbhsc_hotplug.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s enable\0A\00", [21 x i8] zeroinitializer }, align 32
@usbhsc_hotplug.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s disable\0A\00", [20 x i8] zeroinitializer }, align 32
@usbhs_remove.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbhs_remove\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb remove\0A\00", [20 x i8] zeroinitializer }, align 32
@usbhs_rcar_gen3_with_pll_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rcar_gen2_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rcar_gen3_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rza1_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@usbhs_rza2_plat_info = external dso_local constant %struct.renesas_usbhs_platform_info, align 4
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 188, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 240, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 245, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 260, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"renesas_usbhs_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 822, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 824, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"usbhs_of_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 535, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"usbhsc_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 820, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 606, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 624, i32 46 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 641, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"usbhsc_new_pipe\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 381, i32 48 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"usbhsc_default_pipe\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 367, i32 48 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 656, i32 46 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 658, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 672, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 673, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 709, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 724, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 745, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 760, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 463, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 473, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 487, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [38 x i8] c"../drivers/usb/renesas_usbhs/common.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 769, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_renesas_usbhs_driver_exit, ptr @__initcall__kmod_renesas_usbhs__238_832_renesas_usbhs_driver_init6, ptr @renesas_usbhs_driver_exit, ptr @usbhs_bus_send_sof_enable._entry, ptr @usbhs_bus_send_sof_enable._entry_ptr, ptr @usbhs_probe._entry, ptr @usbhs_probe._entry.17, ptr @usbhs_probe._entry.27, ptr @usbhs_probe._entry.31, ptr @usbhs_probe._entry.34, ptr @usbhs_probe._entry.38, ptr @usbhs_probe._entry_ptr, ptr @usbhs_probe._entry_ptr.19, ptr @usbhs_probe._entry_ptr.30, ptr @usbhs_probe._entry_ptr.33, ptr @usbhs_probe._entry_ptr.37, ptr @usbhs_probe._entry_ptr.40, ptr @usbhs_set_device_config._entry, ptr @usbhs_set_device_config._entry.10, ptr @usbhs_set_device_config._entry.7, ptr @usbhs_set_device_config._entry_ptr, ptr @usbhs_set_device_config._entry_ptr.12, ptr @usbhs_set_device_config._entry_ptr.9, ptr @usbhsc_hotplug._entry, ptr @usbhsc_hotplug._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @renesas_usbhs_driver, ptr @.str.13, ptr @usbhs_of_match, ptr @usbhsc_pm_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @usbhsc_new_pipe, ptr @usbhsc_default_pipe, ptr @.str.20, ptr @.str.21, ptr @usbhs_probe.__key, ptr @.str.22, ptr @usbhs_probe.__key.23, ptr @.str.24, ptr @usbhs_probe.__key.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_bus_send_sof_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_set_device_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_set_device_config._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_set_device_config._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_usbhs_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_of_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsc_new_pipe to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsc_default_pipe to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsc_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @usbhs_read(ptr nocapture noundef readonly %priv, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !108
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_write(ptr nocapture noundef readonly %priv, i32 noundef %reg, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %2 = tail call i16 @llvm.bswap.i16(i16 %data) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_bset(ptr nocapture noundef readonly %priv, i32 noundef %reg, i16 noundef zeroext %mask, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !108
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %neg = xor i16 %mask, -1
  %and = and i16 %3, %neg
  %and513 = and i16 %data, %mask
  %or14 = or i16 %and, %and513
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %6 = tail call i16 @llvm.bswap.i16(i16 %or14) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15, i16 %6) #8, !srcloc !111
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_pdev_to_priv(ptr nocapture noundef readonly %pdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_get_id_as_gadget(ptr nocapture noundef readnone %pdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_sys_host_ctrl(ptr nocapture noundef readonly %priv, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 225
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %3 = and i16 %2, 3839
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %or14.i = or i16 %4, %spec.select
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %7 = tail call i16 @llvm.bswap.i16(i16 %or14.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %7) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_sys_function_ctrl(ptr nocapture noundef readonly %priv, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %has_cnen = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %has_cnen to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %has_cnen, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i16 241, i16 497
  %spec.select11 = select i1 %tobool.not, i16 129, i16 385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool5.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool5.not, i16 0, i16 %spec.select11
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #8, !srcloc !108
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %neg.i = xor i16 %spec.select, -1
  %and.i = and i16 %5, %neg.i
  %and513.i = and i16 %cond, %spec.select
  %or14.i = or i16 %and513.i, %and.i
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %8 = tail call i16 @llvm.bswap.i16(i16 %or14.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %8) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_sys_function_pullup(ptr nocapture noundef readonly %priv, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool.not, i16 0, i16 16
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %3 = and i16 %2, -4097
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %or14.i = or i16 %4, %conv
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %7 = tail call i16 @llvm.bswap.i16(i16 %or14.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %7) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_sys_set_test_mode(ptr nocapture noundef readonly %priv, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %2 = tail call i16 @llvm.bswap.i16(i16 %mode) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_frame_get_num(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %3 = and i16 %2, -249
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %and = zext i16 %4 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_usbreq_get_val(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !108
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %4 = lshr i16 %3, 8
  %conv1 = trunc i16 %4 to i8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %bRequest, align 1
  %conv5 = trunc i16 %3 to i8
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv5, ptr %req, align 1
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 86
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i17) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %wValue, align 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 88
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i18) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %wIndex, align 1
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %add.ptr.i19 = getelementptr i8, ptr %16, i32 90
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %wLength, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_usbreq_set_val(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bRequest, align 1
  %conv = zext i8 %1 to i16
  %shl = shl nuw i16 %conv, 8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req, align 1
  %conv1 = zext i8 %3 to i16
  %or = or i16 %shl, %conv1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %6 = tail call i16 @llvm.bswap.i16(i16 %or) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %6) #8, !srcloc !111
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wValue, align 1
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %add.ptr.i11 = getelementptr i8, ptr %10, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 %8) #8, !srcloc !111
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wIndex, align 1
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 %12) #8, !srcloc !111
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wLength, align 1
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %add.ptr.i13 = getelementptr i8, ptr %18, i32 90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13, i16 %16) #8, !srcloc !111
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 96
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %22 = or i16 %21, 64
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %24, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 %22) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_bus_send_sof_enable(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %3 = and i16 %2, 20480
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp.not = icmp eq i16 %3, 16384
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %9 = and i16 %8, -20481
  %10 = or i16 %9, 4096
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 %10) #8, !srcloc !111
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_bus_send_reset(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %3 = and i16 %2, -20481
  %4 = or i16 %3, 16384
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 %4) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_bus_get_speed(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !108
  %3 = lshr i16 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %4 = and i16 %3, 7
  %and = zext i16 %4 to i32
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  %retval.0 = select i1 %5, i32 %and, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_vbus_ctrl(ptr noundef readonly %priv, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.cond.end7_crit_edge, label %cond.false

entry.cond.end7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end7

cond.false:                                       ; preds = %entry
  %pfunc = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfunc, align 4
  %set_vbus = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_vbus, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %cond.false.cond.end7_crit_edge, label %cond.false4

cond.false.cond.end7_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end7

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %enable) #8
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false4, %cond.false.cond.end7_crit_edge, %entry.cond.end7_crit_edge
  %cond8 = phi i32 [ -19, %entry.cond.end7_crit_edge ], [ %call, %cond.false4 ], [ 0, %cond.false.cond.end7_crit_edge ]
  ret i32 %cond8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_set_device_config(ptr nocapture noundef readonly %priv, i32 noundef %devnum, i16 noundef zeroext %upphub, i16 noundef zeroext %hubport, i16 noundef zeroext %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mul = shl i32 %devnum, 1
  %add = add i32 %mul, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %devnum)
  %cmp = icmp sgt i32 %devnum, 10
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %devnum) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %upphub)
  %cmp2 = icmp ugt i16 %upphub, 10
  br i1 %cmp2, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %upphub to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %speed.off = add i16 %speed, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %speed.off)
  %switch = icmp ult i16 %speed.off, 3
  br i1 %switch, label %sw.epilog, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = zext i16 %speed to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv10) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %and = shl nuw nsw i16 %upphub, 11
  %shl = and i16 %and, 30720
  %2 = shl i16 %hubport, 8
  %3 = and i16 %2, 1792
  %or = or i16 %3, %shl
  %4 = shl nuw nsw i16 %speed, 6
  %5 = and i16 %4, 192
  %or24 = or i16 %or, %5
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %8 = tail call i16 @llvm.bswap.i16(i16 %or24) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %8) #8, !srcloc !111
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end7 ], [ -5, %do.end15 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_xxxsts_clear(ptr nocapture noundef readonly %priv, i16 noundef zeroext %sts_reg, i16 noundef zeroext %bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_size = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %pipe_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe_size, align 4
  %sub = sub i32 31, %1
  %shr = lshr i32 -1, %sub
  %conv1 = zext i16 %sts_reg to i32
  %conv2 = zext i16 %bit to i32
  %shl = shl nuw i32 1, %conv2
  %neg = xor i32 %shl, -1
  %and4 = and i32 %shr, %neg
  %conv5 = trunc i32 %and4 to i16
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv5) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #8, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhsc_schedule_notify_hotplug(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %detection_delay = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %detection_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %detection_delay, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #8
  %notify_hotplug_work = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %notify_hotplug_work, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_usbhs_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @renesas_usbhs_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @renesas_usbhs_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @renesas_usbhs_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !112
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %dev_of_node.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %dev_of_node.exit.if.else_crit_edge, label %if.then

dev_of_node.exit.if.else_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef nonnull %dev1) #8
  br label %if.end

if.else:                                          ; preds = %dev_of_node.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %info.0 = phi ptr [ %call2, %if.then ], [ %4, %if.else ]
  %tobool4.not = icmp eq ptr %info.0, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 448, i32 noundef 3520) #8
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  br i1 %tobool.not.i, label %if.end20.dev_of_node.exit297_crit_edge, label %if.end.i295

if.end20.dev_of_node.exit297_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit297

if.end.i295:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i294 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node.i294 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i294, align 8
  br label %dev_of_node.exit297

dev_of_node.exit297:                              ; preds = %if.end.i295, %if.end20.dev_of_node.exit297_crit_edge
  %retval.0.i296 = phi ptr [ %8, %if.end.i295 ], [ null, %if.end20.dev_of_node.exit297_crit_edge ]
  %call.i298 = tail call ptr @of_find_property(ptr noundef %retval.0.i296, ptr noundef nonnull @.str.16, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i298, null
  br i1 %tobool.i.not, label %dev_of_node.exit297.if.end31_crit_edge, label %if.then23

dev_of_node.exit297.if.end31_crit_edge:           ; preds = %dev_of_node.exit297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then23:                                        ; preds = %dev_of_node.exit297
  %call24 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev1, i32 noundef 0) #8
  %edev = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call24, ptr %edev, align 4
  %cmp.i299 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.then27, label %if.then23.if.end31_crit_edge

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.then23.if.end31_crit_edge, %dev_of_node.exit297.if.end31_crit_edge
  %call.i300 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev1, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %rsts = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %rsts to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i300, ptr %rsts, align 4
  %cmp.i301 = icmp ugt ptr %call.i300, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call.i300 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %dparam = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 3
  %driver_param = getelementptr inbounds %struct.renesas_usbhs_platform_info, ptr %info.0, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %dparam, ptr %driver_param, i32 56)
  %get_id = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %info.0, i32 0, i32 4
  %14 = ptrtoint ptr %get_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_id, align 4
  %tobool39.not = icmp eq ptr %15, null
  br i1 %tobool39.not, label %do.end43, label %if.end44

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  %pfunc = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %pfunc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %info.0, ptr %pfunc, align 4
  %has_new_pipe_configs = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 3, i32 13
  %17 = ptrtoint ptr %has_new_pipe_configs to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %has_new_pipe_configs, align 4
  %18 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool47.not = icmp eq i8 %18, 0
  br i1 %tobool47.not, label %if.else51, label %if.end44.if.end61.sink.split_crit_edge

if.end44.if.end61.sink.split_crit_edge:           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.sink.split

if.else51:                                        ; preds = %if.end44
  %19 = ptrtoint ptr %dparam to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dparam, align 4
  %tobool54.not = icmp eq ptr %20, null
  br i1 %tobool54.not, label %if.else51.if.end61.sink.split_crit_edge, label %if.else51.if.end61_crit_edge

if.else51.if.end61_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.else51.if.end61.sink.split_crit_edge:          ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %if.else51.if.end61.sink.split_crit_edge, %if.end44.if.end61.sink.split_crit_edge
  %usbhsc_default_pipe.sink = phi ptr [ @usbhsc_new_pipe, %if.end44.if.end61.sink.split_crit_edge ], [ @usbhsc_default_pipe, %if.else51.if.end61.sink.split_crit_edge ]
  %.sink = phi i32 [ 16, %if.end44.if.end61.sink.split_crit_edge ], [ 10, %if.else51.if.end61.sink.split_crit_edge ]
  %21 = ptrtoint ptr %dparam to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %usbhsc_default_pipe.sink, ptr %dparam, align 4
  %pipe_size59 = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %pipe_size59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %pipe_size59, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %if.else51.if.end61_crit_edge
  %pio_dma_border = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %pio_dma_border to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pio_dma_border, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool63.not = icmp eq i32 %24, 0
  br i1 %tobool63.not, label %if.then64, label %if.end61.if.end67_crit_edge

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %pio_dma_border to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 64, ptr %pio_dma_border, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  br i1 %tobool.not.i, label %if.end67.dev_of_node.exit306_crit_edge, label %if.end.i304

if.end67.dev_of_node.exit306_crit_edge:           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit306

if.end.i304:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i303 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node.i303 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node.i303, align 8
  br label %dev_of_node.exit306

dev_of_node.exit306:                              ; preds = %if.end.i304, %if.end67.dev_of_node.exit306_crit_edge
  %retval.0.i305 = phi ptr [ %27, %if.end.i304 ], [ null, %if.end67.dev_of_node.exit306_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i305, ptr noundef nonnull @.str.20, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool70.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool70.not, label %if.then71, label %dev_of_node.exit306.if.end73_crit_edge

dev_of_node.exit306.if.end73_crit_edge:           ; preds = %dev_of_node.exit306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then71:                                        ; preds = %dev_of_node.exit306
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp, align 4
  %buswait_bwait = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %buswait_bwait to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %buswait_bwait, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %dev_of_node.exit306.if.end73_crit_edge
  %call74 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef 1) #8
  %cmp.i307 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call74 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %32 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pfunc, align 4
  %get_vbus = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %get_vbus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_vbus, align 4
  %tobool80.not = icmp eq ptr %35, null
  br i1 %tobool80.not, label %if.end78.if.end85_crit_edge, label %if.then81

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %has_new_pipe_configs to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load83 = load i8, ptr %has_new_pipe_configs, align 4
  %bf.set = or i8 %bf.load83, 64
  store i8 %bf.set, ptr %has_new_pipe_configs, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end78.if.end85_crit_edge
  %irq86 = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %irq86 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call7, ptr %irq86, align 4
  %pdev87 = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %pdev87 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pdev, ptr %pdev87, align 4
  %notify_hotplug_work = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %notify_hotplug_work, i32 noundef 0) #8
  %39 = ptrtoint ptr %notify_hotplug_work to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %notify_hotplug_work, align 4
  %lockdep_map = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @usbhs_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry96 = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %entry96 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry96, ptr %entry96, align 4
  %prev.i = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry96, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @usbhsc_notify_hotplug, ptr %func, align 4
  %timer = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @usbhs_probe.__key.23) #8
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %call.i, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @usbhs_probe.__key.25, i16 noundef signext 3) #8
  %call111 = call i32 @usbhs_pipe_probe(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end85.cleanup_crit_edge, label %if.end114

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end114:                                        ; preds = %if.end85
  %call115 = call i32 @usbhs_fifo_probe(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end114.probe_end_pipe_exit_crit_edge, label %if.end118

if.end114.probe_end_pipe_exit_crit_edge:          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_end_pipe_exit

if.end118:                                        ; preds = %if.end114
  %call119 = call i32 @usbhs_mod_probe(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end118.probe_end_fifo_exit_crit_edge, label %if.end122

if.end118.probe_end_fifo_exit_crit_edge:          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_end_fifo_exit

if.end122:                                        ; preds = %if.end118
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %44 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rsts, align 4
  %call124 = call i32 @reset_control_deassert(ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end122.probe_fail_rst_crit_edge

if.end122.probe_fail_rst_crit_edge:               ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_fail_rst

if.end127:                                        ; preds = %if.end122
  %call128 = call fastcc i32 @usbhsc_clk_get(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.probe_fail_clks_crit_edge

if.end127.probe_fail_clks_crit_edge:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_fail_clks

if.end131:                                        ; preds = %if.end127
  call fastcc void @usbhs_sys_clock_ctrl(ptr noundef nonnull %call.i, i32 noundef 0)
  %tobool132.not = icmp eq ptr %call74, null
  br i1 %tobool132.not, label %if.end131.cond.false_crit_edge, label %if.then133

if.end131.cond.false_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.then133:                                       ; preds = %if.end131
  %call134 = call i32 @gpiod_get_value(ptr noundef nonnull %call74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %do.end140, label %if.then133.cond.false_crit_edge

if.then133.cond.false_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

do.end140:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  br label %probe_end_mod_exit

cond.false:                                       ; preds = %if.then133.cond.false_crit_edge, %if.end131.cond.false_crit_edge
  %46 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pfunc, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool145.not = icmp eq ptr %49, null
  br i1 %tobool145.not, label %cond.false.cond.false161_crit_edge, label %cond.end151

cond.false.cond.false161_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false161

cond.end151:                                      ; preds = %cond.false
  %call150 = call i32 %49(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp153 = icmp slt i32 %call150, 0
  br i1 %cmp153, label %do.end157, label %cond.end151.cond.false161_crit_edge

cond.end151.cond.false161_crit_edge:              ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false161

do.end157:                                        ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  br label %probe_end_mod_exit

cond.false161:                                    ; preds = %cond.end151.cond.false161_crit_edge, %cond.false.cond.false161_crit_edge
  %cond152312 = phi i32 [ %call150, %cond.end151.cond.false161_crit_edge ], [ 0, %cond.false.cond.false161_crit_edge ]
  %50 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pfunc, align 4
  %phy_reset = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy_reset, align 4
  %tobool163.not = icmp eq ptr %53, null
  br i1 %tobool163.not, label %cond.false161.cond.end171_crit_edge, label %cond.false165

cond.false161.cond.end171_crit_edge:              ; preds = %cond.false161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end171

cond.false165:                                    ; preds = %cond.false161
  call void @__sanitizer_cov_trace_pc() #10
  %call168 = call i32 %53(ptr noundef %pdev) #8
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false165, %cond.false161.cond.end171_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %54 = ptrtoint ptr %has_new_pipe_configs to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load175 = load i8, ptr %has_new_pipe_configs, align 4
  %55 = and i8 %bf.load175, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool179.not = icmp eq i8 %55, 0
  br i1 %tobool179.not, label %if.then180, label %if.else181

if.then180:                                       ; preds = %cond.end171
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @usbhsc_power_ctrl(ptr noundef nonnull %call.i, i32 noundef 1)
  call void @usbhs_mod_autonomy_mode(ptr noundef nonnull %call.i) #8
  br label %if.end182

if.else181:                                       ; preds = %cond.end171
  call void @__sanitizer_cov_trace_pc() #10
  call void @usbhs_mod_non_autonomy_mode(ptr noundef nonnull %call.i) #8
  br label %if.end182

if.end182:                                        ; preds = %if.else181, %if.then180
  %call183 = call i32 @usbhsc_schedule_notify_hotplug(ptr noundef %pdev)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.35) #11
  br label %cleanup

probe_end_mod_exit:                               ; preds = %do.end157, %do.end140
  %ret.0 = phi i32 [ -524, %do.end140 ], [ %call150, %do.end157 ]
  call fastcc void @usbhsc_clk_put(ptr noundef nonnull %call.i)
  br label %probe_fail_clks

probe_fail_clks:                                  ; preds = %probe_end_mod_exit, %if.end127.probe_fail_clks_crit_edge
  %ret.1 = phi i32 [ %call128, %if.end127.probe_fail_clks_crit_edge ], [ %ret.0, %probe_end_mod_exit ]
  %56 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rsts, align 4
  %call188 = call i32 @reset_control_assert(ptr noundef %57) #8
  br label %probe_fail_rst

probe_fail_rst:                                   ; preds = %probe_fail_clks, %if.end122.probe_fail_rst_crit_edge
  %ret.2 = phi i32 [ %call124, %if.end122.probe_fail_rst_crit_edge ], [ %ret.1, %probe_fail_clks ]
  call void @usbhs_mod_remove(ptr noundef nonnull %call.i) #8
  br label %probe_end_fifo_exit

probe_end_fifo_exit:                              ; preds = %probe_fail_rst, %if.end118.probe_end_fifo_exit_crit_edge
  %ret.3 = phi i32 [ %call119, %if.end118.probe_end_fifo_exit_crit_edge ], [ %ret.2, %probe_fail_rst ]
  call void @usbhs_fifo_remove(ptr noundef nonnull %call.i) #8
  br label %probe_end_pipe_exit

probe_end_pipe_exit:                              ; preds = %probe_end_fifo_exit, %if.end114.probe_end_pipe_exit_crit_edge
  %ret.4 = phi i32 [ %call115, %if.end114.probe_end_pipe_exit_crit_edge ], [ %ret.3, %probe_end_fifo_exit ]
  call void @usbhs_pipe_remove(ptr noundef nonnull %call.i) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %ret.4) #11
  br label %cleanup

cleanup:                                          ; preds = %probe_end_pipe_exit, %if.end182, %if.end85.cleanup_crit_edge, %if.then76, %do.end43, %if.then35, %if.then27, %if.then17, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %6, %if.then17 ], [ %10, %if.then27 ], [ %12, %if.then35 ], [ %31, %if.then76 ], [ %ret.4, %probe_end_pipe_exit ], [ %cond152312, %if.end182 ], [ -22, %do.end43 ], [ -22, %do.end ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call111, %if.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhs_remove.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhs_remove.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.46) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %runtime_pwctrl = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 3, i32 13
  %2 = ptrtoint ptr %runtime_pwctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %runtime_pwctrl, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %1, i32 noundef 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev7, i1 noundef zeroext true) #8
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end6.cond.end15_crit_edge, label %cond.false

if.end6.cond.end15_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false:                                       ; preds = %if.end6
  %pfunc = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfunc, align 4
  %hardware_exit = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hardware_exit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hardware_exit, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %cond.false.cond.end15_crit_edge, label %cond.false11

cond.false.cond.end15_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false11:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 %7(ptr noundef %pdev) #8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false11, %cond.false.cond.end15_crit_edge, %if.end6.cond.end15_crit_edge
  %8 = ptrtoint ptr %runtime_pwctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %runtime_pwctrl, align 4
  %9 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i, label %cond.end15.usbhsc_clk_put.exit_crit_edge, label %for.body.preheader.i

cond.end15.usbhsc_clk_put.exit_crit_edge:         ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhsc_clk_put.exit

for.body.preheader.i:                             ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.usbhs_priv, ptr %1, i32 0, i32 13, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_put(ptr noundef %11) #8
  %arrayidx.1.i = getelementptr %struct.usbhs_priv, ptr %1, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @clk_put(ptr noundef %13) #8
  br label %usbhsc_clk_put.exit

usbhsc_clk_put.exit:                              ; preds = %for.body.preheader.i, %cond.end15.usbhsc_clk_put.exit_crit_edge
  %rsts = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rsts, align 4
  %call17 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  tail call void @usbhs_mod_remove(ptr noundef %1) #8
  tail call void @usbhs_fifo_remove(ptr noundef %1) #8
  tail call void @usbhs_pipe_remove(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhsc_notify_hotplug(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  tail call fastcc void @usbhsc_hotplug(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_probe(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_fifo_probe(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_probe(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsc_clk_get(ptr noundef readonly %dev, ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multi_clks.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %multi_clks.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %multi_clks.i, align 4
  %1 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_of_node.exit_crit_edge, label %if.end.i

if.end.dev_of_node.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %if.end.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %if.end.dev_of_node.exit_crit_edge ]
  %call2 = tail call ptr @of_clk_get(ptr noundef %retval.0.i, i32 noundef 0) #8
  %clks = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %clks, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call2 to i32
  br label %return

if.end10:                                         ; preds = %dev_of_node.exit
  br i1 %tobool.not.i, label %if.end10.dev_of_node.exit43_crit_edge, label %if.end.i41

if.end10.dev_of_node.exit43_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit43

if.end.i41:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i40 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i40, align 8
  br label %dev_of_node.exit43

dev_of_node.exit43:                               ; preds = %if.end.i41, %if.end10.dev_of_node.exit43_crit_edge
  %retval.0.i42 = phi ptr [ %7, %if.end.i41 ], [ null, %if.end10.dev_of_node.exit43_crit_edge ]
  %call12 = tail call ptr @of_clk_get(ptr noundef %retval.0.i42, i32 noundef 1) #8
  %arrayidx14 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %arrayidx14, align 4
  %cmp = icmp eq ptr %call12, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %dev_of_node.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx14, align 4
  br label %return

if.else:                                          ; preds = %dev_of_node.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call12 to i32
  %cmp.i44 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i44, i32 %10, i32 0
  br label %return

return:                                           ; preds = %if.else, %if.then18, %if.then6, %entry.return_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ 0, %entry.return_crit_edge ], [ 0, %if.then18 ], [ %spec.select, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhs_sys_clock_ctrl(ptr nocapture noundef readonly %priv, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool.not, i16 0, i16 1024
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %3 = and i16 %2, -5
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %or14.i = or i16 %4, %conv
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %7 = tail call i16 @llvm.bswap.i16(i16 %or14.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %7) #8, !srcloc !111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsc_power_ctrl(ptr noundef readonly %priv, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev3, i32 noundef 4) #8
  %multi_clks.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %2 = ptrtoint ptr %multi_clks.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %multi_clks.i.i, align 4
  %3 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not.i = icmp eq i8 %3, 0
  br i1 %tobool.i.not.i, label %if.then.if.end_crit_edge, label %for.body.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader.i:                             ; preds = %if.then
  %arrayidx.i = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 13, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.preheader.i.cleanup_crit_edge

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.preheader.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

clk_prepare_enable.exit.i:                        ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %while.body.i

while.body.i:                                     ; preds = %for.inc.i.while.body.i_crit_edge, %clk_prepare_enable.exit.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  br label %cleanup.sink.split.i

for.inc.i:                                        ; preds = %if.end.i.i
  %arrayidx.1.i = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %call.i.1.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %for.inc.i.while.body.i_crit_edge

for.inc.i.while.body.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.1.i:                                     ; preds = %for.inc.i
  %call1.i.1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %tobool2.not.i.1.i = icmp eq i32 %call1.i.1.i, 0
  br i1 %tobool2.not.i.1.i, label %if.end.i.1.i.if.end_crit_edge, label %clk_prepare_enable.exit.i

if.end.i.1.i.if.end_crit_edge:                    ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup.sink.split.i:                             ; preds = %while.body.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %7, %while.body.i ], [ %5, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.1.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %tobool7.not = icmp eq ptr %priv, null
  br i1 %tobool7.not, label %if.end.cond.end14_crit_edge, label %cond.false

if.end.cond.end14_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false:                                       ; preds = %if.end
  %pfunc = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pfunc, align 4
  %power_ctrl = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %power_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power_ctrl, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %cond.false.cond.end14_crit_edge, label %cond.false10

cond.false.cond.end14_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false10:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %call13 = tail call i32 %13(ptr noundef %1, ptr noundef %15, i32 noundef %enable) #8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false10, %cond.false.cond.end14_crit_edge, %if.end.cond.end14_crit_edge
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %19 = or i16 %18, 4
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #8, !srcloc !111
  br label %cleanup

if.else:                                          ; preds = %entry
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %25 = and i16 %24, -5
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #8, !srcloc !111
  %tobool16.not = icmp eq ptr %priv, null
  br i1 %tobool16.not, label %if.else.cond.end30_crit_edge, label %cond.false18

if.else.cond.end30_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end30

cond.false18:                                     ; preds = %if.else
  %pfunc19 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %28 = ptrtoint ptr %pfunc19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pfunc19, align 4
  %power_ctrl20 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %power_ctrl20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %power_ctrl20, align 4
  %tobool21.not = icmp eq ptr %31, null
  br i1 %tobool21.not, label %cond.false18.cond.end30_crit_edge, label %cond.false23

cond.false18.cond.end30_crit_edge:                ; preds = %cond.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end30

cond.false23:                                     ; preds = %cond.false18
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %call27 = tail call i32 %31(ptr noundef %1, ptr noundef %33, i32 noundef 0) #8
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false23, %cond.false18.cond.end30_crit_edge, %if.else.cond.end30_crit_edge
  %multi_clks.i.i55 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %34 = ptrtoint ptr %multi_clks.i.i55 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i56 = load i8, ptr %multi_clks.i.i55, align 4
  %35 = and i8 %bf.load.i.i56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i.not.i57 = icmp eq i8 %35, 0
  br i1 %tobool.i.not.i57, label %cond.end30.usbhsc_clk_disable_unprepare.exit_crit_edge, label %for.body.preheader.i60

cond.end30.usbhsc_clk_disable_unprepare.exit_crit_edge: ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhsc_clk_disable_unprepare.exit

for.body.preheader.i60:                           ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i58 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 13, i32 0
  %36 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i58, align 4
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  %arrayidx.1.i59 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.1.i59, align 4
  tail call void @clk_disable(ptr noundef %39) #8
  tail call void @clk_unprepare(ptr noundef %39) #8
  br label %usbhsc_clk_disable_unprepare.exit

usbhsc_clk_disable_unprepare.exit:                ; preds = %for.body.preheader.i60, %cond.end30.usbhsc_clk_disable_unprepare.exit_crit_edge
  %call.i61 = tail call i32 @__pm_runtime_idle(ptr noundef %dev3, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %usbhsc_clk_disable_unprepare.exit, %cond.end14, %cleanup.sink.split.i, %for.body.preheader.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_autonomy_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_non_autonomy_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsc_clk_put(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %multi_clks.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %multi_clks.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %multi_clks.i, align 4
  %1 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 13, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_put(ptr noundef %3) #8
  %arrayidx.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_put(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_remove(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_remove(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_remove(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsc_hotplug(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %call = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #8
  %get_vbus = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %get_vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 %3(ptr noundef %1) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call3, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %tobool4.not = icmp eq ptr %priv, null
  br i1 %tobool4.not, label %cond.end.cond.end15_crit_edge, label %cond.false6

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false6:                                      ; preds = %cond.end
  %pfunc = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfunc, align 4
  %get_id = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_id, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %cond.false6.cond.end15_crit_edge, label %cond.false9

cond.false6.cond.end15_crit_edge:                 ; preds = %cond.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.false9:                                      ; preds = %cond.false6
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 %7(ptr noundef %1) #8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false9, %cond.false6.cond.end15_crit_edge, %cond.end.cond.end15_crit_edge
  %cond16 = phi i32 [ -19, %cond.end.cond.end15_crit_edge ], [ %call12, %cond.false9 ], [ 0, %cond.false6.cond.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool17.not = icmp ne i32 %cond, 0
  %tobool18.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool17.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end15
  %edev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edev, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.then.if.end29_crit_edge, label %if.then20

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then20:                                        ; preds = %if.then
  %call22 = tail call i32 @extcon_get_state(ptr noundef nonnull %9, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp = icmp slt i32 %call22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond16)
  %cmp24.not = icmp eq i32 %cond16, 0
  %or.cond175 = select i1 %cmp, i1 true, i1 %cmp24.not
  br i1 %or.cond175, label %lor.lhs.false, label %if.then20.do.end_crit_edge

if.then20.do.end_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool25.not = icmp ne i32 %call22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond16)
  %cmp27.not = icmp eq i32 %cond16, 1
  %or.cond176 = select i1 %tobool25.not, i1 true, i1 %cmp27.not
  br i1 %or.cond176, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then20.do.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41) #11
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false.if.end29_crit_edge, %if.then.if.end29_crit_edge
  %call30 = tail call i32 @usbhs_mod_change(ptr noundef %priv, i32 noundef %cond16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %do.body34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body34:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsc_hotplug.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsc_hotplug, %if.then40)) #8
          to label %do.end44 [label %if.then40], !srcloc !113

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsc_hotplug.__UNIQUE_ID_ddebug235, ptr noundef %dev41, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body34
  %runtime_pwctrl = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %10 = ptrtoint ptr %runtime_pwctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %runtime_pwctrl, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool45.not = icmp eq i8 %11, 0
  br i1 %tobool45.not, label %do.end44.if.end47_crit_edge, label %if.then46

do.end44.if.end47_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then46:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %priv, i32 noundef %cond)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %do.end44.if.end47_crit_edge
  %buswait_bwait.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %buswait_bwait.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buswait_bwait.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end47.usbhsc_set_buswait.exit_crit_edge, label %if.then.i

if.end47.usbhsc_set_buswait.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhsc_set_buswait.exit

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 2
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %17 = and i16 %16, -3841
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %and513.i.i = and i16 %conv.i, 15
  %or14.i.i = or i16 %18, %and513.i.i
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %20, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %21 = tail call i16 @llvm.bswap.i16(i16 %or14.i.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i.i, i16 %21) #8, !srcloc !111
  br label %usbhsc_set_buswait.exit

usbhsc_set_buswait.exit:                          ; preds = %if.then.i, %if.end47.usbhsc_set_buswait.exit_crit_edge
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #8, !srcloc !111
  %24 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev1, align 4
  br i1 %tobool4.not, label %usbhsc_set_buswait.exit.usbhsc_bus_init.exit_crit_edge, label %cond.false.i.i

usbhsc_set_buswait.exit.usbhsc_bus_init.exit_crit_edge: ; preds = %usbhsc_set_buswait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhsc_bus_init.exit

cond.false.i.i:                                   ; preds = %usbhsc_set_buswait.exit
  %pfunc.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %26 = ptrtoint ptr %pfunc.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pfunc.i.i, align 4
  %set_vbus.i.i = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %set_vbus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_vbus.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i.i, label %cond.false.i.i.usbhsc_bus_init.exit_crit_edge, label %cond.false4.i.i

cond.false.i.i.usbhsc_bus_init.exit_crit_edge:    ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhsc_bus_init.exit

cond.false4.i.i:                                  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %29(ptr noundef %25, i32 noundef 0) #8
  br label %usbhsc_bus_init.exit

usbhsc_bus_init.exit:                             ; preds = %cond.false4.i.i, %cond.false.i.i.usbhsc_bus_init.exit_crit_edge, %usbhsc_set_buswait.exit.usbhsc_bus_init.exit_crit_edge
  %call49 = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #8
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %usbhsc_bus_init.exit.cleanup_crit_edge, label %cond.false53

usbhsc_bus_init.exit.cleanup_crit_edge:           ; preds = %usbhsc_bus_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false53:                                     ; preds = %usbhsc_bus_init.exit
  %start = getelementptr inbounds %struct.usbhs_mod, ptr %call49, i32 0, i32 1
  %30 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %start, align 4
  %tobool54.not = icmp eq ptr %31, null
  br i1 %tobool54.not, label %cond.false53.cleanup_crit_edge, label %cond.false56

cond.false53.cleanup_crit_edge:                   ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false56:                                     ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call i32 %31(ptr noundef %priv) #8
  br label %cleanup

if.else:                                          ; preds = %cond.end15
  %or.cond178 = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  br i1 %or.cond178, label %if.else.cleanup_crit_edge, label %do.body67

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body67:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsc_hotplug.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsc_hotplug, %if.then79)) #8
          to label %do.end83 [label %if.then79], !srcloc !113

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %dev80 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsc_hotplug.__UNIQUE_ID_ddebug236, ptr noundef %dev80, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42) #8
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  %call85 = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #8
  %tobool87.not = icmp eq ptr %call85, null
  br i1 %tobool87.not, label %do.end83.cond.end97_crit_edge, label %cond.false89

do.end83.cond.end97_crit_edge:                    ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end97

cond.false89:                                     ; preds = %do.end83
  %stop = getelementptr inbounds %struct.usbhs_mod, ptr %call85, i32 0, i32 2
  %32 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stop, align 4
  %tobool90.not = icmp eq ptr %33, null
  br i1 %tobool90.not, label %cond.false89.cond.end97_crit_edge, label %cond.false92

cond.false89.cond.end97_crit_edge:                ; preds = %cond.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end97

cond.false92:                                     ; preds = %cond.false89
  call void @__sanitizer_cov_trace_pc() #10
  %call94 = tail call i32 %33(ptr noundef %priv) #8
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false92, %cond.false89.cond.end97_crit_edge, %do.end83.cond.end97_crit_edge
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %add.ptr.i.i182 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i182, i16 0) #8, !srcloc !111
  %36 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev1, align 4
  br i1 %tobool4.not, label %cond.end97.usbhsc_bus_init.exit191_crit_edge, label %cond.false.i.i188

cond.end97.usbhsc_bus_init.exit191_crit_edge:     ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhsc_bus_init.exit191

cond.false.i.i188:                                ; preds = %cond.end97
  %pfunc.i.i185 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %38 = ptrtoint ptr %pfunc.i.i185 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pfunc.i.i185, align 4
  %set_vbus.i.i186 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %set_vbus.i.i186 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_vbus.i.i186, align 4
  %tobool2.not.i.i187 = icmp eq ptr %41, null
  br i1 %tobool2.not.i.i187, label %cond.false.i.i188.usbhsc_bus_init.exit191_crit_edge, label %cond.false4.i.i190

cond.false.i.i188.usbhsc_bus_init.exit191_crit_edge: ; preds = %cond.false.i.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhsc_bus_init.exit191

cond.false4.i.i190:                               ; preds = %cond.false.i.i188
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i189 = tail call i32 %41(ptr noundef %37, i32 noundef 0) #8
  br label %usbhsc_bus_init.exit191

usbhsc_bus_init.exit191:                          ; preds = %cond.false4.i.i190, %cond.false.i.i188.usbhsc_bus_init.exit191_crit_edge, %cond.end97.usbhsc_bus_init.exit191_crit_edge
  %runtime_pwctrl100 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 13
  %42 = ptrtoint ptr %runtime_pwctrl100 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load101 = load i8, ptr %runtime_pwctrl100, align 4
  %43 = and i8 %bf.load101, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool105.not = icmp eq i8 %43, 0
  br i1 %tobool105.not, label %usbhsc_bus_init.exit191.if.end107_crit_edge, label %if.then106

usbhsc_bus_init.exit191.if.end107_crit_edge:      ; preds = %usbhsc_bus_init.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then106:                                       ; preds = %usbhsc_bus_init.exit191
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %priv, i32 noundef 0)
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %usbhsc_bus_init.exit191.if.end107_crit_edge
  %call108 = tail call i32 @usbhs_mod_change(ptr noundef %priv, i32 noundef -1) #8
  br i1 %tobool4.not, label %if.end107.cleanup_crit_edge, label %cond.false111

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false111:                                    ; preds = %if.end107
  %pfunc112 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %44 = ptrtoint ptr %pfunc112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pfunc112, align 4
  %phy_reset = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy_reset, align 4
  %tobool113.not = icmp eq ptr %47, null
  br i1 %tobool113.not, label %cond.false111.cleanup_crit_edge, label %cond.false115

cond.false111.cleanup_crit_edge:                  ; preds = %cond.false111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false115:                                    ; preds = %cond.false111
  call void @__sanitizer_cov_trace_pc() #10
  %call118 = tail call i32 %47(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.false115, %cond.false111.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.false56, %cond.false53.cleanup_crit_edge, %usbhsc_bus_init.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get_current(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_change(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsc_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @usbhs_mod_get_current(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %lor.lhs.false.critedge, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @usbhs_mod_get_current(ptr noundef %1) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cond.end10_crit_edge, label %cond.false

if.then.cond.end10_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end10

cond.false:                                       ; preds = %if.then
  %stop = getelementptr inbounds %struct.usbhs_mod, ptr %call3, i32 0, i32 2
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %cond.false.cond.end10_crit_edge, label %cond.false7

cond.false.cond.end10_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end10

cond.false7:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 %3(ptr noundef %1) #8
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false7, %cond.false.cond.end10_crit_edge, %if.then.cond.end10_crit_edge
  %call12 = tail call i32 @usbhs_mod_change(ptr noundef %1, i32 noundef -1) #8
  br label %if.then15

lor.lhs.false.critedge:                           ; preds = %entry
  %runtime_pwctrl = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 3, i32 13
  %4 = ptrtoint ptr %runtime_pwctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %runtime_pwctrl, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %lor.lhs.false.critedge.if.then15_crit_edge, label %lor.lhs.false.critedge.if.end16_crit_edge

lor.lhs.false.critedge.if.end16_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

lor.lhs.false.critedge.if.then15_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.critedge.if.then15_crit_edge, %cond.end10
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %1, i32 noundef 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false.critedge.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsc_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev1 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %runtime_pwctrl = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 3, i32 13
  %4 = ptrtoint ptr %runtime_pwctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %runtime_pwctrl, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @usbhsc_power_ctrl(ptr noundef %1, i32 noundef 1)
  tail call void @usbhs_mod_autonomy_mode(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cond.end9_crit_edge, label %cond.false

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9

cond.false:                                       ; preds = %if.end
  %pfunc = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pfunc, align 4
  %phy_reset = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_reset, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %cond.false.cond.end9_crit_edge, label %cond.false5

cond.false.cond.end9_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9

cond.false5:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 %9(ptr noundef %3) #8
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false5, %cond.false.cond.end9_crit_edge, %if.end.cond.end9_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %detection_delay.i = getelementptr inbounds %struct.usbhs_priv, ptr %11, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %detection_delay.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %detection_delay.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #8
  %notify_hotplug_work.i = getelementptr inbounds %struct.usbhs_priv, ptr %11, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %notify_hotplug_work.i, i32 noundef %call2.i.i) #8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 188, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usbhs_bus_send_sof_enable._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usbhs_bus_send_sof_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 240, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @usbhs_set_device_config._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @usbhs_set_device_config._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 245, i32 3}
!15 = !{ptr @usbhs_set_device_config._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @usbhs_set_device_config._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 260, i32 3}
!19 = !{ptr @usbhs_set_device_config._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @usbhs_set_device_config._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_renesas_usbhs__238_832_renesas_usbhs_driver_init6, !22, !"__initcall__kmod_renesas_usbhs__238_832_renesas_usbhs_driver_init6", i1 false, i1 false}
!22 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 832, i32 1}
!23 = !{ptr @__exitcall_renesas_usbhs_driver_exit, !22, !"__exitcall_renesas_usbhs_driver_exit", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_file239, !25, !"__UNIQUE_ID_file239", i1 false, i1 false}
!25 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 834, i32 1}
!26 = !{ptr @__UNIQUE_ID_license240, !25, !"__UNIQUE_ID_license240", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_description241, !28, !"__UNIQUE_ID_description241", i1 false, i1 false}
!28 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 835, i32 1}
!29 = !{ptr @__UNIQUE_ID_author242, !30, !"__UNIQUE_ID_author242", i1 false, i1 false}
!30 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 836, i32 1}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 824, i32 11}
!33 = !{ptr @renesas_usbhs_driver, !34, !"renesas_usbhs_driver", i1 false, i1 false}
!34 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 822, i32 31}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 606, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @usbhs_probe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @usbhs_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 624, i32 46}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 641, i32 3}
!44 = !{ptr @usbhs_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @usbhs_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 656, i32 46}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 658, i32 39}
!50 = !{ptr @usbhs_probe.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 672, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @usbhs_probe.__key.23, !51, !"__key", i1 false, i1 false}
!54 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @usbhs_probe.__key.25, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 673, i32 2}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 709, i32 4}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @usbhs_probe._entry.27, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @usbhs_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 724, i32 3}
!65 = !{ptr @usbhs_probe._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @usbhs_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 745, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @usbhs_probe._entry.34, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @usbhs_probe._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 760, i32 2}
!74 = !{ptr @usbhs_probe._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @usbhs_probe._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @usbhsc_new_pipe, !77, !"usbhsc_new_pipe", i1 false, i1 false}
!77 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 381, i32 48}
!78 = !{ptr @usbhsc_default_pipe, !79, !"usbhsc_default_pipe", i1 false, i1 false}
!79 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 367, i32 48}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 463, i32 5}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @usbhsc_hotplug._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @usbhsc_hotplug._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 473, i32 3}
!87 = !{ptr @usbhsc_hotplug.__UNIQUE_ID_ddebug235, !86, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 487, i32 3}
!90 = !{ptr @usbhsc_hotplug.__UNIQUE_ID_ddebug236, !89, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 769, i32 2}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @usbhs_remove.__UNIQUE_ID_ddebug237, !92, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!95 = !{ptr @usbhs_of_match, !96, !"usbhs_of_match", i1 false, i1 false}
!96 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 535, i32 34}
!97 = !{ptr @usbhsc_pm_ops, !98, !"usbhsc_pm_ops", i1 false, i1 false}
!98 = !{!"../drivers/usb/renesas_usbhs/common.c", i32 820, i32 8}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2072323}
!109 = !{i64 2149612898}
!110 = !{i64 2149614315}
!111 = !{i64 2072123}
!112 = !{!"auto-init"}
!113 = !{i64 2148739379, i64 2148739384, i64 2148739397, i64 2148739441, i64 2148739475, i64 2148739496}
