; ModuleID = '/llk/IR_all_yes/drivers/slimbus/qcom-ctrl.c_pt.bc'
source_filename = "../drivers/slimbus/qcom-ctrl.c"
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
%struct.atomic_t = type { i32 }
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
%struct.qcom_slim_ctrl = type { %struct.slim_controller, %struct.slim_framer, ptr, ptr, ptr, %struct.slim_ctrl_buf, %struct.slim_ctrl_buf, ptr, i32, ptr, %struct.work_struct, ptr, ptr }
%struct.slim_controller = type { ptr, i32, [32 x i8], i32, i32, i32, %struct.ida, ptr, %struct.mutex, %struct.list_head, %struct.idr, %struct.spinlock, %struct.slim_sched, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.slim_sched = type { i32, %struct.completion, %struct.mutex }
%struct.slim_framer = type { %struct.device, %struct.slim_eaddr, i32, i32 }
%struct.slim_eaddr = type { i8, i8, i16, i16 }
%struct.slim_ctrl_buf = type { ptr, %struct.spinlock, i32, i32, i32, i32 }
%struct.anon.44 = type <{ i16, i16, i8, i8, i8 }>
%struct.slim_val_inf = type { i16, i8, ptr, ptr, ptr }
%struct.slim_msg_txn = type { i8, i8, i8, i8, i16, i8, i8, ptr, ptr }

@__initcall__kmod_slim_qcom_ctrl__193_736_qcom_slim_driver_init6 = internal global ptr @qcom_slim_driver_init, section ".initcall6.init", align 4
@qcom_slim_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_slim_probe, ptr @qcom_slim_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_slim_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_slim_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_slim_driver_exit = internal global ptr @qcom_slim_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file194 = internal constant [51 x i8] c"slim_qcom_ctrl.file=drivers/slimbus/slim-qcom-ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [30 x i8] c"slim_qcom_ctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description196 = internal constant [55 x i8] c"slim_qcom_ctrl.description=Qualcomm SLIMbus Controller\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_slim_ctrl\00", [17 x i8] zeroinitializer }, align 32
@qcom_slim_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,slim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8064-slim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qcom_slim_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qcom_slim_suspend, ptr @qcom_slim_resume, ptr @qcom_slim_suspend, ptr @qcom_slim_resume, ptr @qcom_slim_suspend, ptr @qcom_slim_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_slim_runtime_suspend, ptr @qcom_slim_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 508, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ref-clock set-rate failed:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_slim_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/slimbus/qcom-ctrl.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry_ptr = internal global ptr @qcom_slim_probe._entry, section ".printk_index", align 4
@qcom_slim_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 514, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no slimbus IRQ\0A\00", [16 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry_ptr.10 = internal global ptr @qcom_slim_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@qcom_slim_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctrl->rx.lock\00", [17 x i8] zeroinitializer }, align 32
@qcom_slim_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctrl->tx.lock\00", [17 x i8] zeroinitializer }, align 32
@qcom_slim_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&ctrl->wd)\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_slim_rx\00", [19 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 546, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to start Rx WQ\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry_ptr.21 = internal global ptr @qcom_slim_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_slim_irq\00", [18 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 561, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request IRQ failed\0A\00", [44 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry_ptr.25 = internal global ptr @qcom_slim_probe._entry.23, section ".printk_index", align 4
@qcom_slim_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 590, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error adding controller\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_slim_probe._entry_ptr.28 = internal global ptr @qcom_slim_probe._entry.26, section ".printk_index", align 4
@qcom_slim_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.4, ptr @.str.5, ptr @.str.30, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slim_qcom_ctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"QCOM SB controller is up:ver:0x%x!\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_set_laddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 417, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set LA:0x%x failed:ret:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_set_laddr\00", [17 x i8] zeroinitializer }, align 32
@qcom_set_laddr._entry_ptr = internal global ptr @qcom_set_laddr._entry, section ".printk_index", align 4
@qcom_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TX timed out:MC:0x%x,mt:0x%x\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_xfer_msg\00", [18 x i8] zeroinitializer }, align 32
@qcom_xfer_msg._entry_ptr = internal global ptr @qcom_xfer_msg._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@slim_alloc_txbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"controller TX buf unavailable\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slim_alloc_txbuf\00", [47 x i8] zeroinitializer }, align 32
@slim_alloc_txbuf._entry_ptr = internal global ptr @slim_alloc_txbuf._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qcom_slim_rxwq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"assign laddr failed:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_slim_rxwq\00", [17 x i8] zeroinitializer }, align 32
@qcom_slim_rxwq._entry_ptr = internal global ptr @qcom_slim_rxwq._entry, section ".printk_index", align 4
@qcom_slim_rxwq._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 467, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unexpected message:mc:%x, mt:%x\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_slim_rxwq._entry_ptr.42 = internal global ptr @qcom_slim_rxwq._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slew\00", [27 x i8] zeroinitializer }, align 32
@qcom_slim_handle_tx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX Nack MGR:int:0x%x, stat:0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_slim_handle_tx_irq\00", [40 x i8] zeroinitializer }, align 32
@qcom_slim_handle_tx_irq._entry_ptr = internal global ptr @qcom_slim_handle_tx_irq._entry, section ".printk_index", align 4
@qcom_slim_handle_tx_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 190, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX Nack MGR:ie:0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@qcom_slim_handle_tx_irq._entry_ptr.48 = internal global ptr @qcom_slim_handle_tx_irq._entry.46, section ".printk_index", align 4
@qcom_slim_handle_tx_irq._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.5, i32 192, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX Nack FRM:int:0x%x, stat:0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_slim_handle_tx_irq._entry_ptr.51 = internal global ptr @qcom_slim_handle_tx_irq._entry.49, section ".printk_index", align 4
@qcom_slim_handle_tx_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.5, i32 194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX Nack FRM:cfg:0x%x, ie:0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_slim_handle_tx_irq._entry_ptr.54 = internal global ptr @qcom_slim_handle_tx_irq._entry.52, section ".printk_index", align 4
@qcom_slim_handle_tx_irq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.5, i32 196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TX Nack INTF:intr:0x%x, stat:0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_slim_handle_tx_irq._entry_ptr.57 = internal global ptr @qcom_slim_handle_tx_irq._entry.55, section ".printk_index", align 4
@qcom_slim_handle_tx_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.5, i32 198, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX Nack INTF:ie:0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@qcom_slim_handle_tx_irq._entry_ptr.60 = internal global ptr @qcom_slim_handle_tx_irq._entry.58, section ".printk_index", align 4
@qcom_slim_handle_rx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 227, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dropping RX:0x%x due to RX full\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_slim_handle_rx_irq\00", [40 x i8] zeroinitializer }, align 32
@qcom_slim_handle_rx_irq._entry_ptr = internal global ptr @qcom_slim_handle_rx_irq._entry, section ".printk_index", align 4
@qcom_slim_handle_rx_irq._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 251, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported MC,%x MT:%x\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_slim_handle_rx_irq._entry_ptr.65 = internal global ptr @qcom_slim_handle_rx_irq._entry.63, section ".printk_index", align 4
@slim_alloc_rxbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 139, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX QUEUE full!\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slim_alloc_rxbuf\00", [47 x i8] zeroinitializer }, align 32
@slim_alloc_rxbuf._entry_ptr = internal global ptr @slim_alloc_rxbuf._entry, section ".printk_index", align 4
@qcom_slim_suspend.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.68, ptr @.str.5, ptr @.str.69, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_slim_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"system suspend\00", [17 x i8] zeroinitializer }, align 32
@qcom_slim_resume.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.70, ptr @.str.5, ptr @.str.71, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_slim_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"system resume\00", [18 x i8] zeroinitializer }, align 32
@qcom_slim_runtime_suspend.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.72, ptr @.str.5, ptr @.str.73, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_slim_runtime_suspend\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm_runtime: suspending...\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_slim_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.5, i32 658, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk pause not entered:%d\00", [39 x i8] zeroinitializer }, align 32
@qcom_slim_runtime_suspend._entry_ptr = internal global ptr @qcom_slim_runtime_suspend._entry, section ".printk_index", align 4
@qcom_slim_runtime_resume.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.75, ptr @.str.5, ptr @.str.76, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_slim_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm_runtime: resuming...\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_slim_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.5, i32 675, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk pause not exited:%d\00", [40 x i8] zeroinitializer }, align 32
@qcom_slim_runtime_resume._entry_ptr = internal global ptr @qcom_slim_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 36, i64 100]
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"qcom_slim_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 727, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 731, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"qcom_slim_dt_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 721, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"qcom_slim_dev_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 712, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 498, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 502, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 508, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 514, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 524, i32 64 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 541, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 542, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 543, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 544, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 546, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 559, i32 24 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 561, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 590, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 620, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 416, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 380, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 87, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 312, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 463, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 466, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 477, i32 64 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 188, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 190, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 191, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 193, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 195, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 197, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 226, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 250, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 139, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 687, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 699, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 655, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 658, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 672, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [31 x i8] c"../drivers/slimbus/qcom-ctrl.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 675, i32 3 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__exitcall_qcom_slim_driver_exit, ptr @__initcall__kmod_slim_qcom_ctrl__193_736_qcom_slim_driver_init6, ptr @qcom_set_laddr._entry, ptr @qcom_set_laddr._entry_ptr, ptr @qcom_slim_driver_exit, ptr @qcom_slim_handle_rx_irq._entry, ptr @qcom_slim_handle_rx_irq._entry.63, ptr @qcom_slim_handle_rx_irq._entry_ptr, ptr @qcom_slim_handle_rx_irq._entry_ptr.65, ptr @qcom_slim_handle_tx_irq._entry, ptr @qcom_slim_handle_tx_irq._entry.46, ptr @qcom_slim_handle_tx_irq._entry.49, ptr @qcom_slim_handle_tx_irq._entry.52, ptr @qcom_slim_handle_tx_irq._entry.55, ptr @qcom_slim_handle_tx_irq._entry.58, ptr @qcom_slim_handle_tx_irq._entry_ptr, ptr @qcom_slim_handle_tx_irq._entry_ptr.48, ptr @qcom_slim_handle_tx_irq._entry_ptr.51, ptr @qcom_slim_handle_tx_irq._entry_ptr.54, ptr @qcom_slim_handle_tx_irq._entry_ptr.57, ptr @qcom_slim_handle_tx_irq._entry_ptr.60, ptr @qcom_slim_probe._entry, ptr @qcom_slim_probe._entry.19, ptr @qcom_slim_probe._entry.23, ptr @qcom_slim_probe._entry.26, ptr @qcom_slim_probe._entry.8, ptr @qcom_slim_probe._entry_ptr, ptr @qcom_slim_probe._entry_ptr.10, ptr @qcom_slim_probe._entry_ptr.21, ptr @qcom_slim_probe._entry_ptr.25, ptr @qcom_slim_probe._entry_ptr.28, ptr @qcom_slim_runtime_resume._entry, ptr @qcom_slim_runtime_resume._entry_ptr, ptr @qcom_slim_runtime_suspend._entry, ptr @qcom_slim_runtime_suspend._entry_ptr, ptr @qcom_slim_rxwq._entry, ptr @qcom_slim_rxwq._entry.40, ptr @qcom_slim_rxwq._entry_ptr, ptr @qcom_slim_rxwq._entry_ptr.42, ptr @qcom_xfer_msg._entry, ptr @qcom_xfer_msg._entry_ptr, ptr @slim_alloc_rxbuf._entry, ptr @slim_alloc_rxbuf._entry_ptr, ptr @slim_alloc_txbuf._entry, ptr @slim_alloc_txbuf._entry_ptr, ptr @qcom_slim_driver, ptr @.str, ptr @qcom_slim_dt_match, ptr @qcom_slim_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @qcom_slim_probe.__key, ptr @.str.12, ptr @qcom_slim_probe.__key.13, ptr @.str.14, ptr @qcom_slim_probe.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_set_laddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_alloc_txbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_rxwq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_rxwq._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_tx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_tx_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_tx_irq._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_tx_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_tx_irq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_tx_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_rx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_handle_rx_irq._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_alloc_rxbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_slim_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_slim_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_slim_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1640, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %hclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 12
  %0 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %hclk, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %rclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %rclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %rclk, align 4
  %cmp.i314 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call18 = tail call i32 @clk_set_rate(ptr noundef %call10, i32 noundef 24576000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call18) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call23, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %dev36 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev36, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call38 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.11) #8
  %8 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev36, align 8
  %call40 = tail call ptr @devm_ioremap_resource(ptr noundef %9, ptr noundef %call38) #8
  %base = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call40, ptr %base, align 4
  %cmp.i315 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  %set_laddr = getelementptr inbounds %struct.slim_controller, ptr %call.i, i32 0, i32 14
  %12 = ptrtoint ptr %set_laddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @qcom_set_laddr, ptr %set_laddr, align 4
  %xfer_msg = getelementptr inbounds %struct.slim_controller, ptr %call.i, i32 0, i32 13
  %13 = ptrtoint ptr %xfer_msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @qcom_xfer_msg, ptr %xfer_msg, align 4
  %wakeup = getelementptr inbounds %struct.slim_controller, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qcom_clk_pause_wakeup, ptr %wakeup, align 4
  %tx = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 6
  %n = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 6, i32 5
  %15 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %n, align 4
  %sl_sz = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %sl_sz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 40, ptr %sl_sz, align 4
  %rx = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 5
  %n48 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %n48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %n48, align 4
  %sl_sz50 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %sl_sz50 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 40, ptr %sl_sz50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 8) #12
  %wr_comp = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %wr_comp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %wr_comp, align 4
  %tobool53.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool53.not, label %if.end46.cleanup_crit_edge, label %do.body56

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body56:                                        ; preds = %if.end46
  %lock = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @qcom_slim_probe.__key, i16 noundef signext 3) #8
  %lock63 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock63, ptr noundef nonnull @.str.14, ptr noundef nonnull @qcom_slim_probe.__key.13, i16 noundef signext 3) #8
  %wd = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %wd, i32 noundef 0) #8
  %21 = ptrtoint ptr %wd to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %wd, align 8
  %lockdep_map = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @qcom_slim_probe.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry71 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %entry71 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry71, ptr %entry71, align 4
  %prev.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry71, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qcom_slim_rxwq, ptr %func, align 4
  %call75 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.17, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.18) #8
  %rxwq = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %rxwq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call75, ptr %rxwq, align 4
  %tobool77.not = icmp eq ptr %call75, null
  br i1 %tobool77.not, label %do.end81, label %if.end83

