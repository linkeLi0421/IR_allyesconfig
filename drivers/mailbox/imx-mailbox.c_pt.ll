; ModuleID = '/llk/IR_all_yes/drivers/mailbox/imx-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/imx-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.imx_mu_dcfg = type { ptr, ptr, ptr, i32, i32, i32, [4 x i32], [4 x i32] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_mu_priv = type { ptr, ptr, ptr, %struct.spinlock, %struct.mbox_controller, [16 x %struct.mbox_chan], [16 x %struct.imx_mu_con_priv], ptr, ptr, i32, [4 x i32], i8 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.imx_mu_con_priv = type { i32, [20 x i8], i32, ptr, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.43, i32 }
%union.anon.43 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.imx_s4_rpc_msg = type { i8, i8, i8, i8 }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }

@__initcall__kmod_imx_mailbox__188_766_imx_mu_driver_init6 = internal global ptr @imx_mu_driver_init, section ".initcall6.init", align 4
@imx_mu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_mu_probe, ptr @imx_mu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_mu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_mu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_mu_driver_exit = internal global ptr @imx_mu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [60 x i8] c"imx_mailbox.author=Oleksij Rempel <o.rempel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [53 x i8] c"imx_mailbox.description=Message Unit driver for i.MX\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [45 x i8] c"imx_mailbox.file=drivers/mailbox/imx-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [27 x i8] c"imx_mailbox.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx_mu\00", [25 x i8] zeroinitializer }, align 32
@imx_mu_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-mu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_mu_cfg_imx7ulp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-mu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_mu_cfg_imx6sx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-mu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_mu_cfg_imx8ulp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-mu-s4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_mu_cfg_imx8ulp_s4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8-mu-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_mu_cfg_imx8_scu }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@imx_mu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_mu_suspend_noirq, ptr @imx_mu_resume_noirq, ptr @imx_mu_suspend_noirq, ptr @imx_mu_resume_noirq, ptr @imx_mu_suspend_noirq, ptr @imx_mu_resume_noirq, ptr @imx_mu_runtime_suspend, ptr @imx_mu_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_mu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx_mu_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mailbox/imx-mailbox.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_mu_probe._entry_ptr = internal global ptr @imx_mu_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,mu-side-b\00", [18 x i8] zeroinitializer }, align 32
@imx_mu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->xcr_lock\00", [16 x i8] zeroinitializer }, align 32
@imx_mu_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @imx_mu_send_data, ptr null, ptr @imx_mu_startup, ptr @imx_mu_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@imx_mu_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to acquire IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_mu_startup\00", [17 x i8] zeroinitializer }, align 32
@imx_mu_startup._entry_ptr = internal global ptr @imx_mu_startup._entry, section ".printk_index", align 4
@imx_mu_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.imx_mu_isr = private unnamed_addr constant [11 x i8] c"imx_mu_isr\00", align 1
@imx_mu_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.imx_mu_isr, ptr @.str.3, i32 313, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unhandled channel type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_mu_isr._entry_ptr = internal global ptr @imx_mu_isr._entry, section ".printk_index", align 4
@imx_mu_isr._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@imx_mu_isr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.imx_mu_isr, ptr @.str.3, i32 333, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Not handled interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_mu_isr._entry_ptr.16 = internal global ptr @imx_mu_isr._entry.14, section ".printk_index", align 4
@imx_mu_cfg_imx7ulp = internal constant { %struct.imx_mu_dcfg, [40 x i8] } { %struct.imx_mu_dcfg { ptr @imx_mu_generic_tx, ptr @imx_mu_generic_rx, ptr @imx_mu_init_generic, i32 0, i32 32, i32 64, [4 x i32] [i32 96, i32 96, i32 96, i32 96], [4 x i32] [i32 100, i32 100, i32 100, i32 100] }, [40 x i8] zeroinitializer }, align 32
@imx_mu_cfg_imx6sx = internal constant { %struct.imx_mu_dcfg, [40 x i8] } { %struct.imx_mu_dcfg { ptr @imx_mu_generic_tx, ptr @imx_mu_generic_rx, ptr @imx_mu_init_generic, i32 0, i32 0, i32 16, [4 x i32] [i32 32, i32 32, i32 32, i32 32], [4 x i32] [i32 36, i32 36, i32 36, i32 36] }, [40 x i8] zeroinitializer }, align 32
@imx_mu_cfg_imx8ulp = internal constant { %struct.imx_mu_dcfg, [40 x i8] } { %struct.imx_mu_dcfg { ptr @imx_mu_generic_tx, ptr @imx_mu_generic_rx, ptr @imx_mu_init_generic, i32 2, i32 512, i32 640, [4 x i32] [i32 12, i32 280, i32 292, i32 300], [4 x i32] [i32 272, i32 276, i32 288, i32 296] }, [40 x i8] zeroinitializer }, align 32
@imx_mu_cfg_imx8ulp_s4 = internal constant { %struct.imx_mu_dcfg, [40 x i8] } { %struct.imx_mu_dcfg { ptr @imx_mu_specific_tx, ptr @imx_mu_specific_rx, ptr @imx_mu_init_specific, i32 32770, i32 512, i32 640, [4 x i32] [i32 12, i32 280, i32 292, i32 300], [4 x i32] [i32 272, i32 276, i32 288, i32 296] }, [40 x i8] zeroinitializer }, align 32
@imx_mu_cfg_imx8_scu = internal constant { %struct.imx_mu_dcfg, [40 x i8] } { %struct.imx_mu_dcfg { ptr @imx_mu_specific_tx, ptr @imx_mu_specific_rx, ptr @imx_mu_init_specific, i32 0, i32 0, i32 16, [4 x i32] [i32 32, i32 32, i32 32, i32 32], [4 x i32] [i32 36, i32 36, i32 36, i32 36] }, [40 x i8] zeroinitializer }, align 32
@imx_mu_generic_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.imx_mu_generic_tx = private unnamed_addr constant [18 x i8] c"imx_mu_generic_tx\00", align 1
@imx_mu_generic_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.imx_mu_generic_tx, ptr @.str.3, i32 162, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Send data on wrong channel type: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_mu_generic_tx._entry_ptr = internal global ptr @imx_mu_generic_tx._entry, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_mu_chan[%i-%i]\00", [45 x i8] zeroinitializer }, align 32
@imx_mu_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid argument count %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx_mu_xlate\00", [19 x i8] zeroinitializer }, align 32
@imx_mu_xlate._entry_ptr = internal global ptr @imx_mu_xlate._entry, section ".printk_index", align 4
@imx_mu_xlate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Not supported channel number: %d. (type: %d, idx: %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_mu_xlate._entry_ptr.23 = internal global ptr @imx_mu_xlate._entry.21, section ".printk_index", align 4
@imx_mu_specific_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Maximal message size (%u bytes) exceeded on TX; got: %i bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_mu_specific_tx\00", [45 x i8] zeroinitializer }, align 32
@imx_mu_specific_tx._entry_ptr = internal global ptr @imx_mu_specific_tx._entry, section ".printk_index", align 4
@imx_mu_specific_tx._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Send data index: %d timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_mu_specific_tx._entry_ptr.28 = internal global ptr @imx_mu_specific_tx._entry.26, section ".printk_index", align 4
@imx_mu_specific_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@imx_mu_specific_tx._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.25, ptr @.str.3, i32 230, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@imx_mu_specific_tx._entry_ptr.30 = internal global ptr @imx_mu_specific_tx._entry.29, section ".printk_index", align 4
@imx_mu_specific_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Maximal message size (%u bytes) exceeded on RX; got: %i bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_mu_specific_rx\00", [45 x i8] zeroinitializer }, align 32
@imx_mu_specific_rx._entry_ptr = internal global ptr @imx_mu_specific_rx._entry, section ".printk_index", align 4
@imx_mu_specific_rx._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"timeout read idx %d\0A\00", [43 x i8] zeroinitializer }, align 32
@imx_mu_specific_rx._entry_ptr.35 = internal global ptr @imx_mu_specific_rx._entry.33, section ".printk_index", align 4
@imx_mu_specific_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.36, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_mu_specific_xlate\00", [42 x i8] zeroinitializer }, align 32
@imx_mu_specific_xlate._entry_ptr = internal global ptr @imx_mu_specific_xlate._entry, section ".printk_index", align 4
@imx_mu_specific_xlate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid chan idx: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@imx_mu_specific_xlate._entry_ptr.39 = internal global ptr @imx_mu_specific_xlate._entry.37, section ".printk_index", align 4
@imx_mu_specific_xlate._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid chan type: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_mu_specific_xlate._entry_ptr.42 = internal global ptr @imx_mu_specific_xlate._entry.40, section ".printk_index", align 4
@imx_mu_specific_xlate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.36, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@imx_mu_specific_xlate._entry_ptr.44 = internal global ptr @imx_mu_specific_xlate._entry.43, section ".printk_index", align 4
@imx_mu_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_mu_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@imx_mu_runtime_resume._entry_ptr = internal global ptr @imx_mu_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"imx_mu_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 757, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 761, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"imx_mu_dt_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 685, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"imx_mu_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 750, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 579, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 583, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 587, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"imx_mu_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 418, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 370, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 312, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 333, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"imx_mu_cfg_imx7ulp\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 643, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"imx_mu_cfg_imx6sx\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 633, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"imx_mu_cfg_imx8ulp\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 653, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"imx_mu_cfg_imx8ulp_s4\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 664, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"imx_mu_cfg_imx8_scu\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 675, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 162, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 494, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 466, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 475, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 209, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 221, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 230, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 258, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 266, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 430, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 441, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 448, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 453, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [33 x i8] c"../drivers/mailbox/imx-mailbox.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 745, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_imx_mu_driver_exit, ptr @__initcall__kmod_imx_mailbox__188_766_imx_mu_driver_init6, ptr @imx_mu_driver_exit, ptr @imx_mu_generic_tx._entry, ptr @imx_mu_generic_tx._entry_ptr, ptr @imx_mu_isr._entry, ptr @imx_mu_isr._entry.14, ptr @imx_mu_isr._entry_ptr, ptr @imx_mu_isr._entry_ptr.16, ptr @imx_mu_probe._entry, ptr @imx_mu_probe._entry_ptr, ptr @imx_mu_runtime_resume._entry, ptr @imx_mu_runtime_resume._entry_ptr, ptr @imx_mu_specific_rx._entry, ptr @imx_mu_specific_rx._entry.33, ptr @imx_mu_specific_rx._entry_ptr, ptr @imx_mu_specific_rx._entry_ptr.35, ptr @imx_mu_specific_tx._entry, ptr @imx_mu_specific_tx._entry.26, ptr @imx_mu_specific_tx._entry.29, ptr @imx_mu_specific_tx._entry_ptr, ptr @imx_mu_specific_tx._entry_ptr.28, ptr @imx_mu_specific_tx._entry_ptr.30, ptr @imx_mu_specific_xlate._entry, ptr @imx_mu_specific_xlate._entry.37, ptr @imx_mu_specific_xlate._entry.40, ptr @imx_mu_specific_xlate._entry.43, ptr @imx_mu_specific_xlate._entry_ptr, ptr @imx_mu_specific_xlate._entry_ptr.39, ptr @imx_mu_specific_xlate._entry_ptr.42, ptr @imx_mu_specific_xlate._entry_ptr.44, ptr @imx_mu_startup._entry, ptr @imx_mu_startup._entry_ptr, ptr @imx_mu_xlate._entry, ptr @imx_mu_xlate._entry.21, ptr @imx_mu_xlate._entry_ptr, ptr @imx_mu_xlate._entry_ptr.23, ptr @imx_mu_driver, ptr @.str, ptr @imx_mu_dt_ids, ptr @imx_mu_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @imx_mu_probe.__key, ptr @.str.7, ptr @imx_mu_ops, ptr @.str.8, ptr @.str.9, ptr @imx_mu_isr._rs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @imx_mu_isr._rs.13, ptr @.str.15, ptr @imx_mu_cfg_imx7ulp, ptr @imx_mu_cfg_imx6sx, ptr @imx_mu_cfg_imx8ulp, ptr @imx_mu_cfg_imx8ulp_s4, ptr @imx_mu_cfg_imx8_scu, ptr @imx_mu_generic_tx._rs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @imx_mu_specific_tx._rs, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_isr._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_isr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_cfg_imx7ulp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_cfg_imx6sx to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_cfg_imx8ulp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_cfg_imx8ulp_s4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_cfg_imx8_scu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_generic_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_generic_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_xlate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_tx._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_tx._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_rx._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_xlate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_xlate._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_specific_xlate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mu_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_mu_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_mu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_mu_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4400, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call10, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %dcfg19 = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %dcfg19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %dcfg19, align 8
  %type = getelementptr inbounds %struct.imx_mu_dcfg, ptr %call15, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %. = select i1 %tobool21.not, i32 32, i32 1020
  %call.i132 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %., i32 noundef 3520) #9
  %msg = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i132, ptr %msg, align 8
  %tobool26.not = icmp eq ptr %call.i132, null
  br i1 %tobool26.not, label %if.end18.cleanup_crit_edge, label %if.end28

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call29, ptr %clk, align 4
  %cmp.i133 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then32, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then32:                                        ; preds = %if.end28
  %11 = ptrtoint ptr %call29 to i32
  %cmp35.not = icmp eq ptr %call29, inttoptr (i32 -2 to ptr)
  br i1 %cmp35.not, label %if.end39, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %clk, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.end28.if.end41_crit_edge
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call.i134 = tail call i32 @clk_prepare(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.do.end_crit_edge

if.end41.do.end_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end41
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end41.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i134, %if.end41.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end46:                                         ; preds = %if.end.i
  %call.i135 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i135, null
  %side_b = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 11
  %frombool = zext i1 %tobool.i to i8
  %15 = ptrtoint ptr %side_b to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %side_b, align 4
  %16 = ptrtoint ptr %dcfg19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dcfg19, align 8
  %init = getelementptr inbounds %struct.imx_mu_dcfg, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init, align 4
  tail call void %19(ptr noundef nonnull %call.i) #9
  %xcr_lock = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %xcr_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @imx_mu_probe.__key, i16 noundef signext 3) #9
  %mbox = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %mbox, align 8
  %ops = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @imx_mu_ops, ptr %ops, align 4
  %mbox_chans = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 5
  %chans = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mbox_chans, ptr %chans, align 8
  %txdone_irq = getelementptr inbounds %struct.imx_mu_priv, ptr %call.i, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %txdone_irq, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call58 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef %mbox) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %26) #9
  tail call void @clk_unprepare(ptr noundef %26) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end46
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i136 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp64 = icmp slt i32 %call.i136, 0
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %disable_runtime_pm

