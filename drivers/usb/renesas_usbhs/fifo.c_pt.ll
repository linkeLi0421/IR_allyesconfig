; ModuleID = '/llk/IR_all_yes/drivers/usb/renesas_usbhs/fifo.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usbhs_pkt_handle = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbhs_pipe = type { i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.usbhs_mod_info = type { [2 x ptr], ptr, ptr, ptr }
%struct.usbhs_pipe_info = type { ptr, i32, ptr }
%struct.usbhs_fifo_info = type { %struct.usbhs_fifo, [4 x %struct.usbhs_fifo] }
%struct.usbhs_fifo = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.sh_dmae_slave, %struct.sh_dmae_slave }
%struct.sh_dmae_slave = type { %struct.shdma_slave }
%struct.shdma_slave = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usbhs_pkt = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.usbhs_irq_state = type { i16, i16, i16, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@usbhs_pkt_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no done function\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usbhs_pkt_push\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/renesas_usbhs/fifo.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhs_pkt_push._entry_ptr = internal global ptr @usbhs_pkt_push._entry, section ".printk_index", align 4
@usbhs_pkt_push._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no handler function\0A\00", [43 x i8] zeroinitializer }, align 32
@usbhs_pkt_push._entry_ptr.7 = internal global ptr @usbhs_pkt_push._entry.5, section ".printk_index", align 4
@usbhsf_null_handler = internal constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_null_handle, ptr @usbhsf_null_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_dcp_status_stage_in_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhs_dcp_dir_switch_to_write, ptr @usbhs_dcp_dir_switch_done, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_dcp_status_stage_out_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhs_dcp_dir_switch_to_read, ptr @usbhs_dcp_dir_switch_done, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_dcp_data_stage_out_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_dcp_data_stage_try_push, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_dcp_data_stage_in_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_dcp_data_stage_prepare_pop, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_fifo_pio_push_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_pio_prepare_push, ptr @usbhsf_pio_try_push, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_fifo_pio_pop_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_prepare_pop, ptr @usbhsf_pio_try_pop, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_ctrl_stage_end_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_ctrl_stage_end, ptr @usbhsf_ctrl_stage_end, ptr null }, [20 x i8] zeroinitializer }, align 32
@usbhs_fifo_dma_push_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_dma_prepare_push, ptr null, ptr @usbhsf_dma_push_done }, [20 x i8] zeroinitializer }, align 32
@usbhs_fifo_dma_pop_handler = dso_local constant { %struct.usbhs_pkt_handle, [20 x i8] } { %struct.usbhs_pkt_handle { ptr @usbhsf_dma_prepare_pop, ptr @usbhsf_dma_try_pop, ptr @usbhsf_dma_pop_done }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CFIFO\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D0FIFO\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D1FIFO\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D2FIFO\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D3FIFO\00", [25 x i8] zeroinitializer }, align 32
@usbhsf_null_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"null handler\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsf_null_handle\00", [45 x i8] zeroinitializer }, align 32
@usbhsf_null_handle._entry_ptr = internal global ptr @usbhsf_null_handle._entry, section ".printk_index", align 4
@usbhsf_pkt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown pkt handler\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsf_pkt_handler\00", [45 x i8] zeroinitializer }, align 32
@usbhsf_pkt_handler._entry_ptr = internal global ptr @usbhsf_pkt_handler._entry, section ".printk_index", align 4
@usbhs_dcp_dir_switch_to_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() failed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"usbhs_dcp_dir_switch_to_write\00", [34 x i8] zeroinitializer }, align 32
@usbhs_dcp_dir_switch_to_write._entry_ptr = internal global ptr @usbhs_dcp_dir_switch_to_write._entry, section ".printk_index", align 4
@usbhs_dcp_dir_switch_to_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s() fail\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usbhs_dcp_dir_switch_to_read\00", [35 x i8] zeroinitializer }, align 32
@usbhs_dcp_dir_switch_to_read._entry_ptr = internal global ptr @usbhs_dcp_dir_switch_to_read._entry, section ".printk_index", align 4
@usbhsf_pio_try_push.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas_usbhs\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbhsf_pio_try_push\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  send %d (%d/ %d/ %d/ %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@usbhsf_pio_try_pop.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsf_pio_try_pop\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  recv %d (%d/ %d/ %d/ %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@usbhsf_dma_prepare_push.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&pkt->work)\00", [34 x i8] zeroinitializer }, align 32
@usbhsf_dma_xfer_preparing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 847, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to submit dma descriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usbhsf_dma_xfer_preparing\00", [38 x i8] zeroinitializer }, align 32
@usbhsf_dma_xfer_preparing._entry_ptr = internal global ptr @usbhsf_dma_xfer_preparing._entry, section ".printk_index", align 4
@usbhsf_dma_xfer_preparing.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  %s %d (%d/ %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@usbhsf_dma_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1389, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma_complete run_error %d : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbhsf_dma_complete\00", [44 x i8] zeroinitializer }, align 32
@usbhsf_dma_complete._entry_ptr = internal global ptr @usbhsf_dma_complete._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@usbhsf_dma_try_pop_with_rx_irq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@usbhsf_fifo_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 349, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fifo select error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbhsf_fifo_select\00", [45 x i8] zeroinitializer }, align 32
@usbhsf_fifo_select._entry_ptr = internal global ptr @usbhsf_fifo_select._entry, section ".printk_index", align 4
@usbhsf_irq_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"debug %s !!\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbhsf_irq_empty\00", [47 x i8] zeroinitializer }, align 32
@usbhsf_irq_empty._entry_ptr = internal global ptr @usbhsf_irq_empty._entry, section ".printk_index", align 4
@usbhsf_irq_empty.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq empty [0x%04x]\0A\00", [44 x i8] zeroinitializer }, align 32
@usbhsf_irq_empty._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 1340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq_empty run_error %d : %d\0A\00", [35 x i8] zeroinitializer }, align 32
@usbhsf_irq_empty._entry_ptr.39 = internal global ptr @usbhsf_irq_empty._entry.37, section ".printk_index", align 4
@usbhsf_irq_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.40, ptr @.str.2, i32 1354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbhsf_irq_ready\00", [47 x i8] zeroinitializer }, align 32
@usbhsf_irq_ready._entry_ptr = internal global ptr @usbhsf_irq_ready._entry, section ".printk_index", align 4
@usbhsf_irq_ready.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq ready [0x%04x]\0A\00", [44 x i8] zeroinitializer }, align 32
@usbhsf_irq_ready._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.2, i32 1370, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq_ready run_error %d : %d\0A\00", [35 x i8] zeroinitializer }, align 32
@usbhsf_irq_ready._entry_ptr.44 = internal global ptr @usbhsf_irq_ready._entry.42, section ".printk_index", align 4
@usbhsf_dma_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbhsf_dma_init\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enable DMAEngine (%s%s%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[TX]\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[RX]\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch%d\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 55, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 63, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"usbhsf_null_handler\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 40, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [34 x i8] c"usbhs_dcp_status_stage_in_handler\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 429, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [35 x i8] c"usbhs_dcp_status_stage_out_handler\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 434, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [33 x i8] c"usbhs_dcp_data_stage_out_handler\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 456, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant [32 x i8] c"usbhs_dcp_data_stage_in_handler\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 495, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"usbhs_fifo_pio_push_handler\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 612, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"usbhs_fifo_pio_pop_handler\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 742, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant [29 x i8] c"usbhs_ctrl_stage_end_handler\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 759, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"usbhs_fifo_dma_push_handler\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 972, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"usbhs_fifo_dma_pop_handler\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1222, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1465, i32 15 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1471, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1472, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1473, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1474, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 35, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 186, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 369, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 398, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 583, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 732, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 926, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 847, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 851, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1388, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1113, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 349, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1324, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1328, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1340, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1354, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1358, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1370, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1307, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [36 x i8] c"../drivers/usb/renesas_usbhs/fifo.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1284, i32 31 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @usbhs_dcp_dir_switch_to_read._entry, ptr @usbhs_dcp_dir_switch_to_read._entry_ptr, ptr @usbhs_dcp_dir_switch_to_write._entry, ptr @usbhs_dcp_dir_switch_to_write._entry_ptr, ptr @usbhs_pkt_push._entry, ptr @usbhs_pkt_push._entry.5, ptr @usbhs_pkt_push._entry_ptr, ptr @usbhs_pkt_push._entry_ptr.7, ptr @usbhsf_dma_complete._entry, ptr @usbhsf_dma_complete._entry_ptr, ptr @usbhsf_dma_xfer_preparing._entry, ptr @usbhsf_dma_xfer_preparing._entry_ptr, ptr @usbhsf_fifo_select._entry, ptr @usbhsf_fifo_select._entry_ptr, ptr @usbhsf_irq_empty._entry, ptr @usbhsf_irq_empty._entry.37, ptr @usbhsf_irq_empty._entry_ptr, ptr @usbhsf_irq_empty._entry_ptr.39, ptr @usbhsf_irq_ready._entry, ptr @usbhsf_irq_ready._entry.42, ptr @usbhsf_irq_ready._entry_ptr, ptr @usbhsf_irq_ready._entry_ptr.44, ptr @usbhsf_null_handle._entry, ptr @usbhsf_null_handle._entry_ptr, ptr @usbhsf_pkt_handler._entry, ptr @usbhsf_pkt_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @usbhsf_null_handler, ptr @usbhs_dcp_status_stage_in_handler, ptr @usbhs_dcp_status_stage_out_handler, ptr @usbhs_dcp_data_stage_out_handler, ptr @usbhs_dcp_data_stage_in_handler, ptr @usbhs_fifo_pio_push_handler, ptr @usbhs_fifo_pio_pop_handler, ptr @usbhs_ctrl_stage_end_handler, ptr @usbhs_fifo_dma_push_handler, ptr @usbhs_fifo_dma_pop_handler, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @usbhsf_dma_prepare_push.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @usbhsf_dma_try_pop_with_rx_irq.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_pkt_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_pkt_push._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_null_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_dcp_status_stage_in_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_dcp_status_stage_out_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_dcp_data_stage_out_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_dcp_data_stage_in_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_fifo_pio_push_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_fifo_pio_pop_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_ctrl_stage_end_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_fifo_dma_push_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_fifo_dma_pop_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_null_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_pkt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_dcp_dir_switch_to_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_dcp_dir_switch_to_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_dma_prepare_push.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_dma_xfer_preparing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_dma_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_dma_try_pop_with_rx_irq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_fifo_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_irq_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_irq_empty._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_irq_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsf_irq_ready._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pkt_init(ptr noundef %pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %pkt, ptr %pkt, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pkt, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pkt, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pkt_push(ptr noundef %pipe, ptr noundef %pkt, ptr noundef %done, ptr noundef %buf, i32 noundef %len, i32 noundef %zero, i32 noundef %sequence) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %done, null
  br i1 %tobool.not, label %do.end, label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str) #13
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %handler = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 6
  %4 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end14, label %do.body4.if.end16_crit_edge

do.body4.if.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end14:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.6) #13
  %6 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @usbhsf_null_handler, ptr %handler, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %do.body4.if.end16_crit_edge
  %list = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pkt) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.__list_del_entry.exit.i_crit_edge

if.end16.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pkt, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pkt, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end16.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pkt, ptr noundef %14, ptr noundef %list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pkt, ptr %prev.i2.i, align 4
  %16 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %pkt, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %pkt, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pkt, ptr %14, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %pipe17 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %19 = ptrtoint ptr %pipe17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pipe, ptr %pipe17, align 4
  %buf18 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 7
  %20 = ptrtoint ptr %buf18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf18, align 4
  %21 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handler, align 4
  %handler20 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %23 = ptrtoint ptr %handler20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %handler20, align 4
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %length, align 4
  %zero21 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %25 = ptrtoint ptr %zero21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %zero, ptr %zero21, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %26 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %actual, align 4
  %done22 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 3
  %27 = ptrtoint ptr %done22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %done, ptr %done22, align 4
  %sequence23 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 12
  %28 = ptrtoint ptr %sequence23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sequence, ptr %sequence23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @__usbhsf_pkt_get(ptr noundef %pipe) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.not = icmp eq ptr %1, %list
  %spec.select = select i1 %cmp.not, ptr null, ptr %1
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usbhs_pkt_pop(ptr noundef %pipe, ptr noundef %pkt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %fifo2 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 2
  %2 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo2, align 4
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call void @usbhs_pipe_disable(ptr noundef %pipe) #10
  %tobool.not = icmp eq ptr %pkt, null
  br i1 %tobool.not, label %if.then, label %entry.if.then9_crit_edge

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then:                                          ; preds = %entry
  %list.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 3
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i, align 4
  %cmp.not.i = icmp eq ptr %5, %list.i
  %tobool8.not = icmp eq ptr %5, null
  %or.cond = or i1 %cmp.not.i, %tobool8.not
  br i1 %or.cond, label %if.then.if.end24_crit_edge, label %if.then.if.then9_crit_edge

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then9:                                         ; preds = %if.then.if.then9_crit_edge, %entry.if.then9_crit_edge
  %pkt.addr.071 = phi ptr [ %pkt, %entry.if.then9_crit_edge ], [ %5, %if.then.if.then9_crit_edge ]
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %if.then9.if.else_crit_edge, label %if.then11

if.then9.if.else_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then11:                                        ; preds = %if.then9
  %handler.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt.addr.071, i32 0, i32 2
  %6 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i, align 4
  %cmp.i = icmp eq ptr %7, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i = getelementptr inbounds %struct.usbhs_fifo, ptr %3, i32 0, i32 5
  br label %if.end13

if.end.i:                                         ; preds = %if.then11
  %cmp2.i = icmp eq ptr %7, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i = getelementptr inbounds %struct.usbhs_fifo, ptr %3, i32 0, i32 6
  br label %if.end13

if.end13:                                         ; preds = %if.then3.i, %if.then.i
  %rx_chan.sink.i = phi ptr [ %rx_chan.i, %if.then3.i ], [ %tx_chan.i, %if.then.i ]
  %8 = ptrtoint ptr %rx_chan.sink.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_chan.sink.i, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end13.if.else_crit_edge, label %if.then15

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then15:                                        ; preds = %if.end13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then15.dmaengine_terminate_all.exit_crit_edge, label %if.then.i48

if.then15.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i48:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %13(ptr noundef nonnull %9) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i48, %if.then15.dmaengine_terminate_all.exit_crit_edge
  %pipe1.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt.addr.071, i32 0, i32 1
  %14 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe1.i, align 4
  %priv2.i = getelementptr inbounds %struct.usbhs_pipe, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv2.i, align 4
  %fifo3.i = getelementptr inbounds %struct.usbhs_pipe, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fifo3.i, align 4
  %20 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i, align 4
  %cmp.i.i = icmp eq ptr %21, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %19, i32 0, i32 5
  br label %return.sink.split.i.i

if.end.i.i:                                       ; preds = %dmaengine_terminate_all.exit
  %cmp2.i.i = icmp eq ptr %21, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge

if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_dma_map_ctrl.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %19, i32 0, i32 6
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.then3.i.i, %if.then.i.i
  %rx_chan.sink.i.i = phi ptr [ %rx_chan.i.i, %if.then3.i.i ], [ %tx_chan.i.i, %if.then.i.i ]
  %22 = ptrtoint ptr %rx_chan.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_chan.sink.i.i, align 4
  br label %__usbhsf_dma_map_ctrl.exit

__usbhsf_dma_map_ctrl.exit:                       ; preds = %return.sink.split.i.i, %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge ], [ %23, %return.sink.split.i.i ]
  %dma_map_ctrl.i = getelementptr inbounds %struct.usbhs_priv, ptr %17, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %dma_map_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_map_ctrl.i, align 4
  %26 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retval.0.i.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %call4.i = tail call i32 %25(ptr noundef %29, ptr noundef nonnull %pkt.addr.071, i32 noundef 0) #10
  br label %if.end23

if.else:                                          ; preds = %if.end13.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.then9.if.else_crit_edge
  %call18 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %pipe) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %30 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv1, align 4
  br i1 %tobool19.not, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.else
  %call.i49 = tail call ptr @usbhs_mod_get_current(ptr noundef %31) #10
  %tobool.not.i50 = icmp eq ptr %call.i49, null
  br i1 %tobool.not.i50, label %if.then20.if.end23_crit_edge, label %if.end.i51

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i51:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %32 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv1, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %irq_brdysts11.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i49, i32 0, i32 8
  %36 = ptrtoint ptr %irq_brdysts11.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %irq_brdysts11.i, align 4
  %38 = trunc i32 %shl.i to i16
  %39 = xor i16 %38, -1
  %conv13.i = and i16 %37, %39
  store i16 %conv13.i, ptr %irq_brdysts11.i, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %31, ptr noundef nonnull %call.i49) #10
  br label %if.end23

if.else21:                                        ; preds = %if.else
  %pipe_info.i52 = getelementptr inbounds %struct.usbhs_priv, ptr %31, i32 0, i32 9
  %40 = ptrtoint ptr %pipe_info.i52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pipe_info.i52, align 4
  %cmp.i53 = icmp eq ptr %41, %pipe
  %call.i54 = tail call ptr @usbhs_mod_get_current(ptr noundef %31) #10
  %42 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv1, align 4
  %pipe_info5.i = getelementptr inbounds %struct.usbhs_priv, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %pipe_info5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pipe_info5.i, align 4
  %sub.ptr.lhs.cast.i55 = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i56 = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i57 = sub i32 %sub.ptr.lhs.cast.i55, %sub.ptr.rhs.cast.i56
  %sub.ptr.div.i58 = sdiv exact i32 %sub.ptr.sub.i57, 36
  %shl.i59 = shl nuw i32 1, %sub.ptr.div.i58
  %tobool.not.i60 = icmp eq ptr %call.i54, null
  br i1 %cmp.i53, label %if.then.i61, label %if.else21.i

if.then.i61:                                      ; preds = %if.else21
  br i1 %tobool.not.i60, label %if.then.i61.if.end23_crit_edge, label %if.end.i63

if.then.i61.if.end23_crit_edge:                   ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i63:                                       ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #12
  %irq_bempsts15.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i54, i32 0, i32 6
  br label %if.end58.sink.split.i

if.else21.i:                                      ; preds = %if.else21
  br i1 %tobool.not.i60, label %if.else21.i.if.end23_crit_edge, label %if.end37.i