do.end81:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end83:                                         ; preds = %do.body56
  %framer = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 1
  %rootfreq = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %rootfreq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3072000, ptr %rootfreq, align 8
  %superfreq = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %superfreq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4000, ptr %superfreq, align 4
  %a_framer = getelementptr inbounds %struct.slim_controller, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %a_framer to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %framer, ptr %a_framer, align 4
  %clkgear = getelementptr inbounds %struct.slim_controller, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %clkgear to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 10, ptr %clkgear, align 4
  %slew_reg.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %slew_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %slew_reg.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end83.if.end5.i_crit_edge

if.end83.if.end5.i_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end83
  %call.i316 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.43) #8
  %34 = ptrtoint ptr %slew_reg.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i316, ptr %slew_reg.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i316, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.qcom_slim_prg_slew.exit_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i.qcom_slim_prg_slew.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_slim_prg_slew.exit

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end83.if.end5.i_crit_edge
  %35 = ptrtoint ptr %slew_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slew_reg.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16777216) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  br label %qcom_slim_prg_slew.exit

qcom_slim_prg_slew.exit:                          ; preds = %if.end5.i, %if.then.i.qcom_slim_prg_slew.exit_crit_edge
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 8
  %call.i317 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %38, ptr noundef nonnull @qcom_slim_interrupt, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool91.not = icmp eq i32 %call.i317, 0
  br i1 %tobool91.not, label %if.end97, label %do.end95