if.end66:                                         ; preds = %if.end62
  %call.i137 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp68 = icmp slt i32 %call.i137, 0
  br i1 %cmp68, label %if.end66.disable_runtime_pm_crit_edge, label %if.end70

if.end66.disable_runtime_pm_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_runtime_pm

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %28) #9
  tail call void @clk_unprepare(ptr noundef %28) #9
  br label %cleanup

disable_runtime_pm:                               ; preds = %if.end66.disable_runtime_pm_crit_edge, %if.then65
  %ret.0 = phi i32 [ %call.i136, %if.then65 ], [ %call.i137, %if.end66.disable_runtime_pm_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #9
  tail call void @clk_unprepare(ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %disable_runtime_pm, %if.end70, %if.then60, %do.end, %if.then32.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %retval.0.i.ph, %do.end ], [ %call58, %if.then60 ], [ %ret.0, %disable_runtime_pm ], [ 0, %if.end70 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %11, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !130
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_send_data(ptr nocapture noundef readonly %chan, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %dcfg = getelementptr i8, ptr %1, i32 4312
  %4 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcfg, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = tail call i32 %7(ptr noundef %add.ptr.i, ptr noundef %3, ptr noundef %data) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  %type = getelementptr inbounds %struct.imx_mu_con_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %txdb_tasklet = getelementptr inbounds %struct.imx_mu_con_priv, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %3 to i32
  tail call void @tasklet_init(ptr noundef %txdb_tasklet, ptr noundef nonnull @imx_mu_txdb_tasklet, i32 noundef %8) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %pm_domain = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm_domain, align 8
  %tobool.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool.not, i32 16512, i32 128
  %irq = getelementptr i8, ptr %1, i32 4320
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  %irq_desc = getelementptr inbounds %struct.imx_mu_con_priv, ptr %3, i32 0, i32 1
  %call.i56 = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @imx_mu_isr, ptr noundef null, i32 noundef %spec.select, ptr noundef %irq_desc, ptr noundef %chan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool6.not = icmp eq i32 %call.i56, 0
  br i1 %tobool6.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8, i32 noundef %18) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end10.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb17
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg = getelementptr i8, ptr %1, i32 4312
  %22 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dcfg, align 8
  %type12 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type12, align 4
  %and = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %add = sub i32 27, %27
  %.pn = select i1 %tobool13.not, i32 %add, i32 %27
  %cond = shl nuw i32 1, %.pn
  %xcr_lock.i = getelementptr i8, ptr %1, i32 -44
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i) #9
  %28 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcfg, align 8
  %arrayidx.i = getelementptr %struct.imx_mu_dcfg, ptr %29, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %base.i.i = getelementptr i8, ptr %1, i32 -52
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !132
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %or.i = or i32 %35, %cond
  %36 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dcfg, align 8
  %arrayidx8.i = getelementptr %struct.imx_mu_dcfg, ptr %37, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx8.i, align 4
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %42) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i, i32 noundef %call2.i) #9
  br label %cleanup