if.else21.i.if.end23_crit_edge:                   ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end37.i:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_brdysts48.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i54, i32 0, i32 8
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %if.end37.i, %if.end.i63
  %irq_brdysts48.i.sink76 = phi ptr [ %irq_brdysts48.i, %if.end37.i ], [ %irq_bempsts15.i, %if.end.i63 ]
  %46 = ptrtoint ptr %irq_brdysts48.i.sink76 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %irq_brdysts48.i.sink76, align 4
  %48 = trunc i32 %shl.i59 to i16
  %49 = xor i16 %48, -1
  %conv51.i = and i16 %47, %49
  store i16 %conv51.i, ptr %irq_brdysts48.i.sink76, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %31, ptr noundef nonnull %call.i54) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end58.sink.split.i, %if.else21.i.if.end23_crit_edge, %if.then.i61.if.end23_crit_edge, %if.end.i51, %if.then20.if.end23_crit_edge, %__usbhsf_dma_map_ctrl.exit
  tail call void @usbhs_pipe_clear_without_sequence(ptr noundef %pipe, i32 noundef 0, i32 noundef 0) #10
  tail call void @usbhs_pipe_running(ptr noundef %pipe, i32 noundef 0) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pkt.addr.071) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end23.__usbhsf_pkt_del.exit_crit_edge

if.end23.__usbhsf_pkt_del.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_pkt_del.exit

if.end.i.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pkt.addr.071, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %pkt.addr.071 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pkt.addr.071, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %__usbhsf_pkt_del.exit

__usbhsf_pkt_del.exit:                            ; preds = %if.end.i.i.i, %if.end23.__usbhsf_pkt_del.exit_crit_edge
  %56 = ptrtoint ptr %pkt.addr.071 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %pkt.addr.071, ptr %pkt.addr.071, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pkt.addr.071, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %pkt.addr.071, ptr %prev.i3.i.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %__usbhsf_pkt_del.exit, %if.then.if.end24_crit_edge
  %pkt.addr.067 = phi ptr [ %pkt.addr.071, %__usbhsf_pkt_del.exit ], [ null, %if.then.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv1, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %pipe, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_fifo, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %59, i32 noundef %61, i16 noundef zeroext 0) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  ret ptr %pkt.addr.067
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_dir_in(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsf_rx_irq_ctrl(ptr noundef %pipe, i32 noundef %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call ptr @usbhs_mod_get_current(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast = ptrtoint ptr %pipe to i32
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %shl = shl nuw i32 1, %sub.ptr.div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  %irq_brdysts11 = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %irq_brdysts11 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irq_brdysts11, align 4
  %8 = trunc i32 %shl to i16
  %9 = xor i16 %8, -1
  %conv13 = and i16 %7, %9
  %conv9 = or i16 %7, %8
  %conv13.sink = select i1 %tobool4.not, i16 %conv13, i16 %conv9
  store i16 %conv13.sink, ptr %irq_brdysts11, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %1, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsf_tx_irq_ctrl(ptr noundef %pipe, i32 noundef %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info, align 4
  %cmp = icmp eq ptr %3, %pipe
  %call = tail call ptr @usbhs_mod_get_current(ptr noundef %1) #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %pipe_info5 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %pipe_info5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_info5, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %shl = shl nuw i32 1, %sub.ptr.div
  %tobool.not = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.if.end58_crit_edge, label %if.end

if.then.if.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool8.not = icmp eq i32 %enable, 0
  %irq_bempsts15 = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %irq_bempsts15 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %irq_bempsts15, align 4
  %10 = trunc i32 %shl to i16
  %11 = xor i16 %10, -1
  %conv17 = and i16 %9, %11
  %conv13 = or i16 %9, %10
  %conv17.sink = select i1 %tobool8.not, i16 %conv17, i16 %conv13
  store i16 %conv17.sink, ptr %irq_bempsts15, align 4
  br label %if.end58.sink.split

if.else21:                                        ; preds = %entry
  br i1 %tobool.not, label %if.else21.if.end58_crit_edge, label %if.end37

if.else21.if.end58_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end37:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool38.not = icmp eq i32 %enable, 0
  %irq_brdysts48 = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %irq_brdysts48 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %irq_brdysts48, align 4
  %14 = trunc i32 %shl to i16
  %15 = xor i16 %14, -1
  %conv51 = and i16 %13, %15
  %conv44 = or i16 %13, %14
  %conv51.sink = select i1 %tobool38.not, i16 %conv51, i16 %conv44
  store i16 %conv51.sink, ptr %irq_brdysts48, align 4
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %if.end37, %if.end
  tail call void @usbhs_irq_callback_update(ptr noundef %1, ptr noundef nonnull %call) #10
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.else21.if.end58_crit_edge, %if.then.if.end58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_clear_without_sequence(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_running(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsf_fifo_unselect(ptr noundef %pipe, ptr nocapture noundef readonly %fifo) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %pipe, ptr noundef null) #10
  %sel = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 2
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  tail call void @usbhs_write(ptr noundef %1, i32 noundef %3, i16 noundef zeroext 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pkt_start(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef %pipe, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsf_pkt_handler(ptr noundef %pipe, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  %is_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_done) #10
  %4 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is_done, align 4
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %list.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 3
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %list.i, align 4
  %cmp.not.i = icmp eq ptr %6, %list.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %6
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %entry.__usbhs_pkt_handler_end_crit_edge, label %if.end

entry.__usbhs_pkt_handler_end_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhs_pkt_handler_end

if.end:                                           ; preds = %entry
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end14 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %handler = getelementptr inbounds %struct.usbhs_pkt, ptr %spec.select.i, i32 0, i32 2
  %8 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %handler9 = getelementptr inbounds %struct.usbhs_pkt, ptr %spec.select.i, i32 0, i32 2
  %10 = ptrtoint ptr %handler9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler9, align 4
  %try_run = getelementptr inbounds %struct.usbhs_pkt_handle, ptr %11, i32 0, i32 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %handler11 = getelementptr inbounds %struct.usbhs_pkt, ptr %spec.select.i, i32 0, i32 2
  %12 = ptrtoint ptr %handler11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler11, align 4
  %dma_done = getelementptr inbounds %struct.usbhs_pkt_handle, ptr %13, i32 0, i32 2
  br label %sw.epilog

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #13
  br label %__usbhs_pkt_handler_end

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb
  %func.0.in = phi ptr [ %dma_done, %sw.bb10 ], [ %try_run, %sw.bb8 ], [ %9, %sw.bb ]
  %14 = ptrtoint ptr %func.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %func.0 = load ptr, ptr %func.0.in, align 4
  %tobool15.not = icmp eq ptr %func.0, null
  br i1 %tobool15.not, label %sw.epilog.if.end20_crit_edge, label %if.then18, !prof !135

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i32 %func.0(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %is_done) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %sw.epilog.if.end20_crit_edge
  %ret.0 = phi i32 [ %call19, %if.then18 ], [ 0, %sw.epilog.if.end20_crit_edge ]
  %15 = ptrtoint ptr %is_done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %is_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %if.end20.__usbhs_pkt_handler_end_crit_edge, label %if.then22

if.end20.__usbhs_pkt_handler_end_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhs_pkt_handler_end

if.then22:                                        ; preds = %if.end20
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then22.__usbhsf_pkt_del.exit_crit_edge

if.then22.__usbhsf_pkt_del.exit_crit_edge:        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_pkt_del.exit

if.end.i.i.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__usbhsf_pkt_del.exit

__usbhsf_pkt_del.exit:                            ; preds = %if.end.i.i.i, %if.then22.__usbhsf_pkt_del.exit_crit_edge
  %23 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %spec.select.i, ptr %spec.select.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spec.select.i, ptr %prev.i3.i.i, align 4
  br label %__usbhs_pkt_handler_end

__usbhs_pkt_handler_end:                          ; preds = %__usbhsf_pkt_del.exit, %if.end20.__usbhs_pkt_handler_end_crit_edge, %do.end14, %entry.__usbhs_pkt_handler_end_crit_edge
  %ret.1 = phi i32 [ 0, %do.end14 ], [ %ret.0, %__usbhsf_pkt_del.exit ], [ %ret.0, %if.end20.__usbhs_pkt_handler_end_crit_edge ], [ -22, %entry.__usbhs_pkt_handler_end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %25 = ptrtoint ptr %is_done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %is_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool25.not = icmp eq i32 %26, 0
  br i1 %tobool25.not, label %__usbhs_pkt_handler_end.if.end27_crit_edge, label %if.then26

__usbhs_pkt_handler_end.if.end27_crit_edge:       ; preds = %__usbhs_pkt_handler_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %__usbhs_pkt_handler_end
  call void @__sanitizer_cov_trace_pc() #12
  %done = getelementptr inbounds %struct.usbhs_pkt, ptr %spec.select.i, i32 0, i32 3
  %27 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %done, align 4
  call void %28(ptr noundef %1, ptr noundef %spec.select.i) #10
  %call.i = call fastcc i32 @usbhsf_pkt_handler(ptr noundef %pipe, i32 noundef 0) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %__usbhs_pkt_handler_end.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_done) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_dcp_dir_switch_to_write(ptr nocapture noundef readonly %pkt, ptr nocapture noundef readnone %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %fifo_info = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  tail call void @usbhs_pipe_disable(ptr noundef %1) #10
  %call = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef %fifo_info, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usbhs_pipe_data_sequence(ptr noundef %1, i32 noundef 1) #10
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %9, %1
  br i1 %cmp.i, label %if.end.if.then12.i_crit_edge, label %if.then.i

if.end.if.then12.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then7.i_crit_edge, label %if.end.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.end.i:                                         ; preds = %if.then.i
  %call5.i = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i.usbhsf_fifo_clear.exit_crit_edge

if.end.i.usbhsf_fifo_clear.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %ctr.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctr.i.i, align 4
  %call.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %7, i32 noundef %11) #10
  %12 = and i16 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, label %if.then7.i.if.then12.i_crit_edge

if.then7.i.if.then12.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then7.i.usbhsf_fifo_clear.exit_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.then12.i:                                      ; preds = %if.then7.i.if.then12.i_crit_edge, %if.end.if.then12.i_crit_edge
  %ctr.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctr.i, align 4
  tail call void @usbhs_write(ptr noundef %7, i32 noundef %14, i16 noundef zeroext 16384) #10
  br label %usbhsf_fifo_clear.exit

usbhsf_fifo_clear.exit:                           ; preds = %if.then12.i, %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, %if.end.i.usbhsf_fifo_clear.exit_crit_edge
  %15 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv2, align 4
  %ctr.i23 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %ctr.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctr.i23, align 4
  tail call void @usbhs_bset(ptr noundef %16, i32 noundef %18, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #10
  %19 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 2
  %21 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %20, i32 noundef %22, i16 noundef zeroext 0) #10
  %23 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv2, align 4
  %pipe_info.i25 = getelementptr inbounds %struct.usbhs_priv, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %pipe_info.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pipe_info.i25, align 4
  %cmp.i26 = icmp eq ptr %26, %1
  %call.i27 = tail call ptr @usbhs_mod_get_current(ptr noundef %24) #10
  %27 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv2, align 4
  %pipe_info5.i = getelementptr inbounds %struct.usbhs_priv, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %pipe_info5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pipe_info5.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %cmp.i26, label %if.then.i29, label %if.else21.i

if.then.i29:                                      ; preds = %usbhsf_fifo_clear.exit
  br i1 %tobool.not.i28, label %if.then.i29.usbhsf_tx_irq_ctrl.exit_crit_edge, label %if.end.i30

if.then.i29.usbhsf_tx_irq_ctrl.exit_crit_edge:    ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_tx_irq_ctrl.exit

if.end.i30:                                       ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #12
  %irq_bempsts15.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i27, i32 0, i32 6
  br label %if.end58.sink.split.i

if.else21.i:                                      ; preds = %usbhsf_fifo_clear.exit
  br i1 %tobool.not.i28, label %if.else21.i.usbhsf_tx_irq_ctrl.exit_crit_edge, label %if.end37.i

if.else21.i.usbhsf_tx_irq_ctrl.exit_crit_edge:    ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_tx_irq_ctrl.exit

if.end37.i:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_brdysts48.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i27, i32 0, i32 8
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %if.end37.i, %if.end.i30
  %irq_brdysts48.i.sink32 = phi ptr [ %irq_brdysts48.i, %if.end37.i ], [ %irq_bempsts15.i, %if.end.i30 ]
  %31 = ptrtoint ptr %irq_brdysts48.i.sink32 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %irq_brdysts48.i.sink32, align 4
  %33 = trunc i32 %shl.i to i16
  %conv44.i = or i16 %32, %33
  store i16 %conv44.i, ptr %irq_brdysts48.i.sink32, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %24, ptr noundef nonnull %call.i27) #10
  br label %usbhsf_tx_irq_ctrl.exit

usbhsf_tx_irq_ctrl.exit:                          ; preds = %if.end58.sink.split.i, %if.else21.i.usbhsf_tx_irq_ctrl.exit_crit_edge, %if.then.i29.usbhsf_tx_irq_ctrl.exit_crit_edge
  tail call void @usbhs_pipe_enable(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %usbhsf_tx_irq_ctrl.exit, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_dcp_dir_switch_done(ptr nocapture noundef %pkt, ptr nocapture noundef writeonly %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %handler = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 4
  %cmp = icmp eq ptr %3, @usbhs_dcp_status_stage_in_handler
  %priv.i = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %7, %1
  %call.i = tail call ptr @usbhs_mod_get_current(ptr noundef %5) #10
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  %pipe_info5.i = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %pipe_info5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe_info5.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %if.else21.i

if.then.i:                                        ; preds = %if.then
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.end.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_bempsts15.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i, i32 0, i32 6
  br label %if.end.sink.split

if.else21.i:                                      ; preds = %if.then
  br i1 %tobool.not.i, label %if.else21.i.if.end_crit_edge, label %if.end37.i

if.else21.i.if.end_crit_edge:                     ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end37.i:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_brdysts48.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i, i32 0, i32 8
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %call.i6 = tail call ptr @usbhs_mod_get_current(ptr noundef %5) #10
  %tobool.not.i7 = icmp eq ptr %call.i6, null
  br i1 %tobool.not.i7, label %if.else.if.end_crit_edge, label %if.end.i15

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i15:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i8 = ptrtoint ptr %1 to i32
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %pipe_info.i9 = getelementptr inbounds %struct.usbhs_priv, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pipe_info.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_info.i9, align 4
  %sub.ptr.rhs.cast.i10 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i11 = sub i32 %sub.ptr.lhs.cast.i8, %sub.ptr.rhs.cast.i10
  %irq_brdysts11.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i6, i32 0, i32 8
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i15, %if.end37.i, %if.end.i
  %irq_brdysts11.i.sink21 = phi ptr [ %irq_brdysts11.i, %if.end.i15 ], [ %irq_brdysts48.i, %if.end37.i ], [ %irq_bempsts15.i, %if.end.i ]
  %sub.ptr.div.i12.pn.in = phi i32 [ %sub.ptr.sub.i11, %if.end.i15 ], [ %sub.ptr.sub.i, %if.end37.i ], [ %sub.ptr.sub.i, %if.end.i ]
  %call.i6.sink = phi ptr [ %call.i6, %if.end.i15 ], [ %call.i, %if.end37.i ], [ %call.i, %if.end.i ]
  %sub.ptr.div.i12.pn = sdiv exact i32 %sub.ptr.div.i12.pn.in, 36
  %shl.i13.sink = shl nuw i32 1, %sub.ptr.div.i12.pn
  %16 = ptrtoint ptr %irq_brdysts11.i.sink21 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %irq_brdysts11.i.sink21, align 4
  %18 = trunc i32 %shl.i13.sink to i16
  %19 = xor i16 %18, -1
  %conv13.i14 = and i16 %17, %19
  store i16 %conv13.i14, ptr %irq_brdysts11.i.sink21, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %5, ptr noundef nonnull %call.i6.sink) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.else21.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %22 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %actual, align 4
  %23 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %is_done, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_dcp_dir_switch_to_read(ptr nocapture noundef readonly %pkt, ptr nocapture noundef readnone %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %fifo_info = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  tail call void @usbhs_pipe_disable(ptr noundef %1) #10
  %call = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef %fifo_info, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usbhs_pipe_data_sequence(ptr noundef %1, i32 noundef 1) #10
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %9, %1
  br i1 %cmp.i, label %if.end.if.then12.i_crit_edge, label %if.then.i

if.end.if.then12.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then7.i_crit_edge, label %if.end.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.end.i:                                         ; preds = %if.then.i
  %call5.i = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i.usbhsf_fifo_clear.exit_crit_edge

if.end.i.usbhsf_fifo_clear.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %ctr.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctr.i.i, align 4
  %call.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %7, i32 noundef %11) #10
  %12 = and i16 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, label %if.then7.i.if.then12.i_crit_edge

if.then7.i.if.then12.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then7.i.usbhsf_fifo_clear.exit_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.then12.i:                                      ; preds = %if.then7.i.if.then12.i_crit_edge, %if.end.if.then12.i_crit_edge
  %ctr.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctr.i, align 4
  tail call void @usbhs_write(ptr noundef %7, i32 noundef %14, i16 noundef zeroext 16384) #10
  br label %usbhsf_fifo_clear.exit

usbhsf_fifo_clear.exit:                           ; preds = %if.then12.i, %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, %if.end.i.usbhsf_fifo_clear.exit_crit_edge
  %15 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 2
  %17 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %16, i32 noundef %18, i16 noundef zeroext 0) #10
  %19 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv2, align 4
  %call.i22 = tail call ptr @usbhs_mod_get_current(ptr noundef %20) #10
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %usbhsf_fifo_clear.exit.usbhsf_rx_irq_ctrl.exit_crit_edge, label %if.end.i25

usbhsf_fifo_clear.exit.usbhsf_rx_irq_ctrl.exit_crit_edge: ; preds = %usbhsf_fifo_clear.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_rx_irq_ctrl.exit

if.end.i25:                                       ; preds = %usbhsf_fifo_clear.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %21 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv2, align 4
  %pipe_info.i24 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %pipe_info.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pipe_info.i24, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %irq_brdysts11.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i22, i32 0, i32 8
  %25 = ptrtoint ptr %irq_brdysts11.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %irq_brdysts11.i, align 4
  %27 = trunc i32 %shl.i to i16
  %conv9.i = or i16 %26, %27
  store i16 %conv9.i, ptr %irq_brdysts11.i, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %20, ptr noundef nonnull %call.i22) #10
  br label %usbhsf_rx_irq_ctrl.exit

usbhsf_rx_irq_ctrl.exit:                          ; preds = %if.end.i25, %usbhsf_fifo_clear.exit.usbhsf_rx_irq_ctrl.exit_crit_edge
  tail call void @usbhs_pipe_enable(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %usbhsf_rx_irq_ctrl.exit, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_dcp_data_stage_try_push(ptr nocapture noundef %pkt, ptr nocapture noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %1, i32 noundef 1) #10
  %handler = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @usbhs_fifo_pio_push_handler, ptr %handler, align 4
  %3 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pipe1, align 4
  %call.i = tail call i32 @usbhs_pipe_is_running(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.usbhsf_pio_prepare_push.exit_crit_edge

entry.usbhsf_pio_prepare_push.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_push.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @usbhsf_pio_try_push(ptr noundef %pkt, ptr noundef %is_done) #10
  br label %usbhsf_pio_prepare_push.exit

usbhsf_pio_prepare_push.exit:                     ; preds = %if.end.i, %entry.usbhsf_pio_prepare_push.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %entry.usbhsf_pio_prepare_push.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_dcp_data_stage_prepare_pop(ptr nocapture noundef %pkt, ptr nocapture noundef readnone %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %fifo3 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fifo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %fifo_info = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 10
  tail call void @usbhs_pipe_disable(ptr noundef %1) #10
  tail call void @usbhs_pipe_data_sequence(ptr noundef %1, i32 noundef 1) #10
  %call = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef %fifo_info, i32 noundef 0)
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %9, %1
  br i1 %cmp.i, label %if.end.if.then12.i_crit_edge, label %if.then.i

if.end.if.then12.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then7.i_crit_edge, label %if.end.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.end.i:                                         ; preds = %if.then.i
  %call5.i = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i.usbhsf_fifo_clear.exit_crit_edge

if.end.i.usbhsf_fifo_clear.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %ctr.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctr.i.i, align 4
  %call.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %7, i32 noundef %11) #10
  %12 = and i16 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, label %if.then7.i.if.then12.i_crit_edge

if.then7.i.if.then12.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then7.i.usbhsf_fifo_clear.exit_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.then12.i:                                      ; preds = %if.then7.i.if.then12.i_crit_edge, %if.end.if.then12.i_crit_edge
  %ctr.i = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctr.i, align 4
  tail call void @usbhs_write(ptr noundef %7, i32 noundef %14, i16 noundef zeroext 16384) #10
  br label %usbhsf_fifo_clear.exit

usbhsf_fifo_clear.exit:                           ; preds = %if.then12.i, %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, %if.end.i.usbhsf_fifo_clear.exit_crit_edge
  %15 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 10, i32 0, i32 2
  %17 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %16, i32 noundef %18, i16 noundef zeroext 0) #10
  %handler = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %19 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @usbhs_fifo_pio_pop_handler, ptr %handler, align 4
  %call5 = tail call i32 @usbhsf_prepare_pop(ptr noundef %pkt, ptr noundef %is_done)
  br label %cleanup

cleanup:                                          ; preds = %usbhsf_fifo_clear.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_pio_prepare_push(ptr nocapture noundef %pkt, ptr nocapture noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  %call = tail call i32 @usbhs_pipe_is_running(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @usbhsf_pio_try_push(ptr noundef %pkt, ptr noundef %is_done)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_pio_try_push(ptr nocapture noundef %pkt, ptr nocapture noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %fifo_info = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %port = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %call = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %1) #10
  %sequence = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 12
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %1, i32 noundef %11) #10
  %12 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %sequence, align 4
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  tail call void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %1, i32 noundef %14) #10
  %call5 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef %fifo_info, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.usbhs_fifo_write_busy_crit_edge, label %if.end9

if.end.usbhs_fifo_write_busy_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhs_fifo_write_busy

if.end9:                                          ; preds = %if.end
  %ctr.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %15 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctr.i, align 4
  %call.i = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %16) #10
  %17 = and i16 %call.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.end9.usbhs_fifo_write_busy_crit_edge, label %if.end13

if.end9.usbhs_fifo_write_busy_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhs_fifo_write_busy

if.end13:                                         ; preds = %if.end9
  %buf14 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 7
  %18 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf14, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual, align 4
  %add.ptr15 = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %sub = sub i32 %23, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %call)
  %cmp18 = icmp slt i32 %sub, %call
  %24 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp20 = icmp sgt i32 %24, 3
  %25 = ptrtoint ptr %add.ptr15 to i32
  %and = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp20, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then22, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %div194196 = lshr i32 %24, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %add.ptr15, i32 noundef %div194196) #10
  %rem195 = and i32 %24, 3
  %sub23 = and i32 %24, -4
  %add.ptr24 = getelementptr i8, ptr %add.ptr15, i32 %sub23
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end13.if.end25_crit_edge
  %buf.0 = phi ptr [ %add.ptr24, %if.then22 ], [ %add.ptr15, %if.end13.if.end25_crit_edge ]
  %len.0 = phi i32 [ %rem195, %if.then22 ], [ %24, %if.end13.if.end25_crit_edge ]
  %cfifo_byte_addr = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %26 = ptrtoint ptr %cfifo_byte_addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %cfifo_byte_addr, align 4
  %27 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp33200 = icmp sgt i32 %len.0, 0
  br i1 %tobool26.not, label %for.cond32.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end25
  br i1 %cmp33200, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end43_crit_edge

for.cond.preheader.if.end43_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond32.preheader:                             ; preds = %if.end25
  br i1 %cmp33200, label %for.cond32.preheader.for.body35_crit_edge, label %for.cond32.preheader.if.end43_crit_edge

for.cond32.preheader.if.end43_crit_edge:          ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

for.cond32.preheader.for.body35_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body35

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0199 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf.0, i32 %i.0199
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %and30 = and i32 %i.0199, 3
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %and30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %29) #10, !srcloc !137
  %inc = add nuw nsw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, %len.0
  br i1 %exitcond.not, label %for.body.if.end43_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond32.preheader.for.body35_crit_edge
  %i.1201 = phi i32 [ %inc41, %for.body35.for.body35_crit_edge ], [ 0, %for.cond32.preheader.for.body35_crit_edge ]
  %arrayidx36 = getelementptr i8, ptr %buf.0, i32 %i.1201
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx36, align 1
  %and37 = and i32 %i.1201, 3
  %sub38 = xor i32 %and37, 3
  %add.ptr39 = getelementptr i8, ptr %add.ptr, i32 %sub38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %31) #10, !srcloc !137
  %inc41 = add nuw nsw i32 %i.1201, 1
  %exitcond203.not = icmp eq i32 %inc41, %len.0
  br i1 %exitcond203.not, label %for.body35.if.end43_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.body35.if.end43_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %for.body35.if.end43_crit_edge, %for.body.if.end43_crit_edge, %for.cond32.preheader.if.end43_crit_edge, %for.cond.preheader.if.end43_crit_edge
  %32 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual, align 4
  %add = add i32 %33, %24
  store i32 %add, ptr %actual, align 4
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp47 = icmp slt i32 %add, %35
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.end43
  %36 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %is_done, align 4
  br i1 %cmp18, label %if.then49.if.then58_crit_edge, label %if.then49.if.end59_crit_edge