do.end95:                                         ; preds = %qcom_slim_prg_slew.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #11
  br label %err_request_irq_failed

if.end97:                                         ; preds = %qcom_slim_prg_slew.exit
  %39 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hclk, align 8
  %call.i318 = tail call i32 @clk_prepare(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool.not.i319 = icmp eq i32 %call.i318, 0
  br i1 %tobool.not.i319, label %if.end.i, label %if.end97.err_request_irq_failed_crit_edge

if.end97.err_request_irq_failed_crit_edge:        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_request_irq_failed

if.end.i:                                         ; preds = %if.end97
  %call1.i = tail call i32 @clk_enable(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end102, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %40) #8
  br label %err_request_irq_failed

if.end102:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %rclk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rclk, align 4
  %call104 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end102.err_rclk_enable_failed_crit_edge

if.end102.err_rclk_enable_failed_crit_edge:       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rclk_enable_failed

if.end107:                                        ; preds = %if.end102
  %43 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n, align 4
  %45 = ptrtoint ptr %sl_sz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sl_sz, align 4
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 %46) #8
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !167

devm_kcalloc.exit.thread:                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %tx, align 4
  br label %err

devm_kcalloc.exit:                                ; preds = %if.end107
  %50 = extractvalue { i32, i1 } %47, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %50, i32 noundef 3520) #8
  %51 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i.i, ptr %tx, align 4
  %tobool118.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool118.not, label %devm_kcalloc.exit.err_crit_edge, label %if.end120

devm_kcalloc.exit.err_crit_edge:                  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end120:                                        ; preds = %devm_kcalloc.exit
  %52 = ptrtoint ptr %n48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n48, align 4
  %54 = ptrtoint ptr %sl_sz50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sl_sz50, align 4
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 %55) #8
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %devm_kcalloc.exit324.thread, label %devm_kcalloc.exit324, !prof !167

devm_kcalloc.exit324.thread:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rx, align 4
  br label %err

devm_kcalloc.exit324:                             ; preds = %if.end120
  %59 = extractvalue { i32, i1 } %56, 0
  %call5.i.i321 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %59, i32 noundef 3520) #8
  %60 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i.i321, ptr %rx, align 4
  %tobool131.not = icmp eq ptr %call5.i.i321, null
  br i1 %tobool131.not, label %devm_kcalloc.exit324.err_crit_edge, label %if.end133

devm_kcalloc.exit324.err_crit_edge:               ; preds = %devm_kcalloc.exit324
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end133:                                        ; preds = %devm_kcalloc.exit324
  %call135 = tail call i32 @slim_register_controller(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end142, label %do.end140

do.end140:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.27) #11
  br label %err

if.end142:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !168
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %66)
  %tobool149.not = icmp ult i32 %66, 65536
  %cond = select i1 %tobool149.not, i32 0, i32 4
  %add.ptr = getelementptr i8, ptr %68, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %cond155 = select i1 %tobool149.not, i32 20, i32 12288
  %add.ptr156 = getelementptr i8, ptr %70, i32 %cond155
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 -2147221504) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr161 = getelementptr i8, ptr %72, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 198) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr166 = getelementptr i8, ptr %74, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 16777216) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr171 = getelementptr i8, ptr %76, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 51186944) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr176 = getelementptr i8, ptr %78, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176, i32 16777216) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr181 = getelementptr i8, ptr %80, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 16777216) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr188 = getelementptr i8, ptr %82, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 16777216) #8, !srcloc !165
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #8
  %call.i325 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  %call.i326 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %83 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store volatile i64 %call.i326, ptr %last_busy.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_slim_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_slim_probe, %if.then201)) #8
          to label %cleanup [label %if.then201], !srcloc !177

if.then201:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %shr = ashr i32 %66, 16
  %84 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_slim_probe.__UNIQUE_ID_ddebug188, ptr noundef %85, ptr noundef nonnull @.str.30, i32 noundef %shr) #8
  br label %cleanup

err:                                              ; preds = %do.end140, %devm_kcalloc.exit324.err_crit_edge, %devm_kcalloc.exit324.thread, %devm_kcalloc.exit.err_crit_edge, %devm_kcalloc.exit.thread
  %ret.0 = phi i32 [ %call135, %do.end140 ], [ -12, %devm_kcalloc.exit.err_crit_edge ], [ -12, %devm_kcalloc.exit324.err_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit324.thread ]
  %86 = ptrtoint ptr %rclk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rclk, align 4
  tail call void @clk_disable(ptr noundef %87) #8
  tail call void @clk_unprepare(ptr noundef %87) #8
  br label %err_rclk_enable_failed

err_rclk_enable_failed:                           ; preds = %err, %if.end102.err_rclk_enable_failed_crit_edge
  %ret.1 = phi i32 [ %call104, %if.end102.err_rclk_enable_failed_crit_edge ], [ %ret.0, %err ]
  %88 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %89) #8
  tail call void @clk_unprepare(ptr noundef %89) #8
  br label %err_request_irq_failed

err_request_irq_failed:                           ; preds = %err_rclk_enable_failed, %if.then3.i, %if.end97.err_request_irq_failed_crit_edge, %do.end95
  %ret.2 = phi i32 [ %call.i317, %do.end95 ], [ %ret.1, %err_rclk_enable_failed ], [ %call1.i, %if.then3.i ], [ %call.i318, %if.end97.err_request_irq_failed_crit_edge ]
  %90 = ptrtoint ptr %rxwq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rxwq, align 4
  tail call void @destroy_workqueue(ptr noundef %91) #8
  br label %cleanup