sw.bb17:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg18 = getelementptr i8, ptr %1, i32 4312
  %43 = ptrtoint ptr %dcfg18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dcfg18, align 8
  %type19 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %type19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type19, align 4
  %and20 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %3, align 4
  %shl24 = shl nuw i32 1, %48
  %shl29 = lshr i32 -2147483648, %48
  %cond31 = select i1 %tobool21.not, i32 %shl29, i32 %shl24
  %xcr_lock.i57 = getelementptr i8, ptr %1, i32 -44
  %call2.i58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i57) #9
  %49 = ptrtoint ptr %dcfg18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dcfg18, align 8
  %arrayidx.i60 = getelementptr %struct.imx_mu_dcfg, ptr %50, i32 0, i32 7, i32 0
  %51 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i60, align 4
  %base.i.i61 = getelementptr i8, ptr %1, i32 -52
  %53 = ptrtoint ptr %base.i.i61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i61, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %54, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62) #9, !srcloc !132
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %or.i63 = or i32 %56, %cond31
  %57 = ptrtoint ptr %dcfg18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dcfg18, align 8
  %arrayidx8.i64 = getelementptr %struct.imx_mu_dcfg, ptr %58, i32 0, i32 7, i32 0
  %59 = ptrtoint ptr %arrayidx8.i64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx8.i64, align 4
  %61 = ptrtoint ptr %base.i.i61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i61, align 4
  %add.ptr.i2.i65 = getelementptr i8, ptr %62, i32 %60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i63) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i65, i32 %63) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i57, i32 noundef %call2.i58) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb17, %sw.bb, %if.end10.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i56, %do.end ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %sw.bb17 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_mu_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %type = getelementptr inbounds %struct.imx_mu_con_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 2, label %if.then
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 3, label %sw.bb23
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %txdb_tasklet = getelementptr inbounds %struct.imx_mu_con_priv, ptr %3, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %txdb_tasklet) #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg = getelementptr i8, ptr %1, i32 4312
  %7 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dcfg, align 8
  %type3 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type3, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %add = sub i32 23, %12
  %.pn61 = select i1 %tobool.not, i32 %add, i32 %12
  %cond = shl nuw i32 1, %.pn61
  %xcr_lock.i = getelementptr i8, ptr %1, i32 -44
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i) #9
  %13 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcfg, align 8
  %arrayidx.i = getelementptr %struct.imx_mu_dcfg, ptr %14, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %base.i.i = getelementptr i8, ptr %1, i32 -52
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %neg.i = xor i32 %cond, -1
  %and.i = and i32 %20, %neg.i
  %21 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dcfg, align 8
  %arrayidx8.i = getelementptr %struct.imx_mu_dcfg, ptr %22, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx8.i, align 4
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %27) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i, i32 noundef %call2.i) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg8 = getelementptr i8, ptr %1, i32 4312
  %28 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcfg8, align 8
  %type9 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type9, align 4
  %and10 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  %add18 = sub i32 27, %33
  %.pn = select i1 %tobool11.not, i32 %add18, i32 %33
  %cond21 = shl nuw i32 1, %.pn
  %xcr_lock.i62 = getelementptr i8, ptr %1, i32 -44
  %call2.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i62) #9
  %34 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dcfg8, align 8
  %arrayidx.i65 = getelementptr %struct.imx_mu_dcfg, ptr %35, i32 0, i32 7, i32 3
  %36 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i65, align 4
  %base.i.i66 = getelementptr i8, ptr %1, i32 -52
  %38 = ptrtoint ptr %base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i66, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %39, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #9, !srcloc !132
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %neg.i68 = xor i32 %cond21, -1
  %and.i69 = and i32 %41, %neg.i68
  %42 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dcfg8, align 8
  %arrayidx8.i70 = getelementptr %struct.imx_mu_dcfg, ptr %43, i32 0, i32 7, i32 3
  %44 = ptrtoint ptr %arrayidx8.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx8.i70, align 4
  %46 = ptrtoint ptr %base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i66, align 4
  %add.ptr.i2.i71 = getelementptr i8, ptr %47, i32 %45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %and.i69) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i71, i32 %48) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i62, i32 noundef %call2.i63) #9
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg24 = getelementptr i8, ptr %1, i32 4312
  %49 = ptrtoint ptr %dcfg24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dcfg24, align 8
  %type25 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %type25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type25, align 4
  %and26 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 4
  %shl30 = shl nuw i32 1, %54
  %shl35 = lshr i32 -2147483648, %54
  %cond37 = select i1 %tobool27.not, i32 %shl35, i32 %shl30
  %xcr_lock.i72 = getelementptr i8, ptr %1, i32 -44
  %call2.i73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i72) #9
  %55 = ptrtoint ptr %dcfg24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dcfg24, align 8
  %arrayidx.i75 = getelementptr %struct.imx_mu_dcfg, ptr %56, i32 0, i32 7, i32 0
  %57 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i75, align 4
  %base.i.i76 = getelementptr i8, ptr %1, i32 -52
  %59 = ptrtoint ptr %base.i.i76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i76, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %60, i32 %58
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #9, !srcloc !132
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %neg.i78 = xor i32 %cond37, -1
  %and.i79 = and i32 %62, %neg.i78
  %63 = ptrtoint ptr %dcfg24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dcfg24, align 8
  %arrayidx8.i80 = getelementptr %struct.imx_mu_dcfg, ptr %64, i32 0, i32 7, i32 0
  %65 = ptrtoint ptr %arrayidx8.i80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx8.i80, align 4
  %67 = ptrtoint ptr %base.i.i76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i76, align 4
  %add.ptr.i2.i81 = getelementptr i8, ptr %68, i32 %66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %69 = tail call i32 @llvm.bswap.i32(i32 %and.i79) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i81, i32 %69) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i72, i32 noundef %call2.i73) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %irq = getelementptr i8, ptr %1, i32 4320
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 8
  %call39 = tail call ptr @free_irq(i32 noundef %71, ptr noundef %chan) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 8
  %call.i82 = tail call i32 @__pm_runtime_idle(ptr noundef %73, i32 noundef 4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_mu_txdb_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %chan = getelementptr inbounds %struct.imx_mu_con_priv, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  tail call void @mbox_chan_txdone(ptr noundef %2, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_isr(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -56
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %p, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %type = getelementptr inbounds %struct.imx_mu_con_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 3, label %sw.bb66
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg = getelementptr i8, ptr %1, i32 4312
  %7 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dcfg, align 8
  %arrayidx = getelementptr %struct.imx_mu_dcfg, ptr %8, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %base.i = getelementptr i8, ptr %1, i32 -52
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %12, i32 %10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %14 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcfg, align 8
  %arrayidx3 = getelementptr %struct.imx_mu_dcfg, ptr %15, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i299) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %21 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dcfg, align 8
  %type6 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type6, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %add = sub i32 23, %26
  %.pn322 = select i1 %tobool.not, i32 %add, i32 %26
  %cond312 = shl nuw i32 1, %.pn322
  %27 = and i32 %20, %13
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg27 = getelementptr i8, ptr %1, i32 4312
  %28 = ptrtoint ptr %dcfg27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcfg27, align 8
  %arrayidx29 = getelementptr %struct.imx_mu_dcfg, ptr %29, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx29, align 4
  %base.i300 = getelementptr i8, ptr %1, i32 -52
  %32 = ptrtoint ptr %base.i300 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i300, align 4
  %add.ptr.i301 = getelementptr i8, ptr %33, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %35 = ptrtoint ptr %dcfg27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dcfg27, align 8
  %arrayidx33 = getelementptr %struct.imx_mu_dcfg, ptr %36, i32 0, i32 6, i32 3
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx33, align 4
  %39 = ptrtoint ptr %base.i300 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i300, align 4
  %add.ptr.i303 = getelementptr i8, ptr %40, i32 %38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %42 = ptrtoint ptr %dcfg27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dcfg27, align 8
  %type36 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %type36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type36, align 4
  %and37 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  %add45 = sub i32 27, %47
  %.pn321 = select i1 %tobool38.not, i32 %add45, i32 %47
  %cond48316 = shl nuw i32 1, %.pn321
  %48 = and i32 %41, %34
  br label %sw.epilog

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg67 = getelementptr i8, ptr %1, i32 4312
  %49 = ptrtoint ptr %dcfg67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dcfg67, align 8
  %xCR68 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %xCR68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xCR68, align 4
  %base.i304 = getelementptr i8, ptr %1, i32 -52
  %53 = ptrtoint ptr %base.i304 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i304, align 4
  %add.ptr.i305 = getelementptr i8, ptr %54, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %56 = ptrtoint ptr %dcfg67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dcfg67, align 8
  %arrayidx73 = getelementptr %struct.imx_mu_dcfg, ptr %57, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx73, align 4
  %60 = ptrtoint ptr %base.i304 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i304, align 4
  %add.ptr.i307 = getelementptr i8, ptr %61, i32 %59
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %63 = ptrtoint ptr %dcfg67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dcfg67, align 8
  %type76 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %type76 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type76, align 4
  %and77 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %3, align 4
  %shl81 = shl nuw i32 1, %68
  %shl86 = lshr i32 -2147483648, %68
  %cond88319 = select i1 %tobool78.not, i32 %shl86, i32 %shl81
  %69 = and i32 %62, %55
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %call106 = tail call i32 @___ratelimit(ptr noundef nonnull @imx_mu_isr._rs, ptr noundef nonnull @__func__.imx_mu_isr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 8
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.11, i32 noundef %73) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb26, %sw.bb
  %.sink323 = phi i32 [ %69, %sw.bb66 ], [ %48, %sw.bb26 ], [ %27, %sw.bb ]
  %cond88319.sink = phi i32 [ %cond88319, %sw.bb66 ], [ %cond48316, %sw.bb26 ], [ %cond312, %sw.bb ]
  %74 = call i32 @llvm.bswap.i32(i32 %.sink323)
  %and104 = and i32 %74, %cond88319.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool112.not = icmp eq i32 %and104, 0
  br i1 %tobool112.not, label %sw.epilog.cleanup_crit_edge, label %if.end114

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end114:                                        ; preds = %sw.epilog
  %dcfg115 = getelementptr i8, ptr %1, i32 4312
  %75 = ptrtoint ptr %dcfg115 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dcfg115, align 8
  %type116 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %type116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type116, align 4
  %and117 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %3, align 4
  %add125 = sub i32 23, %80
  %.pn = select i1 %tobool118.not, i32 %add125, i32 %80
  %cond128 = shl nuw i32 1, %.pn
  call void @__sanitizer_cov_trace_cmp4(i32 %and104, i32 %cond128)
  %cmp = icmp eq i32 %and104, %cond128
  br i1 %cmp, label %land.lhs.true, label %if.end114.if.else_crit_edge

if.end114.if.else_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end114
  %81 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp130 = icmp eq i32 %82, 0
  br i1 %cmp130, label %if.then131, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then131:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %3, align 4
  %add142 = sub i32 23, %84
  %.pn292 = select i1 %tobool118.not, i32 %add142, i32 %84
  %cond145 = shl nuw i32 1, %.pn292
  %xcr_lock.i = getelementptr i8, ptr %1, i32 -44
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i) #9
  %85 = ptrtoint ptr %dcfg115 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dcfg115, align 8
  %arrayidx.i = getelementptr %struct.imx_mu_dcfg, ptr %86, i32 0, i32 7, i32 2
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i, align 4
  %base.i.i = getelementptr i8, ptr %1, i32 -52
  %89 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 %88
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !132
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %neg.i = xor i32 %cond145, -1
  %and.i = and i32 %92, %neg.i
  %93 = ptrtoint ptr %dcfg115 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dcfg115, align 8
  %arrayidx8.i = getelementptr %struct.imx_mu_dcfg, ptr %94, i32 0, i32 7, i32 2
  %95 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx8.i, align 4
  %97 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %98, i32 %96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %99 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %99) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i, i32 noundef %call2.i) #9
  tail call void @mbox_chan_txdone(ptr noundef %p, i32 noundef 0) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end114.if.else_crit_edge
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %3, align 4
  %add157 = sub i32 27, %101
  %.pn291 = select i1 %tobool118.not, i32 %add157, i32 %101
  %cond160 = shl nuw i32 1, %.pn291
  call void @__sanitizer_cov_trace_cmp4(i32 %and104, i32 %cond160)
  %cmp161 = icmp eq i32 %and104, %cond160
  br i1 %cmp161, label %land.lhs.true162, label %if.else.if.else168_crit_edge