if.then49.if.end59_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then49.if.then58_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

if.else50:                                        ; preds = %if.end43
  br i1 %cmp18, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %is_done, align 4
  br label %if.then58

if.else53:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  %zero = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %38 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool54.not = icmp eq i32 %39, 0
  %lnot.ext = zext i1 %tobool54.not to i32
  %40 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %lnot.ext, ptr %is_done, align 4
  br label %if.end59

if.then58:                                        ; preds = %if.then52, %if.then49.if.then58_crit_edge
  %41 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv2, align 4
  %43 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctr.i, align 4
  tail call void @usbhs_bset(ptr noundef %42, i32 noundef %44, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.else53, %if.then49.if.end59_crit_edge
  %45 = ptrtoint ptr %is_done to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %is_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool60.not = icmp eq i32 %46, 0
  %47 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv2, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %50, %1
  %call.i165 = tail call ptr @usbhs_mod_get_current(ptr noundef %48) #10
  %51 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv2, align 4
  %pipe_info5.i = getelementptr inbounds %struct.usbhs_priv, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %pipe_info5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pipe_info5.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %tobool.not.i166 = icmp eq ptr %call.i165, null
  br i1 %cmp.i, label %if.then.i, label %if.else21.i

if.then.i:                                        ; preds = %if.end59
  br i1 %tobool.not.i166, label %if.then.i.usbhsf_tx_irq_ctrl.exit_crit_edge, label %if.end.i

if.then.i.usbhsf_tx_irq_ctrl.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_tx_irq_ctrl.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_bempsts15.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i165, i32 0, i32 6
  %55 = ptrtoint ptr %irq_bempsts15.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %irq_bempsts15.i, align 4
  %57 = trunc i32 %shl.i to i16
  %58 = xor i16 %57, -1
  %conv17.i = and i16 %56, %58
  %conv13.i = or i16 %56, %57
  %conv17.sink.i = select i1 %tobool60.not, i16 %conv13.i, i16 %conv17.i
  store i16 %conv17.sink.i, ptr %irq_bempsts15.i, align 4
  br label %if.end58.sink.split.i

if.else21.i:                                      ; preds = %if.end59
  br i1 %tobool.not.i166, label %if.else21.i.usbhsf_tx_irq_ctrl.exit_crit_edge, label %if.end37.i

if.else21.i.usbhsf_tx_irq_ctrl.exit_crit_edge:    ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_tx_irq_ctrl.exit

if.end37.i:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_brdysts48.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i165, i32 0, i32 8
  %59 = ptrtoint ptr %irq_brdysts48.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %irq_brdysts48.i, align 4
  %61 = trunc i32 %shl.i to i16
  %62 = xor i16 %61, -1
  %conv51.i = and i16 %60, %62
  %conv44.i = or i16 %60, %61
  %conv51.sink.i = select i1 %tobool60.not, i16 %conv44.i, i16 %conv51.i
  store i16 %conv51.sink.i, ptr %irq_brdysts48.i, align 4
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %if.end37.i, %if.end.i
  tail call void @usbhs_irq_callback_update(ptr noundef %48, ptr noundef nonnull %call.i165) #10
  br label %usbhsf_tx_irq_ctrl.exit

usbhsf_tx_irq_ctrl.exit:                          ; preds = %if.end58.sink.split.i, %if.else21.i.usbhsf_tx_irq_ctrl.exit_crit_edge, %if.then.i.usbhsf_tx_irq_ctrl.exit_crit_edge
  %63 = ptrtoint ptr %is_done to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %is_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool63.not = icmp eq i32 %64, 0
  %lnot.ext65 = zext i1 %tobool63.not to i32
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef %lnot.ext65) #10
  tail call void @usbhs_pipe_enable(ptr noundef %1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsf_pio_try_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsf_pio_try_push, %if.then74)) #10
          to label %do.end [label %if.then74], !srcloc !138

if.then74:                                        ; preds = %usbhsf_tx_irq_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv2, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %68 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %69 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length, align 4
  %71 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %actual, align 4
  %73 = ptrtoint ptr %is_done to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %is_done, align 4
  %zero79 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %75 = ptrtoint ptr %zero79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %zero79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsf_pio_try_push.__UNIQUE_ID_ddebug237, ptr noundef %dev3, ptr noundef nonnull @.str.23, i32 noundef %sub.ptr.div, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76) #10
  br label %do.end

do.end:                                           ; preds = %if.then74, %usbhsf_tx_irq_ctrl.exit
  %77 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 2
  %79 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %78, i32 noundef %80, i16 noundef zeroext 0) #10
  br label %cleanup

usbhs_fifo_write_busy:                            ; preds = %if.end9.usbhs_fifo_write_busy_crit_edge, %if.end.usbhs_fifo_write_busy_crit_edge
  %ret.0 = phi i32 [ -16, %if.end9.usbhs_fifo_write_busy_crit_edge ], [ 0, %if.end.usbhs_fifo_write_busy_crit_edge ]
  %81 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i169 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 2
  %83 = ptrtoint ptr %sel.i169 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sel.i169, align 4
  tail call void @usbhs_write(ptr noundef %82, i32 noundef %84, i16 noundef zeroext 0) #10
  %85 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv2, align 4
  %pipe_info.i171 = getelementptr inbounds %struct.usbhs_priv, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %pipe_info.i171 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pipe_info.i171, align 4
  %cmp.i172 = icmp eq ptr %88, %1
  %call.i173 = tail call ptr @usbhs_mod_get_current(ptr noundef %86) #10
  %89 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv2, align 4
  %pipe_info5.i174 = getelementptr inbounds %struct.usbhs_priv, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %pipe_info5.i174 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pipe_info5.i174, align 4
  %sub.ptr.lhs.cast.i175 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i176 = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i177 = sub i32 %sub.ptr.lhs.cast.i175, %sub.ptr.rhs.cast.i176
  %sub.ptr.div.i178 = sdiv exact i32 %sub.ptr.sub.i177, 36
  %shl.i179 = shl nuw i32 1, %sub.ptr.div.i178
  %tobool.not.i180 = icmp eq ptr %call.i173, null
  br i1 %cmp.i172, label %if.then.i181, label %if.else21.i186

if.then.i181:                                     ; preds = %usbhs_fifo_write_busy
  br i1 %tobool.not.i180, label %if.then.i181.usbhsf_tx_irq_ctrl.exit192_crit_edge, label %if.end.i185

if.then.i181.usbhsf_tx_irq_ctrl.exit192_crit_edge: ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_tx_irq_ctrl.exit192

if.end.i185:                                      ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #12
  %irq_bempsts15.i182 = getelementptr inbounds %struct.usbhs_mod, ptr %call.i173, i32 0, i32 6
  br label %if.end58.sink.split.i191

if.else21.i186:                                   ; preds = %usbhs_fifo_write_busy
  br i1 %tobool.not.i180, label %if.else21.i186.usbhsf_tx_irq_ctrl.exit192_crit_edge, label %if.end37.i190

if.else21.i186.usbhsf_tx_irq_ctrl.exit192_crit_edge: ; preds = %if.else21.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_tx_irq_ctrl.exit192

if.end37.i190:                                    ; preds = %if.else21.i186
  call void @__sanitizer_cov_trace_pc() #12
  %irq_brdysts48.i187 = getelementptr inbounds %struct.usbhs_mod, ptr %call.i173, i32 0, i32 8
  br label %if.end58.sink.split.i191

if.end58.sink.split.i191:                         ; preds = %if.end37.i190, %if.end.i185
  %irq_brdysts48.i187.sink206 = phi ptr [ %irq_brdysts48.i187, %if.end37.i190 ], [ %irq_bempsts15.i182, %if.end.i185 ]
  %93 = ptrtoint ptr %irq_brdysts48.i187.sink206 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %irq_brdysts48.i187.sink206, align 4
  %95 = trunc i32 %shl.i179 to i16
  %conv44.i189 = or i16 %94, %95
  store i16 %conv44.i189, ptr %irq_brdysts48.i187.sink206, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %86, ptr noundef nonnull %call.i173) #10
  br label %usbhsf_tx_irq_ctrl.exit192

usbhsf_tx_irq_ctrl.exit192:                       ; preds = %if.end58.sink.split.i191, %if.else21.i186.usbhsf_tx_irq_ctrl.exit192_crit_edge, %if.then.i181.usbhsf_tx_irq_ctrl.exit192_crit_edge
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %usbhsf_tx_irq_ctrl.exit192, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %usbhsf_tx_irq_ctrl.exit192 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_prepare_pop(ptr nocapture noundef %pkt, ptr nocapture noundef readnone %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %fifo3 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fifo3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @usbhs_pipe_is_running(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sequence = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 12
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sequence, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %1, i32 noundef %7) #10
  %8 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %sequence, align 4
  %9 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv2, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe_info, align 4
  %cmp = icmp eq ptr %12, %1
  br i1 %cmp, label %usbhsf_fifo_clear.exit, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

usbhsf_fifo_clear.exit:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %ctr.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctr.i, align 4
  tail call void @usbhs_write(ptr noundef %10, i32 noundef %14, i16 noundef zeroext 16384) #10
  br label %if.end11

if.end11:                                         ; preds = %usbhsf_fifo_clear.exit, %if.end6.if.end11_crit_edge
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  tail call void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %1, i32 noundef %16) #10
  tail call void @usbhs_pipe_enable(ptr noundef %1) #10
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef 1) #10
  %17 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv2, align 4
  %call.i28 = tail call ptr @usbhs_mod_get_current(ptr noundef %18) #10
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %if.end11.cleanup_crit_edge, label %if.end.i31

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i31:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %19 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv2, align 4
  %pipe_info.i30 = getelementptr inbounds %struct.usbhs_priv, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %pipe_info.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe_info.i30, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %irq_brdysts11.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i28, i32 0, i32 8
  %23 = ptrtoint ptr %irq_brdysts11.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %irq_brdysts11.i, align 4
  %25 = trunc i32 %shl.i to i16
  %conv9.i = or i16 %24, %25
  store i16 %conv9.i, ptr %irq_brdysts11.i, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %18, ptr noundef nonnull %call.i28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i31, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_pio_try_pop(ptr nocapture noundef %pkt, ptr nocapture noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %fifo_info = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %port = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %call = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %1) #10
  %call4 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef %fifo_info, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctr.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctr.i, align 4
  %call.i = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %11) #10
  %12 = and i16 %call.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  %..i = select i1 %tobool.not.i, i32 -16, i32 0
  br i1 %tobool.not.i, label %if.end.usbhs_fifo_read_busy_crit_edge, label %if.end8

if.end.usbhs_fifo_read_busy_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhs_fifo_read_busy

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctr.i, align 4
  %call.i126 = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %14) #10
  %15 = and i16 %call.i126, 4095
  %and.i = zext i16 %15 to i32
  %buf10 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 7
  %16 = ptrtoint ptr %buf10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf10, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 %19
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  %sub = sub i32 %21, %19
  %22 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %and.i)
  %add = add i32 %22, %19
  %23 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %actual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp17 = icmp eq i32 %add, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %call)
  %cmp18 = icmp slt i32 %22, %call
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.then19, label %if.end8.if.end26_crit_edge

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then19:                                        ; preds = %if.end8
  %24 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %is_done, align 4
  %25 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv2, align 4
  %call.i127 = tail call ptr @usbhs_mod_get_current(ptr noundef %26) #10
  %tobool.not.i128 = icmp eq ptr %call.i127, null
  br i1 %tobool.not.i128, label %if.then19.usbhsf_rx_irq_ctrl.exit_crit_edge, label %if.end.i

if.then19.usbhsf_rx_irq_ctrl.exit_crit_edge:      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_rx_irq_ctrl.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %27 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv2, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %irq_brdysts11.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i127, i32 0, i32 8
  %31 = ptrtoint ptr %irq_brdysts11.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %irq_brdysts11.i, align 4
  %33 = trunc i32 %shl.i to i16
  %34 = xor i16 %33, -1
  %conv13.i = and i16 %32, %34
  store i16 %conv13.i, ptr %irq_brdysts11.i, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %26, ptr noundef nonnull %call.i127) #10
  br label %usbhsf_rx_irq_ctrl.exit