cleanup:                                          ; preds = %err_request_irq_failed, %if.then201, %if.end142, %do.end81, %if.end46.cleanup_crit_edge, %if.then43, %do.end29, %do.end, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then13 ], [ %call18, %do.end ], [ %11, %if.then43 ], [ %ret.2, %err_request_irq_failed ], [ -12, %do.end81 ], [ -19, %do.end29 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end46.cleanup_crit_edge ], [ 0, %if.then201 ], [ 0, %if.end142 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call2 = tail call i32 @slim_unregister_controller(ptr noundef %1) #8
  %rclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %rclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rclk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %hclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %rxwq = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %rxwq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxwq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_set_laddr(ptr nocapture noundef readonly %sctrl, ptr nocapture noundef readonly %ead, i8 noundef zeroext %laddr) #2 align 64 {
entry:
  %p = alloca %struct.anon.44, align 2
  %msg = alloca %struct.slim_val_inf, align 4
  %txn = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctrl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %p) #8
  %4 = getelementptr inbounds %struct.anon.44, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.44, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.anon.44, ptr %p, i32 0, i32 3
  %7 = getelementptr inbounds %struct.anon.44, ptr %p, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %8 = call ptr @memset(ptr %msg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn) #8
  %9 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %10 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %11 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 3
  %12 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 4
  %13 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %14 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %15 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %16 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 8
  %17 = ptrtoint ptr %txn to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %txn, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %9, align 1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %10, align 2
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %11, align 1
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %12, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %13, align 2
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %laddr, ptr %14, align 1
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg, ptr %15, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %16, align 4
  %manf_id = getelementptr inbounds %struct.slim_eaddr, ptr %ead, i32 0, i32 3
  %26 = ptrtoint ptr %manf_id to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %manf_id, align 1
  %28 = ptrtoint ptr %p to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %p, align 2
  %prod_code = getelementptr inbounds %struct.slim_eaddr, ptr %ead, i32 0, i32 2
  %29 = ptrtoint ptr %prod_code to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %prod_code, align 1
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %4, align 2
  %dev_index = getelementptr inbounds %struct.slim_eaddr, ptr %ead, i32 0, i32 1
  %32 = ptrtoint ptr %dev_index to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dev_index, align 1
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %5, align 2
  %35 = ptrtoint ptr %ead to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ead, align 1
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %6, align 1
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %laddr, ptr %7, align 2
  %wbuf = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %39 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %p, ptr %wbuf, align 4
  %num_bytes = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %40 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 7, ptr %num_bytes, align 2
  %call8 = call i32 @slim_do_transfer(ptr noundef %3, ptr noundef nonnull %txn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev9, align 8
  %conv = zext i8 %laddr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %call8) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %p) #8
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_xfer_msg(ptr nocapture noundef readonly %sctrl, ptr nocapture noundef %txn) #2 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctrl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #8
  %4 = getelementptr inbounds i8, ptr %done, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #8
  %lock.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6, i32 1
  %call2.i134 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %head.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %head.i, align 4
  %add.i = add i32 %8, 1
  %n.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6, i32 5
  %9 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n.i, align 4
  %rem.i = srem i32 %add.i, %10
  %tail.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %12)
  %cmp8.i = icmp eq i32 %rem.i, %12
  br i1 %cmp8.i, label %slim_alloc_txbuf.exit.thread, label %slim_alloc_txbuf.exit

slim_alloc_txbuf.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i134) #8
  %dev.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.36) #11
  %15 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %txn, align 4
  %conv171 = zext i8 %16 to i32
  %add172 = add nuw nsw i32 %conv171, 100
  %la2173 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %17 = ptrtoint ptr %la2173 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %la2173, align 1
  %dec174 = add i8 %16, -1
  store i8 %dec174, ptr %txn, align 4
  br label %while.cond.preheader

slim_alloc_txbuf.exit:                            ; preds = %entry
  %tx.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6
  %wr_comp.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %wr_comp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr_comp.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %12
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %done, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail.i, align 4
  %add19.i = add i32 %23, 1
  %24 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n.i, align 4
  %rem22.i = srem i32 %add19.i, %25
  store i32 %rem22.i, ptr %tail.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i134) #8
  %26 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx.i, align 4
  %sl_sz.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %sl_sz.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sl_sz.i, align 4
  %mul.i = mul i32 %29, %12
  %add.ptr.i = getelementptr i8, ptr %27, i32 %mul.i
  %30 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %txn, align 4
  %conv = zext i8 %31 to i32
  %add = add nuw nsw i32 %conv, 100
  %la2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %32 = ptrtoint ptr %la2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %la2, align 1
  %dec = add i8 %31, -1
  store i8 %dec, ptr %txn, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %slim_alloc_txbuf.exit.while.cond.preheader_crit_edge, label %slim_alloc_txbuf.exit.if.end13_crit_edge

slim_alloc_txbuf.exit.if.end13_crit_edge:         ; preds = %slim_alloc_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

slim_alloc_txbuf.exit.while.cond.preheader_crit_edge: ; preds = %slim_alloc_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %slim_alloc_txbuf.exit.while.cond.preheader_crit_edge, %slim_alloc_txbuf.exit.thread
  %34 = phi i8 [ %18, %slim_alloc_txbuf.exit.thread ], [ %33, %slim_alloc_txbuf.exit.while.cond.preheader_crit_edge ]
  %add179 = phi i32 [ %add172, %slim_alloc_txbuf.exit.thread ], [ %add, %slim_alloc_txbuf.exit.while.cond.preheader_crit_edge ]
  %tx.i147 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6
  %wr_comp.i148 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 7
  %sl_sz.i152 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 6, i32 4
  %dev.i145 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %slim_alloc_txbuf.exit157.while.cond_crit_edge, %while.cond.preheader
  %retries.0 = phi i32 [ %dec4, %slim_alloc_txbuf.exit157.while.cond_crit_edge ], [ 10, %while.cond.preheader ]
  %dec4 = add nsw i32 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool5.not = icmp eq i32 %retries.0, 0
  br i1 %tobool5.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #8
  %call2.i138 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %head.i, align 4
  %add.i140 = add i32 %36, 1
  %37 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n.i, align 4
  %rem.i142 = srem i32 %add.i140, %38
  %39 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i142, i32 %40)
  %cmp8.i144 = icmp eq i32 %rem.i142, %40
  br i1 %cmp8.i144, label %if.then.i146, label %if.end.i155

if.then.i146:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i138) #8
  %41 = ptrtoint ptr %dev.i145 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i145, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.36) #11
  br label %slim_alloc_txbuf.exit157