if.else.if.else168_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else168

land.lhs.true162:                                 ; preds = %if.else
  %102 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp164 = icmp eq i32 %103, 1
  br i1 %cmp164, label %if.then165, label %land.lhs.true162.if.else168_crit_edge

land.lhs.true162.if.else168_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else168

if.then165:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  %rx = getelementptr inbounds %struct.imx_mu_dcfg, ptr %76, i32 0, i32 1
  %104 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rx, align 4
  %call167 = tail call i32 %105(ptr noundef %add.ptr.i, ptr noundef %3) #9
  br label %cleanup

if.else168:                                       ; preds = %land.lhs.true162.if.else168_crit_edge, %if.else.if.else168_crit_edge
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %3, align 4
  %shl175 = shl nuw i32 1, %107
  %shl180 = lshr i32 -2147483648, %107
  %cond182 = select i1 %tobool118.not, i32 %shl180, i32 %shl175
  call void @__sanitizer_cov_trace_cmp4(i32 %and104, i32 %cond182)
  %cmp183 = icmp eq i32 %and104, %cond182
  br i1 %cmp183, label %land.lhs.true184, label %if.else168.do.body206_crit_edge

if.else168.do.body206_crit_edge:                  ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body206

land.lhs.true184:                                 ; preds = %if.else168
  %108 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %cmp186 = icmp eq i32 %109, 3
  br i1 %cmp186, label %if.then187, label %land.lhs.true184.do.body206_crit_edge

land.lhs.true184.do.body206_crit_edge:            ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body206

if.then187:                                       ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %3, align 4
  %shl194 = shl nuw i32 1, %111
  %shl199 = lshr i32 -2147483648, %111
  %cond201 = select i1 %tobool118.not, i32 %shl199, i32 %shl194
  %arrayidx204 = getelementptr %struct.imx_mu_dcfg, ptr %76, i32 0, i32 6, i32 1
  %112 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx204, align 4
  %base.i308 = getelementptr i8, ptr %1, i32 -52
  %114 = ptrtoint ptr %base.i308 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i308, align 4
  %add.ptr.i309 = getelementptr i8, ptr %115, i32 %113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %116 = tail call i32 @llvm.bswap.i32(i32 %cond201) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309, i32 %116) #9, !srcloc !135
  tail call void @mbox_chan_received_data(ptr noundef %p, ptr noundef null) #9
  br label %cleanup