usbhsf_rx_irq_ctrl.exit:                          ; preds = %if.end.i, %if.then19.usbhsf_rx_irq_ctrl.exit_crit_edge
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef 0) #10
  %call20 = tail call i32 @usbhs_mod_is_host(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %land.lhs.true, label %usbhsf_rx_irq_ctrl.exit.if.end26_crit_edge

usbhsf_rx_irq_ctrl.exit.if.end26_crit_edge:       ; preds = %usbhsf_rx_irq_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %usbhsf_rx_irq_ctrl.exit
  %35 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv2, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pipe_info, align 4
  %cmp23 = icmp eq ptr %38, %1
  br i1 %cmp23, label %land.lhs.true.if.end26_crit_edge, label %if.then24

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usbhs_pipe_disable(ptr noundef %1) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true.if.end26_crit_edge, %usbhsf_rx_irq_ctrl.exit.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp27 = icmp eq i16 %15, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %zero = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %39 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %zero, align 4
  %40 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv2, align 4
  %pipe_info.i130 = getelementptr inbounds %struct.usbhs_priv, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %pipe_info.i130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pipe_info.i130, align 4
  %cmp.i = icmp eq ptr %43, %1
  br i1 %cmp.i, label %if.then28.if.then12.i_crit_edge, label %if.then.i

if.then28.if.then12.i_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then.i:                                        ; preds = %if.then28
  %call.i131 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.then.i.if.then7.i_crit_edge, label %if.end.i133

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.end.i133:                                      ; preds = %if.then.i
  %call5.i = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i133.if.then7.i_crit_edge, label %if.end.i133.do.body_crit_edge

if.end.i133.do.body_crit_edge:                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i133.if.then7.i_crit_edge:                 ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i133.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %44 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctr.i, align 4
  %call.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %41, i32 noundef %45) #10
  %46 = and i16 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i.i = icmp eq i16 %46, 0
  br i1 %tobool.not.i.i, label %if.then7.i.do.body_crit_edge, label %if.then7.i.if.then12.i_crit_edge

if.then7.i.if.then12.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then7.i.do.body_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then12.i:                                      ; preds = %if.then7.i.if.then12.i_crit_edge, %if.then28.if.then12.i_crit_edge
  %47 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctr.i, align 4
  tail call void @usbhs_write(ptr noundef %41, i32 noundef %48, i16 noundef zeroext 16384) #10
  br label %do.body

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp30 = icmp sgt i32 %22, 3
  %49 = ptrtoint ptr %add.ptr11 to i32
  %and = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  %or.cond124 = select i1 %cmp30, i1 %tobool32.not, i1 false
  br i1 %or.cond124, label %if.then33, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %div137138141 = lshr i32 %22, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr, ptr noundef %add.ptr11, i32 noundef %div137138141) #10
  %rem139140 = and i32 %22, 3
  %sub34 = and i32 %22, -4
  %add.ptr35 = getelementptr i8, ptr %add.ptr11, i32 %sub34
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29.if.end36_crit_edge
  %buf.0 = phi ptr [ %add.ptr35, %if.then33 ], [ %add.ptr11, %if.end29.if.end36_crit_edge ]
  %len.0 = phi i32 [ %rem139140, %if.then33 ], [ %22, %if.end29.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp37142 = icmp sgt i32 %len.0, 0
  br i1 %cmp37142, label %if.end36.for.body_crit_edge, label %if.end36.do.body_crit_edge

if.end36.do.body_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %if.end36.for.body_crit_edge
  %i.0144 = phi i32 [ %inc, %if.end42.for.body_crit_edge ], [ 0, %if.end36.for.body_crit_edge ]
  %data.0143 = phi i32 [ %data.1, %if.end42.for.body_crit_edge ], [ 0, %if.end36.for.body_crit_edge ]
  %and38 = and i32 %i.0144, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %for.body.if.end42_crit_edge

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !139
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %for.body.if.end42_crit_edge
  %data.1 = phi i32 [ %data.0143, %for.body.if.end42_crit_edge ], [ %51, %if.then40 ]
  %mul = shl nuw nsw i32 %and38, 3
  %shr = lshr i32 %data.1, %mul
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr i8, ptr %buf.0, i32 %i.0144
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %len.0
  br i1 %exitcond.not, label %if.end42.do.body_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end42.do.body_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end42.do.body_crit_edge, %if.end36.do.body_crit_edge, %if.then12.i, %if.then7.i.do.body_crit_edge, %if.end.i133.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsf_pio_try_pop.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsf_pio_try_pop, %if.then50)) #10
          to label %usbhs_fifo_read_busy [label %if.then50], !srcloc !138

if.then50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv2, align 4
  %pipe_info52 = getelementptr inbounds %struct.usbhs_priv, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %pipe_info52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pipe_info52, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %56 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %57 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length, align 4
  %59 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %actual, align 4
  %61 = ptrtoint ptr %is_done to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %is_done, align 4
  %zero56 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %63 = ptrtoint ptr %zero56 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %zero56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsf_pio_try_pop.__UNIQUE_ID_ddebug240, ptr noundef %dev3, ptr noundef nonnull @.str.25, i32 noundef %sub.ptr.div, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #10
  br label %usbhs_fifo_read_busy

usbhs_fifo_read_busy:                             ; preds = %if.then50, %do.body, %if.end.usbhs_fifo_read_busy_crit_edge
  %65 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 2
  %67 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %66, i32 noundef %68, i16 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %usbhs_fifo_read_busy, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %usbhs_fifo_read_busy ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_ctrl_stage_end(ptr nocapture noundef readonly %pkt, ptr nocapture noundef writeonly %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %1) #10
  %2 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %is_done, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_prepare_push(ptr noundef %pkt, ptr nocapture noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %sub = sub i32 %5, %7
  %fifo3 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fifo3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fifo3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pio_dma_border = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %pio_dma_border to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pio_dma_border, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp = icmp slt i32 %sub, %11
  br i1 %cmp, label %if.end.usbhsf_pio_prepare_push_crit_edge, label %lor.lhs.false

if.end.usbhsf_pio_prepare_push_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_push

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp4 = icmp eq i32 %13, 1
  br i1 %cmp4, label %lor.lhs.false.usbhsf_pio_prepare_push_crit_edge, label %if.end6

lor.lhs.false.usbhsf_pio_prepare_push_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_push

if.end6:                                          ; preds = %lor.lhs.false
  %has_usb_dmac = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %14 = ptrtoint ptr %has_usb_dmac to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %has_usb_dmac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool8.not = icmp slt i8 %bf.load, 0
  %and = and i32 %sub, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end11, label %if.end6.usbhsf_pio_prepare_push_crit_edge

if.end6.usbhsf_pio_prepare_push_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_push

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool17.not, i32 7, i32 31
  %buf = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 7
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %7
  %17 = ptrtoint ptr %add.ptr to i32
  %and19 = and i32 %cond, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end11.usbhsf_pio_prepare_push_crit_edge

if.end11.usbhsf_pio_prepare_push_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_push

if.end22:                                         ; preds = %if.end11
  %call = tail call i32 @usbhs_pipe_is_running(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %call26 = tail call fastcc ptr @usbhsf_get_dma_fifo(ptr noundef %3, ptr noundef %pkt)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.usbhsf_pio_prepare_push_crit_edge, label %if.end29

if.end25.usbhsf_pio_prepare_push_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_push

if.end29:                                         ; preds = %if.end25
  %call30 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef nonnull %call26, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.usbhsf_pio_prepare_push_crit_edge, label %if.end33

if.end29.usbhsf_pio_prepare_push_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_push

if.end33:                                         ; preds = %if.end29
  %18 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe1, align 4
  %priv2.i = getelementptr inbounds %struct.usbhs_pipe, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv2.i, align 4
  %fifo3.i = getelementptr inbounds %struct.usbhs_pipe, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fifo3.i, align 4
  %handler.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %24 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handler.i.i, align 4
  %cmp.i.i = icmp eq ptr %25, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %23, i32 0, i32 5
  br label %return.sink.split.i.i

if.end.i.i:                                       ; preds = %if.end33
  %cmp2.i.i = icmp eq ptr %25, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge

if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_dma_map_ctrl.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %23, i32 0, i32 6
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.then3.i.i, %if.then.i.i
  %rx_chan.sink.i.i = phi ptr [ %rx_chan.i.i, %if.then3.i.i ], [ %tx_chan.i.i, %if.then.i.i ]
  %26 = ptrtoint ptr %rx_chan.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_chan.sink.i.i, align 4
  br label %__usbhsf_dma_map_ctrl.exit

__usbhsf_dma_map_ctrl.exit:                       ; preds = %return.sink.split.i.i, %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge ], [ %27, %return.sink.split.i.i ]
  %dma_map_ctrl.i = getelementptr inbounds %struct.usbhs_priv, ptr %21, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %dma_map_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_map_ctrl.i, align 4
  %30 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %retval.0.i.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call4.i = tail call i32 %29(ptr noundef %33, ptr noundef %pkt, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp35 = icmp slt i32 %call4.i, 0
  br i1 %cmp35, label %usbhsf_pio_prepare_push_unselect, label %if.end37

if.end37:                                         ; preds = %__usbhsf_dma_map_ctrl.exit
  %trans = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 9
  %34 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %trans, align 4
  tail call fastcc void @usbhsf_tx_irq_ctrl(ptr noundef %1, i32 noundef 0)
  %35 = ptrtoint ptr %has_usb_dmac to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load40 = load i8, ptr %has_usb_dmac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40)
  %tobool43.not = icmp sgt i8 %bf.load40, -1
  br i1 %tobool43.not, label %do.body, label %if.then44

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %pkt)
  br label %cleanup

do.body:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %work = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %36 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @usbhsf_dma_prepare_push.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry48 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry48, ptr %entry48, align 4
  %prev.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry48, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xfer_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %work) #10
  br label %cleanup

usbhsf_pio_prepare_push_unselect:                 ; preds = %__usbhsf_dma_map_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usbhsf_fifo_unselect(ptr noundef %1, ptr noundef nonnull %call26)
  br label %usbhsf_pio_prepare_push

usbhsf_pio_prepare_push:                          ; preds = %usbhsf_pio_prepare_push_unselect, %if.end29.usbhsf_pio_prepare_push_crit_edge, %if.end25.usbhsf_pio_prepare_push_crit_edge, %if.end11.usbhsf_pio_prepare_push_crit_edge, %if.end6.usbhsf_pio_prepare_push_crit_edge, %lor.lhs.false.usbhsf_pio_prepare_push_crit_edge, %if.end.usbhsf_pio_prepare_push_crit_edge
  %handler = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %41 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @usbhs_fifo_pio_push_handler, ptr %handler, align 4
  %42 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pipe1, align 4
  %call.i = tail call i32 @usbhs_pipe_is_running(ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %usbhsf_pio_prepare_push.cleanup_crit_edge

usbhsf_pio_prepare_push.cleanup_crit_edge:        ; preds = %usbhsf_pio_prepare_push
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %usbhsf_pio_prepare_push
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @usbhsf_pio_try_push(ptr noundef %pkt, ptr noundef %is_done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %usbhsf_pio_prepare_push.cleanup_crit_edge, %do.body, %if.then44, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.then44 ], [ %call1.i, %if.end.i ], [ 0, %usbhsf_pio_prepare_push.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_push_done(ptr noundef %pkt, ptr nocapture noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %trans = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 9
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trans, align 4
  %call = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %1) #10
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trans, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp slt i32 %add, %9
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.else:                                          ; preds = %entry
  %rem = srem i32 %3, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.else5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %zero = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %10 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %lnot.ext = zext i1 %tobool6.not to i32
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %.sink = phi i32 [ %lnot.ext, %if.else5 ], [ 0, %entry.if.end7_crit_edge ], [ 1, %if.else.if.end7_crit_edge ]
  %12 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %is_done, align 4
  %13 = xor i32 %.sink, 1
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef %13) #10
  %fifo = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fifo, align 4
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1.i, align 4
  %sel.i = getelementptr inbounds %struct.usbhs_fifo, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_bset(ptr noundef %17, i32 noundef %19, i16 noundef zeroext 4096, i16 noundef zeroext 0) #10
  %20 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pipe1, align 4
  %priv2.i = getelementptr inbounds %struct.usbhs_pipe, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv2.i, align 4
  %fifo3.i = getelementptr inbounds %struct.usbhs_pipe, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fifo3.i, align 4
  %handler.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %26 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handler.i.i, align 4
  %cmp.i.i = icmp eq ptr %27, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %25, i32 0, i32 5
  br label %return.sink.split.i.i

if.end.i.i:                                       ; preds = %if.end7
  %cmp2.i.i = icmp eq ptr %27, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge

if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_dma_map_ctrl.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %25, i32 0, i32 6
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.then3.i.i, %if.then.i.i
  %rx_chan.sink.i.i = phi ptr [ %rx_chan.i.i, %if.then3.i.i ], [ %tx_chan.i.i, %if.then.i.i ]
  %28 = ptrtoint ptr %rx_chan.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_chan.sink.i.i, align 4
  br label %__usbhsf_dma_map_ctrl.exit

__usbhsf_dma_map_ctrl.exit:                       ; preds = %return.sink.split.i.i, %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end.i.i.__usbhsf_dma_map_ctrl.exit_crit_edge ], [ %29, %return.sink.split.i.i ]
  %dma_map_ctrl.i = getelementptr inbounds %struct.usbhs_priv, ptr %23, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %dma_map_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_map_ctrl.i, align 4
  %32 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %retval.0.i.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %call4.i = tail call i32 %31(ptr noundef %35, ptr noundef %pkt, i32 noundef 0) #10
  %36 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fifo, align 4
  %38 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv1.i, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i40 = getelementptr inbounds %struct.usbhs_fifo, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %sel.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sel.i40, align 4
  tail call void @usbhs_write(ptr noundef %39, i32 noundef %41, i16 noundef zeroext 0) #10
  %42 = ptrtoint ptr %is_done to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %is_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool13.not = icmp eq i32 %43, 0
  br i1 %tobool13.not, label %if.then14, label %__usbhsf_dma_map_ctrl.exit.cleanup_crit_edge