if.end.i155:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %wr_comp.i148 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wr_comp.i148, align 4
  %arrayidx.i149 = getelementptr ptr, ptr %44, i32 %40
  %45 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %done, ptr %arrayidx.i149, align 4
  %46 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tail.i, align 4
  %add19.i150 = add i32 %47, 1
  %48 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n.i, align 4
  %rem22.i151 = srem i32 %add19.i150, %49
  store i32 %rem22.i151, ptr %tail.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i138) #8
  %50 = ptrtoint ptr %tx.i147 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx.i147, align 4
  %52 = ptrtoint ptr %sl_sz.i152 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sl_sz.i152, align 4
  %mul.i153 = mul i32 %53, %40
  %add.ptr.i154 = getelementptr i8, ptr %51, i32 %mul.i153
  br label %slim_alloc_txbuf.exit157

slim_alloc_txbuf.exit157:                         ; preds = %if.end.i155, %if.then.i146
  %retval.0.i156 = phi ptr [ null, %if.then.i146 ], [ %add.ptr.i154, %if.end.i155 ]
  %tobool7.not = icmp eq ptr %retval.0.i156, null
  br i1 %tobool7.not, label %slim_alloc_txbuf.exit157.while.cond_crit_edge, label %slim_alloc_txbuf.exit157.if.end13_crit_edge

slim_alloc_txbuf.exit157.if.end13_crit_edge:      ; preds = %slim_alloc_txbuf.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

slim_alloc_txbuf.exit157.while.cond_crit_edge:    ; preds = %slim_alloc_txbuf.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end13:                                         ; preds = %slim_alloc_txbuf.exit157.if.end13_crit_edge, %slim_alloc_txbuf.exit.if.end13_crit_edge
  %54 = phi i8 [ %33, %slim_alloc_txbuf.exit.if.end13_crit_edge ], [ %34, %slim_alloc_txbuf.exit157.if.end13_crit_edge ]
  %add178 = phi i32 [ %add, %slim_alloc_txbuf.exit.if.end13_crit_edge ], [ %add179, %slim_alloc_txbuf.exit157.if.end13_crit_edge ]
  %pbuf.1165 = phi ptr [ %add.ptr.i, %slim_alloc_txbuf.exit.if.end13_crit_edge ], [ %retval.0.i156, %slim_alloc_txbuf.exit157.if.end13_crit_edge ]
  %dt = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 3
  %55 = ptrtoint ptr %dt to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp15 = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %txn, align 4
  %conv19 = zext i8 %58 to i32
  %mt = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %59 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mt, align 1
  %conv20 = zext i8 %60 to i32
  %shl = shl nuw nsw i32 %conv20, 5
  %mc = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %61 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mc, align 2
  %conv21 = zext i8 %62 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %conv25 = zext i8 %54 to i32
  %shl26 = shl nuw nsw i32 %conv25, 16
  %or = or i32 %shl26, %conv19
  %or23 = or i32 %or, %shl
  %or27 = or i32 %or23, %shl22
  %or41 = or i32 %or27, 32768
  %or41.sink = select i1 %cmp15, i32 %or27, i32 %or41
  %.sink = select i1 %cmp15, i32 3, i32 2
  %63 = ptrtoint ptr %pbuf.1165 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or41.sink, ptr %pbuf.1165, align 4
  %add.ptr42 = getelementptr i8, ptr %pbuf.1165, i32 %.sink
  %mt44 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %64 = ptrtoint ptr %mt44 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mt44, align 1
  %mc45 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %66 = ptrtoint ptr %mc45 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mc45, align 2
  %68 = add i8 %67, -32
  %switch.and.i = and i8 %68, -66
  %69 = or i8 %switch.and.i, %65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %if.then47, label %if.end13.if.end48_crit_edge

if.end13.if.end48_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then47:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %tid = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %71 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tid, align 2
  %incdec.ptr = getelementptr i8, ptr %add.ptr42, i32 1
  %73 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %add.ptr42, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end13.if.end48_crit_edge
  %puc.1 = phi ptr [ %incdec.ptr, %if.then47 ], [ %add.ptr42, %if.end13.if.end48_crit_edge ]
  %74 = ptrtoint ptr %mt44 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mt44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp.i = icmp eq i8 %75, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end48.if.end61_crit_edge

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.rhs.i:                                       ; preds = %if.end48
  %76 = ptrtoint ptr %mc45 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mc45, align 2
  %78 = add i8 %77, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %78)
  %79 = icmp ult i8 %78, 10
  %80 = add i8 %77, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %80)
  %81 = icmp ult i8 %80, 9
  %or.cond169 = or i1 %79, %81
  br i1 %or.cond169, label %if.then52, label %land.rhs.i.if.end61_crit_edge