do.body206:                                       ; preds = %land.lhs.true184.do.body206_crit_edge, %if.else168.do.body206_crit_edge
  %call207 = tail call i32 @___ratelimit(ptr noundef nonnull @imx_mu_isr._rs.13, ptr noundef nonnull @__func__.imx_mu_isr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %do.body206.cleanup_crit_edge, label %do.end212

do.body206.cleanup_crit_edge:                     ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end212:                                        ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %118, ptr noundef nonnull @.str.15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end212, %do.body206.cleanup_crit_edge, %if.then187, %if.then165, %if.then131, %sw.epilog.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %do.end212 ], [ 0, %do.body206.cleanup_crit_edge ], [ 1, %if.then165 ], [ 1, %if.then187 ], [ 1, %if.then131 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_generic_tx(ptr noundef %priv, ptr noundef %cp, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.imx_mu_con_priv, ptr %cp, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %do.body [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcfg, align 8
  %xTR = getelementptr inbounds %struct.imx_mu_dcfg, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %xTR to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xTR, align 4
  %9 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cp, align 4
  %mul = shl i32 %10, 2
  %add = add i32 %mul, %8
  %base.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #9, !srcloc !135
  %14 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcfg, align 8
  %type2 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type2, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %18 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cp, align 4
  %add5 = sub i32 23, %19
  %.pn42 = select i1 %tobool.not, i32 %add5, i32 %19
  %cond = shl nuw i32 1, %.pn42
  %xcr_lock.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i) #9
  %20 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dcfg, align 8
  %arrayidx.i = getelementptr %struct.imx_mu_dcfg, ptr %21, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !132
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %or.i = or i32 %27, %cond
  %28 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcfg, align 8
  %arrayidx8.i = getelementptr %struct.imx_mu_dcfg, ptr %29, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8.i, align 4
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %33, i32 %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %34) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i, i32 noundef %call2.i) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %dcfg8 = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 7
  %35 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dcfg8, align 8
  %type9 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type9, align 4
  %and10 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %39 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cp, align 4
  %add18 = sub i32 19, %40
  %.pn = select i1 %tobool11.not, i32 %add18, i32 %40
  %cond21 = shl nuw i32 1, %.pn
  %xcr_lock.i43 = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 3
  %call2.i44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i43) #9
  %41 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dcfg8, align 8
  %arrayidx.i46 = getelementptr %struct.imx_mu_dcfg, ptr %42, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i46, align 4
  %base.i.i47 = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %45 = ptrtoint ptr %base.i.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %46, i32 %44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #9, !srcloc !132
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %or.i49 = or i32 %48, %cond21
  %49 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dcfg8, align 8
  %arrayidx8.i50 = getelementptr %struct.imx_mu_dcfg, ptr %50, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %arrayidx8.i50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx8.i50, align 4
  %53 = ptrtoint ptr %base.i.i47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i47, align 4
  %add.ptr.i2.i51 = getelementptr i8, ptr %54, i32 %52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i49) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i51, i32 %55) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i43, i32 noundef %call2.i44) #9
  %state.i = getelementptr inbounds %struct.imx_mu_con_priv, ptr %cp, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %txdb_tasklet = getelementptr inbounds %struct.imx_mu_con_priv, ptr %cp, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %txdb_tasklet) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @imx_mu_generic_tx._rs, ptr noundef nonnull @__func__.imx_mu_generic_tx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.17, i32 noundef %59) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.then.i, %sw.bb7.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb7.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_generic_rx(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %cp) #2 align 64 {
entry:
  %dat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dat) #9
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcfg, align 8
  %xRR = getelementptr inbounds %struct.imx_mu_dcfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %xRR to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xRR, align 4
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cp, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, %3
  %base.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !132
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %10 = ptrtoint ptr %dat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dat, align 4
  %chan = getelementptr inbounds %struct.imx_mu_con_priv, ptr %cp, i32 0, i32 3
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  call void @mbox_chan_received_data(ptr noundef %12, ptr noundef nonnull %dat) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dat) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_mu_init_generic(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 %i.037
  %rem = and i32 %i.037, 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rem, ptr %arrayidx, align 4
  %shr = lshr i32 %i.037, 2
  %type = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 %i.037, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr, ptr %type, align 4
  %arrayidx1 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 %i.037
  %chan = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 %i.037, i32 3
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx1, ptr %chan, align 4
  %con_priv4 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 %i.037, i32 9
  %3 = ptrtoint ptr %con_priv4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %con_priv4, align 4
  %irq_desc = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 %i.037, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc, i32 noundef 20, ptr noundef nonnull @.str.18, i32 noundef %shr, i32 noundef %rem)
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %num_chans = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %num_chans, align 4
  %of_xlate = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @imx_mu_xlate, ptr %of_xlate, align 8
  %side_b = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 11
  %6 = ptrtoint ptr %side_b to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %side_b, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.cond8.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond8.preheader:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dcfg, align 8
  %arrayidx11 = getelementptr %struct.imx_mu_dcfg, ptr %9, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !135
  %14 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcfg, align 8
  %arrayidx11.1 = getelementptr %struct.imx_mu_dcfg, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.1, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %19, i32 %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #9, !srcloc !135
  %20 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dcfg, align 8
  %arrayidx11.2 = getelementptr %struct.imx_mu_dcfg, ptr %21, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.2, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %25, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #9, !srcloc !135
  %26 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dcfg, align 8
  %arrayidx11.3 = getelementptr %struct.imx_mu_dcfg, ptr %27, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11.3, align 4
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 0) #9, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %for.cond8.preheader, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imx_mu_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %sp, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %sp, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %sp, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, %7
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %8 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp4.not = icmp ult i32 %add, %9
  br i1 %cmp4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %add, i32 noundef %5, i32 noundef %7) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %12 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chans, align 8
  %arrayidx12 = getelementptr %struct.mbox_chan, ptr %13, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end8 ], [ %arrayidx12, %if.end11 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_specific_tx(ptr noundef %priv, ptr nocapture noundef readonly %cp, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcfg, align 8
  %type = getelementptr inbounds %struct.imx_mu_dcfg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %size1 = getelementptr inbounds %struct.imx_s4_rpc_msg, ptr %data, i32 0, i32 1
  %num_tr.0 = select i1 %tobool.not, i32 4, i32 8
  %max_size.0 = select i1 %tobool.not, i32 32, i32 1020
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %size.0.in = load i8, ptr %size1, align 1
  %size.0 = zext i8 %size.0.in to i32
  %type5 = getelementptr inbounds %struct.imx_mu_con_priv, ptr %cp, i32 0, i32 2
  %5 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond137 = icmp eq i32 %6, 0
  br i1 %cond137, label %sw.bb, label %do.body119

sw.bb:                                            ; preds = %entry
  %div186 = lshr exact i32 %max_size.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div186, i32 %size.0)
  %cmp = icmp ult i32 %div186, %size.0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size.0.in)
  %cmp11193.not = icmp eq i8 %size.0.in, 0
  br i1 %cmp11193.not, label %for.cond.preheader.for.cond14.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond14.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %7 = add nsw i32 %num_tr.0, -1
  %base.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %shl = shl nuw nsw i32 %size.0, 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef %max_size.0, i32 noundef %shl) #12
  br label %cleanup

for.cond14.preheader:                             ; preds = %for.body.for.cond14.preheader_crit_edge, %for.cond.preheader.for.cond14.preheader_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.cond14.preheader_crit_edge ], [ %inc, %for.body.for.cond14.preheader_crit_edge ]
  %arg.0.lcssa = phi ptr [ %data, %for.cond.preheader.for.cond14.preheader_crit_edge ], [ %incdec.ptr, %for.body.for.cond14.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %size.0)
  %cmp15198 = icmp ult i32 %i.0.lcssa, %size.0
  br i1 %cmp15198, label %for.body17.lr.ph, label %for.cond14.preheader.for.end104_crit_edge

for.cond14.preheader.for.end104_crit_edge:        ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end104

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %base = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %10 = add nsw i32 %num_tr.0, -1
  br label %for.body17

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %arg.0195 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %arg.0195, i32 1
  %11 = ptrtoint ptr %arg.0195 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg.0195, align 4
  %13 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcfg, align 8
  %xTR = getelementptr inbounds %struct.imx_mu_dcfg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %xTR to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xTR, align 4
  %rem = and i32 %i.0194, %7
  %mul = shl nuw nsw i32 %rem, 2
  %add = add i32 %16, %mul
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #9, !srcloc !135
  %inc = add nuw nsw i32 %i.0194, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_tr.0)
  %cmp9 = icmp ult i32 %inc, %num_tr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %size.0)
  %cmp11 = icmp ult i32 %inc, %size.0
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.cond14.preheader_crit_edge