__usbhsf_dma_map_ctrl.exit.cleanup_crit_edge:     ; preds = %__usbhsf_dma_map_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %__usbhsf_dma_map_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @usbhs_fifo_pio_push_handler, ptr %handler.i.i, align 4
  %call16 = tail call i32 @usbhsf_pio_try_push(ptr noundef %pkt, ptr noundef %is_done)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %__usbhsf_dma_map_ctrl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then14 ], [ 0, %__usbhsf_dma_map_ctrl.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_prepare_pop(ptr noundef %pkt, ptr noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %has_usb_dmac = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %4 = ptrtoint ptr %has_usb_dmac to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %has_usb_dmac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fifo3.i = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fifo3.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %length.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  %pio_dma_border.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %pio_dma_border.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pio_dma_border.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i = icmp slt i32 %8, %10
  br i1 %cmp.i, label %if.end.i.usbhsf_pio_prepare_pop.i_crit_edge, label %lor.lhs.false.i

if.end.i.usbhsf_pio_prepare_pop.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp4.i = icmp eq i32 %12, 1
  br i1 %cmp4.i, label %lor.lhs.false.i.usbhsf_pio_prepare_pop.i_crit_edge, label %if.end6.i

lor.lhs.false.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %handler.i.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.i.i

if.end6.i.usbhsf_pio_prepare_pop.i_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.i.i:                                     ; preds = %if.end6.i
  %13 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %14, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0, i32 5
  br label %usbhsf_dma_chan_get.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %cmp2.i.i.i = icmp eq ptr %14, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %for.inc.i.thread.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0, i32 6
  br label %usbhsf_dma_chan_get.exit.i.i

usbhsf_dma_chan_get.exit.i.i:                     ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %rx_chan.sink.i.i.i = phi ptr [ %rx_chan.i.i.i, %if.then3.i.i.i ], [ %tx_chan.i.i.i, %if.then.i.i.i ]
  %15 = ptrtoint ptr %rx_chan.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_chan.sink.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i.i, label %usbhsf_dma_chan_get.exit.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

usbhsf_dma_chan_get.exit.i.i.for.inc.i.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %usbhsf_dma_chan_get.exit.i.i
  %pipe.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end9.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %usbhsf_dma_chan_get.exit.i.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1
  %tobool.not.1.i.i = icmp eq ptr %arrayidx.1.i.i, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.1.i.i

for.inc.i.i.usbhsf_pio_prepare_pop.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.inc.i.thread.i:                               ; preds = %if.end.i.i.i
  %arrayidx.1.i62.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1
  %tobool.not.1.i63.i = icmp eq ptr %arrayidx.1.i62.i, null
  br i1 %tobool.not.1.i63.i, label %for.inc.i.thread.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.inc.i.thread.i.for.inc.1.i.i_crit_edge

for.inc.i.thread.i.for.inc.1.i.i_crit_edge:       ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

for.inc.i.thread.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.1.i.i:                                   ; preds = %for.inc.i.i
  br i1 %cmp.i.i.i, label %if.then.i.1.i.i, label %if.end.i.1.i.i

if.end.i.1.i.i:                                   ; preds = %for.body.1.i.i
  %cmp2.i.1.i.i = icmp eq ptr %14, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.1.i.i, label %if.then3.i.1.i.i, label %if.end.i.1.i.i.for.inc.1.i.i_crit_edge

if.end.i.1.i.i.for.inc.1.i.i_crit_edge:           ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

if.then3.i.1.i.i:                                 ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1, i32 6
  br label %usbhsf_dma_chan_get.exit.1.i.i

if.then.i.1.i.i:                                  ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1, i32 5
  br label %usbhsf_dma_chan_get.exit.1.i.i

usbhsf_dma_chan_get.exit.1.i.i:                   ; preds = %if.then.i.1.i.i, %if.then3.i.1.i.i
  %rx_chan.sink.i.1.i.i = phi ptr [ %rx_chan.i.1.i.i, %if.then3.i.1.i.i ], [ %tx_chan.i.1.i.i, %if.then.i.1.i.i ]
  %19 = ptrtoint ptr %rx_chan.sink.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_chan.sink.i.1.i.i, align 4
  %tobool1.not.1.i.i = icmp eq ptr %20, null
  br i1 %tobool1.not.1.i.i, label %usbhsf_dma_chan_get.exit.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

usbhsf_dma_chan_get.exit.1.i.i.for.inc.1.i.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %usbhsf_dma_chan_get.exit.1.i.i
  %pipe.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1, i32 4
  %21 = ptrtoint ptr %pipe.1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe.1.i.i, align 4
  %tobool2.not.1.i.i = icmp eq ptr %22, null
  br i1 %tobool2.not.1.i.i, label %land.lhs.true.1.i.i.if.end9.i_crit_edge, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

land.lhs.true.1.i.i.if.end9.i_crit_edge:          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %usbhsf_dma_chan_get.exit.1.i.i.for.inc.1.i.i_crit_edge, %if.end.i.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.thread.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2
  %tobool.not.2.i.i = icmp eq ptr %arrayidx.2.i.i, null
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.2.i.i

for.inc.1.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.2.i.i:                                   ; preds = %for.inc.1.i.i
  br i1 %cmp.i.i.i, label %if.then.i.2.i.i, label %if.end.i.2.i.i

if.end.i.2.i.i:                                   ; preds = %for.body.2.i.i
  %cmp2.i.2.i.i = icmp eq ptr %14, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.2.i.i, label %if.then3.i.2.i.i, label %if.end.i.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge

if.end.i.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.then3.i.2.i.i:                                 ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2, i32 6
  br label %usbhsf_dma_chan_get.exit.2.i.i

if.then.i.2.i.i:                                  ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2, i32 5
  br label %usbhsf_dma_chan_get.exit.2.i.i

usbhsf_dma_chan_get.exit.2.i.i:                   ; preds = %if.then.i.2.i.i, %if.then3.i.2.i.i
  %rx_chan.sink.i.2.i.i = phi ptr [ %rx_chan.i.2.i.i, %if.then3.i.2.i.i ], [ %tx_chan.i.2.i.i, %if.then.i.2.i.i ]
  %23 = ptrtoint ptr %rx_chan.sink.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_chan.sink.i.2.i.i, align 4
  %tobool1.not.2.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.2.i.i, label %usbhsf_dma_chan_get.exit.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

usbhsf_dma_chan_get.exit.2.i.i.for.inc.2.i.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %usbhsf_dma_chan_get.exit.2.i.i
  %pipe.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2, i32 4
  %25 = ptrtoint ptr %pipe.2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pipe.2.i.i, align 4
  %tobool2.not.2.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.2.i.i, label %land.lhs.true.2.i.i.if.end9.i_crit_edge, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

land.lhs.true.2.i.i.if.end9.i_crit_edge:          ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %usbhsf_dma_chan_get.exit.2.i.i.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3
  %tobool.not.3.i.i = icmp eq ptr %arrayidx.3.i.i, null
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.3.i.i

for.inc.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.3.i.i:                                   ; preds = %for.inc.2.i.i
  br i1 %cmp.i.i.i, label %if.then.i.3.i.i, label %if.end.i.3.i.i

if.end.i.3.i.i:                                   ; preds = %for.body.3.i.i
  %cmp2.i.3.i.i = icmp eq ptr %14, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.3.i.i, label %if.then3.i.3.i.i, label %if.end.i.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge

if.end.i.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.then3.i.3.i.i:                                 ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3, i32 6
  br label %usbhsf_dma_chan_get.exit.3.i.i

if.then.i.3.i.i:                                  ; preds = %for.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3, i32 5
  br label %usbhsf_dma_chan_get.exit.3.i.i

usbhsf_dma_chan_get.exit.3.i.i:                   ; preds = %if.then.i.3.i.i, %if.then3.i.3.i.i
  %rx_chan.sink.i.3.i.i = phi ptr [ %rx_chan.i.3.i.i, %if.then3.i.3.i.i ], [ %tx_chan.i.3.i.i, %if.then.i.3.i.i ]
  %27 = ptrtoint ptr %rx_chan.sink.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_chan.sink.i.3.i.i, align 4
  %tobool1.not.3.i.i = icmp eq ptr %28, null
  br i1 %tobool1.not.3.i.i, label %usbhsf_dma_chan_get.exit.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %land.lhs.true.3.i.i

usbhsf_dma_chan_get.exit.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

land.lhs.true.3.i.i:                              ; preds = %usbhsf_dma_chan_get.exit.3.i.i
  %pipe.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3, i32 4
  %29 = ptrtoint ptr %pipe.3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pipe.3.i.i, align 4
  %tobool2.not.3.i.i = icmp eq ptr %30, null
  br i1 %tobool2.not.3.i.i, label %land.lhs.true.3.i.i.if.end9.i_crit_edge, label %land.lhs.true.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge

land.lhs.true.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

land.lhs.true.3.i.i.if.end9.i_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.3.i.i.if.end9.i_crit_edge, %land.lhs.true.2.i.i.if.end9.i_crit_edge, %land.lhs.true.1.i.i.if.end9.i_crit_edge, %land.lhs.true.i.i.if.end9.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %land.lhs.true.i.i.if.end9.i_crit_edge ], [ %arrayidx.1.i.i, %land.lhs.true.1.i.i.if.end9.i_crit_edge ], [ %arrayidx.2.i.i, %land.lhs.true.2.i.i.if.end9.i_crit_edge ], [ %arrayidx.3.i.i, %land.lhs.true.3.i.i.if.end9.i_crit_edge ]
  %buf.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 7
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i = and i32 %33, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.usbhsf_pio_prepare_pop.i_crit_edge

if.end9.i.usbhsf_pio_prepare_pop.i_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.end12.i:                                       ; preds = %if.end9.i
  %call13.i = tail call i32 @usbhs_pipe_is_running(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i
  tail call void @usbhs_pipe_config_change_bfre(ptr noundef %1, i32 noundef 1) #10
  %call17.i = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef nonnull %retval.0.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end16.i.usbhsf_pio_prepare_pop.i_crit_edge, label %if.end20.i

if.end16.i.usbhsf_pio_prepare_pop.i_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.end20.i:                                       ; preds = %if.end16.i
  %34 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pipe, align 4
  %priv2.i.i = getelementptr inbounds %struct.usbhs_pipe, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv2.i.i, align 4
  %fifo3.i.i = getelementptr inbounds %struct.usbhs_pipe, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %fifo3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fifo3.i.i, align 4
  %40 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handler.i.i.i, align 4
  %cmp.i.i53.i = icmp eq ptr %41, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i53.i, label %if.then.i.i55.i, label %if.end.i.i57.i

if.then.i.i55.i:                                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i54.i = getelementptr inbounds %struct.usbhs_fifo, ptr %39, i32 0, i32 5
  br label %return.sink.split.i.i.i

if.end.i.i57.i:                                   ; preds = %if.end20.i
  %cmp2.i.i56.i = icmp eq ptr %41, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i56.i, label %if.then3.i.i59.i, label %if.end.i.i57.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge

if.end.i.i57.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge: ; preds = %if.end.i.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_dma_map_ctrl.exit.i

if.then3.i.i59.i:                                 ; preds = %if.end.i.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i58.i = getelementptr inbounds %struct.usbhs_fifo, ptr %39, i32 0, i32 6
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %if.then3.i.i59.i, %if.then.i.i55.i
  %rx_chan.sink.i.i60.i = phi ptr [ %rx_chan.i.i58.i, %if.then3.i.i59.i ], [ %tx_chan.i.i54.i, %if.then.i.i55.i ]
  %42 = ptrtoint ptr %rx_chan.sink.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_chan.sink.i.i60.i, align 4
  br label %__usbhsf_dma_map_ctrl.exit.i

__usbhsf_dma_map_ctrl.exit.i:                     ; preds = %return.sink.split.i.i.i, %if.end.i.i57.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end.i.i57.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge ], [ %43, %return.sink.split.i.i.i ]
  %dma_map_ctrl.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %37, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %dma_map_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_map_ctrl.i.i, align 4
  %46 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %retval.0.i.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %call4.i.i = tail call i32 %45(ptr noundef %49, ptr noundef %pkt, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp22.i = icmp slt i32 %call4.i.i, 0
  %50 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv1, align 4
  br i1 %cmp22.i, label %usbhsf_pio_prepare_pop_unselect.i, label %if.end24.i

if.end24.i:                                       ; preds = %__usbhsf_dma_map_ctrl.exit.i
  %call.i7 = tail call ptr @usbhs_mod_get_current(ptr noundef %51) #10
  %tobool.not.i8 = icmp eq ptr %call.i7, null
  br i1 %tobool.not.i8, label %if.end24.i.usbhsf_rx_irq_ctrl.exit_crit_edge, label %if.end.i9

if.end24.i.usbhsf_rx_irq_ctrl.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_rx_irq_ctrl.exit

if.end.i9:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %52 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv1, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %irq_brdysts11.i = getelementptr inbounds %struct.usbhs_mod, ptr %call.i7, i32 0, i32 8
  %56 = ptrtoint ptr %irq_brdysts11.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %irq_brdysts11.i, align 4
  %58 = trunc i32 %shl.i to i16
  %59 = xor i16 %58, -1
  %conv13.i = and i16 %57, %59
  store i16 %conv13.i, ptr %irq_brdysts11.i, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %51, ptr noundef nonnull %call.i7) #10
  br label %usbhsf_rx_irq_ctrl.exit

usbhsf_rx_irq_ctrl.exit:                          ; preds = %if.end.i9, %if.end24.i.usbhsf_rx_irq_ctrl.exit_crit_edge
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i, align 4
  %trans.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 9
  %62 = ptrtoint ptr %trans.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %trans.i, align 4
  tail call fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %pkt) #10
  br label %cleanup

usbhsf_pio_prepare_pop_unselect.i:                ; preds = %__usbhsf_dma_map_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_fifo, ptr %retval.0.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %51, i32 noundef %64, i16 noundef zeroext 0) #10
  br label %usbhsf_pio_prepare_pop.i

usbhsf_pio_prepare_pop.i:                         ; preds = %usbhsf_pio_prepare_pop_unselect.i, %if.end16.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end9.i.usbhsf_pio_prepare_pop.i_crit_edge, %land.lhs.true.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %usbhsf_dma_chan_get.exit.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end.i.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end.i.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.1.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.i.thread.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end6.i.usbhsf_pio_prepare_pop.i_crit_edge, %lor.lhs.false.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end.i.usbhsf_pio_prepare_pop.i_crit_edge
  %handler.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %65 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @usbhs_fifo_pio_pop_handler, ptr %handler.i, align 4
  tail call void @usbhs_pipe_config_change_bfre(ptr noundef %1, i32 noundef 0) #10
  %66 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handler.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call27.i = tail call i32 %69(ptr noundef %pkt, ptr noundef %is_done) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @usbhsf_prepare_pop(ptr noundef %pkt, ptr noundef %is_done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %usbhsf_pio_prepare_pop.i, %usbhsf_rx_irq_ctrl.exit, %if.end12.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ %call27.i, %usbhsf_pio_prepare_pop.i ], [ 0, %usbhsf_rx_irq_ctrl.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_try_pop(ptr noundef %pkt, ptr nocapture noundef %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %has_usb_dmac = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %4 = ptrtoint ptr %has_usb_dmac to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %has_usb_dmac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !141

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/renesas_usbhs/fifo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1134, 0\0A.popsection", ""() #10, !srcloc !142
  unreachable

do.end9:                                          ; preds = %entry
  %fifo3.i = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fifo3.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end9.usbhsf_dma_try_pop_with_rx_irq.exit_crit_edge

do.end9.usbhsf_dma_try_pop_with_rx_irq.exit_crit_edge: ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_dma_try_pop_with_rx_irq.exit

if.end.i:                                         ; preds = %do.end9
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %8, %1
  br i1 %cmp.i, label %if.end.i.usbhsf_pio_prepare_pop.i_crit_edge, label %if.end7.i

if.end.i.usbhsf_pio_prepare_pop.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.end7.i:                                        ; preds = %if.end.i
  %handler.i.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.i.i

if.end7.i.usbhsf_pio_prepare_pop.i_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.i.i:                                     ; preds = %if.end7.i
  %9 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handler.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %10, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0, i32 5
  br label %usbhsf_dma_chan_get.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %cmp2.i.i.i = icmp eq ptr %10, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %for.inc.i.thread.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0, i32 6
  br label %usbhsf_dma_chan_get.exit.i.i

usbhsf_dma_chan_get.exit.i.i:                     ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %rx_chan.sink.i.i.i = phi ptr [ %rx_chan.i.i.i, %if.then3.i.i.i ], [ %tx_chan.i.i.i, %if.then.i.i.i ]
  %11 = ptrtoint ptr %rx_chan.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_chan.sink.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i, label %usbhsf_dma_chan_get.exit.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

usbhsf_dma_chan_get.exit.i.i.for.inc.i.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %usbhsf_dma_chan_get.exit.i.i
  %pipe.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end10.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %usbhsf_dma_chan_get.exit.i.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1
  %tobool.not.1.i.i = icmp eq ptr %arrayidx.1.i.i, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.1.i.i

for.inc.i.i.usbhsf_pio_prepare_pop.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.inc.i.thread.i:                               ; preds = %if.end.i.i.i
  %arrayidx.1.i97.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1
  %tobool.not.1.i98.i = icmp eq ptr %arrayidx.1.i97.i, null
  br i1 %tobool.not.1.i98.i, label %for.inc.i.thread.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.inc.i.thread.i.for.inc.1.i.i_crit_edge

for.inc.i.thread.i.for.inc.1.i.i_crit_edge:       ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

for.inc.i.thread.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %for.inc.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.1.i.i:                                   ; preds = %for.inc.i.i
  br i1 %cmp.i.i.i, label %if.then.i.1.i.i, label %if.end.i.1.i.i

if.end.i.1.i.i:                                   ; preds = %for.body.1.i.i
  %cmp2.i.1.i.i = icmp eq ptr %10, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.1.i.i, label %if.then3.i.1.i.i, label %if.end.i.1.i.i.for.inc.1.i.i_crit_edge

if.end.i.1.i.i.for.inc.1.i.i_crit_edge:           ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

if.then3.i.1.i.i:                                 ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1, i32 6
  br label %usbhsf_dma_chan_get.exit.1.i.i

if.then.i.1.i.i:                                  ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1, i32 5
  br label %usbhsf_dma_chan_get.exit.1.i.i

usbhsf_dma_chan_get.exit.1.i.i:                   ; preds = %if.then.i.1.i.i, %if.then3.i.1.i.i
  %rx_chan.sink.i.1.i.i = phi ptr [ %rx_chan.i.1.i.i, %if.then3.i.1.i.i ], [ %tx_chan.i.1.i.i, %if.then.i.1.i.i ]
  %15 = ptrtoint ptr %rx_chan.sink.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_chan.sink.i.1.i.i, align 4
  %tobool1.not.1.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.1.i.i, label %usbhsf_dma_chan_get.exit.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

usbhsf_dma_chan_get.exit.1.i.i.for.inc.1.i.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %usbhsf_dma_chan_get.exit.1.i.i
  %pipe.1.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 1, i32 4
  %17 = ptrtoint ptr %pipe.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe.1.i.i, align 4
  %tobool2.not.1.i.i = icmp eq ptr %18, null
  br i1 %tobool2.not.1.i.i, label %land.lhs.true.1.i.i.if.end10.i_crit_edge, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i.i

land.lhs.true.1.i.i.if.end10.i_crit_edge:         ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %usbhsf_dma_chan_get.exit.1.i.i.for.inc.1.i.i_crit_edge, %if.end.i.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.thread.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2
  %tobool.not.2.i.i = icmp eq ptr %arrayidx.2.i.i, null
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.2.i.i

for.inc.1.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.2.i.i:                                   ; preds = %for.inc.1.i.i
  br i1 %cmp.i.i.i, label %if.then.i.2.i.i, label %if.end.i.2.i.i

if.end.i.2.i.i:                                   ; preds = %for.body.2.i.i
  %cmp2.i.2.i.i = icmp eq ptr %10, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.2.i.i, label %if.then3.i.2.i.i, label %if.end.i.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge

if.end.i.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.then3.i.2.i.i:                                 ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2, i32 6
  br label %usbhsf_dma_chan_get.exit.2.i.i

if.then.i.2.i.i:                                  ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2, i32 5
  br label %usbhsf_dma_chan_get.exit.2.i.i

usbhsf_dma_chan_get.exit.2.i.i:                   ; preds = %if.then.i.2.i.i, %if.then3.i.2.i.i
  %rx_chan.sink.i.2.i.i = phi ptr [ %rx_chan.i.2.i.i, %if.then3.i.2.i.i ], [ %tx_chan.i.2.i.i, %if.then.i.2.i.i ]
  %19 = ptrtoint ptr %rx_chan.sink.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_chan.sink.i.2.i.i, align 4
  %tobool1.not.2.i.i = icmp eq ptr %20, null
  br i1 %tobool1.not.2.i.i, label %usbhsf_dma_chan_get.exit.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

usbhsf_dma_chan_get.exit.2.i.i.for.inc.2.i.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %usbhsf_dma_chan_get.exit.2.i.i
  %pipe.2.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 2, i32 4
  %21 = ptrtoint ptr %pipe.2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe.2.i.i, align 4
  %tobool2.not.2.i.i = icmp eq ptr %22, null
  br i1 %tobool2.not.2.i.i, label %land.lhs.true.2.i.i.if.end10.i_crit_edge, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i.i

land.lhs.true.2.i.i.if.end10.i_crit_edge:         ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %usbhsf_dma_chan_get.exit.2.i.i.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3
  %tobool.not.3.i.i = icmp eq ptr %arrayidx.3.i.i, null
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %for.body.3.i.i

for.inc.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

for.body.3.i.i:                                   ; preds = %for.inc.2.i.i
  br i1 %cmp.i.i.i, label %if.then.i.3.i.i, label %if.end.i.3.i.i

if.end.i.3.i.i:                                   ; preds = %for.body.3.i.i
  %cmp2.i.3.i.i = icmp eq ptr %10, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.3.i.i, label %if.then3.i.3.i.i, label %if.end.i.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge

if.end.i.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.then3.i.3.i.i:                                 ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3, i32 6
  br label %usbhsf_dma_chan_get.exit.3.i.i

if.then.i.3.i.i:                                  ; preds = %for.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3, i32 5
  br label %usbhsf_dma_chan_get.exit.3.i.i

usbhsf_dma_chan_get.exit.3.i.i:                   ; preds = %if.then.i.3.i.i, %if.then3.i.3.i.i
  %rx_chan.sink.i.3.i.i = phi ptr [ %rx_chan.i.3.i.i, %if.then3.i.3.i.i ], [ %tx_chan.i.3.i.i, %if.then.i.3.i.i ]
  %23 = ptrtoint ptr %rx_chan.sink.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_chan.sink.i.3.i.i, align 4
  %tobool1.not.3.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.3.i.i, label %usbhsf_dma_chan_get.exit.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, label %land.lhs.true.3.i.i

usbhsf_dma_chan_get.exit.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %usbhsf_dma_chan_get.exit.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

land.lhs.true.3.i.i:                              ; preds = %usbhsf_dma_chan_get.exit.3.i.i
  %pipe.3.i.i = getelementptr %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 1, i32 3, i32 4
  %25 = ptrtoint ptr %pipe.3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pipe.3.i.i, align 4
  %tobool2.not.3.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.3.i.i, label %land.lhs.true.3.i.i.if.end10.i_crit_edge, label %land.lhs.true.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge

land.lhs.true.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

land.lhs.true.3.i.i.if.end10.i_crit_edge:         ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.3.i.i.if.end10.i_crit_edge, %land.lhs.true.2.i.i.if.end10.i_crit_edge, %land.lhs.true.1.i.i.if.end10.i_crit_edge, %land.lhs.true.i.i.if.end10.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %land.lhs.true.i.i.if.end10.i_crit_edge ], [ %arrayidx.1.i.i, %land.lhs.true.1.i.i.if.end10.i_crit_edge ], [ %arrayidx.2.i.i, %land.lhs.true.2.i.i.if.end10.i_crit_edge ], [ %arrayidx.3.i.i, %land.lhs.true.3.i.i.if.end10.i_crit_edge ]
  %buf.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 7
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf.i, align 4
  %actual.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %29 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %30
  %31 = ptrtoint ptr %add.ptr.i to i32
  %and.i = and i32 %31, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end10.i.usbhsf_pio_prepare_pop.i_crit_edge

if.end10.i.usbhsf_pio_prepare_pop.i_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.end13.i:                                       ; preds = %if.end10.i
  %call14.i = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %1, ptr noundef nonnull %retval.0.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end13.i.usbhsf_pio_prepare_pop.i_crit_edge, label %if.end17.i

if.end13.i.usbhsf_pio_prepare_pop.i_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop.i

if.end17.i:                                       ; preds = %if.end13.i
  %ctr.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %retval.0.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctr.i.i, align 4
  %call.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %33) #10
  %34 = and i16 %call.i.i, 4095
  %and.i.i = zext i16 %34 to i32
  %length.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %35 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i, align 4
  %37 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual.i, align 4
  %sub.i = sub i32 %36, %38
  %39 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %and.i.i) #10
  %and21.i = and i32 %39, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end17.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge

if.end17.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop_unselect.i

if.end24.i:                                       ; preds = %if.end17.i
  %pio_dma_border.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %pio_dma_border.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pio_dma_border.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp25.i = icmp slt i32 %39, %41
  br i1 %cmp25.i, label %if.end24.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge, label %if.end27.i

if.end24.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop_unselect.i

if.end27.i:                                       ; preds = %if.end24.i
  %42 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctr.i.i, align 4
  %call.i85.i = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %43) #10
  %44 = and i16 %call.i85.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.i86.i = icmp eq i16 %44, 0
  br i1 %tobool.not.i86.i, label %if.end27.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge, label %if.end31.i

if.end27.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop_unselect.i

if.end31.i:                                       ; preds = %if.end27.i
  %45 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pipe, align 4
  %priv2.i.i = getelementptr inbounds %struct.usbhs_pipe, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv2.i.i, align 4
  %fifo3.i.i = getelementptr inbounds %struct.usbhs_pipe, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %fifo3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fifo3.i.i, align 4
  %51 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %handler.i.i.i, align 4
  %cmp.i.i88.i = icmp eq ptr %52, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i88.i, label %if.then.i.i90.i, label %if.end.i.i92.i

if.then.i.i90.i:                                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i89.i = getelementptr inbounds %struct.usbhs_fifo, ptr %50, i32 0, i32 5
  br label %return.sink.split.i.i.i

if.end.i.i92.i:                                   ; preds = %if.end31.i
  %cmp2.i.i91.i = icmp eq ptr %52, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i91.i, label %if.then3.i.i94.i, label %if.end.i.i92.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge

if.end.i.i92.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge: ; preds = %if.end.i.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_dma_map_ctrl.exit.i

if.then3.i.i94.i:                                 ; preds = %if.end.i.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i93.i = getelementptr inbounds %struct.usbhs_fifo, ptr %50, i32 0, i32 6
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %if.then3.i.i94.i, %if.then.i.i90.i
  %rx_chan.sink.i.i95.i = phi ptr [ %rx_chan.i.i93.i, %if.then3.i.i94.i ], [ %tx_chan.i.i89.i, %if.then.i.i90.i ]
  %53 = ptrtoint ptr %rx_chan.sink.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_chan.sink.i.i95.i, align 4
  br label %__usbhsf_dma_map_ctrl.exit.i

__usbhsf_dma_map_ctrl.exit.i:                     ; preds = %return.sink.split.i.i.i, %if.end.i.i92.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end.i.i92.i.__usbhsf_dma_map_ctrl.exit.i_crit_edge ], [ %54, %return.sink.split.i.i.i ]
  %dma_map_ctrl.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %48, i32 0, i32 9, i32 2
  %55 = ptrtoint ptr %dma_map_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_map_ctrl.i.i, align 4
  %57 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %retval.0.i.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  %call4.i.i = tail call i32 %56(ptr noundef %60, ptr noundef %pkt, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp33.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp33.i, label %__usbhsf_dma_map_ctrl.exit.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge, label %if.end35.i

__usbhsf_dma_map_ctrl.exit.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge: ; preds = %__usbhsf_dma_map_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_pio_prepare_pop_unselect.i

if.end35.i:                                       ; preds = %__usbhsf_dma_map_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usbhsf_rx_irq_ctrl(ptr noundef %1, i32 noundef 0) #10
  %trans.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 9
  %61 = ptrtoint ptr %trans.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %39, ptr %trans.i, align 4
  %work.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #10
  %62 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @usbhsf_dma_try_pop_with_rx_irq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry39.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %entry39.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %entry39.i, ptr %entry39.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry39.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @xfer_work, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %66 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work.i) #10
  br label %usbhsf_dma_try_pop_with_rx_irq.exit

usbhsf_pio_prepare_pop_unselect.i:                ; preds = %__usbhsf_dma_map_ctrl.exit.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge, %if.end27.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge, %if.end24.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge, %if.end17.i.usbhsf_pio_prepare_pop_unselect.i_crit_edge
  %67 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv1, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %retval.0.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %sel.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sel.i.i, align 4
  tail call void @usbhs_write(ptr noundef %68, i32 noundef %70, i16 noundef zeroext 0) #10
  br label %usbhsf_pio_prepare_pop.i

usbhsf_pio_prepare_pop.i:                         ; preds = %usbhsf_pio_prepare_pop_unselect.i, %if.end13.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end10.i.usbhsf_pio_prepare_pop.i_crit_edge, %land.lhs.true.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %usbhsf_dma_chan_get.exit.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end.i.3.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end.i.2.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.1.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.i.thread.i.usbhsf_pio_prepare_pop.i_crit_edge, %for.inc.i.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end7.i.usbhsf_pio_prepare_pop.i_crit_edge, %if.end.i.usbhsf_pio_prepare_pop.i_crit_edge
  %handler.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %71 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @usbhs_fifo_pio_pop_handler, ptr %handler.i, align 4
  %call44.i = tail call i32 @usbhsf_pio_try_pop(ptr noundef %pkt, ptr noundef %is_done) #10
  br label %usbhsf_dma_try_pop_with_rx_irq.exit

usbhsf_dma_try_pop_with_rx_irq.exit:              ; preds = %usbhsf_pio_prepare_pop.i, %if.end35.i, %do.end9.usbhsf_dma_try_pop_with_rx_irq.exit_crit_edge
  %retval.0.i = phi i32 [ %call44.i, %usbhsf_pio_prepare_pop.i ], [ 0, %if.end35.i ], [ 0, %do.end9.usbhsf_dma_try_pop_with_rx_irq.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_pop_done(ptr noundef %pkt, ptr nocapture noundef writeonly %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %has_usb_dmac = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 3, i32 13
  %4 = ptrtoint ptr %has_usb_dmac to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %has_usb_dmac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fifo3.i = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fifo3.i, align 4
  %handler.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %conv.i = trunc i32 %sub.ptr.div.i to i16
  tail call void @usbhs_xxxsts_clear(ptr noundef %3, i16 noundef zeroext 70, i16 noundef zeroext %conv.i) #10
  %ctr.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctr.i.i, align 4
  %call.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %10) #10
  %11 = and i16 %call.i.i, 4095
  %and.i.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i1.i = icmp eq ptr %15, %1
  br i1 %cmp.i1.i, label %if.then.if.then12.i.i_crit_edge, label %if.then.i3.i

if.then.if.then12.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i.i

if.then.i3.i:                                     ; preds = %if.then
  %call.i2.i = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i.i, label %if.then.i3.i.if.then7.i.i_crit_edge, label %if.end.i4.i

if.then.i3.i.if.then7.i.i_crit_edge:              ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

if.end.i4.i:                                      ; preds = %if.then.i3.i
  %call5.i.i = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i4.i.if.then7.i.i_crit_edge, label %if.end.i4.i.usbhsf_fifo_clear.exit.i_crit_edge

if.end.i4.i.usbhsf_fifo_clear.exit.i_crit_edge:   ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit.i

if.end.i4.i.if.then7.i.i_crit_edge:               ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i4.i.if.then7.i.i_crit_edge, %if.then.i3.i.if.then7.i.i_crit_edge
  %16 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctr.i.i, align 4
  %call.i.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %13, i32 noundef %17) #10
  %18 = and i16 %call.i.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i.i.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i.i.i, label %if.then7.i.i.usbhsf_fifo_clear.exit.i_crit_edge, label %if.then7.i.i.if.then12.i.i_crit_edge

if.then7.i.i.if.then12.i.i_crit_edge:             ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i.i

if.then7.i.i.usbhsf_fifo_clear.exit.i_crit_edge:  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit.i

if.then12.i.i:                                    ; preds = %if.then7.i.i.if.then12.i.i_crit_edge, %if.then.if.then12.i.i_crit_edge
  %19 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctr.i.i, align 4
  tail call void @usbhs_write(ptr noundef %13, i32 noundef %20, i16 noundef zeroext 16384) #10
  br label %usbhsf_fifo_clear.exit.i

usbhsf_fifo_clear.exit.i:                         ; preds = %if.then12.i.i, %if.then7.i.i.usbhsf_fifo_clear.exit.i_crit_edge, %if.end.i4.i.usbhsf_fifo_clear.exit.i_crit_edge
  %21 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe, align 4
  %call.i6.i = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %22) #10
  %length.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %23 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i.i, align 4
  %dma_result.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 6
  %25 = ptrtoint ptr %dma_result.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_result.i.i, align 4
  %residue.i.i = getelementptr inbounds %struct.dmaengine_result, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %residue.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %residue.i.i, align 4
  %sub.i.i = sub i32 %24, %28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i7.i = icmp eq i16 %11, 0
  %sub2.i.i = add i32 %sub.i.i, -32
  %neg.i.i = sub i32 0, %call.i6.i
  %and.i8.i = and i32 %sub2.i.i, %neg.i.i
  %add.i.i = add i32 %and.i8.i, %and.i.i
  %received_size.0.i.i = select i1 %tobool.not.i7.i, i32 %sub.i.i, i32 %add.i.i
  %actual.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %29 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %received_size.0.i.i, ptr %actual.i, align 4
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef 0) #10
  %30 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv1, align 4
  %sel.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %6, i32 0, i32 2
  %32 = ptrtoint ptr %sel.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sel.i.i, align 4
  tail call void @usbhs_bset(ptr noundef %31, i32 noundef %33, i16 noundef zeroext 4096, i16 noundef zeroext 0) #10
  %34 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pipe, align 4
  %priv2.i.i = getelementptr inbounds %struct.usbhs_pipe, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv2.i.i, align 4
  %fifo3.i.i = getelementptr inbounds %struct.usbhs_pipe, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %fifo3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fifo3.i.i, align 4
  %40 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handler.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %41, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %usbhsf_fifo_clear.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %39, i32 0, i32 5
  br label %return.sink.split.i.i.i

if.end.i.i.i:                                     ; preds = %usbhsf_fifo_clear.exit.i
  %cmp2.i.i.i = icmp eq ptr %41, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.end.i.i.i.usbhsf_dma_pop_done_with_usb_dmac.exit_crit_edge

if.end.i.i.i.usbhsf_dma_pop_done_with_usb_dmac.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_dma_pop_done_with_usb_dmac.exit

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i.i = getelementptr inbounds %struct.usbhs_fifo, ptr %39, i32 0, i32 6
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %rx_chan.sink.i.i.i = phi ptr [ %rx_chan.i.i.i, %if.then3.i.i.i ], [ %tx_chan.i.i.i, %if.then.i.i.i ]
  %42 = ptrtoint ptr %rx_chan.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_chan.sink.i.i.i, align 4
  br label %usbhsf_dma_pop_done_with_usb_dmac.exit

usbhsf_dma_pop_done_with_usb_dmac.exit:           ; preds = %return.sink.split.i.i.i, %if.end.i.i.i.usbhsf_dma_pop_done_with_usb_dmac.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %if.end.i.i.i.usbhsf_dma_pop_done_with_usb_dmac.exit_crit_edge ], [ %43, %return.sink.split.i.i.i ]
  %dma_map_ctrl.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %37, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %dma_map_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_map_ctrl.i.i, align 4
  %46 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %retval.0.i.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %call4.i.i = tail call i32 %45(ptr noundef %49, ptr noundef %pkt, i32 noundef 0) #10
  %50 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fifo3.i, align 4
  %52 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv1, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i12.i = getelementptr inbounds %struct.usbhs_fifo, ptr %51, i32 0, i32 2
  %54 = ptrtoint ptr %sel.i12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sel.i12.i, align 4
  tail call void @usbhs_write(ptr noundef %53, i32 noundef %55, i16 noundef zeroext 0) #10
  %56 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %is_done, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %1) #10
  %fifo.i = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fifo.i, align 4
  %59 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv1, align 4
  %sel.i.i7 = getelementptr inbounds %struct.usbhs_fifo, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %sel.i.i7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sel.i.i7, align 4
  tail call void @usbhs_bset(ptr noundef %60, i32 noundef %62, i16 noundef zeroext 4096, i16 noundef zeroext 0) #10
  %63 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pipe, align 4
  %priv2.i.i8 = getelementptr inbounds %struct.usbhs_pipe, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %priv2.i.i8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv2.i.i8, align 4
  %fifo3.i.i9 = getelementptr inbounds %struct.usbhs_pipe, ptr %64, i32 0, i32 2
  %67 = ptrtoint ptr %fifo3.i.i9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fifo3.i.i9, align 4
  %handler.i.i.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %69 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handler.i.i.i, align 4
  %cmp.i.i.i10 = icmp eq ptr %70, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.i.i10, label %if.then.i.i.i12, label %if.end.i.i.i14

if.then.i.i.i12:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.i.i11 = getelementptr inbounds %struct.usbhs_fifo, ptr %68, i32 0, i32 5
  br label %return.sink.split.i.i.i18

if.end.i.i.i14:                                   ; preds = %if.else
  %cmp2.i.i.i13 = icmp eq ptr %70, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.i.i13, label %if.then3.i.i.i16, label %if.end.i.i.i14.__usbhsf_dma_map_ctrl.exit.i_crit_edge

if.end.i.i.i14.__usbhsf_dma_map_ctrl.exit.i_crit_edge: ; preds = %if.end.i.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %__usbhsf_dma_map_ctrl.exit.i

if.then3.i.i.i16:                                 ; preds = %if.end.i.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.i.i15 = getelementptr inbounds %struct.usbhs_fifo, ptr %68, i32 0, i32 6
  br label %return.sink.split.i.i.i18

return.sink.split.i.i.i18:                        ; preds = %if.then3.i.i.i16, %if.then.i.i.i12
  %rx_chan.sink.i.i.i17 = phi ptr [ %rx_chan.i.i.i15, %if.then3.i.i.i16 ], [ %tx_chan.i.i.i11, %if.then.i.i.i12 ]
  %71 = ptrtoint ptr %rx_chan.sink.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rx_chan.sink.i.i.i17, align 4
  br label %__usbhsf_dma_map_ctrl.exit.i

__usbhsf_dma_map_ctrl.exit.i:                     ; preds = %return.sink.split.i.i.i18, %if.end.i.i.i14.__usbhsf_dma_map_ctrl.exit.i_crit_edge
  %retval.0.i.i.i19 = phi ptr [ null, %if.end.i.i.i14.__usbhsf_dma_map_ctrl.exit.i_crit_edge ], [ %72, %return.sink.split.i.i.i18 ]
  %dma_map_ctrl.i.i20 = getelementptr inbounds %struct.usbhs_priv, ptr %66, i32 0, i32 9, i32 2
  %73 = ptrtoint ptr %dma_map_ctrl.i.i20 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma_map_ctrl.i.i20, align 4
  %75 = ptrtoint ptr %retval.0.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %retval.0.i.i.i19, align 4
  %dev.i.i21 = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %dev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i21, align 4
  %call4.i.i22 = tail call i32 %74(ptr noundef %78, ptr noundef %pkt, i32 noundef 0) #10
  %79 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fifo.i, align 4
  %81 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv1, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %1, ptr noundef null) #10
  %sel.i2.i = getelementptr inbounds %struct.usbhs_fifo, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %sel.i2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sel.i2.i, align 4
  tail call void @usbhs_write(ptr noundef %82, i32 noundef %84, i16 noundef zeroext 0) #10
  %trans.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 9
  %85 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %trans.i, align 4
  %actual.i23 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %87 = ptrtoint ptr %actual.i23 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %actual.i23, align 4
  %add.i = add i32 %88, %86
  store i32 %add.i, ptr %actual.i23, align 4
  %length.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %89 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %90)
  %cmp.i = icmp eq i32 %add.i, %90
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %call.i)
  %cmp6.i = icmp slt i32 %86, %call.i
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %__usbhsf_dma_map_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %is_done to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %is_done, align 4
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef 0) #10
  br label %cleanup

if.else.i:                                        ; preds = %__usbhsf_dma_map_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usbhs_pipe_running(ptr noundef %1, i32 noundef 0) #10
  %call7.i = tail call i32 @usbhsf_prepare_pop(ptr noundef %pkt, ptr noundef %is_done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %usbhsf_dma_pop_done_with_usb_dmac.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_clear_dcp(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %fifo_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 10
  %call = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %pipe, ptr noundef %fifo_info, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %5, %pipe
  br i1 %cmp.i, label %if.end.if.then12.i_crit_edge, label %if.then.i

if.end.if.then12.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %pipe) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then7.i_crit_edge, label %if.end.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.end.i:                                         ; preds = %if.then.i
  %call5.i = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %pipe) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i.usbhsf_fifo_clear.exit_crit_edge