land.rhs.i.if.end61_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then52:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %ec = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 4
  %82 = ptrtoint ptr %ec to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %ec, align 4
  %conv54 = trunc i16 %83 to i8
  %incdec.ptr55 = getelementptr i8, ptr %puc.1, i32 1
  %84 = ptrtoint ptr %puc.1 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv54, ptr %puc.1, align 1
  %85 = load i16, ptr %ec, align 4
  %86 = lshr i16 %85, 8
  %conv59 = trunc i16 %86 to i8
  %incdec.ptr60 = getelementptr i8, ptr %puc.1, i32 2
  %87 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv59, ptr %incdec.ptr55, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %land.rhs.i.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %puc.2 = phi ptr [ %incdec.ptr60, %if.then52 ], [ %puc.1, %if.end48.if.end61_crit_edge ], [ %puc.1, %land.rhs.i.if.end61_crit_edge ]
  %msg = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %88 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %msg, align 4
  %tobool62.not = icmp eq ptr %89, null
  br i1 %tobool62.not, label %if.end61.if.end71_crit_edge, label %land.lhs.true63

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.end61
  %wbuf = getelementptr inbounds %struct.slim_val_inf, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wbuf, align 4
  %tobool65.not = icmp eq ptr %91, null
  br i1 %tobool65.not, label %land.lhs.true63.if.end71_crit_edge, label %if.then66

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then66:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  %num_bytes = getelementptr inbounds %struct.slim_val_inf, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %num_bytes, align 2
  %conv70 = zext i8 %93 to i32
  %94 = call ptr @memcpy(ptr %puc.2, ptr %91, i32 %conv70)
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %land.lhs.true63.if.end71_crit_edge, %if.end61.if.end71_crit_edge
  %95 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %txn, align 4
  %conv.i = zext i8 %96 to i32
  %add.i158 = add nuw nsw i32 %conv.i, 3
  %97 = lshr i32 %add.i158, 2
  %base.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 3
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %99, i32 560
  call void @__iowrite32_copy(ptr noundef %add.ptr.i159, ptr noundef nonnull %pbuf.1165, i32 noundef %97) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  call void @arm_heavy_mb() #8
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %add178) #8
  %call74 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.end, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 2
  %100 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev77, align 8
  %102 = ptrtoint ptr %mc45 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mc45, align 2
  %conv79 = zext i8 %103 to i32
  %104 = ptrtoint ptr %mt44 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %mt44, align 1
  %conv81 = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.33, i32 noundef %conv79, i32 noundef %conv81) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end71.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71.cleanup_crit_edge ], [ -110, %do.end ], [ -12, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_clk_pause_wakeup(ptr nocapture noundef readonly %sctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctrl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %hclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %rclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %rclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rclk, align 4
  %call.i6 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %if.end.i10, label %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit13

if.end.i10:                                       ; preds = %clk_prepare_enable.exit
  %call1.i8 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool2.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool2.not.i9, label %if.end.i10.clk_prepare_enable.exit13_crit_edge, label %if.then3.i11

if.end.i10.clk_prepare_enable.exit13_crit_edge:   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit13

if.then3.i11:                                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %clk_prepare_enable.exit13

clk_prepare_enable.exit13:                        ; preds = %if.then3.i11, %if.end.i10.clk_prepare_enable.exit13_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge
  %irq = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %9) #8
  %base = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  tail call void @usleep_range_state(i32 noundef 1250, i32 noundef 2500, i32 noundef 2) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_slim_rxwq(ptr noundef %work) #2 align 64 {
entry:
  %buf = alloca [40 x i8], align 1
  %ea = alloca %struct.slim_eaddr, align 1
  %laddr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf)
  %0 = call ptr @memset(ptr %buf, i32 255, i32 40)
  %add.ptr = getelementptr i8, ptr %work, i32 -1584
  %lock.i = getelementptr i8, ptr %work, i32 -136
  %call2.i39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %tail.i = getelementptr i8, ptr %work, i32 -88
  %1 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr i8, ptr %work, i32 -92
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp7.i40 = icmp eq i32 %2, %4
  br i1 %cmp7.i40, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx.i = getelementptr i8, ptr %work, i32 -140
  %sl_sz.i = getelementptr i8, ptr %work, i32 -84
  %n.i = getelementptr i8, ptr %work, i32 -80
  %dev27 = getelementptr i8, ptr %work, i32 -152
  %5 = getelementptr inbounds %struct.slim_eaddr, ptr %ea, i32 0, i32 1
  %6 = getelementptr inbounds %struct.slim_eaddr, ptr %ea, i32 0, i32 2
  %7 = getelementptr inbounds %struct.slim_eaddr, ptr %ea, i32 0, i32 3
  %buf.1.buf.1.arrayidx2.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 1
  %buf.2.buf.2.arrayidx13.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 2
  %buf.4.buf.4.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %buf.6.buf.6.arrayidx17.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 6
  %buf.7.buf.7.arrayidx18.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %4, %while.body.lr.ph ], [ %37, %if.end30.while.body_crit_edge ]
  %call2.i41 = phi i32 [ %call2.i39, %while.body.lr.ph ], [ %call2.i, %if.end30.while.body_crit_edge ]
  %9 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx.i, align 4
  %11 = ptrtoint ptr %sl_sz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sl_sz.i, align 4
  %mul.i = mul i32 %12, %8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %13 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i, i32 %12)
  %add.i = add i32 %8, 1
  %14 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n.i, align 4
  %rem.i = srem i32 %add.i, %15
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rem.i, ptr %head.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i41) #8
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %buf.0.buf.0. = load i8, ptr %buf, align 1
  %18 = ptrtoint ptr %buf.1.buf.1.arrayidx2.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %buf.1.buf.1. = load i8, ptr %buf.1.buf.1.arrayidx2.sroa_idx, align 1
  %19 = and i8 %buf.1.buf.1., 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %buf.0.buf.0.)
  %cmp8 = icmp ult i8 %buf.0.buf.0., 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp11 = icmp eq i8 %19, 1
  %or.cond = select i1 %cmp8, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then, label %do.end26

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ea) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %laddr) #8
  %20 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %laddr, align 1, !annotation !180
  %21 = ptrtoint ptr %buf.2.buf.2.arrayidx13.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %buf.2.buf.2. = load i16, ptr %buf.2.buf.2.arrayidx13.sroa_idx, align 1
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %buf.2.buf.2., ptr %7, align 1
  %23 = ptrtoint ptr %buf.4.buf.4.arrayidx15.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %buf.4.buf.4. = load i16, ptr %buf.4.buf.4.arrayidx15.sroa_idx, align 1
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %buf.4.buf.4., ptr %6, align 1
  %25 = ptrtoint ptr %buf.6.buf.6.arrayidx17.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %buf.6.buf.6. = load i8, ptr %buf.6.buf.6.arrayidx17.sroa_idx, align 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %buf.6.buf.6., ptr %5, align 1
  %27 = ptrtoint ptr %buf.7.buf.7.arrayidx18.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %buf.7.buf.7. = load i8, ptr %buf.7.buf.7.arrayidx18.sroa_idx, align 1
  %28 = ptrtoint ptr %ea to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %buf.7.buf.7., ptr %ea, align 1
  %call20 = call i32 @slim_device_report_present(ptr noundef %add.ptr, ptr noundef nonnull %ea, ptr noundef nonnull %laddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.38, i32 noundef %call20) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %laddr) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ea) #8
  br label %if.end30

do.end26:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = lshr i8 %buf.0.buf.0., 5
  %conv7 = zext i8 %31 to i32
  %32 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev27, align 8
  %conv28 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.41, i32 noundef %conv28, i32 noundef %conv7) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.end
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %34 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail.i, align 4
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %head.i, align 4
  %cmp7.i = icmp eq i32 %35, %37
  br i1 %cmp7.i, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %entry.while.end_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i39, %entry.while.end_crit_edge ], [ %call2.i, %if.end30.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.lcssa) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %pkt.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 532
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !168
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and1 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %4 = and i32 %3, -2113929216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #8, !srcloc !165
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  br i1 %tobool2.not, label %if.end.i.qcom_slim_handle_tx_irq.exit_crit_edge, label %if.then3.i

if.end.i.qcom_slim_handle_tx_irq.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_slim_handle_tx_irq.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 516
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !168
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 752
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !168
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr13.i = getelementptr i8, ptr %17, i32 1028
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #8, !srcloc !168
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr18.i = getelementptr i8, ptr %21, i32 1024
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !168
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr23.i = getelementptr i8, ptr %25, i32 1044
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #8, !srcloc !168
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr28.i = getelementptr i8, ptr %29, i32 1072
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #8, !srcloc !168
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr33.i = getelementptr i8, ptr %33, i32 1540
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #8, !srcloc !168
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr38.i = getelementptr i8, ptr %37, i32 1556
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #8, !srcloc !168
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr43.i = getelementptr i8, ptr %41, i32 1584
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #8, !srcloc !168
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr47.i = getelementptr i8, ptr %45, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 2) #8, !srcloc !165
  %dev.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 2
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.44, i32 noundef %3, i32 noundef %11) #11
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.47, i32 noundef %15) #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.50, i32 noundef %27, i32 noundef %19) #11
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.53, i32 noundef %23, i32 noundef %31) #11
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.56, i32 noundef %39, i32 noundef %35) #11
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.59, i32 noundef %43) #11
  br label %qcom_slim_handle_tx_irq.exit

qcom_slim_handle_tx_irq.exit:                     ; preds = %if.then3.i, %if.end.i.qcom_slim_handle_tx_irq.exit_crit_edge
  %lock.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 6, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %head.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 6, i32 2
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %head.i.i, align 4
  %add.i.i = add i32 %59, 1
  %n.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 6, i32 5
  %60 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n.i.i, align 4
  %rem.i.i = srem i32 %add.i.i, %61
  store i32 %rem.i.i, ptr %head.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #8
  %wr_comp.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 7
  %62 = ptrtoint ptr %wr_comp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr_comp.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %63, i32 %59
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i, align 4
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @complete(ptr noundef %65) #8
  br label %if.end