for.body.for.cond14.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body17:                                       ; preds = %if.end95.for.body17_crit_edge, %for.body17.lr.ph
  %arg.1200 = phi ptr [ %arg.0.lcssa, %for.body17.lr.ph ], [ %incdec.ptr96, %if.end95.for.body17_crit_edge ]
  %i.1199 = phi i32 [ %i.0.lcssa, %for.body17.lr.ph ], [ %inc103, %if.end95.for.body17_crit_edge ]
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 100000
  %rem40 = and i32 %i.1199, %10
  %add43 = sub nuw nsw i32 23, %rem40
  br label %for.cond32

for.cond32:                                       ; preds = %land.lhs.true.for.cond32_crit_edge, %for.body17
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dcfg, align 8
  %arrayidx = getelementptr %struct.imx_mu_dcfg, ptr %23, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !132
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  %28 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcfg, align 8
  %type37 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %type37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type37, align 4
  %and38 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %add43.rem40 = select i1 %tobool39.not, i32 %add43, i32 %rem40
  %cond = shl nuw i32 1, %add43.rem40
  %and45 = and i32 %cond, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true, label %for.cond32.for.end70_crit_edge

for.cond32.for.end70_crit_edge:                   ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end70

land.lhs.true:                                    ; preds = %for.cond32
  %call50 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %if.then54, label %land.lhs.true.for.cond32_crit_edge

land.lhs.true.for.cond32_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond32

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %34 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dcfg, align 8
  %arrayidx60 = getelementptr %struct.imx_mu_dcfg, ptr %35, i32 0, i32 6, i32 2
  %36 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %33, i32 %37
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #9, !srcloc !132
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  br label %for.end70

for.end70:                                        ; preds = %if.then54, %for.cond32.for.end70_crit_edge
  %xsr.0 = phi i32 [ %39, %if.then54 ], [ %27, %for.cond32.for.end70_crit_edge ]
  %40 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dcfg, align 8
  %type73 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %type73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type73, align 4
  %and74 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %rem77.pn = select i1 %tobool75.not, i32 %add43, i32 %rem40
  %cond85 = shl nuw i32 1, %rem77.pn
  %and86 = and i32 %cond85, %xsr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.end93, label %if.end95

do.end93:                                         ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.27, i32 noundef %i.1199) #12
  br label %cleanup

if.end95:                                         ; preds = %for.end70
  %incdec.ptr96 = getelementptr i32, ptr %arg.1200, i32 1
  %46 = ptrtoint ptr %arg.1200 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arg.1200, align 4
  %xTR98 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %41, i32 0, i32 4
  %48 = ptrtoint ptr %xTR98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xTR98, align 4
  %mul100 = shl nuw nsw i32 %rem40, 2
  %add101 = add i32 %49, %mul100
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr.i188 = getelementptr i8, ptr %51, i32 %add101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %52) #9, !srcloc !135
  %inc103 = add nuw nsw i32 %i.1199, 1
  %exitcond.not = icmp eq i32 %inc103, %size.0
  br i1 %exitcond.not, label %if.end95.for.end104_crit_edge, label %if.end95.for.body17_crit_edge

if.end95.for.body17_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

if.end95.for.end104_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end104

for.end104:                                       ; preds = %if.end95.for.end104_crit_edge, %for.cond14.preheader.for.end104_crit_edge
  %53 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dcfg, align 8
  %type106 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %type106 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type106, align 4
  %and107 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  %57 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cp, align 4
  %add114 = sub i32 23, %58
  %.pn = select i1 %tobool108.not, i32 %add114, i32 %58
  %cond117 = shl nuw i32 1, %.pn
  %xcr_lock.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i) #9
  %59 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dcfg, align 8
  %arrayidx.i = getelementptr %struct.imx_mu_dcfg, ptr %60, i32 0, i32 7, i32 2
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %base.i.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 %62
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !132
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %or.i = or i32 %66, %cond117
  %67 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dcfg, align 8
  %arrayidx8.i = getelementptr %struct.imx_mu_dcfg, ptr %68, i32 0, i32 7, i32 2
  %69 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx8.i, align 4
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %72, i32 %70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %73) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i, i32 noundef %call2.i) #9
  br label %cleanup

do.body119:                                       ; preds = %entry
  %call120 = tail call i32 @___ratelimit(ptr noundef nonnull @imx_mu_specific_tx._rs, ptr noundef nonnull @.str.25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %do.body119.cleanup_crit_edge, label %do.end125

do.body119.cleanup_crit_edge:                     ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end125:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  %76 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.17, i32 noundef %77) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %do.body119.cleanup_crit_edge, %for.end104, %do.end93, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end93 ], [ 0, %for.end104 ], [ -22, %do.end125 ], [ -22, %do.body119.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_specific_rx(ptr noundef %priv, ptr nocapture noundef readonly %cp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcfg, align 8
  %type = getelementptr inbounds %struct.imx_mu_dcfg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %xcr_lock.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i) #9
  %6 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcfg, align 8
  %arrayidx.i = getelementptr %struct.imx_mu_dcfg, ptr %7, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %base.i.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !132
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %neg.i = select i1 %tobool.not, i32 -134217729, i32 -2
  %and.i = and i32 %13, %neg.i
  %14 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcfg, align 8
  %arrayidx8.i = getelementptr %struct.imx_mu_dcfg, ptr %15, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %19, i32 %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %20) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i, i32 noundef %call2.i) #9
  %21 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dcfg, align 8
  %xRR = getelementptr inbounds %struct.imx_mu_dcfg, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %xRR to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xRR, align 4
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !132
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %1, align 4
  %30 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dcfg, align 8
  %type4 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type4, align 4
  %and5 = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg, align 8
  %size8 = getelementptr inbounds %struct.imx_s4_rpc_msg, ptr %35, i32 0, i32 1
  %size11 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %35, i32 0, i32 1
  %max_size.0 = select i1 %tobool6.not, i32 32, i32 1020
  %size.0.in.in = select i1 %tobool6.not, ptr %size11, ptr %size8
  %36 = ptrtoint ptr %size.0.in.in to i32
  call void @__asan_load1_noabort(i32 %36)
  %size.0.in = load i8, ptr %size.0.in.in, align 1
  %size.0 = zext i8 %size.0.in to i32
  %div151 = lshr exact i32 %max_size.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div151, i32 %size.0)
  %cmp = icmp ult i32 %div151, %size.0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %size.0.in)
  %cmp16169 = icmp ugt i8 %size.0.in, 1
  br i1 %cmp16169, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end101_crit_edge

for.cond.preheader.for.end101_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %shl = shl nuw nsw i32 %size.0, 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.31, i32 noundef %max_size.0, i32 noundef %shl) #12
  br label %cleanup