if.end.i.usbhsf_fifo_clear.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %ctr.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %ctr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctr.i.i, align 4
  %call.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %7) #10
  %8 = and i16 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, label %if.then7.i.if.then12.i_crit_edge

if.then7.i.if.then12.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then7.i.usbhsf_fifo_clear.exit_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit

if.then12.i:                                      ; preds = %if.then7.i.if.then12.i_crit_edge, %if.end.if.then12.i_crit_edge
  %ctr.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  %9 = ptrtoint ptr %ctr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctr.i, align 4
  tail call void @usbhs_write(ptr noundef %3, i32 noundef %10, i16 noundef zeroext 16384) #10
  br label %usbhsf_fifo_clear.exit

usbhsf_fifo_clear.exit:                           ; preds = %if.then12.i, %if.then7.i.usbhsf_fifo_clear.exit_crit_edge, %if.end.i.usbhsf_fifo_clear.exit_crit_edge
  %11 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %pipe, ptr noundef null) #10
  %sel.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 10, i32 0, i32 2
  %13 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %12, i32 noundef %14, i16 noundef zeroext 0) #10
  %call2 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %pipe, ptr noundef %fifo_info, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %usbhsf_fifo_clear.exit.cleanup_crit_edge, label %if.end5

usbhsf_fifo_clear.exit.cleanup_crit_edge:         ; preds = %usbhsf_fifo_clear.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %usbhsf_fifo_clear.exit
  %15 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv1, align 4
  %pipe_info.i20 = getelementptr inbounds %struct.usbhs_priv, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %pipe_info.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe_info.i20, align 4
  %cmp.i21 = icmp eq ptr %18, %pipe
  br i1 %cmp.i21, label %if.end5.if.then12.i33_crit_edge, label %if.then.i24

if.end5.if.then12.i33_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i33

if.then.i24:                                      ; preds = %if.end5
  %call.i22 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %pipe) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.then.i24.if.then7.i31_crit_edge, label %if.end.i27

if.then.i24.if.then7.i31_crit_edge:               ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i31

if.end.i27:                                       ; preds = %if.then.i24
  %call5.i25 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %pipe) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i25)
  %tobool6.not.i26 = icmp eq i32 %call5.i25, 0
  br i1 %tobool6.not.i26, label %if.end.i27.if.then7.i31_crit_edge, label %if.end.i27.usbhsf_fifo_clear.exit34_crit_edge

if.end.i27.usbhsf_fifo_clear.exit34_crit_edge:    ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit34

if.end.i27.if.then7.i31_crit_edge:                ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i31

if.then7.i31:                                     ; preds = %if.end.i27.if.then7.i31_crit_edge, %if.then.i24.if.then7.i31_crit_edge
  %ctr.i.i28 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %ctr.i.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctr.i.i28, align 4
  %call.i.i29 = tail call zeroext i16 @usbhs_read(ptr noundef %16, i32 noundef %20) #10
  %21 = and i16 %call.i.i29, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i.i30 = icmp eq i16 %21, 0
  br i1 %tobool.not.i.i30, label %if.then7.i31.usbhsf_fifo_clear.exit34_crit_edge, label %if.then7.i31.if.then12.i33_crit_edge

if.then7.i31.if.then12.i33_crit_edge:             ; preds = %if.then7.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i33

if.then7.i31.usbhsf_fifo_clear.exit34_crit_edge:  ; preds = %if.then7.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_fifo_clear.exit34

if.then12.i33:                                    ; preds = %if.then7.i31.if.then12.i33_crit_edge, %if.end5.if.then12.i33_crit_edge
  %ctr.i32 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  %22 = ptrtoint ptr %ctr.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctr.i32, align 4
  tail call void @usbhs_write(ptr noundef %16, i32 noundef %23, i16 noundef zeroext 16384) #10
  br label %usbhsf_fifo_clear.exit34

usbhsf_fifo_clear.exit34:                         ; preds = %if.then12.i33, %if.then7.i31.usbhsf_fifo_clear.exit34_crit_edge, %if.end.i27.usbhsf_fifo_clear.exit34_crit_edge
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %pipe, ptr noundef null) #10
  %26 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sel.i, align 4
  tail call void @usbhs_write(ptr noundef %25, i32 noundef %27, i16 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %usbhsf_fifo_clear.exit34, %usbhsf_fifo_clear.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsf_fifo_select(ptr noundef %pipe, ptr noundef %fifo, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %fifo5 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 2
  %6 = ptrtoint ptr %fifo5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pipe6 = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 4
  %8 = ptrtoint ptr %pipe6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe6, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp = icmp eq ptr %5, %pipe
  br i1 %cmp, label %if.then12, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %write)
  %cmp13 = icmp eq i32 %write, 1
  %shl = select i1 %cmp13, i32 32, i32 0
  %conv15 = and i32 %sub.ptr.div, 65535
  %or = or i32 %conv15, %shl
  %call = tail call i32 @usbhs_mod_is_host(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.then12.if.end20_crit_edge, label %if.then18

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usbhs_dcp_dir_for_host(ptr noundef %pipe, i32 noundef %write) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then12.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %base.0 = phi i32 [ %or, %if.then18 ], [ %or, %if.then12.if.end20_crit_edge ], [ %sub.ptr.div, %if.end.if.end20_crit_edge ]
  %sel = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 2
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel, align 4
  %12 = trunc i32 %base.0 to i16
  %conv23 = or i16 %12, 2048
  tail call void @usbhs_write(ptr noundef %1, i32 noundef %11, i16 noundef zeroext %conv23) #10
  br label %while.body

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %if.end20
  %dec54 = phi i32 [ 1023, %if.end20 ], [ %dec, %if.end33.while.body_crit_edge ]
  %13 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sel, align 4
  %call28 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef %14) #10
  %15 = and i16 %call28, 47
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %12)
  %cmp30 = icmp eq i16 %15, %12
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usbhs_pipe_select_fifo(ptr noundef %pipe, ptr noundef %fifo) #10
  br label %cleanup

if.end33:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #10
  %dec = add nsw i32 %dec54, -1
  %tobool24.not = icmp eq i32 %dec54, 0
  br i1 %tobool24.not, label %do.end, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.32) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then32, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then32 ], [ -5, %do.end ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_init(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #10
  %irq_empty = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %irq_empty to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @usbhsf_irq_empty, ptr %irq_empty, align 4
  %irq_ready = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %irq_ready to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @usbhsf_irq_ready, ptr %irq_ready, align 4
  %irq_bempsts = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %irq_bempsts to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %irq_bempsts, align 4
  %irq_brdysts = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %irq_brdysts to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %irq_brdysts, align 4
  %pipe = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 0, i32 4
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pipe, align 4
  %arrayidx12 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0
  %tobool.not13 = icmp eq ptr %arrayidx12, null
  br i1 %tobool.not13, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %entry
  %pipe4 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %pipe4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pipe4, align 4
  %arrayidx = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %pipe4.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %pipe4.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pipe4.1, align 4
  %arrayidx.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2
  %tobool.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %pipe4.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 4
  %7 = ptrtoint ptr %pipe4.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pipe4.2, align 4
  %arrayidx.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3
  %tobool.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %pipe4.3 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 4
  %8 = ptrtoint ptr %pipe4.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pipe4.3, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get_current(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_irq_empty(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %irq_state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %bempsts = getelementptr inbounds %struct.usbhs_irq_state, ptr %irq_state, i32 0, i32 4
  %2 = ptrtoint ptr %bempsts to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bempsts, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsf_irq_empty.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsf_irq_empty, %if.then6)) #10
          to label %do.end10 [label %if.then6], !srcloc !138

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bempsts to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bempsts, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsf_irq_empty.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %conv) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %size = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43 = icmp sgt i32 %7, 0
  br i1 %cmp43, label %do.end10.land.rhs_crit_edge, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end10.land.rhs_crit_edge:                      ; preds = %do.end10
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %do.end10.land.rhs_crit_edge
  %i.044 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %do.end10.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info, align 4
  %add.ptr = getelementptr %struct.usbhs_pipe, ptr %9, i32 %i.044
  %tobool14.not = icmp eq ptr %add.ptr, null
  br i1 %tobool14.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %10 = ptrtoint ptr %bempsts to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bempsts, align 2
  %conv16 = zext i16 %11 to i32
  %shl = shl nuw i32 1, %i.044
  %and = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %call20 = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef nonnull %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %i.044, i32 noundef %call20) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end26, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end10.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_irq_ready(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %irq_state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %brdysts = getelementptr inbounds %struct.usbhs_irq_state, ptr %irq_state, i32 0, i32 2
  %2 = ptrtoint ptr %brdysts to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %brdysts, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.40) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsf_irq_ready.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsf_irq_ready, %if.then6)) #10
          to label %do.end10 [label %if.then6], !srcloc !138

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %brdysts to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %brdysts, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsf_irq_ready.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %conv) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %size = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43 = icmp sgt i32 %7, 0
  br i1 %cmp43, label %do.end10.land.rhs_crit_edge, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end10.land.rhs_crit_edge:                      ; preds = %do.end10
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %do.end10.land.rhs_crit_edge
  %i.044 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %do.end10.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info, align 4
  %add.ptr = getelementptr %struct.usbhs_pipe, ptr %9, i32 %i.044
  %tobool14.not = icmp eq ptr %add.ptr, null
  br i1 %tobool14.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %10 = ptrtoint ptr %brdysts to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %brdysts, align 2
  %conv16 = zext i16 %11 to i32
  %shl = shl nuw i32 1, %i.044
  %and = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %call20 = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef nonnull %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %i.044, i32 noundef %call20) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end26, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end10.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_quit(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_mod_get_current(ptr noundef %priv) #10
  %irq_empty = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %irq_empty to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %irq_empty, align 4
  %irq_ready = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %irq_ready to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %irq_ready, align 4
  %irq_bempsts = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %irq_bempsts to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %irq_bempsts, align 4
  %irq_brdysts = getelementptr inbounds %struct.usbhs_mod, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %irq_brdysts to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %irq_brdysts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_fifo_probe(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %fifo_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.8, ptr %fifo_info, align 4
  %port = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 20, ptr %port, align 4
  %sel = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 0, i32 2
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %sel, align 4
  %ctr = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 0, i32 3
  %3 = ptrtoint ptr %ctr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 34, ptr %ctr, align 4
  %dfifo = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %dfifo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.9, ptr %dfifo, align 4
  %port3 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %port3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %port3, align 4
  %sel4 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %sel4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40, ptr %sel4, align 4
  %ctr5 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %ctr5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 42, ptr %ctr5, align 4
  %d0_tx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %d0_tx_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d0_tx_id, align 4
  %tx_slave = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 7
  %10 = ptrtoint ptr %tx_slave to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_slave, align 4
  %d0_rx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %d0_rx_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d0_rx_id, align 4
  %rx_slave = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 8
  %13 = ptrtoint ptr %rx_slave to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_slave, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %priv, ptr noundef %dfifo, i32 noundef 0)
  %arrayidx12 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.10, ptr %arrayidx12, align 4
  %port14 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %port14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 288, ptr %port14, align 4
  %sel15 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 2
  %16 = ptrtoint ptr %sel15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 44, ptr %sel15, align 4
  %ctr16 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 3
  %17 = ptrtoint ptr %ctr16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 46, ptr %ctr16, align 4
  %d1_tx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %d1_tx_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d1_tx_id, align 4
  %tx_slave18 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 7
  %20 = ptrtoint ptr %tx_slave18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tx_slave18, align 4
  %d1_rx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %d1_rx_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d1_rx_id, align 4
  %rx_slave22 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 8
  %23 = ptrtoint ptr %rx_slave22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_slave22, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %priv, ptr noundef %arrayidx12, i32 noundef 1)
  %arrayidx30 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.11, ptr %arrayidx30, align 4
  %port32 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 1
  %25 = ptrtoint ptr %port32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %port32, align 4
  %sel33 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 2
  %26 = ptrtoint ptr %sel33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 240, ptr %sel33, align 4
  %ctr34 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 3
  %27 = ptrtoint ptr %ctr34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 242, ptr %ctr34, align 4
  %d2_tx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %d2_tx_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d2_tx_id, align 4
  %tx_slave36 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 7
  %30 = ptrtoint ptr %tx_slave36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tx_slave36, align 4
  %d2_rx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 9
  %31 = ptrtoint ptr %d2_rx_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %d2_rx_id, align 4
  %rx_slave40 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 8
  %33 = ptrtoint ptr %rx_slave40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rx_slave40, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %priv, ptr noundef %arrayidx30, i32 noundef 2)
  %arrayidx48 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.12, ptr %arrayidx48, align 4
  %port50 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 1
  %35 = ptrtoint ptr %port50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %port50, align 4
  %sel51 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 2
  %36 = ptrtoint ptr %sel51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 244, ptr %sel51, align 4
  %ctr52 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 3
  %37 = ptrtoint ptr %ctr52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 246, ptr %ctr52, align 4
  %d3_tx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 10
  %38 = ptrtoint ptr %d3_tx_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %d3_tx_id, align 4
  %tx_slave54 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 7
  %40 = ptrtoint ptr %tx_slave54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tx_slave54, align 4
  %d3_rx_id = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 11
  %41 = ptrtoint ptr %d3_rx_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %d3_rx_id, align 4
  %rx_slave58 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 8
  %43 = ptrtoint ptr %rx_slave58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rx_slave58, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %priv, ptr noundef %arrayidx48, i32 noundef 3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsf_dma_init(ptr nocapture noundef readonly %priv, ptr noundef %fifo, i32 noundef %channel) unnamed_addr #1 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %dev_of_node.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_of_node.exit.if.else_crit_edge, label %if.then

dev_of_node.exit.if.else_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #10
  %4 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 16, ptr noundef nonnull @.str.50, i32 noundef %channel) #10
  %and.i = and i32 %channel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i26 = icmp eq i32 %and.i, 0
  %call8.i = call ptr @dma_request_chan(ptr noundef nonnull %dev1, ptr noundef nonnull %name.i) #10
  %rx_chan.i = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 6
  %tx_chan.i = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 5
  %rx_chan.sink.i = select i1 %tobool.not.i26, ptr %rx_chan.i, ptr %tx_chan.i
  %cmp.i22.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select23.i = select i1 %cmp.i22.i, ptr null, ptr %call8.i
  %5 = ptrtoint ptr %rx_chan.sink.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.store.select23.i, ptr %rx_chan.sink.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #10
  br label %if.end

if.else:                                          ; preds = %dev_of_node.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #10
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask.i) #10
  %tx_slave.i = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 7
  %call.i27 = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @usbhsf_dma_filter, ptr noundef %tx_slave.i, ptr noundef null) #10
  %tx_chan.i28 = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 5
  %7 = ptrtoint ptr %tx_chan.i28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i27, ptr %tx_chan.i28, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask.i) #10
  %rx_slave.i = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 8
  %call1.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @usbhsf_dma_filter, ptr noundef %rx_slave.i, ptr noundef null) #10
  %rx_chan.i29 = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 6
  %9 = ptrtoint ptr %rx_chan.i29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %rx_chan.i29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tx_chan = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 5
  %10 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_chan, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %rx_chan = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 6
  %12 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_chan, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsf_dma_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsf_dma_init, %if.then9)) #10
          to label %if.end16 [label %if.then9], !srcloc !138

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fifo, align 4
  %16 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_chan, align 4
  %tobool11.not = icmp eq ptr %17, null
  %cond = select i1 %tobool11.not, ptr @.str.48, ptr @.str.47
  %rx_chan12 = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 6
  %18 = ptrtoint ptr %rx_chan12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_chan12, align 4
  %tobool13.not = icmp eq ptr %19, null
  %cond14 = select i1 %tobool13.not, ptr @.str.48, ptr @.str.49
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsf_dma_init.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.46, ptr noundef %15, ptr noundef nonnull %cond, ptr noundef nonnull %cond14) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %do.body, %lor.lhs.false.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_remove(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx4 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0
  %tobool.not5 = icmp eq ptr %arrayidx4, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %entry
  %tx_chan.i = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 5
  %0 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_chan.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %rx_chan.i = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_chan.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.usbhsf_dma_quit.exit_crit_edge, label %if.then3.i

if.end.i.usbhsf_dma_quit.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_dma_quit.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %3) #10
  br label %usbhsf_dma_quit.exit

usbhsf_dma_quit.exit:                             ; preds = %if.then3.i, %if.end.i.usbhsf_dma_quit.exit_crit_edge
  %4 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tx_chan.i, align 4
  %5 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_chan.i, align 4
  %arrayidx = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %usbhsf_dma_quit.exit.for.end_crit_edge, label %for.body.1

usbhsf_dma_quit.exit.for.end_crit_edge:           ; preds = %usbhsf_dma_quit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %usbhsf_dma_quit.exit
  %tx_chan.i.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 5
  %6 = ptrtoint ptr %tx_chan.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_chan.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %7, null
  br i1 %tobool.not.i.1, label %for.body.1.if.end.i.1_crit_edge, label %if.then.i.1

for.body.1.if.end.i.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %7) #10
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %for.body.1.if.end.i.1_crit_edge
  %rx_chan.i.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 6
  %8 = ptrtoint ptr %rx_chan.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_chan.i.1, align 4
  %tobool2.not.i.1 = icmp eq ptr %9, null
  br i1 %tobool2.not.i.1, label %if.end.i.1.usbhsf_dma_quit.exit.1_crit_edge, label %if.then3.i.1

if.end.i.1.usbhsf_dma_quit.exit.1_crit_edge:      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_dma_quit.exit.1

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %9) #10
  br label %usbhsf_dma_quit.exit.1

usbhsf_dma_quit.exit.1:                           ; preds = %if.then3.i.1, %if.end.i.1.usbhsf_dma_quit.exit.1_crit_edge
  %10 = ptrtoint ptr %tx_chan.i.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx_chan.i.1, align 4
  %11 = ptrtoint ptr %rx_chan.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_chan.i.1, align 4
  %arrayidx.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2
  %tobool.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool.not.1, label %usbhsf_dma_quit.exit.1.for.end_crit_edge, label %for.body.2

usbhsf_dma_quit.exit.1.for.end_crit_edge:         ; preds = %usbhsf_dma_quit.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %usbhsf_dma_quit.exit.1
  %tx_chan.i.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 5
  %12 = ptrtoint ptr %tx_chan.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_chan.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %13, null
  br i1 %tobool.not.i.2, label %for.body.2.if.end.i.2_crit_edge, label %if.then.i.2