if.end:                                           ; preds = %qcom_slim_handle_tx_irq.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %qcom_slim_handle_tx_irq.exit ], [ 0, %entry.if.end_crit_edge ]
  %and4 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pkt.i) #8
  %66 = getelementptr inbounds i8, ptr %pkt.i, i32 4
  %67 = call ptr @memset(ptr %66, i32 255, i32 36)
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i16 = getelementptr i8, ptr %69, i32 624
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #8, !srcloc !168
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %72 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %pkt.i, align 4
  %73 = lshr i32 %71, 5
  %conv5.i = and i32 %71, 31
  %shr7.i = lshr i32 %71, 8
  %74 = trunc i32 %shr7.i to i8
  %conv10.i = and i8 %74, 127
  %conv11.i = and i32 %73, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11.i)
  %cmp.i = icmp eq i32 %conv11.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv10.i)
  %cmp14.i = icmp eq i8 %conv10.i, 1
  %or.cond.i = select i1 %cmp.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %if.then.i23, label %if.end21.i

if.then.i23:                                      ; preds = %if.then6
  %lock.i.i17 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 5, i32 1
  %call2.i.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i17) #8
  %tail.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tail.i.i, align 4
  %add.i.i19 = add i32 %76, 1
  %n.i.i20 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 5, i32 5
  %77 = ptrtoint ptr %n.i.i20 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n.i.i20, align 4
  %rem.i.i21 = srem i32 %add.i.i19, %78
  %head.i.i22 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 5, i32 2
  %79 = ptrtoint ptr %head.i.i22 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %head.i.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i21, i32 %80)
  %cmp8.i.i = icmp eq i32 %rem.i.i21, %80
  br i1 %cmp8.i.i, label %slim_alloc_rxbuf.exit.thread.i, label %slim_alloc_rxbuf.exit.i

slim_alloc_rxbuf.exit.thread.i:                   ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i17, i32 noundef %call2.i.i18) #8
  %dev.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 2
  %81 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.66) #11
  br label %do.end.i

slim_alloc_rxbuf.exit.i:                          ; preds = %if.then.i23
  %rx.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 5
  %83 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %rem.i.i21, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i17, i32 noundef %call2.i.i18) #8
  %84 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx.i.i, align 4
  %sl_sz.i.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 5, i32 4
  %86 = ptrtoint ptr %sl_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sl_sz.i.i, align 4
  %mul.i.i = mul i32 %87, %76
  %add.ptr.i.i = getelementptr i8, ptr %85, i32 %mul.i.i
  %tobool.not.i24 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i24, label %slim_alloc_rxbuf.exit.i.do.end.i_crit_edge, label %if.end21.thread.i

slim_alloc_rxbuf.exit.i.do.end.i_crit_edge:       ; preds = %slim_alloc_rxbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %slim_alloc_rxbuf.exit.i.do.end.i_crit_edge, %slim_alloc_rxbuf.exit.thread.i
  %dev.i25 = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 2
  %88 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i25, align 8
  %90 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pkt.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.61, i32 noundef %91) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr46.c5.i = getelementptr i8, ptr %93, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.c5.i, i32 64) #8, !srcloc !165
  br label %qcom_slim_handle_rx_irq.exit

if.end21.thread.i:                                ; preds = %slim_alloc_rxbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pkt.i, align 4
  %96 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %add.ptr.i.i, align 4
  %add.ptr229.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr2510.i = getelementptr i8, ptr %98, i32 628
  %sub11.i = add nuw nsw i32 %conv5.i, 3
  %div112.i = lshr i32 %sub11.i, 2
  tail call void @__ioread32_copy(ptr noundef %add.ptr229.i, ptr noundef %add.ptr2510.i, i32 noundef %div112.i) #8
  br label %do.body42.i

if.end21.i:                                       ; preds = %if.then6
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 4
  %add.ptr25.i = getelementptr i8, ptr %100, i32 628
  %sub.i = add nuw nsw i32 %conv5.i, 3
  %div1.i = lshr i32 %sub.i, 2
  call void @__ioread32_copy(ptr noundef %66, ptr noundef %add.ptr25.i, i32 noundef %div1.i) #8
  %conv27.i = zext i8 %conv10.i to i32
  %101 = zext i32 %conv27.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv27.i, label %do.end38.i [
    i32 1, label %if.end21.i.do.body42.i_crit_edge
    i32 36, label %if.end21.i.sw.bb28.i_crit_edge
    i32 100, label %if.end21.i.sw.bb28.i_crit_edge26
  ]

if.end21.i.sw.bb28.i_crit_edge26:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end21.i.sw.bb28.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end21.i.do.body42.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42.i

sw.bb28.i:                                        ; preds = %if.end21.i.sw.bb28.i_crit_edge, %if.end21.i.sw.bb28.i_crit_edge26
  %102 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pkt.i, align 4
  %shr31.i = lshr i32 %103, 24
  %conv32.i = trunc i32 %shr31.i to i8
  %104 = trunc i32 %conv5.i to i8
  %conv35.i = add nsw i8 %104, -4
  call void @slim_msg_response(ptr noundef %d, ptr noundef %66, i8 noundef zeroext %conv32.i, i8 noundef zeroext %conv35.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 4
  %add.ptr46.c3.i = getelementptr i8, ptr %106, i32 536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.c3.i, i32 64) #8, !srcloc !165
  br label %qcom_slim_handle_rx_irq.exit

do.end38.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev39.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 2
  %107 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev39.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.64, i32 noundef %conv27.i, i32 noundef %conv11.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  %add.ptr46.c.i = getelementptr i8, ptr %110, i32 536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.c.i, i32 64) #8, !srcloc !165
  br label %qcom_slim_handle_rx_irq.exit

do.body42.i:                                      ; preds = %if.end21.i.do.body42.i_crit_edge, %if.end21.thread.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  call void @arm_heavy_mb() #8
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base, align 4
  %add.ptr46.i = getelementptr i8, ptr %112, i32 536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 64) #8, !srcloc !165
  %rxwq.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 9
  %113 = ptrtoint ptr %rxwq.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rxwq.i, align 4
  %wd.i = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %d, i32 0, i32 10
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %114, ptr noundef %wd.i) #8
  br label %qcom_slim_handle_rx_irq.exit

qcom_slim_handle_rx_irq.exit:                     ; preds = %do.body42.i, %do.end38.i, %sw.bb28.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pkt.i) #8
  br label %if.end8