for.body:                                         ; preds = %if.end94.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %data.0171.pn = phi ptr [ %data.0171, %if.end94.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %i.0170 = phi i32 [ %inc, %if.end94.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %data.0171 = getelementptr i32, ptr %data.0171.pn, i32 1
  %call18 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call18, 100000
  %rem.urem = and i32 %i.0170, 3
  %add = sub nuw nsw i32 27, %rem.urem
  br label %for.cond33

for.cond33:                                       ; preds = %land.lhs.true.for.cond33_crit_edge, %for.body
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %41 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dcfg, align 8
  %arrayidx = getelementptr %struct.imx_mu_dcfg, ptr %42, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 %44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !132
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %47 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dcfg, align 8
  %type38 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %type38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type38, align 4
  %and39 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %rem.pn = select i1 %tobool40.not, i32 %add, i32 %rem.urem
  %cond44 = shl nuw nsw i32 1, %rem.pn
  %and45 = and i32 %cond44, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true, label %for.cond33.for.end_crit_edge

for.cond33.for.end_crit_edge:                     ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond33
  %call50 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %if.then54, label %land.lhs.true.for.cond33_crit_edge

land.lhs.true.for.cond33_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond33

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i, align 4
  %53 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dcfg, align 8
  %arrayidx60 = getelementptr %struct.imx_mu_dcfg, ptr %54, i32 0, i32 6, i32 3
  %55 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %52, i32 %56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #9, !srcloc !132
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  br label %for.end

for.end:                                          ; preds = %if.then54, %for.cond33.for.end_crit_edge
  %xsr.0 = phi i32 [ %58, %if.then54 ], [ %46, %for.cond33.for.end_crit_edge ]
  %59 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dcfg, align 8
  %type72 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %type72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type72, align 4
  %and73 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %rem76.pn = select i1 %tobool74.not, i32 %add, i32 %rem.urem
  %cond84 = shl nuw nsw i32 1, %rem76.pn
  %and85 = and i32 %cond84, %xsr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.end92, label %if.end94

do.end92:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.34, i32 noundef %i.0170) #12
  br label %cleanup

if.end94:                                         ; preds = %for.end
  %xRR96 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %60, i32 0, i32 5
  %65 = ptrtoint ptr %xRR96 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %xRR96, align 4
  %mul = shl nuw nsw i32 %rem.urem, 2
  %add98 = add i32 %66, %mul
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %68, i32 %add98
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #9, !srcloc !132
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %71 = ptrtoint ptr %data.0171 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %data.0171, align 4
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %size.0
  br i1 %exitcond.not, label %if.end94.for.end101_crit_edge, label %if.end94.for.body_crit_edge

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end94.for.end101_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

for.end101:                                       ; preds = %if.end94.for.end101_crit_edge, %for.cond.preheader.for.end101_crit_edge
  %72 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dcfg, align 8
  %type103 = getelementptr inbounds %struct.imx_mu_dcfg, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %type103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type103, align 4
  %and104 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %cond106 = select i1 %tobool105.not, i32 134217728, i32 1
  %call2.i155 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xcr_lock.i) #9
  %76 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dcfg, align 8
  %arrayidx.i157 = getelementptr %struct.imx_mu_dcfg, ptr %77, i32 0, i32 7, i32 3
  %78 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i157, align 4
  %80 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i159 = getelementptr i8, ptr %81, i32 %79
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i159) #9, !srcloc !132
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %or.i = or i32 %83, %cond106
  %84 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dcfg, align 8
  %arrayidx8.i160 = getelementptr %struct.imx_mu_dcfg, ptr %85, i32 0, i32 7, i32 3
  %86 = ptrtoint ptr %arrayidx8.i160 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx8.i160, align 4
  %88 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i161 = getelementptr i8, ptr %89, i32 %87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i161, i32 %90) #9, !srcloc !135
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xcr_lock.i, i32 noundef %call2.i155) #9
  %chan = getelementptr inbounds %struct.imx_mu_con_priv, ptr %cp, i32 0, i32 3
  %91 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chan, align 4
  %93 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %msg, align 8
  tail call void @mbox_chan_received_data(ptr noundef %92, ptr noundef %94) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end101, %do.end92, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end92 ], [ 0, %for.end101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_mu_init_specific(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcfg, align 8
  %type = getelementptr inbounds %struct.imx_mu_dcfg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %type8 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 0, i32 2
  %5 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type8, align 4
  %arrayidx9 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 0
  %chan = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 0, i32 3
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx9, ptr %chan, align 4
  %con_priv12 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 0, i32 9
  %7 = ptrtoint ptr %con_priv12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %con_priv12, align 4
  %irq_desc = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 0, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc, i32 noundef 20, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0)
  %arrayidx.1 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.1, align 4
  %type8.1 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 1, i32 2
  %9 = ptrtoint ptr %type8.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type8.1, align 4
  %arrayidx9.1 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 1
  %chan.1 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 1, i32 3
  %10 = ptrtoint ptr %chan.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx9.1, ptr %chan.1, align 4
  %con_priv12.1 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 1, i32 9
  %11 = ptrtoint ptr %con_priv12.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.1, ptr %con_priv12.1, align 4
  %irq_desc.1 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 1, i32 1
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc.1, i32 noundef 20, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 0)
  br i1 %tobool.not, label %for.body.2, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx.2, align 4
  %type8.2 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 2, i32 2
  %13 = ptrtoint ptr %type8.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %type8.2, align 4
  %arrayidx9.2 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 2
  %chan.2 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 2, i32 3
  %14 = ptrtoint ptr %chan.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx9.2, ptr %chan.2, align 4
  %con_priv12.2 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 2, i32 9
  %15 = ptrtoint ptr %con_priv12.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.2, ptr %con_priv12.2, align 4
  %irq_desc.2 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 2, i32 1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc.2, i32 noundef 20, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 0)
  %arrayidx.3 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx.3, align 4
  %type8.3 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 3, i32 2
  %17 = ptrtoint ptr %type8.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %type8.3, align 4
  %arrayidx9.3 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 3
  %chan.3 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 3, i32 3
  %18 = ptrtoint ptr %chan.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx9.3, ptr %chan.3, align 4
  %con_priv12.3 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 3, i32 9
  %19 = ptrtoint ptr %con_priv12.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.3, ptr %con_priv12.3, align 4
  %irq_desc.3 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 3, i32 1
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc.3, i32 noundef 20, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 1)
  %arrayidx.4 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %arrayidx.4, align 4
  %type8.4 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 4, i32 2
  %21 = ptrtoint ptr %type8.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %type8.4, align 4
  %arrayidx9.4 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 4
  %chan.4 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 4, i32 3
  %22 = ptrtoint ptr %chan.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx9.4, ptr %chan.4, align 4
  %con_priv12.4 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 4, i32 9
  %23 = ptrtoint ptr %con_priv12.4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.4, ptr %con_priv12.4, align 4
  %irq_desc.4 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 4, i32 1
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc.4, i32 noundef 20, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 2)
  %arrayidx.5 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %arrayidx.5, align 4
  %type8.5 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 5, i32 2
  %25 = ptrtoint ptr %type8.5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %type8.5, align 4
  %arrayidx9.5 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 5
  %chan.5 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 5, i32 3
  %26 = ptrtoint ptr %chan.5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx9.5, ptr %chan.5, align 4
  %con_priv12.5 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 5, i32 5, i32 9
  %27 = ptrtoint ptr %con_priv12.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.5, ptr %con_priv12.5, align 4
  %irq_desc.5 = getelementptr %struct.imx_mu_priv, ptr %priv, i32 0, i32 6, i32 5, i32 1
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_desc.5, i32 noundef 20, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 3)
  br label %for.end

for.end:                                          ; preds = %for.body.2, %entry.for.end_crit_edge
  %cond = select i1 %tobool.not, i32 6, i32 2
  %num_chans15 = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %num_chans15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond, ptr %num_chans15, align 4
  %of_xlate = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 4, i32 7
  %29 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @imx_mu_specific_xlate, ptr %of_xlate, align 8
  %base.i = getelementptr inbounds %struct.imx_mu_priv, ptr %priv, i32 0, i32 1
  %30 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dcfg, align 8
  %arrayidx21 = getelementptr %struct.imx_mu_dcfg, ptr %31, i32 0, i32 7, i32 0
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx21, align 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !135
  %36 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dcfg, align 8
  %arrayidx21.1 = getelementptr %struct.imx_mu_dcfg, ptr %37, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx21.1, align 4
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #9, !srcloc !135
  %42 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dcfg, align 8
  %arrayidx21.2 = getelementptr %struct.imx_mu_dcfg, ptr %43, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx21.2, align 4
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %47, i32 %45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #9, !srcloc !135
  %48 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dcfg, align 8
  %arrayidx21.3 = getelementptr %struct.imx_mu_dcfg, ptr %49, i32 0, i32 7, i32 3
  %50 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx21.3, align 4
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %53, i32 %51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 0) #9, !srcloc !135
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imx_mu_specific_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %sp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %sp, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %sp, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %sp, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %do.end14 [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge45
    i32 3, label %sw.bb11
  ]