for.body.2.if.end.i.2_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %13) #10
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %for.body.2.if.end.i.2_crit_edge
  %rx_chan.i.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 6
  %14 = ptrtoint ptr %rx_chan.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_chan.i.2, align 4
  %tobool2.not.i.2 = icmp eq ptr %15, null
  br i1 %tobool2.not.i.2, label %if.end.i.2.usbhsf_dma_quit.exit.2_crit_edge, label %if.then3.i.2

if.end.i.2.usbhsf_dma_quit.exit.2_crit_edge:      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_dma_quit.exit.2

if.then3.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %15) #10
  br label %usbhsf_dma_quit.exit.2

usbhsf_dma_quit.exit.2:                           ; preds = %if.then3.i.2, %if.end.i.2.usbhsf_dma_quit.exit.2_crit_edge
  %16 = ptrtoint ptr %tx_chan.i.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tx_chan.i.2, align 4
  %17 = ptrtoint ptr %rx_chan.i.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rx_chan.i.2, align 4
  %arrayidx.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3
  %tobool.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool.not.2, label %usbhsf_dma_quit.exit.2.for.end_crit_edge, label %for.body.3

usbhsf_dma_quit.exit.2.for.end_crit_edge:         ; preds = %usbhsf_dma_quit.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.3:                                       ; preds = %usbhsf_dma_quit.exit.2
  %tx_chan.i.3 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 5
  %18 = ptrtoint ptr %tx_chan.i.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_chan.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %19, null
  br i1 %tobool.not.i.3, label %for.body.3.if.end.i.3_crit_edge, label %if.then.i.3

for.body.3.if.end.i.3_crit_edge:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %19) #10
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %for.body.3.if.end.i.3_crit_edge
  %rx_chan.i.3 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 6
  %20 = ptrtoint ptr %rx_chan.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_chan.i.3, align 4
  %tobool2.not.i.3 = icmp eq ptr %21, null
  br i1 %tobool2.not.i.3, label %if.end.i.3.usbhsf_dma_quit.exit.3_crit_edge, label %if.then3.i.3

if.end.i.3.usbhsf_dma_quit.exit.3_crit_edge:      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_dma_quit.exit.3

if.then3.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %21) #10
  br label %usbhsf_dma_quit.exit.3

usbhsf_dma_quit.exit.3:                           ; preds = %if.then3.i.3, %if.end.i.3.usbhsf_dma_quit.exit.3_crit_edge
  %22 = ptrtoint ptr %tx_chan.i.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %tx_chan.i.3, align 4
  %23 = ptrtoint ptr %rx_chan.i.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_chan.i.3, align 4
  br label %for.end

for.end:                                          ; preds = %usbhsf_dma_quit.exit.3, %usbhsf_dma_quit.exit.2.for.end_crit_edge, %usbhsf_dma_quit.exit.1.for.end_crit_edge, %usbhsf_dma_quit.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsf_null_handle(ptr nocapture noundef readonly %pkt, ptr nocapture noundef readnone %is_done) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 4
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.13) #13
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_irq_callback_update(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_select_fifo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_data_sequence(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bset(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_running(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_get_maxpacket(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_accessible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @usbhs_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_is_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_dcp_control_transfer_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @usbhsf_get_dma_fifo(ptr noundef readonly %priv, ptr nocapture noundef readonly %pkt) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %arrayidx = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %entry
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 4
  %cmp.i = icmp eq ptr %1, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 5
  br label %usbhsf_dma_chan_get.exit

if.end.i:                                         ; preds = %for.body
  %cmp2.i = icmp eq ptr %1, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 6
  br label %usbhsf_dma_chan_get.exit

usbhsf_dma_chan_get.exit:                         ; preds = %if.then3.i, %if.then.i
  %rx_chan.sink.i = phi ptr [ %rx_chan.i, %if.then3.i ], [ %tx_chan.i, %if.then.i ]
  %2 = ptrtoint ptr %rx_chan.sink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_chan.sink.i, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %usbhsf_dma_chan_get.exit.for.inc_crit_edge, label %land.lhs.true

usbhsf_dma_chan_get.exit.for.inc_crit_edge:       ; preds = %usbhsf_dma_chan_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %usbhsf_dma_chan_get.exit
  %pipe = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %usbhsf_dma_chan_get.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1
  %tobool.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %for.body.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %6 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i, align 4
  %cmp.i.1 = icmp eq ptr %7, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.1, label %if.then.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %for.body.1
  %cmp2.i.1 = icmp eq ptr %7, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.1, label %if.then3.i.1, label %if.end.i.1.for.inc.1_crit_edge

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 6
  br label %usbhsf_dma_chan_get.exit.1

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 5
  br label %usbhsf_dma_chan_get.exit.1

usbhsf_dma_chan_get.exit.1:                       ; preds = %if.then.i.1, %if.then3.i.1
  %rx_chan.sink.i.1 = phi ptr [ %rx_chan.i.1, %if.then3.i.1 ], [ %tx_chan.i.1, %if.then.i.1 ]
  %8 = ptrtoint ptr %rx_chan.sink.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_chan.sink.i.1, align 4
  %tobool1.not.1 = icmp eq ptr %9, null
  br i1 %tobool1.not.1, label %usbhsf_dma_chan_get.exit.1.for.inc.1_crit_edge, label %land.lhs.true.1

usbhsf_dma_chan_get.exit.1.for.inc.1_crit_edge:   ; preds = %usbhsf_dma_chan_get.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %usbhsf_dma_chan_get.exit.1
  %pipe.1 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 1, i32 4
  %10 = ptrtoint ptr %pipe.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe.1, align 4
  %tobool2.not.1 = icmp eq ptr %11, null
  br i1 %tobool2.not.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %usbhsf_dma_chan_get.exit.1.for.inc.1_crit_edge, %if.end.i.1.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2
  %tobool.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %12 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler.i, align 4
  %cmp.i.2 = icmp eq ptr %13, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.2, label %if.then.i.2, label %if.end.i.2

if.end.i.2:                                       ; preds = %for.body.2
  %cmp2.i.2 = icmp eq ptr %13, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.2, label %if.then3.i.2, label %if.end.i.2.for.inc.2_crit_edge

if.end.i.2.for.inc.2_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then3.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 6
  br label %usbhsf_dma_chan_get.exit.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 5
  br label %usbhsf_dma_chan_get.exit.2

usbhsf_dma_chan_get.exit.2:                       ; preds = %if.then.i.2, %if.then3.i.2
  %rx_chan.sink.i.2 = phi ptr [ %rx_chan.i.2, %if.then3.i.2 ], [ %tx_chan.i.2, %if.then.i.2 ]
  %14 = ptrtoint ptr %rx_chan.sink.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_chan.sink.i.2, align 4
  %tobool1.not.2 = icmp eq ptr %15, null
  br i1 %tobool1.not.2, label %usbhsf_dma_chan_get.exit.2.for.inc.2_crit_edge, label %land.lhs.true.2

usbhsf_dma_chan_get.exit.2.for.inc.2_crit_edge:   ; preds = %usbhsf_dma_chan_get.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %usbhsf_dma_chan_get.exit.2
  %pipe.2 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 2, i32 4
  %16 = ptrtoint ptr %pipe.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe.2, align 4
  %tobool2.not.2 = icmp eq ptr %17, null
  br i1 %tobool2.not.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %usbhsf_dma_chan_get.exit.2.for.inc.2_crit_edge, %if.end.i.2.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3
  %tobool.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.body.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %18 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i, align 4
  %cmp.i.3 = icmp eq ptr %19, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i.3, label %if.then.i.3, label %if.end.i.3

if.end.i.3:                                       ; preds = %for.body.3
  %cmp2.i.3 = icmp eq ptr %19, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i.3, label %if.then3.i.3, label %if.end.i.3.for.inc.3_crit_edge

if.end.i.3.for.inc.3_crit_edge:                   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then3.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i.3 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 6
  br label %usbhsf_dma_chan_get.exit.3

if.then.i.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i.3 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 5
  br label %usbhsf_dma_chan_get.exit.3

usbhsf_dma_chan_get.exit.3:                       ; preds = %if.then.i.3, %if.then3.i.3
  %rx_chan.sink.i.3 = phi ptr [ %rx_chan.i.3, %if.then3.i.3 ], [ %tx_chan.i.3, %if.then.i.3 ]
  %20 = ptrtoint ptr %rx_chan.sink.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_chan.sink.i.3, align 4
  %tobool1.not.3 = icmp eq ptr %21, null
  br i1 %tobool1.not.3, label %usbhsf_dma_chan_get.exit.3.for.inc.3_crit_edge, label %land.lhs.true.3

usbhsf_dma_chan_get.exit.3.for.inc.3_crit_edge:   ; preds = %usbhsf_dma_chan_get.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %usbhsf_dma_chan_get.exit.3
  %pipe.3 = getelementptr %struct.usbhs_priv, ptr %priv, i32 0, i32 10, i32 1, i32 3, i32 4
  %22 = ptrtoint ptr %pipe.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe.3, align 4
  %tobool2.not.3 = icmp eq ptr %23, null
  br i1 %tobool2.not.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %usbhsf_dma_chan_get.exit.3.for.inc.3_crit_edge, %if.end.i.3.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %land.lhs.true.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %arrayidx.1, %land.lhs.true.1.cleanup_crit_edge ], [ null, %for.inc.1.cleanup_crit_edge ], [ %arrayidx.2, %land.lhs.true.2.cleanup_crit_edge ], [ null, %for.inc.2.cleanup_crit_edge ], [ %arrayidx.3, %land.lhs.true.3.cleanup_crit_edge ], [ null, %for.inc.3 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %pkt) unnamed_addr #1 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %fifo4 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fifo4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo4, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %handler.i = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 2
  %8 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i, align 4
  %cmp.i = icmp eq ptr %9, @usbhs_fifo_dma_push_handler
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tx_chan.i = getelementptr inbounds %struct.usbhs_fifo, ptr %7, i32 0, i32 5
  br label %return.sink.split.i

if.end.i:                                         ; preds = %if.end
  %cmp2.i = icmp eq ptr %9, @usbhs_fifo_dma_pop_handler
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.usbhsf_dma_chan_get.exit_crit_edge

if.end.i.usbhsf_dma_chan_get.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbhsf_dma_chan_get.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_chan.i = getelementptr inbounds %struct.usbhs_fifo, ptr %7, i32 0, i32 6
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then3.i, %if.then.i
  %rx_chan.sink.i = phi ptr [ %rx_chan.i, %if.then3.i ], [ %tx_chan.i, %if.then.i ]
  %10 = ptrtoint ptr %rx_chan.sink.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_chan.sink.i, align 4
  br label %usbhsf_dma_chan_get.exit

usbhsf_dma_chan_get.exit:                         ; preds = %return.sink.split.i, %if.end.i.usbhsf_dma_chan_get.exit_crit_edge
  %retval.0.i57 = phi ptr [ null, %if.end.i.usbhsf_dma_chan_get.exit_crit_edge ], [ %11, %return.sink.split.i ]
  %call5 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %cond = select i1 %tobool6.not, i32 1, i32 2
  %dma = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 5
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma, align 4
  %actual = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 10
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual, align 4
  %add = add i32 %15, %13
  %trans = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 9
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trans, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #10
  %18 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %20 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #10
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %18, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %19, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i57, null
  br i1 %tobool.not.i, label %usbhsf_dma_chan_get.exit.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

usbhsf_dma_chan_get.exit.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %usbhsf_dma_chan_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %usbhsf_dma_chan_get.exit
  %23 = ptrtoint ptr %retval.0.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %retval.0.i57, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 39
  %25 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %usbhsf_dma_chan_get.exit.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #10
  br label %cleanup

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %26(ptr noundef nonnull %retval.0.i57, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef %cond, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #10
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %dmaengine_prep_slave_single.exit.cleanup_crit_edge, label %if.end10

dmaengine_prep_slave_single.exit.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %dmaengine_prep_slave_single.exit
  %callback_result = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %callback_result to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @usbhsf_dma_complete, ptr %callback_result, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pkt, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_submit.i, align 4
  %call.i60 = call i32 %30(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp = icmp slt i32 %call.i60, 0
  br i1 %cmp, label %do.end, label %do.body14

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.27) #13
  br label %cleanup

do.body14:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsf_dma_xfer_preparing.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhsf_dma_xfer_preparing, %if.then19)) #10
          to label %do.end24 [label %if.then19], !srcloc !138

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %33 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv2, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %length = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 8
  %37 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.usbhs_pkt, ptr %pkt, i32 0, i32 11
  %39 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %zero, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsf_dma_xfer_preparing.__UNIQUE_ID_ddebug241, ptr noundef %dev3, ptr noundef nonnull @.str.29, ptr noundef %32, i32 noundef %sub.ptr.div, i32 noundef %38, i32 noundef %40) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body14
  call void @usbhs_pipe_running(ptr noundef %1, i32 noundef 1) #10
  %41 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %trans, align 4
  call void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %1, i32 noundef %42) #10
  %43 = ptrtoint ptr %retval.0.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retval.0.i57, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 50
  %45 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_issue_pending.i, align 4
  call void %46(ptr noundef nonnull %retval.0.i57) #10
  %47 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv2, align 4
  %sel.i = getelementptr inbounds %struct.usbhs_fifo, ptr %7, i32 0, i32 2
  %49 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sel.i, align 4
  call void @usbhs_bset(ptr noundef %48, i32 noundef %50, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #10
  call void @usbhs_pipe_enable(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end, %dmaengine_prep_slave_single.exit.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfer_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %pipe1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %lock = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhsf_dma_complete(ptr nocapture noundef %arg, ptr noundef %result) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.usbhs_pkt, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dma_result = getelementptr inbounds %struct.usbhs_pkt, ptr %arg, i32 0, i32 6
  %6 = ptrtoint ptr %dma_result to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %result, ptr %dma_result, align 4
  %call = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv2, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.30, i32 noundef %sub.ptr.div, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_config_change_bfre(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_xxxsts_clear(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_dcp_dir_for_host(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @usbhsf_dma_filter(ptr nocapture noundef writeonly %chan, ptr noundef %param) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %param, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %3 = xor i1 %cmp, true
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !122, !123, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 55, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usbhs_pkt_push._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usbhs_pkt_push._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 63, i32 3}
!10 = !{ptr @usbhs_pkt_push._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @usbhs_pkt_push._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @usbhs_dcp_status_stage_in_handler, !13, !"usbhs_dcp_status_stage_in_handler", i1 false, i1 false}
!13 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 429, i32 31}
!14 = !{ptr @usbhs_dcp_status_stage_out_handler, !15, !"usbhs_dcp_status_stage_out_handler", i1 false, i1 false}
!15 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 434, i32 31}
!16 = !{ptr @usbhs_dcp_data_stage_out_handler, !17, !"usbhs_dcp_data_stage_out_handler", i1 false, i1 false}
!17 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 456, i32 31}
!18 = !{ptr @usbhs_dcp_data_stage_in_handler, !19, !"usbhs_dcp_data_stage_in_handler", i1 false, i1 false}
!19 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 495, i32 31}
!20 = !{ptr @usbhs_fifo_pio_push_handler, !21, !"usbhs_fifo_pio_push_handler", i1 false, i1 false}
!21 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 612, i32 31}
!22 = !{ptr @usbhs_fifo_pio_pop_handler, !23, !"usbhs_fifo_pio_pop_handler", i1 false, i1 false}
!23 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 742, i32 31}
!24 = !{ptr @usbhs_ctrl_stage_end_handler, !25, !"usbhs_ctrl_stage_end_handler", i1 false, i1 false}
!25 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 759, i32 31}
!26 = !{ptr @usbhs_fifo_dma_push_handler, !27, !"usbhs_fifo_dma_push_handler", i1 false, i1 false}
!27 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 972, i32 31}
!28 = !{ptr @usbhs_fifo_dma_pop_handler, !29, !"usbhs_fifo_dma_pop_handler", i1 false, i1 false}
!29 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1222, i32 31}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1465, i32 15}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1471, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1472, i32 2}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1473, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1474, i32 2}
!40 = !{ptr @usbhsf_null_handler, !41, !"usbhsf_null_handler", i1 false, i1 false}
!41 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 40, i32 38}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 35, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @usbhsf_null_handle._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @usbhsf_null_handle._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 186, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usbhsf_pkt_handler._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @usbhsf_pkt_handler._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 369, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @usbhs_dcp_dir_switch_to_write._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @usbhs_dcp_dir_switch_to_write._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 398, i32 3}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @usbhs_dcp_dir_switch_to_read._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @usbhs_dcp_dir_switch_to_read._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 583, i32 2}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @usbhsf_pio_try_push.__UNIQUE_ID_ddebug237, !63, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 732, i32 2}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @usbhsf_pio_try_pop.__UNIQUE_ID_ddebug240, !68, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!71 = !{ptr @usbhsf_dma_prepare_push.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 926, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 847, i32 3}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @usbhsf_dma_xfer_preparing._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @usbhsf_dma_xfer_preparing._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 851, i32 2}
!81 = !{ptr @usbhsf_dma_xfer_preparing.__UNIQUE_ID_ddebug241, !80, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1388, i32 3}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @usbhsf_dma_complete._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @usbhsf_dma_complete._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @usbhsf_dma_try_pop_with_rx_irq.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1113, i32 2}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 349, i32 2}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @usbhsf_fifo_select._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @usbhsf_fifo_select._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1324, i32 3}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @usbhsf_irq_empty._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @usbhsf_irq_empty._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1328, i32 2}
!101 = !{ptr @usbhsf_irq_empty.__UNIQUE_ID_ddebug245, !100, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1340, i32 4}
!104 = !{ptr @usbhsf_irq_empty._entry.37, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @usbhsf_irq_empty._entry_ptr.39, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1354, i32 3}
!108 = !{ptr @usbhsf_irq_ready._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @usbhsf_irq_ready._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1358, i32 2}
!112 = !{ptr @usbhsf_irq_ready.__UNIQUE_ID_ddebug246, !111, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1370, i32 4}
!115 = !{ptr @usbhsf_irq_ready._entry.42, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @usbhsf_irq_ready._entry_ptr.44, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1307, i32 3}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @usbhsf_dma_init.__UNIQUE_ID_ddebug244, !118, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!121 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/renesas_usbhs/fifo.c", i32 1284, i32 31}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 2150550435}
!137 = !{i64 3009090}
!138 = !{i64 2148790030, i64 2148790035, i64 2148790048, i64 2148790092, i64 2148790126, i64 2148790147}
!139 = !{i64 3009705}
!140 = !{i64 2150550054}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2154417400, i64 2154417898, i64 2154417437, i64 2154417493, i64 2154417527, i64 2154417551, i64 2154417592, i64 2154417613, i64 2154417641, i64 2154417675}