if.end8:                                          ; preds = %qcom_slim_handle_rx_irq.exit, %if.end.if.end8_crit_edge
  %ret.1 = phi i32 [ 1, %qcom_slim_handle_rx_irq.exit ], [ %ret.0, %if.end.if.end8_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_do_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_device_report_present(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ioread32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @slim_msg_response(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %1 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i = icmp eq i32 %2, 2
  br i1 %cmp.i, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_slim_suspend.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_slim_suspend, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_slim_suspend.__UNIQUE_ID_ddebug191, ptr noundef %dev, ptr noundef nonnull @.str.69) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call6 = tail call i32 @qcom_slim_runtime_suspend(ptr noundef %dev)
  br label %if.end7

if.end7:                                          ; preds = %do.end, %lor.lhs.false.if.end7_crit_edge
  %ret.0 = phi i32 [ %call6, %do.end ], [ 0, %lor.lhs.false.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %1 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i = icmp eq i32 %2, 2
  br i1 %cmp.i, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_slim_resume.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_slim_resume, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_slim_resume.__UNIQUE_ID_ddebug192, ptr noundef %dev, ptr noundef nonnull @.str.71) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_slim_runtime_resume.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_slim_resume, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !177

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_slim_runtime_resume.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.76) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %call5.i = tail call i32 @slim_ctrl_clk_pause(ptr noundef %4, i1 noundef zeroext true, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then8, label %qcom_slim_runtime_resume.exit

qcom_slim_runtime_resume.exit:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %call5.i) #11
  br label %return

if.then8:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %5 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i21 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 9) #8
  br label %return

return:                                           ; preds = %if.then8, %qcom_slim_runtime_resume.exit, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call5.i, %qcom_slim_runtime_resume.exit ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_runtime_suspend(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_slim_runtime_suspend.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_slim_runtime_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_slim_runtime_suspend.__UNIQUE_ID_ddebug189, ptr noundef %device, ptr noundef nonnull @.str.73) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @slim_ctrl_clk_pause(ptr noundef %1, i1 noundef zeroext false, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.74, i32 noundef %call5) #11
  br label %if.end11

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %3) #8
  %hclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %rclk = getelementptr inbounds %struct.qcom_slim_ctrl, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %rclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rclk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end10
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_slim_runtime_resume(ptr noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_slim_runtime_resume.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_slim_runtime_resume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_slim_runtime_resume.__UNIQUE_ID_ddebug190, ptr noundef %device, ptr noundef nonnull @.str.76) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @slim_ctrl_clk_pause(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.if.end11_crit_edge, label %do.end10

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.77, i32 noundef %call5) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %do.end.if.end11_crit_edge
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_ctrl_clk_pause(ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_slim_qcom_ctrl__193_736_qcom_slim_driver_init6, !1, !"__initcall__kmod_slim_qcom_ctrl__193_736_qcom_slim_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 736, i32 1}
!2 = !{ptr @__exitcall_qcom_slim_driver_exit, !1, !"__exitcall_qcom_slim_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file194, !4, !"__UNIQUE_ID_file194", i1 false, i1 false}
!4 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 738, i32 1}
!5 = !{ptr @__UNIQUE_ID_license195, !4, !"__UNIQUE_ID_license195", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description196, !7, !"__UNIQUE_ID_description196", i1 false, i1 false}
!7 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 739, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 731, i32 11}
!10 = !{ptr @qcom_slim_driver, !11, !"qcom_slim_driver", i1 false, i1 false}
!11 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 727, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 498, i32 40}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 502, i32 40}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 508, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qcom_slim_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qcom_slim_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 514, i32 3}
!26 = !{ptr @qcom_slim_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_slim_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 524, i32 64}
!30 = !{ptr @qcom_slim_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 541, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @qcom_slim_probe.__key.13, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 542, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qcom_slim_probe.__key.15, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 543, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 544, i32 15}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 546, i32 3}
!44 = !{ptr @qcom_slim_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qcom_slim_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 559, i32 24}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 561, i32 3}
!50 = !{ptr @qcom_slim_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qcom_slim_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 590, i32 3}
!54 = !{ptr @qcom_slim_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qcom_slim_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 620, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qcom_slim_probe.__UNIQUE_ID_ddebug188, !57, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 416, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @qcom_set_laddr._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @qcom_set_laddr._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 380, i32 3}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qcom_xfer_msg._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qcom_xfer_msg._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @init_completion.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/completion.h", i32 87, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 312, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @slim_alloc_txbuf._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @slim_alloc_txbuf._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 463, i32 5}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @qcom_slim_rxwq._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @qcom_slim_rxwq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 466, i32 4}
!85 = !{ptr @qcom_slim_rxwq._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @qcom_slim_rxwq._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 477, i32 64}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 188, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qcom_slim_handle_tx_irq._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qcom_slim_handle_tx_irq._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 190, i32 3}
!96 = !{ptr @qcom_slim_handle_tx_irq._entry.46, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qcom_slim_handle_tx_irq._entry_ptr.48, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 191, i32 3}
!100 = !{ptr @qcom_slim_handle_tx_irq._entry.49, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qcom_slim_handle_tx_irq._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 193, i32 3}
!104 = !{ptr @qcom_slim_handle_tx_irq._entry.52, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @qcom_slim_handle_tx_irq._entry_ptr.54, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 195, i32 3}
!108 = !{ptr @qcom_slim_handle_tx_irq._entry.55, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @qcom_slim_handle_tx_irq._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 197, i32 3}
!112 = !{ptr @qcom_slim_handle_tx_irq._entry.58, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @qcom_slim_handle_tx_irq._entry_ptr.60, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 226, i32 4}
!116 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @qcom_slim_handle_rx_irq._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @qcom_slim_handle_rx_irq._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 250, i32 3}
!121 = !{ptr @qcom_slim_handle_rx_irq._entry.63, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @qcom_slim_handle_rx_irq._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 139, i32 3}
!125 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @slim_alloc_rxbuf._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @slim_alloc_rxbuf._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @qcom_slim_dt_match, !129, !"qcom_slim_dt_match", i1 false, i1 false}
!129 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 721, i32 34}
!130 = !{ptr @qcom_slim_dev_pm_ops, !131, !"qcom_slim_dev_pm_ops", i1 false, i1 false}
!131 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 712, i32 32}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 687, i32 3}
!134 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @qcom_slim_suspend.__UNIQUE_ID_ddebug191, !133, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 699, i32 3}
!138 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @qcom_slim_resume.__UNIQUE_ID_ddebug192, !137, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 655, i32 2}
!142 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @qcom_slim_runtime_suspend.__UNIQUE_ID_ddebug189, !141, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 658, i32 3}
!146 = !{ptr @qcom_slim_runtime_suspend._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @qcom_slim_runtime_suspend._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 672, i32 2}
!150 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @qcom_slim_runtime_resume.__UNIQUE_ID_ddebug190, !149, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/slimbus/qcom-ctrl.c", i32 675, i32 3}
!154 = !{ptr @qcom_slim_runtime_resume._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @qcom_slim_runtime_resume._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i64 3645772}
!166 = !{i64 2153221012}
!167 = !{!"branch_weights", i32 1, i32 2000}
!168 = !{i64 3646190}
!169 = !{i64 2153231706}
!170 = !{i64 2153232373}
!171 = !{i64 2153233336}
!172 = !{i64 2153234097}
!173 = !{i64 2153234568}
!174 = !{i64 2153235166}
!175 = !{i64 2153235555}
!176 = !{i64 2153236097}
!177 = !{i64 2148361291, i64 2148361296, i64 2148361309, i64 2148361353, i64 2148361387, i64 2148361408}
!178 = !{i64 2153180866}
!179 = !{i64 2153208445}
!180 = !{!"auto-init"}
!181 = !{i64 2153207293}