if.end.sw.bb_crit_edge45:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %sw.bb.sw.epilog_crit_edge, label %do.end8

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.38, i32 noundef %7) #12
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %7, 2
  br label %sw.epilog

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbox, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.41, i32 noundef %5) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %do.end8, %sw.bb.sw.epilog_crit_edge
  %chan.0 = phi i32 [ %add, %sw.bb11 ], [ %5, %do.end8 ], [ %5, %sw.bb.sw.epilog_crit_edge ]
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %13 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chan.0, i32 %14)
  %cmp17.not = icmp ult i32 %chan.0, %14
  br i1 %cmp17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbox, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef %chan.0, i32 noundef %5, i32 noundef %7) #12
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %17 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chans, align 8
  %arrayidx25 = getelementptr %struct.mbox_chan, ptr %18, i32 %chan.0
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end21, %do.end14, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end14 ], [ inttoptr (i32 -22 to ptr), %do.end21 ], [ %arrayidx25, %if.end24 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcfg, align 8
  %arrayidx = getelementptr %struct.imx_mu_dcfg, ptr %5, i32 0, i32 7, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !132
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %arrayidx2 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 0
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx2, align 4
  %13 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcfg, align 8
  %arrayidx.1 = getelementptr %struct.imx_mu_dcfg, ptr %14, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %18, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #9, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %arrayidx2.1 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx2.1, align 4
  %22 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dcfg, align 8
  %arrayidx.2 = getelementptr %struct.imx_mu_dcfg, ptr %23, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %27, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #9, !srcloc !132
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %arrayidx2.2 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 2
  %30 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx2.2, align 4
  %31 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dcfg, align 8
  %arrayidx.3 = getelementptr %struct.imx_mu_dcfg, ptr %32, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.3, align 4
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %36, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #9, !srcloc !132
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %arrayidx2.3 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 3
  %39 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx2.3, align 4
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dcfg = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcfg, align 8
  %xCR = getelementptr inbounds %struct.imx_mu_dcfg, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %xCR to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xCR, align 4
  %base.i = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %clk = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %for.body.preheader, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 0
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  %13 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcfg, align 8
  %arrayidx6 = getelementptr %struct.imx_mu_dcfg, ptr %14, i32 0, i32 7, i32 0
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %18, i32 %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %19) #9, !srcloc !135
  %arrayidx3.1 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3.1, align 4
  %22 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dcfg, align 8
  %arrayidx6.1 = getelementptr %struct.imx_mu_dcfg, ptr %23, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.1, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i16.1 = getelementptr i8, ptr %27, i32 %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.1, i32 %28) #9, !srcloc !135
  %arrayidx3.2 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 2
  %29 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3.2, align 4
  %31 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dcfg, align 8
  %arrayidx6.2 = getelementptr %struct.imx_mu_dcfg, ptr %32, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.2, align 4
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i16.2 = getelementptr i8, ptr %36, i32 %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.2, i32 %37) #9, !srcloc !135
  %arrayidx3.3 = getelementptr %struct.imx_mu_priv, ptr %1, i32 0, i32 10, i32 3
  %38 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.3, align 4
  %40 = ptrtoint ptr %dcfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dcfg, align 8
  %arrayidx6.3 = getelementptr %struct.imx_mu_dcfg, ptr %41, i32 0, i32 7, i32 3
  %42 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx6.3, align 4
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i16.3 = getelementptr i8, ptr %45, i32 %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.3, i32 %46) #9, !srcloc !135
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_mu_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx_mu_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !115, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_imx_mailbox__188_766_imx_mu_driver_init6, !1, !"__initcall__kmod_imx_mailbox__188_766_imx_mu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/imx-mailbox.c", i32 766, i32 1}
!2 = !{ptr @__exitcall_imx_mu_driver_exit, !1, !"__exitcall_imx_mu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author189, !4, !"__UNIQUE_ID_author189", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/imx-mailbox.c", i32 768, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/mailbox/imx-mailbox.c", i32 769, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/imx-mailbox.c", i32 770, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/imx-mailbox.c", i32 761, i32 11}
!12 = !{ptr @imx_mu_driver, !13, !"imx_mu_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/imx-mailbox.c", i32 757, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/imx-mailbox.c", i32 579, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx_mu_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx_mu_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mailbox/imx-mailbox.c", i32 583, i32 43}
!24 = !{ptr @imx_mu_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/imx-mailbox.c", i32 587, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @imx_mu_ops, !28, !"imx_mu_ops", i1 false, i1 false}
!28 = !{!"../drivers/mailbox/imx-mailbox.c", i32 418, i32 35}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mailbox/imx-mailbox.c", i32 370, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @imx_mu_startup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx_mu_startup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/imx-mailbox.c", i32 312, i32 3}
!36 = !{ptr @imx_mu_isr._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @__func__.imx_mu_isr, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @imx_mu_isr._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx_mu_isr._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @imx_mu_isr._rs.13, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/imx-mailbox.c", i32 333, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @imx_mu_isr._entry.14, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @imx_mu_isr._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @imx_mu_dt_ids, !48, !"imx_mu_dt_ids", i1 false, i1 false}
!48 = !{!"../drivers/mailbox/imx-mailbox.c", i32 685, i32 34}
!49 = !{ptr @imx_mu_cfg_imx7ulp, !50, !"imx_mu_cfg_imx7ulp", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/imx-mailbox.c", i32 643, i32 33}
!51 = !{ptr @imx_mu_generic_tx._rs, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/mailbox/imx-mailbox.c", i32 162, i32 3}
!53 = !{ptr @__func__.imx_mu_generic_tx, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @imx_mu_generic_tx._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @imx_mu_generic_tx._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mailbox/imx-mailbox.c", i32 494, i32 5}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mailbox/imx-mailbox.c", i32 466, i32 3}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @imx_mu_xlate._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @imx_mu_xlate._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mailbox/imx-mailbox.c", i32 475, i32 3}
!66 = !{ptr @imx_mu_xlate._entry.21, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @imx_mu_xlate._entry_ptr.23, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @imx_mu_cfg_imx6sx, !69, !"imx_mu_cfg_imx6sx", i1 false, i1 false}
!69 = !{!"../drivers/mailbox/imx-mailbox.c", i32 633, i32 33}
!70 = !{ptr @imx_mu_cfg_imx8ulp, !71, !"imx_mu_cfg_imx8ulp", i1 false, i1 false}
!71 = !{!"../drivers/mailbox/imx-mailbox.c", i32 653, i32 33}
!72 = !{ptr @imx_mu_cfg_imx8ulp_s4, !73, !"imx_mu_cfg_imx8ulp_s4", i1 false, i1 false}
!73 = !{!"../drivers/mailbox/imx-mailbox.c", i32 664, i32 33}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mailbox/imx-mailbox.c", i32 209, i32 4}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @imx_mu_specific_tx._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @imx_mu_specific_tx._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mailbox/imx-mailbox.c", i32 221, i32 5}
!81 = !{ptr @imx_mu_specific_tx._entry.26, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @imx_mu_specific_tx._entry_ptr.28, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @imx_mu_specific_tx._rs, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../drivers/mailbox/imx-mailbox.c", i32 230, i32 3}
!85 = !{ptr @imx_mu_specific_tx._entry.29, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @imx_mu_specific_tx._entry_ptr.30, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mailbox/imx-mailbox.c", i32 258, i32 3}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @imx_mu_specific_rx._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @imx_mu_specific_rx._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mailbox/imx-mailbox.c", i32 266, i32 4}
!94 = !{ptr @imx_mu_specific_rx._entry.33, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @imx_mu_specific_rx._entry_ptr.35, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mailbox/imx-mailbox.c", i32 430, i32 3}
!98 = !{ptr @imx_mu_specific_xlate._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @imx_mu_specific_xlate._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mailbox/imx-mailbox.c", i32 441, i32 4}
!102 = !{ptr @imx_mu_specific_xlate._entry.37, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @imx_mu_specific_xlate._entry_ptr.39, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mailbox/imx-mailbox.c", i32 448, i32 3}
!106 = !{ptr @imx_mu_specific_xlate._entry.40, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @imx_mu_specific_xlate._entry_ptr.42, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @imx_mu_specific_xlate._entry.43, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/mailbox/imx-mailbox.c", i32 453, i32 3}
!110 = !{ptr @imx_mu_specific_xlate._entry_ptr.44, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @imx_mu_cfg_imx8_scu, !112, !"imx_mu_cfg_imx8_scu", i1 false, i1 false}
!112 = !{!"../drivers/mailbox/imx-mailbox.c", i32 675, i32 33}
!113 = !{ptr @imx_mu_pm_ops, !114, !"imx_mu_pm_ops", i1 false, i1 false}
!114 = !{!"../drivers/mailbox/imx-mailbox.c", i32 750, i32 32}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mailbox/imx-mailbox.c", i32 745, i32 3}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @imx_mu_runtime_resume._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @imx_mu_runtime_resume._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148256968}
!130 = !{i64 741791, i64 741816, i64 741838, i64 741854, i64 741866, i64 741886, i64 741910, i64 741926, i64 741938}
!131 = !{i64 2148257156}
!132 = !{i64 4910004}
!133 = !{i64 2152450353}
!134 = !{i64 2152451708}
!135 = !{i64 4909586}
!136 = !{i8 0, i8 2}
!137 = !{i64 2153232300}
!138 = !{i64 2153232878}
!139 = !{i64 2153242308}
!140 = !{i64 2153242886}
