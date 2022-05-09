; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/musb_host.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.78, i32 }
%union.anon.78 = type { ptr }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.musb_qh = type { ptr, ptr, ptr, %struct.list_head, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, %struct.sg_mapping_iter, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dma_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }

@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"<== csr0 %04x, qh %p, count %d, urb %p, stage %d\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"STALLING ENDPOINT\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no response, csr0 %04x\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"control NAK timeout\00", [44 x i8] zeroinitializer }, align 32
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aborting\00", [23 x i8] zeroinitializer }, align 32
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@musb_h_ep0_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s %d: no URB for end 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"musb_h_ep0_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/musb/musb_host.c\00", [35 x i8] zeroinitializer }, align 32
@musb_h_ep0_irq._entry_ptr = internal global ptr @musb_h_ep0_irq._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep0 STATUS, csr %04x\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"extra TX%d ready, csr %04x\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"OUT/TX%d end, csr %04x%s\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX end %d stall\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX 3strikes on ep=%d\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAK timeout on TX%d ep\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TX ep%d device not responding\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not complete, but DMA enabled?\00", [33 x i8] zeroinitializer }, align 32
@musb_host_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 1436, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error: sg list empty\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"musb_host_tx\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@musb_host_tx._entry_ptr = internal global ptr @musb_host_tx._entry, section ".printk_index", align 4
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BOGUS RX%d ready, csr %04x, count %d\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX end %d STALL\00", [16 x i8] zeroinitializer }, align 32
@musb_host_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 1771, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ep%d RX three-strikes error\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"musb_host_rx\00", [19 x i8] zeroinitializer }, align 32
@musb_host_rx._entry_ptr = internal global ptr @musb_host_rx._entry, section ".printk_index", align 4
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX end %d NAK timeout\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX end %d ISO data error\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"end %d high bandwidth incomplete ISO packet RX\00", [49 x i8] zeroinitializer }, align 32
@musb_host_rx._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.7, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s %d: RX%d dma busy, csr %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@musb_host_rx._entry_ptr.31 = internal global ptr @musb_host_rx._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RXCSR%d %04x, reqpkt, len %zu%s\00", [32 x i8] zeroinitializer }, align 32
@musb_host_rx._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.7, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s %d: Rx interrupt with no errors or packet!\0A\00", [47 x i8] zeroinitializer }, align 32
@musb_host_rx._entry_ptr.35 = internal global ptr @musb_host_rx._entry.33, section ".printk_index", align 4
@musb_host_rx._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.25, ptr @.str.7, i32 1943, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@musb_host_rx._entry_ptr.37 = internal global ptr @musb_host_rx._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read %spacket\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"last \00", [26 x i8] zeroinitializer }, align 32
@musb_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @.str.72, ptr @.str.73, i32 4, ptr null, i32 35, ptr null, ptr @musb_h_start, ptr null, ptr null, ptr @musb_h_stop, ptr null, ptr @musb_h_get_frame_number, ptr @musb_urb_enqueue, ptr @musb_urb_dequeue, ptr null, ptr null, ptr @musb_h_disable, ptr null, ptr @musb_hub_status_data, ptr @musb_hub_control, ptr @musb_bus_suspend, ptr @musb_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not flush host TX%d fifo: csr: %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start no-DATA\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start IN-DATA\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start OUT-DATA\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Sending %d byte%s to ep0 fifo %p\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@musb_h_ep0_continue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s %d: bogus ep0 stage %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"musb_h_ep0_continue\00", [44 x i8] zeroinitializer }, align 32
@musb_h_ep0_continue._entry_ptr = internal global ptr @musb_h_ep0_continue._entry, section ".printk_index", align 4
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"... next ep%d %cX urb %p\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_musb_urb_gb = external dso_local global %struct.tracepoint, align 4
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/musb/musb_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_musb_urb_gb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"check whether there's still time for periodic Tx\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Start TX%d %s\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_musb_urb_start = external dso_local global %struct.tracepoint, align 4
@trace_musb_urb_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s hw%d urb %p spd%d dev%d ep%d%s h_addr%02x h_port%02x bytes %d\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-->\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<--\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@musb_ep_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.7, i32 814, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error: sglist empty\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"musb_ep_program\00", [16 x i8] zeroinitializer }, align 32
@musb_ep_program._entry_ptr = internal global ptr @musb_ep_program._entry, section ".printk_index", align 4
@musb_ep_program._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.7, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s %d: broken !rx_reinit, ep%d csr %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@musb_ep_program._entry_ptr.65 = internal global ptr @musb_ep_program._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RXCSR%d := %04x\00", [16 x i8] zeroinitializer }, align 32
@musb_rx_reinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.7, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s %d: rx%d, packet/%d ready?\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"musb_rx_reinit\00", [17 x i8] zeroinitializer }, align 32
@musb_rx_reinit._entry_ptr = internal global ptr @musb_rx_reinit._entry, section ".printk_index", align 4
@__tracepoint_musb_urb_tx = external dso_local global %struct.tracepoint, align 4
@trace_musb_urb_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@musb_h_tx_flush_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s %s: Could not flush host TX%d fifo: csr: %04x\0A\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_musb_urb_rx = external dso_local global %struct.tracepoint, align 4
@trace_musb_urb_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RX%d count %d, buffer %p len %d/%d\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OVERFLOW %d into %d\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"musb-hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MUSB HDRC host driver\00", [42 x i8] zeroinitializer }, align 32
@musb_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.7, i32 2182, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"high bandwidth %s (%dx%d) not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"musb_urb_enqueue\00", [47 x i8] zeroinitializer }, align 32
@musb_urb_enqueue._entry_ptr = internal global ptr @musb_urb_enqueue._entry, section ".printk_index", align 4
@__tracepoint_musb_urb_enq = external dso_local global %struct.tracepoint, align 4
@trace_musb_urb_enq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iso\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@musb_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.7, i32 2086, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s hwep alloc failed for %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"musb_schedule\00", [18 x i8] zeroinitializer }, align 32
@musb_schedule._entry_ptr = internal global ptr @musb_schedule._entry, section ".printk_index", align 4
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qh %p periodic slot %d\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_musb_urb_deq = external dso_local global %struct.tracepoint, align 4
@trace_musb_urb_deq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@musb_bus_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.7, i32 2522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s %d: trying to suspend as %s while active\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"musb_bus_suspend\00", [47 x i8] zeroinitializer }, align 32
@musb_bus_suspend._entry_ptr = internal global ptr @musb_bus_suspend._entry, section ".printk_index", align 4
@switch.table.musb_schedule = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.12, ptr @.str.79], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 10]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1069, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1080, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1084, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1088, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1103, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1128, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1156, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1210, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1217, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1218, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1223, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1230, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1237, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1240, i32 19 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1413, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1436, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1754, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1765, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1771, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1788, i32 19 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1811, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1816, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1837, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1861, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1895, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1943, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1963, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1963, i32 43 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"musb_hc_driver\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2655, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 137, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1004, i32 19 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1007, i32 19 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1012, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1024, i32 19 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1026, i32 31 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1035, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 378, i32 18 }
@___asan_gen_.246 = private unnamed_addr constant [33 x i8] c"../drivers/usb/musb/musb_trace.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 211, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 108, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 245, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 266, i32 18 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 267, i32 24 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 267, i32 32 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 678, i32 17 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 680, i32 13 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 680, i32 21 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 682, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 682, i32 46 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 812, i32 6 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 849, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 884, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 540, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 113, i32 7 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 423, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 445, i32 19 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2656, i32 18 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2657, i32 19 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2179, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 434, i32 7 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 437, i32 7 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 440, i32 7 }
@___asan_gen_.339 = private unnamed_addr constant [32 x i8] c"../drivers/usb/musb/musb_core.h\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 443, i32 7 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2083, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2093, i32 17 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private constant [32 x i8] c"../drivers/usb/musb/musb_host.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2521, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [27 x i8] c"switch.table.musb_schedule\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @musb_bus_suspend._entry, ptr @musb_bus_suspend._entry_ptr, ptr @musb_ep_program._entry, ptr @musb_ep_program._entry.63, ptr @musb_ep_program._entry_ptr, ptr @musb_ep_program._entry_ptr.65, ptr @musb_h_ep0_continue._entry, ptr @musb_h_ep0_continue._entry_ptr, ptr @musb_h_ep0_irq._entry, ptr @musb_h_ep0_irq._entry_ptr, ptr @musb_host_rx._entry, ptr @musb_host_rx._entry.29, ptr @musb_host_rx._entry.33, ptr @musb_host_rx._entry.36, ptr @musb_host_rx._entry_ptr, ptr @musb_host_rx._entry_ptr.31, ptr @musb_host_rx._entry_ptr.35, ptr @musb_host_rx._entry_ptr.37, ptr @musb_host_tx._entry, ptr @musb_host_tx._entry_ptr, ptr @musb_rx_reinit._entry, ptr @musb_rx_reinit._entry_ptr, ptr @musb_schedule._entry, ptr @musb_schedule._entry_ptr, ptr @musb_urb_enqueue._entry, ptr @musb_urb_enqueue._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @musb_hc_driver, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @switch.table.musb_schedule], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_h_ep0_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_host_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_host_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_host_rx._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_host_rx._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_host_rx._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_h_ep0_continue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_ep_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_ep_program._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_rx_reinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_bus_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.musb_schedule to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @hcd_to_musb(ptr nocapture noundef readonly %hcd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @musb_h_ep0_irq(ptr noundef %musb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %regs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %in_qh = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 15
  %4 = ptrtoint ptr %in_qh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_qh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.next_urb.exit_crit_edge, label %if.end.i

entry.next_urb.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %urb_list.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 -20
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  br label %next_urb.exit

next_urb.exit:                                    ; preds = %if.end.i, %entry.next_urb.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.next_urb.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep_select, align 4
  tail call void %11(ptr noundef %1, i8 noundef zeroext 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %12 = load ptr, ptr @musb_readw, align 4
  %call2 = tail call zeroext i16 %12(ptr noundef %3, i32 noundef 2) #9
  %conv = zext i16 %call2 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %next_urb.exit.cond.end_crit_edge, label %cond.true

next_urb.exit.cond.end_crit_edge:                 ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %13 = load ptr, ptr @musb_readb, align 4
  %call3 = tail call zeroext i8 %13(ptr noundef %3, i32 noundef 8) #9
  %phi.cast = zext i8 %call3 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %next_urb.exit.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ 0, %next_urb.exit.cond.end_crit_edge ]
  %conv7 = zext i16 %cond to i32
  %ep0_stage = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 15
  %14 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep0_stage, align 8
  %conv8 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str, i32 noundef %conv, ptr noundef %5, i32 noundef %conv7, ptr noundef %retval.0.i, i32 noundef %conv8) #9
  %16 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ep0_stage, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp = icmp eq i8 %17, 4
  %spec.select = zext i1 %cmp to i32
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.1) #9
  br label %if.then30

if.else:                                          ; preds = %cond.end
  %and17 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.2, i32 noundef %conv) #9
  br label %if.then30

if.else21:                                        ; preds = %if.else
  %and23 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else21.if.end47_crit_edge, label %if.then25

if.else21.if.end47_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %18 = load ptr, ptr @musb_writew, align 4
  tail call void %18(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 0) #9
  br label %if.end47

if.then30:                                        ; preds = %if.then19, %if.then15
  %status.0 = phi i32 [ -71, %if.then19 ], [ -32, %if.then15 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.4) #9
  %tobool31.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool31.not, label %if.then30.if.end34_crit_edge, label %if.then32

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %status33 = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 12
  %19 = ptrtoint ptr %status33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %status.0, ptr %status33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then30.if.end34_crit_edge
  %and36 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else45, label %if.then38

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %and40 = and i16 %call2, -33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %20 = load ptr, ptr @musb_writew, align 4
  tail call void %20(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %and40) #9
  %21 = and i16 %call2, -161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %22 = load ptr, ptr @musb_writew, align 4
  tail call void %22(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %21) #9
  br label %if.end47.thread

if.else45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %endpoints)
  br label %if.end47.thread

if.end47:                                         ; preds = %if.then25, %if.else21.if.end47_crit_edge
  %retval1.1.ph = phi i32 [ %spec.select, %if.else21.if.end47_crit_edge ], [ 1, %if.then25 ]
  %tobool48.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool48.not, label %if.end47.do.end_crit_edge, label %if.end57, !prof !199

if.end47.do.end_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end47.thread:                                  ; preds = %if.else45, %if.then38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %23 = load ptr, ptr @musb_writeb, align 4
  tail call void %23(ptr noundef %3, i32 noundef 11, i8 noundef zeroext 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %24 = load ptr, ptr @musb_writew, align 4
  tail call void %24(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 0) #9
  br i1 %tobool31.not, label %if.end47.thread.do.end_crit_edge, label %if.end47.thread.if.then84_crit_edge, !prof !199

if.end47.thread.if.then84_crit_edge:              ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

if.end47.thread.do.end_crit_edge:                 ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end47.thread.do.end_crit_edge, %if.end47.do.end_crit_edge
  %retval1.2147 = phi i32 [ 1, %if.end47.thread.do.end_crit_edge ], [ %retval1.1.ph, %if.end47.do.end_crit_edge ]
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1128) #12
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %endpoints)
  br label %done

if.end57:                                         ; preds = %if.end47
  br i1 %cmp, label %if.end57.if.then84_crit_edge, label %if.then59

if.end57.if.then84_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

if.then59:                                        ; preds = %if.end57
  %25 = ptrtoint ptr %in_qh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in_qh, align 4
  %27 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ep0_stage, align 8
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %28, label %do.end.i [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb23.i
    i8 3, label %if.then59.sw.bb34.i_crit_edge
  ]

if.then59.sw.bb34.i_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34.i

sw.bb.i:                                          ; preds = %if.then59
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 20
  %32 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual_length.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %31, i32 %33
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %transfer_buffer_length.i, align 4
  %sub.i = sub i32 %35, %33
  %36 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %conv7) #9
  %conv4.i = trunc i32 %36 to i16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv7)
  %cmp7.i = icmp ult i32 %sub.i, %conv7
  br i1 %cmp7.i, label %if.then.i, label %sw.bb.i.if.end.i138_crit_edge

sw.bb.i.if.end.i138_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i138

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %status.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 12
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -75, ptr %status.i, align 4
  br label %if.end.i138

if.end.i138:                                      ; preds = %if.then.i, %sw.bb.i.if.end.i138_crit_edge
  tail call void @musb_read_fifo(ptr noundef %endpoints, i16 noundef zeroext %conv4.i, ptr noundef %add.ptr.i137) #9
  %38 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual_length.i, align 4
  %add.i = add i32 %39, %36
  store i32 %add.i, ptr %actual_length.i, align 4
  %maxpacket.i = getelementptr inbounds %struct.musb_qh, ptr %26, i32 0, i32 16
  %40 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %maxpacket.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %cond)
  %cmp13.i = icmp ugt i16 %41, %cond
  br i1 %cmp13.i, label %if.end.i138.if.else68_crit_edge, label %if.else.i

if.end.i138.if.else68_crit_edge:                  ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68

if.else.i:                                        ; preds = %if.end.i138
  %42 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %transfer_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %43)
  %cmp18.i = icmp ult i32 %add.i, %43
  br i1 %cmp18.i, label %if.else.i.if.then61_crit_edge, label %if.else.i.if.else68_crit_edge

if.else.i.if.else68_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68

if.else.i.if.then61_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61

sw.bb23.i:                                        ; preds = %if.then59
  %setup_packet.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 21
  %44 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %setup_packet.i, align 4
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i139 = icmp eq i16 %47, 0
  br i1 %tobool.not.i139, label %if.then24.i, label %if.else25.i

if.then24.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.41) #9
  br label %if.else68

if.else25.i:                                      ; preds = %sw.bb23.i
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %tobool27.not.i = icmp sgt i8 %49, -1
  br i1 %tobool27.not.i, label %if.else30.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.42) #9
  %50 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %ep0_stage, align 8
  br label %if.then61

if.else30.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.43) #9
  %51 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %ep0_stage, align 8
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %if.else30.i, %if.then59.sw.bb34.i_crit_edge
  %more.0.off0.i = phi i1 [ false, %if.then59.sw.bb34.i_crit_edge ], [ true, %if.else30.i ]
  %maxpacket35.i = getelementptr inbounds %struct.musb_qh, ptr %26, i32 0, i32 16
  %52 = ptrtoint ptr %maxpacket35.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %maxpacket35.i, align 2
  %conv36.i = zext i16 %53 to i32
  %transfer_buffer_length37.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 19
  %54 = ptrtoint ptr %transfer_buffer_length37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %transfer_buffer_length37.i, align 4
  %actual_length38.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 20
  %56 = ptrtoint ptr %actual_length38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %actual_length38.i, align 4
  %sub39.i = sub i32 %55, %57
  %58 = tail call i32 @llvm.umin.i32(i32 %sub39.i, i32 %conv36.i) #9
  %conv47.i = trunc i32 %58 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv47.i)
  %tobool48.not.i = icmp eq i16 %conv47.i, 0
  br i1 %tobool48.not.i, label %musb_h_ep0_continue.exit, label %if.then49.i

if.then49.i:                                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer50.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 14
  %59 = ptrtoint ptr %transfer_buffer50.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %transfer_buffer50.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %60, i32 %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp55.i = icmp eq i32 %58, 1
  %cond57.i = select i1 %cmp55.i, ptr @.str.12, ptr @.str.45
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.44, i32 noundef %58, ptr noundef nonnull %cond57.i, ptr noundef %add.ptr52.i) #9
  tail call void @musb_write_fifo(ptr noundef %endpoints, i16 noundef zeroext %conv47.i, ptr noundef %add.ptr52.i) #9
  %61 = ptrtoint ptr %actual_length38.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %actual_length38.i, align 4
  %add60.i = add i32 %62, %58
  store i32 %add60.i, ptr %actual_length38.i, align 4
  br label %if.then61

do.end.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %28 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 1035, i32 noundef %conv.i) #12
  br label %if.else68

musb_h_ep0_continue.exit:                         ; preds = %sw.bb34.i
  br i1 %more.0.off0.i, label %musb_h_ep0_continue.exit.if.then61_crit_edge, label %musb_h_ep0_continue.exit.if.else68_crit_edge

musb_h_ep0_continue.exit.if.else68_crit_edge:     ; preds = %musb_h_ep0_continue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68

musb_h_ep0_continue.exit.if.then61_crit_edge:     ; preds = %musb_h_ep0_continue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61

if.then61:                                        ; preds = %musb_h_ep0_continue.exit.if.then61_crit_edge, %if.then49.i, %if.then28.i, %if.else.i.if.then61_crit_edge
  %63 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ep0_stage, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp64 = icmp eq i8 %64, 2
  %conv67 = select i1 %cmp64, i16 32, i16 2
  br label %if.end82

if.else68:                                        ; preds = %musb_h_ep0_continue.exit.if.else68_crit_edge, %do.end.i, %if.then24.i, %if.else.i.if.else68_crit_edge, %if.end.i138.if.else68_crit_edge
  %pipe = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 10
  %65 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pipe, align 4
  %and69 = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else68.if.end74_crit_edge, label %lor.lhs.false

if.else68.if.end74_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

lor.lhs.false:                                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 19
  %67 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool71.not = icmp eq i32 %68, 0
  %spec.select136 = select i1 %tobool71.not, i16 2144, i16 2114
  br label %if.end74

if.end74:                                         ; preds = %lor.lhs.false, %if.else68.if.end74_crit_edge
  %csr.0 = phi i16 [ 2144, %if.else68.if.end74_crit_edge ], [ %spec.select136, %lor.lhs.false ]
  %69 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %ep0_stage, align 8
  %conv78 = zext i16 %csr.0 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.8, i32 noundef %conv78) #9
  br label %if.end82

if.end82:                                         ; preds = %if.end74, %if.then61
  %csr.1 = phi i16 [ %conv67, %if.then61 ], [ %csr.0, %if.end74 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %70 = load ptr, ptr @musb_writew, align 4
  tail call void %70(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %csr.1) #9
  br label %done

if.then84:                                        ; preds = %if.end57.if.then84_crit_edge, %if.end47.thread.if.then84_crit_edge
  %retval1.2148151 = phi i32 [ %retval1.1.ph, %if.end57.if.then84_crit_edge ], [ 1, %if.end47.thread.if.then84_crit_edge ]
  %71 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %ep0_stage, align 8
  tail call fastcc void @musb_advance_schedule(ptr noundef %musb, ptr noundef nonnull %retval.0.i, ptr noundef %endpoints, i32 noundef 1)
  br label %done

done:                                             ; preds = %if.then84, %if.end82, %do.end
  %retval1.4 = phi i32 [ %retval1.2147, %do.end ], [ %retval1.2148151, %if.then84 ], [ 1, %if.end82 ]
  ret i32 %retval1.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_h_ep0_flush_fifo(ptr nocapture noundef readonly %ep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %2 = load ptr, ptr @musb_readw, align 4
  %call = tail call zeroext i16 %2(ptr noundef %1, i32 noundef 2) #9
  %3 = and i16 %call, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.end

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %4 = load ptr, ptr @musb_writew, align 4
  tail call void %4(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 256) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %5 = load ptr, ptr @musb_readw, align 4
  %call1 = tail call zeroext i16 %5(ptr noundef %1, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %7 = load ptr, ptr @musb_readw, align 4
  %call.1 = tail call zeroext i16 %7(ptr noundef %1, i32 noundef 2) #9
  %8 = and i16 %call.1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.1 = icmp eq i16 %8, 0
  br i1 %tobool.not.1, label %if.end.if.end24_crit_edge, label %if.end.1

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %9 = load ptr, ptr @musb_writew, align 4
  tail call void %9(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 256) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %10 = load ptr, ptr @musb_readw, align 4
  %call1.1 = tail call zeroext i16 %10(ptr noundef %1, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %12 = load ptr, ptr @musb_readw, align 4
  %call.2 = tail call zeroext i16 %12(ptr noundef %1, i32 noundef 2) #9
  %13 = and i16 %call.2, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.2 = icmp eq i16 %13, 0
  br i1 %tobool.not.2, label %if.end.1.if.end24_crit_edge, label %if.end.2

if.end.1.if.end24_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %14 = load ptr, ptr @musb_writew, align 4
  tail call void %14(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 256) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %15 = load ptr, ptr @musb_readw, align 4
  %call1.2 = tail call zeroext i16 %15(ptr noundef %1, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %17 = load ptr, ptr @musb_readw, align 4
  %call.3 = tail call zeroext i16 %17(ptr noundef %1, i32 noundef 2) #9
  %18 = and i16 %call.3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.3 = icmp eq i16 %18, 0
  br i1 %tobool.not.3, label %if.end.2.if.end24_crit_edge, label %if.end.3

if.end.2.if.end24_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %19 = load ptr, ptr @musb_writew, align 4
  tail call void %19(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 256) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %20 = load ptr, ptr @musb_readw, align 4
  %call1.3 = tail call zeroext i16 %20(ptr noundef %1, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %22 = load ptr, ptr @musb_readw, align 4
  %call.4 = tail call zeroext i16 %22(ptr noundef %1, i32 noundef 2) #9
  %23 = and i16 %call.4, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.4 = icmp eq i16 %23, 0
  br i1 %tobool.not.4, label %if.end.3.if.end24_crit_edge, label %if.end.4

if.end.3.if.end24_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %24 = load ptr, ptr @musb_writew, align 4
  tail call void %24(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 256) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %25 = load ptr, ptr @musb_readw, align 4
  %call1.4 = tail call zeroext i16 %25(ptr noundef %1, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #9
  %epnum = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 4
  %27 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %epnum, align 4
  %conv17 = zext i8 %28 to i32
  %conv18 = zext i16 %call1.4 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.40, i32 noundef %conv17, i32 noundef %conv18) #9
  br label %if.end24

if.end24:                                         ; preds = %if.end.4, %if.end.3.if.end24_crit_edge, %if.end.2.if.end24_crit_edge, %if.end.1.if.end24_crit_edge, %if.end.if.end24_crit_edge, %entry.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %29 = load ptr, ptr @musb_writew, align 4
  tail call void %29(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 0) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_advance_schedule(ptr noundef %musb, ptr noundef %urb, ptr nocapture noundef readonly %hw_ep, i32 noundef %is_in) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool.not.i = icmp eq i32 %is_in, 0
  %in_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 15
  %out_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 16
  %cond.in.i = select i1 %tobool.not.i, ptr %out_qh.i, ptr %in_qh.i
  %0 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %hw_ep1 = getelementptr inbounds %struct.musb_qh, ptr %cond.i, i32 0, i32 2
  %1 = ptrtoint ptr %hw_ep1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_ep1, align 4
  %is_ready = getelementptr inbounds %struct.musb_qh, ptr %cond.i, i32 0, i32 12
  %3 = ptrtoint ptr %is_ready to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_ready, align 1
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %6)
  %cmp = icmp eq i32 %6, -115
  %spec.select = select i1 %cmp, i32 0, i32 %6
  %type = getelementptr inbounds %struct.musb_qh, ptr %cond.i, i32 0, i32 13
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %8, label %entry.sw.epilog_crit_edge [
    i8 2, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge133
    i8 1, label %sw.bb24
  ]

entry.sw.bb_crit_edge133:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge133
  %get_toggle = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %get_toggle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_toggle, align 8
  %lnot.ext = zext i1 %tobool.not.i to i32
  %call6 = tail call zeroext i16 %11(ptr noundef %cond.i, i32 noundef %lnot.ext) #9
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.usb_device, ptr %13, i32 0, i32 10, i32 %lnot.ext
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %epnum = getelementptr inbounds %struct.musb_qh, ptr %cond.i, i32 0, i32 14
  %16 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %epnum, align 1
  %conv11 = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv11
  %neg = xor i32 %shl, -1
  %and = and i32 %15, %neg
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6)
  %tobool13.not = icmp ne i16 %call6, 0
  %cond14 = zext i1 %tobool13.not to i32
  %shl17 = shl nuw i32 %cond14, %conv11
  %or = or i32 %and, %shl17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp25 = icmp eq i32 %spec.select, 0
  br i1 %cmp25, label %land.lhs.true, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %19 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool27.not = icmp eq i32 %20, 0
  %spec.select123 = select i1 %tobool27.not, i32 0, i32 -18
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true, %sw.bb24.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %spec.select, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb24.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select123, %land.lhs.true ]
  %21 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_ready, align 1
  tail call fastcc void @trace_musb_urb_gb(ptr noundef %musb, ptr noundef %urb) #9
  %hcd.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %22 = ptrtoint ptr %hcd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hcd.i, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %23, ptr noundef %urb) #9
  tail call void @_raw_spin_unlock(ptr noundef %musb) #9
  %24 = ptrtoint ptr %hcd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hcd.i, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %25, ptr noundef %urb, i32 noundef %status.0) #9
  tail call void @_raw_spin_lock(ptr noundef %musb) #9
  %26 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %4, ptr %is_ready, align 1
  %27 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cond.i, align 4
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %30, %urb_list
  br i1 %cmp.i.not, label %if.then33, label %sw.epilog.if.end61_crit_edge

sw.epilog.if.end61_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then33:                                        ; preds = %sw.epilog
  %dma_controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 24
  %31 = ptrtoint ptr %dma_controller to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_controller, align 4
  br i1 %tobool.not.i, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then33
  %rx_reinit = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 17
  %33 = ptrtoint ptr %rx_reinit to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %rx_reinit, align 4
  %rx_channel = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 11
  %34 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_channel, align 4
  %tobool36.not = icmp eq ptr %35, null
  br i1 %tobool36.not, label %if.then35.lor.lhs.false2.i_crit_edge, label %if.then37

if.then35.lor.lhs.false2.i_crit_edge:             ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false2.i

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %channel_release = getelementptr inbounds %struct.dma_controller, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %channel_release to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel_release, align 4
  tail call void %37(ptr noundef nonnull %35) #9
  %38 = ptrtoint ptr %rx_channel to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rx_channel, align 4
  br label %lor.lhs.false2.i

if.else:                                          ; preds = %if.then33
  %tx_reinit = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 18
  %39 = ptrtoint ptr %tx_reinit to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %tx_reinit, align 1
  %tx_channel = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 10
  %40 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_channel, align 4
  %tobool41.not = icmp eq ptr %41, null
  br i1 %tobool41.not, label %if.else.lor.lhs.false.i_crit_edge, label %if.then42

if.else.lor.lhs.false.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %channel_release43 = getelementptr inbounds %struct.dma_controller, ptr %32, i32 0, i32 2
  %42 = ptrtoint ptr %channel_release43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channel_release43, align 4
  tail call void %43(ptr noundef nonnull %41) #9
  %44 = ptrtoint ptr %tx_channel to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %tx_channel, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then42, %if.else.lor.lhs.false.i_crit_edge
  %is_shared_fifo.i = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 5
  %45 = ptrtoint ptr %is_shared_fifo.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_shared_fifo.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i124 = icmp eq i8 %46, 0
  br i1 %tobool.not.i124, label %lor.lhs.false.i.if.then5.i_crit_edge, label %if.end.thread12.i

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.end.thread12.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %in_qh13.i = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 15
  %47 = ptrtoint ptr %in_qh13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %in_qh13.i, align 4
  br label %if.then5.i

lor.lhs.false2.i:                                 ; preds = %if.then37, %if.then35.lor.lhs.false2.i_crit_edge
  %in_qh.i125 = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 15
  %48 = ptrtoint ptr %in_qh.i125 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %in_qh.i125, align 4
  %is_shared_fifo3.i = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 5
  %49 = ptrtoint ptr %is_shared_fifo3.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_shared_fifo3.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool4.not.i = icmp eq i8 %50, 0
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge, label %lor.lhs.false2.i.if.then5.i_crit_edge

lor.lhs.false2.i.if.then5.i_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge:   ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %musb_ep_set_qh.exit

if.then5.i:                                       ; preds = %lor.lhs.false2.i.if.then5.i_crit_edge, %if.end.thread12.i, %lor.lhs.false.i.if.then5.i_crit_edge
  %out_qh.i126 = getelementptr inbounds %struct.musb_hw_ep, ptr %2, i32 0, i32 16
  %51 = ptrtoint ptr %out_qh.i126 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %out_qh.i126, align 4
  br label %musb_ep_set_qh.exit

musb_ep_set_qh.exit:                              ; preds = %if.then5.i, %lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge
  %52 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cond.i, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %hcpriv, align 4
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type, align 2
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %56, label %musb_ep_set_qh.exit.if.end61_crit_edge [
    i8 0, label %musb_ep_set_qh.exit.sw.bb51_crit_edge
    i8 2, label %musb_ep_set_qh.exit.sw.bb51_crit_edge134
    i8 1, label %musb_ep_set_qh.exit.sw.bb59_crit_edge
    i8 3, label %musb_ep_set_qh.exit.sw.bb59_crit_edge135
  ]

musb_ep_set_qh.exit.sw.bb59_crit_edge135:         ; preds = %musb_ep_set_qh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb59

musb_ep_set_qh.exit.sw.bb59_crit_edge:            ; preds = %musb_ep_set_qh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb59

musb_ep_set_qh.exit.sw.bb51_crit_edge134:         ; preds = %musb_ep_set_qh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb51

musb_ep_set_qh.exit.sw.bb51_crit_edge:            ; preds = %musb_ep_set_qh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb51

musb_ep_set_qh.exit.if.end61_crit_edge:           ; preds = %musb_ep_set_qh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

sw.bb51:                                          ; preds = %musb_ep_set_qh.exit.sw.bb51_crit_edge, %musb_ep_set_qh.exit.sw.bb51_crit_edge134
  %mux = getelementptr inbounds %struct.musb_qh, ptr %cond.i, i32 0, i32 4
  %58 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mux, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp53 = icmp eq i8 %59, 1
  br i1 %cmp53, label %if.then55, label %sw.bb51.sw.bb59_crit_edge

sw.bb51.sw.bb59_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb59

if.then55:                                        ; preds = %sw.bb51
  %ring = getelementptr inbounds %struct.musb_qh, ptr %cond.i, i32 0, i32 3
  %prev = getelementptr inbounds %struct.musb_qh, ptr %cond.i, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ring) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then55.list_del.exit_crit_edge

if.then55.list_del.exit_crit_edge:                ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev, align 4
  %64 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then55.list_del.exit_crit_edge
  %68 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %ring, align 4
  %69 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev, align 4
  tail call void @kfree(ptr noundef %cond.i) #9
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %61, align 4
  %cmp.i.not.i = icmp eq ptr %71, %61
  %add.ptr.i = getelementptr i8, ptr %71, i32 -12
  br i1 %cmp.i.not.i, label %list_del.exit.if.end74_crit_edge, label %list_del.exit.if.end61_crit_edge

list_del.exit.if.end61_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

list_del.exit.if.end74_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

sw.bb59:                                          ; preds = %sw.bb51.sw.bb59_crit_edge, %musb_ep_set_qh.exit.sw.bb59_crit_edge, %musb_ep_set_qh.exit.sw.bb59_crit_edge135
  tail call void @kfree(ptr noundef %cond.i) #9
  br label %if.end74

if.end61:                                         ; preds = %list_del.exit.if.end61_crit_edge, %musb_ep_set_qh.exit.if.end61_crit_edge, %sw.epilog.if.end61_crit_edge
  %qh.1 = phi ptr [ %cond.i, %sw.epilog.if.end61_crit_edge ], [ %cond.i, %musb_ep_set_qh.exit.if.end61_crit_edge ], [ %add.ptr.i, %list_del.exit.if.end61_crit_edge ]
  %cmp62.not = icmp eq ptr %qh.1, null
  br i1 %cmp62.not, label %if.end61.if.end74_crit_edge, label %land.lhs.true64

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.lhs.true64:                                  ; preds = %if.end61
  %is_ready65 = getelementptr inbounds %struct.musb_qh, ptr %qh.1, i32 0, i32 12
  %72 = ptrtoint ptr %is_ready65 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_ready65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool67.not = icmp eq i8 %73, 0
  br i1 %tobool67.not, label %land.lhs.true64.if.end74_crit_edge, label %next_urb.exit

land.lhs.true64.if.end74_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

next_urb.exit:                                    ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  %epnum69 = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 4
  %74 = ptrtoint ptr %epnum69 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %epnum69, align 4
  %conv70 = zext i8 %75 to i32
  %cond72 = select i1 %tobool.not.i, i32 84, i32 82
  %76 = ptrtoint ptr %qh.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %qh.1, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i128 = icmp eq ptr %79, %urb_list.i
  %add.ptr.i129 = getelementptr i8, ptr %79, i32 -20
  %spec.select.i130 = select i1 %cmp.i.not.i128, ptr null, ptr %add.ptr.i129
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.48, i32 noundef %conv70, i32 noundef %cond72, ptr noundef %spec.select.i130) #9
  tail call fastcc void @musb_start_urb(ptr noundef %musb, i32 noundef %is_in, ptr noundef nonnull %qh.1)
  br label %if.end74

if.end74:                                         ; preds = %next_urb.exit, %land.lhs.true64.if.end74_crit_edge, %if.end61.if.end74_crit_edge, %sw.bb59, %list_del.exit.if.end74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_host_tx(ptr noundef %musb, i8 noundef zeroext %epnum) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %conv = zext i8 %epnum to i32
  %add.ptr = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv
  %regs = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %out_qh = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 16
  %2 = ptrtoint ptr %out_qh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_qh, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.next_urb.exit_crit_edge, label %if.end.i

entry.next_urb.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %urb_list.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -20
  %spec.select = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  br label %next_urb.exit

next_urb.exit:                                    ; preds = %if.end.i, %entry.next_urb.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.next_urb.exit_crit_edge ], [ %spec.select, %if.end.i ]
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %8 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mregs, align 8
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep_select, align 4
  tail call void %11(ptr noundef %9, i8 noundef zeroext %epnum) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %12 = load ptr, ptr @musb_readw, align 4
  %call1 = tail call zeroext i16 %12(ptr noundef %1, i32 noundef 2) #9
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i16 %call1 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv3) #9
  br label %cleanup

if.end:                                           ; preds = %next_urb.exit
  %pipe4 = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 10
  %13 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe4, align 4
  tail call fastcc void @trace_musb_urb_tx(ptr noundef %musb, ptr noundef nonnull %retval.0.i)
  %conv6 = zext i16 %call1 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv6, ptr noundef nonnull @.str.12) #9
  %and = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %if.end.if.end39.sink.split_crit_edge

if.end.if.end39.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.sink.split

if.else:                                          ; preds = %if.end
  %and13 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else17, label %if.else.if.end39.sink.split_crit_edge

if.else.if.end39.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.sink.split

if.else17:                                        ; preds = %if.else
  %and19 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else17.if.end39_crit_edge, label %if.then21

if.else17.if.end39_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then21:                                        ; preds = %if.else17
  %type = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp = icmp eq i8 %16, 2
  br i1 %cmp, label %land.lhs.true, label %if.then21.if.else32_crit_edge

if.then21.if.else32_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else32

land.lhs.true:                                    ; preds = %if.then21
  %mux = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mux, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp25 = icmp eq i8 %18, 1
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true.if.else32_crit_edge

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %out_bulk = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 19
  %19 = ptrtoint ptr %out_bulk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %out_bulk, align 4
  %cmp.i.not.i347 = icmp eq ptr %20, %out_bulk
  br i1 %cmp.i.not.i347, label %land.lhs.true27.if.then30_crit_edge, label %list_is_singular.exit

land.lhs.true27.if.then30_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

list_is_singular.exit:                            ; preds = %land.lhs.true27
  %prev.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %20, %22
  br i1 %cmp.i.not, label %list_is_singular.exit.if.else32_crit_edge, label %list_is_singular.exit.if.then30_crit_edge

list_is_singular.exit.if.then30_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

list_is_singular.exit.if.else32_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else32

if.then30:                                        ; preds = %list_is_singular.exit.if.then30_crit_edge, %land.lhs.true27.if.then30_crit_edge
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.15, i32 noundef %conv) #9
  tail call fastcc void @musb_bulk_nak_timeout(ptr noundef %musb, ptr noundef %add.ptr, i32 noundef 0)
  br label %cleanup

if.else32:                                        ; preds = %list_is_singular.exit.if.else32_crit_edge, %land.lhs.true.if.else32_crit_edge, %if.then21.if.else32_crit_edge
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.16, i32 noundef %conv) #9
  %23 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ep_select, align 4
  tail call void %24(ptr noundef %9, i8 noundef zeroext %epnum) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %25 = load ptr, ptr @musb_writew, align 4
  tail call void %25(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 167) #9
  br label %cleanup

if.end39.sink.split:                              ; preds = %if.else.if.end39.sink.split_crit_edge, %if.end.if.end39.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.13, %if.end.if.end39.sink.split_crit_edge ], [ @.str.14, %if.else.if.end39.sink.split_crit_edge ]
  %status.0.ph = phi i32 [ -32, %if.end.if.end39.sink.split_crit_edge ], [ -110, %if.else.if.end39.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull %.str.14.sink, i32 noundef %conv) #9
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else17.if.end39_crit_edge
  %status.0 = phi i32 [ 0, %if.else17.if.end39_crit_edge ], [ %status.0.ph, %if.end39.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %14)
  %cmp67 = icmp ult i32 %14, 1073741824
  %segsize = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 6
  %offset74 = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 5
  %maxpacket = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 16
  %transfer_buffer_length106 = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 19
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 13
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 29
  %iso_idx = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 18
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 24
  %status123 = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 12
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 14
  %sg_miter = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %add.ptr81 = getelementptr %struct.urb, ptr %retval.0.i, i32 1, i32 4
  br label %done40

done40:                                           ; preds = %do.end, %if.end39
  %tx_csr.0 = phi i16 [ %call1, %if.end39 ], [ %tx_csr.1354, %do.end ]
  %status.1 = phi i32 [ %status.0, %if.end39 ], [ -22, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool41.not = icmp eq i32 %status.1, 0
  br i1 %tobool41.not, label %if.end55.thread, label %if.end55

if.end55.thread:                                  ; preds = %done40
  %26 = ptrtoint ptr %segsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %segsize, align 4
  %28 = ptrtoint ptr %offset74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset74, align 4
  %add359 = add i32 %29, %27
  store i32 %add359, ptr %offset74, align 4
  br i1 %cmp67, label %if.end55.thread.if.then79_crit_edge, label %if.else98

if.end55.thread.if.then79_crit_edge:              ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

if.end55:                                         ; preds = %done40
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %add.ptr)
  %30 = and i16 %tx_csr.0, 28507
  %31 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep_select, align 4
  tail call void %32(ptr noundef %9, i8 noundef zeroext %epnum) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %33 = load ptr, ptr @musb_writew, align 4
  tail call void %33(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %30) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %34 = load ptr, ptr @musb_writew, align 4
  tail call void %34(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %30) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %35 = load ptr, ptr @musb_writeb, align 4
  tail call void %35(ptr noundef %1, i32 noundef 11, i8 noundef zeroext 0) #9
  br i1 %cmp67, label %if.else72, label %if.end55.if.end122.thread_crit_edge

if.end55.if.end122.thread_crit_edge:              ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.thread

if.else72:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %segsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %segsize, align 4
  %38 = ptrtoint ptr %offset74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset74, align 4
  %add = add i32 %39, %37
  store i32 %add, ptr %offset74, align 4
  br label %if.then79

if.then79:                                        ; preds = %if.else72, %if.end55.thread.if.then79_crit_edge
  %40 = phi i32 [ %27, %if.end55.thread.if.then79_crit_edge ], [ %37, %if.else72 ]
  %tx_csr.1355361 = phi i16 [ %tx_csr.0, %if.end55.thread.if.then79_crit_edge ], [ %30, %if.else72 ]
  %41 = ptrtoint ptr %iso_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iso_idx, align 4
  %actual_length = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %42, i32 2
  %43 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %actual_length, align 4
  %status82 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %42, i32 3
  %44 = ptrtoint ptr %status82 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %status.1, ptr %status82, align 4
  %45 = load i32, ptr %iso_idx, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %iso_idx, align 4
  %46 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %47)
  %cmp84.not = icmp ult i32 %inc, %47
  br i1 %cmp84.not, label %if.else87, label %if.then79.if.end122.thread_crit_edge

if.then79.if.end122.thread_crit_edge:             ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.thread

if.else87:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %48 = xor i1 %tobool41.not, true
  %incdec.ptr = getelementptr %struct.usb_iso_packet_descriptor, ptr %add.ptr81, i32 %42
  %49 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %incdec.ptr, align 4
  %length89 = getelementptr %struct.usb_iso_packet_descriptor, ptr %add.ptr81, i32 %42, i32 1
  %51 = ptrtoint ptr %length89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length89, align 4
  br label %if.end122

if.else98:                                        ; preds = %if.end55.thread
  %53 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %maxpacket, align 2
  %conv100 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv100)
  %cmp101 = icmp ult i32 %27, %conv100
  br i1 %cmp101, label %if.else98.if.end122.thread_crit_edge, label %if.else104

if.else98.if.end122.thread_crit_edge:             ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.thread

if.else104:                                       ; preds = %if.else98
  %55 = ptrtoint ptr %transfer_buffer_length106 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %transfer_buffer_length106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add359, i32 %56)
  %cmp107 = icmp eq i32 %add359, %56
  br i1 %cmp107, label %land.lhs.true109, label %if.else104.if.then116_crit_edge

if.else104.if.then116_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

land.lhs.true109:                                 ; preds = %if.else104
  %57 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %transfer_flags, align 4
  %and110 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %land.lhs.true109.if.end122.thread_crit_edge, label %land.lhs.true109.if.then116_crit_edge

land.lhs.true109.if.then116_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

land.lhs.true109.if.end122.thread_crit_edge:      ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.thread

if.then116:                                       ; preds = %land.lhs.true109.if.then116_crit_edge, %if.else104.if.then116_crit_edge
  %59 = ptrtoint ptr %transfer_buffer_length106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %transfer_buffer_length106, align 4
  %sub = sub i32 %60, %add359
  br label %if.end122

if.end122.thread:                                 ; preds = %land.lhs.true109.if.end122.thread_crit_edge, %if.else98.if.end122.thread_crit_edge, %if.then79.if.end122.thread_crit_edge, %if.end55.if.end122.thread_crit_edge
  %61 = ptrtoint ptr %status123 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %62)
  %cmp124.not413 = icmp eq i32 %62, -115
  br label %if.then134

if.end122:                                        ; preds = %if.then116, %if.else87
  %tx_csr.1354 = phi i16 [ %tx_csr.0, %if.then116 ], [ %tx_csr.1355361, %if.else87 ]
  %done.4.off0 = phi i1 [ false, %if.then116 ], [ %48, %if.else87 ]
  %length.3 = phi i32 [ %sub, %if.then116 ], [ %52, %if.else87 ]
  %offset.2 = phi i32 [ %add359, %if.then116 ], [ %50, %if.else87 ]
  %63 = ptrtoint ptr %status123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %status123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %64)
  %cmp124.not = icmp eq i32 %64, -115
  %not.cmp124.not = xor i1 %cmp124.not, true
  %done.5.off0 = or i1 %done.4.off0, %not.cmp124.not
  br i1 %done.5.off0, label %if.end122.if.then134_crit_edge, label %if.else138

if.end122.if.then134_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then134

if.then134:                                       ; preds = %if.end122.if.then134_crit_edge, %if.end122.thread
  %cmp124.not416 = phi i1 [ %cmp124.not413, %if.end122.thread ], [ %cmp124.not, %if.end122.if.then134_crit_edge ]
  %65 = phi i32 [ %62, %if.end122.thread ], [ %64, %if.end122.if.then134_crit_edge ]
  %spec.select345 = select i1 %tobool41.not, i32 %65, i32 %status.1
  %status.2 = select i1 %cmp124.not416, i32 %status.1, i32 %spec.select345
  %66 = ptrtoint ptr %status123 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %status.2, ptr %status123, align 4
  %67 = ptrtoint ptr %offset74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offset74, align 4
  %actual_length137 = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 20
  %69 = ptrtoint ptr %actual_length137 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %actual_length137, align 4
  tail call fastcc void @musb_advance_schedule(ptr noundef %musb, ptr noundef nonnull %retval.0.i, ptr noundef %add.ptr, i32 noundef 0)
  br label %cleanup

if.else138:                                       ; preds = %if.end122
  %70 = and i16 %tx_csr.1354, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool156.not = icmp eq i16 %70, 0
  br i1 %tobool156.not, label %if.end160, label %if.then157

if.then157:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end160:                                        ; preds = %if.else138
  %71 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %maxpacket, align 2
  %73 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hcd, align 4
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %74, ptr noundef nonnull %retval.0.i) #9
  %75 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %transfer_buffer, align 4
  %tobool169.not = icmp eq ptr %76, null
  br i1 %tobool169.not, label %if.then170, label %if.else184

if.then170:                                       ; preds = %if.end160
  %call171 = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter) #9
  br i1 %call171, label %if.end174, label %do.end

do.end:                                           ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.18) #12
  tail call void @sg_miter_stop(ptr noundef %sg_miter) #9
  br label %done40

if.end174:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  %conv162.le443 = zext i16 %72 to i32
  %79 = tail call i32 @llvm.umin.i32(i32 %length.3, i32 %conv162.le443)
  %length176 = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19, i32 2
  %80 = ptrtoint ptr %length176 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length176, align 4
  %82 = tail call i32 @llvm.umin.i32(i32 %79, i32 %81)
  %conv180 = trunc i32 %82 to i16
  %addr = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19, i32 1
  %83 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %addr, align 4
  tail call void @musb_write_fifo(ptr noundef %add.ptr, i16 noundef zeroext %conv180, ptr noundef %84) #9
  %consumed = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19, i32 3
  %85 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %82, ptr %consumed, align 4
  tail call void @sg_miter_stop(ptr noundef %sg_miter) #9
  br label %if.end188

if.else184:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  %conv162.le = zext i16 %72 to i32
  %86 = tail call i32 @llvm.umin.i32(i32 %length.3, i32 %conv162.le)
  %conv185 = trunc i32 %86 to i16
  %add.ptr187 = getelementptr i8, ptr %76, i32 %offset.2
  tail call void @musb_write_fifo(ptr noundef %add.ptr, i16 noundef zeroext %conv185, ptr noundef %add.ptr187) #9
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.end174
  %length.5 = phi i32 [ %86, %if.else184 ], [ %82, %if.end174 ]
  %87 = ptrtoint ptr %segsize to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %length.5, ptr %segsize, align 4
  %88 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ep_select, align 4
  tail call void %89(ptr noundef %9, i8 noundef zeroext %epnum) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %90 = load ptr, ptr @musb_writew, align 4
  tail call void %90(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 167) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %if.then157, %if.then134, %if.else32, %if.then30, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_urb_tx(ptr noundef %musb, ptr noundef %urb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_tx, i32 0, i32 1), ptr blockaddress(@trace_musb_urb_tx, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !203
  %call42 = tail call i32 @__traceiter_musb_urb_tx(ptr noundef null, ptr noundef %musb, ptr noundef %urb) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !202

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_urb_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_musb_urb_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 224, ptr noundef nonnull @.str.50) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_bulk_nak_timeout(ptr noundef %musb, ptr nocapture noundef %ep, i32 noundef %is_in) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %regs = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_select, align 4
  %epnum = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %epnum, align 4
  tail call void %5(ptr noundef %1, i8 noundef zeroext %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool.not = icmp eq i32 %is_in, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %8 = load ptr, ptr @musb_readw, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call zeroext i16 %8(ptr noundef %3, i32 noundef 6) #9
  %9 = and i16 %call, -110
  %10 = or i16 %9, 77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %11 = load ptr, ptr @musb_writew, align 4
  tail call void %11(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %10) #9
  %12 = or i16 %9, 69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %13 = load ptr, ptr @musb_writew, align 4
  tail call void %13(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %12) #9
  %in_bulk = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 18
  %14 = ptrtoint ptr %in_bulk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %in_bulk, align 4
  %cmp.i.not.i = icmp eq ptr %15, %in_bulk
  br i1 %cmp.i.not.i, label %if.then.if.end61_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.if.end61_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else:                                          ; preds = %entry
  %call8 = tail call zeroext i16 %8(ptr noundef %3, i32 noundef 2) #9
  %16 = and i16 %call8, -167
  %17 = or i16 %16, 38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %18 = load ptr, ptr @musb_writew, align 4
  tail call void %18(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %17) #9
  %out_bulk = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 19
  %19 = ptrtoint ptr %out_bulk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %out_bulk, align 4
  %cmp.i.not.i103 = icmp eq ptr %20, %out_bulk
  br i1 %cmp.i.not.i103, label %if.else.if.end61_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.end:                                           ; preds = %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %.pn = phi ptr [ %15, %if.then.if.end_crit_edge ], [ %20, %if.else.if.end_crit_edge ]
  %cur_qh.0 = getelementptr i8, ptr %.pn, i32 -12
  %tobool16.not = icmp eq ptr %cur_qh.0, null
  br i1 %tobool16.not, label %if.end.if.end61_crit_edge, label %next_urb.exit

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

next_urb.exit:                                    ; preds = %if.end
  %21 = ptrtoint ptr %cur_qh.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_qh.0, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i106 = icmp eq ptr %24, %urb_list.i
  %add.ptr.i107 = getelementptr i8, ptr %24, i32 -20
  %spec.select.i108 = select i1 %cmp.i.not.i106, ptr null, ptr %add.ptr.i107
  %get_toggle = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 6
  %25 = ptrtoint ptr %get_toggle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_toggle, align 8
  %lnot.ext = zext i1 %tobool.not to i32
  %call27 = tail call zeroext i16 %26(ptr noundef nonnull %cur_qh.0, i32 noundef %lnot.ext) #9
  %dev = getelementptr inbounds %struct.urb, ptr %spec.select.i108, i32 0, i32 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.usb_device, ptr %28, i32 0, i32 10, i32 %lnot.ext
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %epnum32 = getelementptr i8, ptr %.pn, i32 27
  %31 = ptrtoint ptr %epnum32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %epnum32, align 1
  %conv33 = zext i8 %32 to i32
  %shl = shl nuw i32 1, %conv33
  %neg = xor i32 %shl, -1
  %and34 = and i32 %30, %neg
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call27)
  %tobool36.not = icmp ne i16 %call27, 0
  %cond = zext i1 %tobool36.not to i32
  %shl39 = shl nuw i32 %cond, %conv33
  %or40 = or i32 %and34, %shl39
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or40, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.else52, label %if.then48

if.then48:                                        ; preds = %next_urb.exit
  %in_bulk49 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then48.__list_del_entry.exit.i_crit_edge

if.then48.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then48.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %41, ptr noundef %in_bulk49) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %.pn, ptr %prev.i2.i, align 4
  %43 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %in_bulk49, ptr %.pn, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %.pn, ptr %41, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %46 = ptrtoint ptr %in_bulk49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %in_bulk49, align 4
  %cmp.i.not.i109 = icmp eq ptr %47, %in_bulk49
  %rx_reinit = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 17
  %48 = ptrtoint ptr %rx_reinit to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %rx_reinit, align 4
  br i1 %cmp.i.not.i109, label %list_move_tail.exit.if.end61_crit_edge, label %list_move_tail.exit.if.end57_crit_edge

list_move_tail.exit.if.end57_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

list_move_tail.exit.if.end61_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else52:                                        ; preds = %next_urb.exit
  %out_bulk54 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 19
  %call.i.i112 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #9
  br i1 %call.i.i112, label %if.end.i.i115, label %if.else52.__list_del_entry.exit.i118_crit_edge

if.else52.__list_del_entry.exit.i118_crit_edge:   ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i118

if.end.i.i115:                                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i113 = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i113, align 4
  %51 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i114, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %__list_del_entry.exit.i118

__list_del_entry.exit.i118:                       ; preds = %if.end.i.i115, %if.else52.__list_del_entry.exit.i118_crit_edge
  %prev.i2.i116 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 19, i32 1
  %55 = ptrtoint ptr %prev.i2.i116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i2.i116, align 4
  %call.i.i.i117 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %56, ptr noundef %out_bulk54) #9
  br i1 %call.i.i.i117, label %if.end.i.i.i120, label %__list_del_entry.exit.i118.list_move_tail.exit121_crit_edge

__list_del_entry.exit.i118.list_move_tail.exit121_crit_edge: ; preds = %__list_del_entry.exit.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit121

if.end.i.i.i120:                                  ; preds = %__list_del_entry.exit.i118
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %prev.i2.i116 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %.pn, ptr %prev.i2.i116, align 4
  %58 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %out_bulk54, ptr %.pn, align 4
  %prev3.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i.i119, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %.pn, ptr %56, align 4
  br label %list_move_tail.exit121

list_move_tail.exit121:                           ; preds = %if.end.i.i.i120, %__list_del_entry.exit.i118.list_move_tail.exit121_crit_edge
  %61 = ptrtoint ptr %out_bulk54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %out_bulk54, align 4
  %cmp.i.not.i122 = icmp eq ptr %62, %out_bulk54
  %tx_reinit = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 18
  %63 = ptrtoint ptr %tx_reinit to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %tx_reinit, align 1
  br i1 %cmp.i.not.i122, label %list_move_tail.exit121.if.end61_crit_edge, label %list_move_tail.exit121.if.end57_crit_edge

list_move_tail.exit121.if.end57_crit_edge:        ; preds = %list_move_tail.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

list_move_tail.exit121.if.end61_crit_edge:        ; preds = %list_move_tail.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.end57:                                         ; preds = %list_move_tail.exit121.if.end57_crit_edge, %list_move_tail.exit.if.end57_crit_edge
  %.pn132 = phi ptr [ %47, %list_move_tail.exit.if.end57_crit_edge ], [ %62, %list_move_tail.exit121.if.end57_crit_edge ]
  %next_qh.0 = getelementptr i8, ptr %.pn132, i32 -12
  %tobool58.not = icmp eq ptr %next_qh.0, null
  br i1 %tobool58.not, label %if.end57.if.end61_crit_edge, label %if.then59

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_start_urb(ptr noundef %musb, i32 noundef %is_in, ptr noundef nonnull %next_qh.0)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57.if.end61_crit_edge, %list_move_tail.exit121.if.end61_crit_edge, %list_move_tail.exit.if.end61_crit_edge, %if.end.if.end61_crit_edge, %if.else.if.end61_crit_edge, %if.then.if.end61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_h_tx_flush_fifo(ptr nocapture noundef readonly %ep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %regs = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %4 = load ptr, ptr @musb_readw, align 4
  %call = tail call zeroext i16 %4(ptr noundef %3, i32 noundef 2) #9
  %5 = and i16 %call, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not65 = icmp eq i16 %5, 0
  br i1 %tobool.not65, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %entry.while.body_crit_edge
  %retries.067 = phi i32 [ %dec, %if.end49.while.body_crit_edge ], [ 1000, %entry.while.body_crit_edge ]
  %csr.066 = phi i16 [ %call4, %if.end49.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %or = or i16 %csr.066, 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %6 = load ptr, ptr @musb_writew, align 4
  tail call void %6(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %or) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %7 = load ptr, ptr @musb_readw, align 4
  %call4 = tail call zeroext i16 %7(ptr noundef %3, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.067)
  %cmp = icmp eq i32 %retries.067, 0
  br i1 %cmp, label %land.rhs, label %if.end49

land.rhs:                                         ; preds = %while.body
  %.b63 = load i1, ptr @musb_h_tx_flush_fifo.__already_done, align 1
  br i1 %.b63, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !202

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @musb_h_tx_flush_fifo.__already_done, align 1
  %controller = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 8
  %call23 = tail call ptr @dev_driver_string(ptr noundef %9) #9
  %10 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.then.dev_name.exit_crit_edge ]
  %epnum = getelementptr inbounds %struct.musb_hw_ep, ptr %ep, i32 0, i32 4
  %16 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %epnum, align 4
  %conv26 = zext i8 %17 to i32
  %conv27 = zext i16 %call4 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef %call23, ptr noundef %retval.0.i, i32 noundef %conv26, i32 noundef %conv27) #9
  br label %cleanup

if.end49:                                         ; preds = %while.body
  %dec = add nsw i32 %retries.067, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  %19 = and i16 %call4, 2
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %if.end49.cleanup_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end49.cleanup_crit_edge, %dev_name.exit, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unmap_urb_for_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_write_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_host_rx(ptr noundef %musb, i8 noundef zeroext %epnum) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %conv = zext i8 %epnum to i32
  %add.ptr = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv
  %regs = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %in_qh = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 15
  %2 = ptrtoint ptr %in_qh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_qh, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %4 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mregs, align 8
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep_select, align 4
  tail call void %7(ptr noundef %5, i8 noundef zeroext %epnum) #9
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.next_urb.exit.thread_crit_edge, label %if.end.i

entry.next_urb.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit.thread

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %urb_list.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 -20
  br i1 %cmp.i.not.i, label %if.end.i.next_urb.exit.thread_crit_edge, label %next_urb.exit

if.end.i.next_urb.exit.thread_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit.thread

next_urb.exit.thread:                             ; preds = %if.end.i.next_urb.exit.thread_crit_edge, %entry.next_urb.exit.thread_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %12 = load ptr, ptr @musb_readw, align 4
  %call1357 = tail call zeroext i16 %12(ptr noundef %1, i32 noundef 6) #9
  br label %if.then

next_urb.exit:                                    ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %13 = load ptr, ptr @musb_readw, align 4
  %call1 = tail call zeroext i16 %13(ptr noundef %1, i32 noundef 6) #9
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %next_urb.exit.if.then_crit_edge, label %if.end, !prof !199

next_urb.exit.if.then_crit_edge:                  ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %next_urb.exit.if.then_crit_edge, %next_urb.exit.thread
  %call1363 = phi i16 [ %call1357, %next_urb.exit.thread ], [ %call1, %next_urb.exit.if.then_crit_edge ]
  %conv6 = zext i16 %call1363 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %14 = load ptr, ptr @musb_readw, align 4
  %call7 = tail call zeroext i16 %14(ptr noundef %1, i32 noundef 8) #9
  %conv8 = zext i16 %call7 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8) #9
  tail call fastcc void @musb_h_flush_rxfifo(ptr noundef %add.ptr, i16 noundef zeroext 128)
  br label %cleanup217

if.end:                                           ; preds = %next_urb.exit
  tail call fastcc void @trace_musb_urb_rx(ptr noundef %musb, ptr noundef nonnull %add.ptr.i)
  %conv10 = zext i16 %call1 to i32
  %and = and i32 %conv10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.23, i32 noundef %conv) #9
  br label %if.then63

if.else:                                          ; preds = %if.end
  %and15 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else22, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %15 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %controller, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24, i32 noundef %conv) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %17 = load ptr, ptr @musb_writeb, align 4
  tail call void %17(ptr noundef %1, i32 noundef 13, i8 noundef zeroext 0) #9
  %and20 = and i16 %call1, -5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %18 = load ptr, ptr @musb_writew, align 4
  tail call void %18(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %and20) #9
  br label %if.then63

if.else22:                                        ; preds = %if.else
  %and24 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else52, label %if.then26

if.then26:                                        ; preds = %if.else22
  %type = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.not = icmp eq i8 %20, 1
  br i1 %cmp.not, label %if.else49, label %if.then29

if.then29:                                        ; preds = %if.then26
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.26, i32 noundef %conv) #9
  %pipe = getelementptr i8, ptr %11, i32 28
  %21 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %22)
  %cmp32 = icmp ugt i32 %22, -1073741825
  br i1 %cmp32, label %land.lhs.true, label %if.then29.if.end41_crit_edge

if.then29.if.end41_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.then29
  %mux = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %mux to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mux, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp35 = icmp eq i8 %24, 1
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true37:                                  ; preds = %land.lhs.true
  %in_bulk = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 18
  %25 = ptrtoint ptr %in_bulk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %in_bulk, align 4
  %cmp.i.not.i355 = icmp eq ptr %26, %in_bulk
  br i1 %cmp.i.not.i355, label %land.lhs.true37.if.then40_crit_edge, label %list_is_singular.exit

land.lhs.true37.if.then40_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

list_is_singular.exit:                            ; preds = %land.lhs.true37
  %prev.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %26, %28
  br i1 %cmp.i.not, label %list_is_singular.exit.if.end41_crit_edge, label %list_is_singular.exit.if.then40_crit_edge

list_is_singular.exit.if.then40_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

list_is_singular.exit.if.end41_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %list_is_singular.exit.if.then40_crit_edge, %land.lhs.true37.if.then40_crit_edge
  tail call fastcc void @musb_bulk_nak_timeout(ptr noundef %musb, ptr noundef %add.ptr, i32 noundef 1)
  br label %cleanup217

if.end41:                                         ; preds = %list_is_singular.exit.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.then29.if.end41_crit_edge
  %29 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep_select, align 4
  tail call void %30(ptr noundef %5, i8 noundef zeroext %epnum) #9
  %or = and i16 %call1, -78
  %31 = or i16 %or, 69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %32 = load ptr, ptr @musb_writew, align 4
  tail call void %32(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %31) #9
  br label %cleanup217

if.else49:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.27, i32 noundef %conv) #9
  br label %if.end73

if.else52:                                        ; preds = %if.else22
  %and54 = and i32 %conv10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else52.if.end73_crit_edge, label %if.then56

if.else52.if.end73_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then56:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.28, i32 noundef %conv) #9
  br label %if.then63

if.then63:                                        ; preds = %if.then56, %do.end, %if.then12
  %status.0.ph = phi i32 [ -71, %if.then56 ], [ -108, %do.end ], [ -32, %if.then12 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %33 = load ptr, ptr @musb_writew, align 4
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  tail call void %33(ptr noundef %35, i32 noundef 6, i16 noundef zeroext 145) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %36 = load ptr, ptr @musb_writew, align 4
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  tail call void %36(ptr noundef %38, i32 noundef 6, i16 noundef zeroext 145) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %39 = load ptr, ptr @musb_readw, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %call.i = tail call zeroext i16 %39(ptr noundef %41, i32 noundef 6) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %42 = load ptr, ptr @musb_writeb, align 4
  tail call void %42(ptr noundef %1, i32 noundef 13, i8 noundef zeroext 0) #9
  br label %if.then203

if.end73:                                         ; preds = %if.else52.if.end73_crit_edge, %if.else49
  %43 = xor i1 %tobool25.not, true
  %and95 = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end73.if.else131_crit_edge, label %if.then97

if.end73.if.else131_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else131

if.then97:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %conv10, i32 noundef 0, ptr noundef nonnull @.str.12) #9
  %and112 = and i16 %call1, -33
  %44 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep_select, align 4
  tail call void %45(ptr noundef %5, i8 noundef zeroext %epnum) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %46 = load ptr, ptr @musb_writew, align 4
  %47 = or i16 %and112, 77
  tail call void %46(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %47) #9
  br label %if.else131

if.else131:                                       ; preds = %if.then97, %if.end73.if.else131_crit_edge
  %rx_csr.1 = phi i16 [ %and112, %if.then97 ], [ %call1, %if.end73.if.else131_crit_edge ]
  %status132 = getelementptr i8, ptr %11, i32 36
  %48 = ptrtoint ptr %status132 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %49)
  %cmp133 = icmp eq i32 %49, -115
  br i1 %cmp133, label %if.then135, label %if.else131.cleanup217_crit_edge

if.else131.cleanup217_crit_edge:                  ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup217

if.then135:                                       ; preds = %if.else131
  %50 = and i16 %rx_csr.1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool138.not = icmp eq i16 %50, 0
  br i1 %tobool138.not, label %if.then147, label %if.then163, !prof !199

if.then147:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.25, i32 noundef 1895) #12
  %51 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ep_select, align 4
  tail call void %52(ptr noundef %5, i8 noundef zeroext %epnum) #9
  %and159 = and i16 %call1, -33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %53 = load ptr, ptr @musb_writew, align 4
  tail call void %53(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %and159) #9
  br label %cleanup217

if.then163:                                       ; preds = %if.then135
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %54 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hcd, align 4
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %55, ptr noundef nonnull %add.ptr.i) #9
  %transfer_buffer = getelementptr i8, ptr %11, i32 44
  %56 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %transfer_buffer, align 4
  %tobool164.not = icmp eq ptr %57, null
  br i1 %tobool164.not, label %if.then165, label %if.then163.if.end166_crit_edge

if.then163.if.end166_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.then165:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  %use_sg = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 20
  %58 = ptrtoint ptr %use_sg to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %use_sg, align 4
  %sg_miter = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19
  %sg = getelementptr i8, ptr %11, i32 52
  %59 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg, align 4
  tail call void @sg_miter_start(ptr noundef %sg_miter, ptr noundef %60, i32 noundef 1, i32 noundef 3) #9
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.then163.if.end166_crit_edge
  %use_sg167 = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 20
  %61 = ptrtoint ptr %use_sg167 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_sg167, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool168.not = icmp eq i8 %62, 0
  br i1 %tobool168.not, label %finish, label %if.then169

if.then169:                                       ; preds = %if.end166
  %sg_miter170 = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19
  %call171 = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter170) #9
  br i1 %call171, label %if.end178, label %do.end175

do.end175:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  %controller176 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %63 = ptrtoint ptr %controller176 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %controller176, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.18) #12
  tail call void @sg_miter_stop(ptr noundef %sg_miter170) #9
  br label %if.then203

if.end178:                                        ; preds = %if.then169
  %addr = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19, i32 1
  %65 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %addr, align 4
  %67 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %transfer_buffer, align 4
  %actual_length = getelementptr i8, ptr %11, i32 68
  %68 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %actual_length, align 4
  %offset = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 5
  %70 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %offset, align 4
  %conv182 = zext i1 %43 to i8
  %call183 = tail call fastcc zeroext i1 @musb_host_packet_rx(ptr noundef %musb, ptr noundef nonnull %add.ptr.i, i8 noundef zeroext %epnum, i8 noundef zeroext %conv182)
  %71 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %actual_length, align 4
  %sub = sub i32 %72, %69
  %consumed = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 19, i32 3
  %73 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub, ptr %consumed, align 4
  tail call void @sg_miter_stop(ptr noundef %sg_miter170) #9
  %cond195384 = select i1 %call183, ptr @.str.39, ptr @.str.12
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond195384) #9
  br i1 %call183, label %if.end178.if.then203_crit_edge, label %if.end178.cleanup217_crit_edge

if.end178.cleanup217_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup217

if.end178.if.then203_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

finish:                                           ; preds = %if.end166
  %conv189 = zext i1 %43 to i8
  %call190 = tail call fastcc zeroext i1 @musb_host_packet_rx(ptr noundef %musb, ptr noundef nonnull %add.ptr.i, i8 noundef zeroext %epnum, i8 noundef zeroext %conv189)
  %cond195 = select i1 %call190, ptr @.str.39, ptr @.str.12
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond195) #9
  br i1 %call190, label %finish.if.then203_crit_edge, label %finish.cleanup217_crit_edge

finish.cleanup217_crit_edge:                      ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup217

finish.if.then203_crit_edge:                      ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

if.then203:                                       ; preds = %finish.if.then203_crit_edge, %if.end178.if.then203_crit_edge, %do.end175, %if.then63
  %status.2383 = phi i32 [ 0, %finish.if.then203_crit_edge ], [ 0, %if.end178.if.then203_crit_edge ], [ -22, %do.end175 ], [ %status.0.ph, %if.then63 ]
  %use_sg204 = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 20
  %74 = ptrtoint ptr %use_sg204 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %use_sg204, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool205.not = icmp eq i8 %75, 0
  br i1 %tobool205.not, label %if.then203.if.end209_crit_edge, label %if.then206

if.then203.if.end209_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then206:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %use_sg204 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %use_sg204, align 4
  %transfer_buffer208 = getelementptr i8, ptr %11, i32 44
  %77 = ptrtoint ptr %transfer_buffer208 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %transfer_buffer208, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then206, %if.then203.if.end209_crit_edge
  %status210 = getelementptr i8, ptr %11, i32 36
  %78 = ptrtoint ptr %status210 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %79)
  %cmp211 = icmp eq i32 %79, -115
  br i1 %cmp211, label %if.then213, label %if.end209.if.end215_crit_edge

if.end209.if.end215_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215

if.then213:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %status210 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %status.2383, ptr %status210, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %if.end209.if.end215_crit_edge
  tail call fastcc void @musb_advance_schedule(ptr noundef %musb, ptr noundef nonnull %add.ptr.i, ptr noundef %add.ptr, i32 noundef 128)
  br label %cleanup217

cleanup217:                                       ; preds = %if.end215, %finish.cleanup217_crit_edge, %if.end178.cleanup217_crit_edge, %if.then147, %if.else131.cleanup217_crit_edge, %if.end41, %if.then40, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_h_flush_rxfifo(ptr nocapture noundef readonly %hw_ep, i16 noundef zeroext %csr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %csr, 16334
  %1 = or i16 %0, 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %2 = load ptr, ptr @musb_writew, align 4
  %regs = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  tail call void %2(ptr noundef %4, i32 noundef 6, i16 noundef zeroext %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %5 = load ptr, ptr @musb_writew, align 4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void %5(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %8 = load ptr, ptr @musb_readw, align 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %call = tail call zeroext i16 %8(ptr noundef %10, i32 noundef 6) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_urb_rx(ptr noundef %musb, ptr noundef %urb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_rx, i32 0, i32 1), ptr blockaddress(@trace_musb_urb_rx, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  %call42 = tail call i32 @__traceiter_musb_urb_rx(ptr noundef null, ptr noundef %musb, ptr noundef %urb) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !202

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_urb_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_musb_urb_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 219, ptr noundef nonnull @.str.50) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @musb_host_packet_rx(ptr noundef %musb, ptr nocapture noundef %urb, i8 noundef zeroext %epnum, i8 noundef zeroext %iso_err) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %conv = zext i8 %epnum to i32
  %add.ptr = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv
  %regs = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %in_qh = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv, i32 15
  %2 = ptrtoint ptr %in_qh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_qh, align 4
  %pipe1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %4 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe1, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %8 = load ptr, ptr @musb_readw, align 4
  %call = tail call zeroext i16 %8(ptr noundef %1, i32 noundef 8) #9
  %conv3 = zext i16 %call to i32
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  %offset = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_buffer_length, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %conv3, ptr noundef %10, i32 noundef %12, i32 noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %5)
  %cmp = icmp ult i32 %5, 1073741824
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iso_err)
  %tobool.not = icmp eq i8 %iso_err, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %15 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error_count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %error_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ -84, %if.then6 ], [ 0, %if.then.if.end_crit_edge ]
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  %iso_idx = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 18
  %17 = ptrtoint ptr %iso_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iso_idx, align 4
  %add.ptr8 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %18
  %19 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr8, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 %20
  %length11 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %18, i32 1
  %21 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv3)
  %cmp13 = icmp ult i32 %22, %conv3
  br i1 %cmp13, label %if.then15, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then15:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.then18, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %error_count19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %23 = ptrtoint ptr %error_count19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error_count19, align 4
  %inc20 = add i32 %24, 1
  store i32 %inc20, ptr %error_count19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then15.if.end21_crit_edge
  %status.1 = phi i32 [ -75, %if.then18 ], [ %status.0, %if.then15.if.end21_crit_edge ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.71, i32 noundef %conv3, i32 noundef %22) #9
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end.if.end24_crit_edge
  %length.0 = phi i32 [ %22, %if.end21 ], [ %conv3, %if.end.if.end24_crit_edge ]
  %do_flush.0 = phi i32 [ 1, %if.end21 ], [ 0, %if.end.if.end24_crit_edge ]
  %status.2 = phi i32 [ %status.1, %if.end21 ], [ %status.0, %if.end.if.end24_crit_edge ]
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length, align 4
  %add = add i32 %26, %length.0
  store i32 %add, ptr %actual_length, align 4
  %actual_length25 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %18, i32 2
  %27 = ptrtoint ptr %actual_length25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %length.0, ptr %actual_length25, align 4
  %status26 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %18, i32 3
  %28 = ptrtoint ptr %status26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %status.2, ptr %status26, align 4
  %29 = ptrtoint ptr %iso_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iso_idx, align 4
  %inc28 = add i32 %30, 1
  store i32 %inc28, ptr %iso_idx, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %31 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc28, i32 %32)
  %cmp29 = icmp uge i32 %inc28, %32
  br label %if.end82

if.else31:                                        ; preds = %entry
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset, align 4
  %add.ptr33 = getelementptr i8, ptr %7, i32 %34
  %35 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %transfer_buffer_length, align 4
  %sub = sub i32 %36, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv3)
  %cmp37 = icmp ult i32 %sub, %conv3
  br i1 %cmp37, label %if.then39, label %if.else31.if.end49_crit_edge

if.else31.if.end49_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then39:                                        ; preds = %if.else31
  %status40 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %37 = ptrtoint ptr %status40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %38)
  %cmp41 = icmp eq i32 %38, -115
  br i1 %cmp41, label %if.then43, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %status40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -75, ptr %status40, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then39.if.end45_crit_edge
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.71, i32 noundef %conv3, i32 noundef %sub) #9
  br label %if.end49

if.end49:                                         ; preds = %if.end45, %if.else31.if.end49_crit_edge
  %length.1 = phi i32 [ %sub, %if.end45 ], [ %conv3, %if.else31.if.end49_crit_edge ]
  %do_flush.1 = phi i32 [ 1, %if.end45 ], [ 0, %if.else31.if.end49_crit_edge ]
  %actual_length50 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %40 = ptrtoint ptr %actual_length50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual_length50, align 4
  %add51 = add i32 %41, %length.1
  store i32 %add51, ptr %actual_length50, align 4
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %add53 = add i32 %43, %length.1
  store i32 %add53, ptr %offset, align 4
  %44 = load i32, ptr %actual_length50, align 4
  %45 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp56 = icmp eq i32 %44, %46
  br i1 %cmp56, label %if.end49.land.lhs.true_crit_edge, label %lor.lhs.false

if.end49.land.lhs.true_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end49
  %maxpacket = getelementptr inbounds %struct.musb_qh, ptr %3, i32 0, i32 16
  %47 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %maxpacket, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call, i16 %48)
  %cmp60 = icmp ult i16 %call, %48
  br i1 %cmp60, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.end:                                          ; preds = %lor.lhs.false
  %status62 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %49 = ptrtoint ptr %status62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %50)
  %cmp63.not = icmp eq i32 %50, -115
  br i1 %cmp63.not, label %lor.end.if.end82_crit_edge, label %lor.end.land.lhs.true_crit_edge

lor.end.land.lhs.true_crit_edge:                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.end.if.end82_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

land.lhs.true:                                    ; preds = %lor.end.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge, %if.end49.land.lhs.true_crit_edge
  %status68 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %51 = ptrtoint ptr %status68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %52)
  %cmp69 = icmp eq i32 %52, -115
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

land.lhs.true71:                                  ; preds = %land.lhs.true
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %53 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_flags, align 4
  %and72 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp ne i32 %and72, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp77 = icmp ult i32 %44, %46
  %or.cond = select i1 %tobool73.not, i1 %cmp77, i1 false
  br i1 %or.cond, label %if.then79, label %land.lhs.true71.if.end82_crit_edge

land.lhs.true71.if.end82_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then79:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %status68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -121, ptr %status68, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %land.lhs.true71.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %lor.end.if.end82_crit_edge, %if.end24
  %buf.0 = phi ptr [ %add.ptr10, %if.end24 ], [ %add.ptr33, %if.then79 ], [ %add.ptr33, %land.lhs.true71.if.end82_crit_edge ], [ %add.ptr33, %land.lhs.true.if.end82_crit_edge ], [ %add.ptr33, %lor.end.if.end82_crit_edge ]
  %done.0.in = phi i1 [ %cmp29, %if.end24 ], [ true, %if.then79 ], [ true, %land.lhs.true71.if.end82_crit_edge ], [ true, %land.lhs.true.if.end82_crit_edge ], [ false, %lor.end.if.end82_crit_edge ]
  %length.2 = phi i32 [ %length.0, %if.end24 ], [ %length.1, %if.then79 ], [ %length.1, %land.lhs.true71.if.end82_crit_edge ], [ %length.1, %land.lhs.true.if.end82_crit_edge ], [ %length.1, %lor.end.if.end82_crit_edge ]
  %do_flush.2 = phi i32 [ %do_flush.0, %if.end24 ], [ %do_flush.1, %if.then79 ], [ %do_flush.1, %land.lhs.true71.if.end82_crit_edge ], [ %do_flush.1, %land.lhs.true.if.end82_crit_edge ], [ %do_flush.1, %lor.end.if.end82_crit_edge ]
  %conv83 = trunc i32 %length.2 to i16
  tail call void @musb_read_fifo(ptr noundef %add.ptr, i16 noundef zeroext %conv83, ptr noundef %buf.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %56 = load ptr, ptr @musb_readw, align 4
  %call84 = tail call zeroext i16 %56(ptr noundef %1, i32 noundef 6) #9
  %57 = or i16 %call84, 77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_flush.2)
  %tobool87.not = icmp eq i32 %do_flush.2, 0
  br i1 %tobool87.not, label %if.else92, label %if.then90, !prof !202

if.then90:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_h_flush_rxfifo(ptr noundef %add.ptr, i16 noundef zeroext %57)
  br label %if.end102

if.else92:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %58 = and i16 %57, -34
  %59 = or i16 %58, 32
  %spec.select = select i1 %done.0.in, i16 %58, i16 %59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %60 = load ptr, ptr @musb_writew, align 4
  tail call void %60(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %spec.select) #9
  br label %if.end102

if.end102:                                        ; preds = %if.else92, %if.then90
  ret i1 %done.0.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @musb_host_alloc(ptr noundef %musb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @usb_create_hcd(ptr noundef nonnull @musb_hc_driver, ptr noundef %1, ptr noundef %retval.0.i) #9
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %hcd, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %musb to i32
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, ptr %call1, i32 0, i32 30
  %8 = ptrtoint ptr %hcd_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hcd_priv, align 8
  %9 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hcd, align 4
  %uses_pio_for_control = getelementptr inbounds %struct.usb_bus, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %uses_pio_for_control to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %uses_pio_for_control, align 8
  %12 = load ptr, ptr %hcd, align 4
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  %14 = load ptr, ptr %hcd, align 4
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load7 = load i16, ptr %has_tt, align 4
  %bf.set9 = or i16 %bf.load7, 256
  store i16 %bf.set9, ptr %has_tt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_host_cleanup(ptr nocapture noundef readonly %musb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %0 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 4
  tail call void @usb_remove_hcd(ptr noundef %3) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_host_free(ptr nocapture noundef readonly %musb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  tail call void @usb_put_hcd(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @musb_host_setup(ptr nocapture noundef %musb, i32 noundef %power_budget) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd1 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %0 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd1, align 4
  %port_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %2 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %4 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_host, align 4
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %5 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xceiv2 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %10 = ptrtoint ptr %xceiv2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xceiv2, align 8
  %otg3 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %otg3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otg3, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.otg_set_host.exit_crit_edge, label %land.lhs.true.i

if.end.otg_set_host.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %otg_set_host.exit

land.lhs.true.i:                                  ; preds = %if.end
  %set_host.i = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %set_host.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_host.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.otg_set_host.exit_crit_edge, label %if.then.i

land.lhs.true.i.otg_set_host.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %otg_set_host.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %15(ptr noundef nonnull %13, ptr noundef %1) #9
  br label %otg_set_host.exit

otg_set_host.exit:                                ; preds = %if.then.i, %land.lhs.true.i.otg_set_host.exit_crit_edge, %if.end.otg_set_host.exit_crit_edge
  %otg_port = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %otg_port to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %otg_port, align 1
  %17 = ptrtoint ptr %xceiv2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xceiv2, align 8
  %otg7 = getelementptr inbounds %struct.usb_phy, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %otg7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %otg7, align 4
  %host = getelementptr inbounds %struct.usb_otg, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %host, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_budget)
  %tobool.not = icmp eq i32 %power_budget, 0
  %power_budget.op = shl i32 %power_budget, 1
  %mul = select i1 %tobool.not, i32 500, i32 %power_budget.op
  %power_budget8 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %power_budget8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %power_budget8, align 8
  %skip_phy_initialization = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %skip_phy_initialization to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %skip_phy_initialization, align 4
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %skip_phy_initialization, align 4
  %call9 = tail call i32 @usb_add_hcd(ptr noundef %1, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %otg_set_host.exit.cleanup_crit_edge, label %if.end12

otg_set_host.exit.cleanup_crit_edge:              ; preds = %otg_set_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %otg_set_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %call14 = tail call i32 @device_wakeup_enable(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %otg_set_host.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call9, %otg_set_host.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_host_resume_root_hub(ptr nocapture noundef readonly %musb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  tail call void @usb_hcd_resume_root_hub(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_host_poke_root_hub(ptr nocapture noundef %musb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %0 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_host, align 4
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %1 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hcd, align 4
  %status_urb = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %status_urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %status_urb, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_hcd_poll_rh_status(ptr noundef %2) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_hcd_resume_root_hub(ptr noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_read_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_start_urb(ptr noundef %musb, i32 noundef %is_in, ptr noundef %qh) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %qh, null
  br i1 %tobool.not.i, label %entry.next_urb.exit_crit_edge, label %if.end.i

entry.next_urb.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qh, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %urb_list.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -20
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  br label %next_urb.exit

next_urb.exit:                                    ; preds = %if.end.i, %entry.next_urb.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.next_urb.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %hw_ep1 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 2
  %6 = ptrtoint ptr %hw_ep1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ep1, align 4
  %epnum2 = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %epnum2, align 4
  %conv = zext i8 %9 to i32
  %offset3 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 5
  %10 = ptrtoint ptr %offset3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %offset3, align 4
  %segsize = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 6
  %11 = ptrtoint ptr %segsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %segsize, align 4
  %type = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 13
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %13, label %sw.default [
    i8 0, label %sw.epilog.thread
    i8 1, label %sw.bb5
  ]

sw.epilog.thread:                                 ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_stage = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 15
  %15 = ptrtoint ptr %ep0_stage to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ep0_stage, align 8
  %setup_packet = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 21
  %16 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup_packet, align 4
  tail call fastcc void @trace_musb_urb_start(ptr noundef %musb, ptr noundef %retval.0.i)
  br label %lor.lhs.false.i

sw.bb5:                                           ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %iso_idx = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 18
  %18 = ptrtoint ptr %iso_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %iso_idx, align 4
  %frame = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 17
  %19 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %frame, align 4
  %length = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 1, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 20
  %24 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_length, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %25
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_buffer_length, align 4
  %sub = sub i32 %27, %25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5
  %len.0 = phi i32 [ %sub, %sw.default ], [ %21, %sw.bb5 ]
  %buf.0 = phi ptr [ %add.ptr, %sw.default ], [ %5, %sw.bb5 ]
  tail call fastcc void @trace_musb_urb_start(ptr noundef %musb, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %cmp.not.i = icmp eq i32 %is_in, 0
  br i1 %cmp.not.i, label %sw.epilog.lor.lhs.false.i_crit_edge, label %lor.lhs.false2.i

sw.epilog.lor.lhs.false.i_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.lor.lhs.false.i_crit_edge, %sw.epilog.thread
  %buf.078 = phi ptr [ %17, %sw.epilog.thread ], [ %buf.0, %sw.epilog.lor.lhs.false.i_crit_edge ]
  %len.075 = phi i32 [ 8, %sw.epilog.thread ], [ %len.0, %sw.epilog.lor.lhs.false.i_crit_edge ]
  %is_shared_fifo.i = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 5
  %28 = ptrtoint ptr %is_shared_fifo.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_shared_fifo.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i60 = icmp eq i8 %29, 0
  br i1 %tobool.not.i60, label %lor.lhs.false.i.if.then5.i_crit_edge, label %if.end.thread12.i

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.end.thread12.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %in_qh13.i = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 15
  %30 = ptrtoint ptr %in_qh13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %qh, ptr %in_qh13.i, align 4
  br label %if.then5.i

lor.lhs.false2.i:                                 ; preds = %sw.epilog
  %in_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 15
  %31 = ptrtoint ptr %in_qh.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %qh, ptr %in_qh.i, align 4
  %is_shared_fifo3.i = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 5
  %32 = ptrtoint ptr %is_shared_fifo3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_shared_fifo3.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool4.not.i = icmp eq i8 %33, 0
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge, label %lor.lhs.false2.i.if.then5.i_crit_edge

lor.lhs.false2.i.if.then5.i_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge:   ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %musb_ep_set_qh.exit

if.then5.i:                                       ; preds = %lor.lhs.false2.i.if.then5.i_crit_edge, %if.end.thread12.i, %lor.lhs.false.i.if.then5.i_crit_edge
  %cmp.not.i80 = phi i1 [ false, %lor.lhs.false2.i.if.then5.i_crit_edge ], [ true, %if.end.thread12.i ], [ true, %lor.lhs.false.i.if.then5.i_crit_edge ]
  %buf.077 = phi ptr [ %buf.0, %lor.lhs.false2.i.if.then5.i_crit_edge ], [ %buf.078, %if.end.thread12.i ], [ %buf.078, %lor.lhs.false.i.if.then5.i_crit_edge ]
  %len.074 = phi i32 [ %len.0, %lor.lhs.false2.i.if.then5.i_crit_edge ], [ %len.075, %if.end.thread12.i ], [ %len.075, %lor.lhs.false.i.if.then5.i_crit_edge ]
  %out_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 16
  %34 = ptrtoint ptr %out_qh.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %qh, ptr %out_qh.i, align 4
  br label %musb_ep_set_qh.exit

musb_ep_set_qh.exit:                              ; preds = %if.then5.i, %lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge
  %cmp.not.i79 = phi i1 [ false, %lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge ], [ %cmp.not.i80, %if.then5.i ]
  %buf.076 = phi ptr [ %buf.0, %lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge ], [ %buf.077, %if.then5.i ]
  %len.073 = phi i32 [ %len.0, %lor.lhs.false2.i.musb_ep_set_qh.exit_crit_edge ], [ %len.074, %if.then5.i ]
  %mregs.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %35 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mregs.i, align 8
  %endpoints.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %add.ptr.i61 = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv
  %regs.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 2
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %in_qh.i.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 15
  %out_qh.i.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 16
  %cond.i.i.sink.in = select i1 %cmp.not.i79, ptr %out_qh.i.i, ptr %in_qh.i.i
  %39 = select i1 %cmp.not.i79, ptr @.str.57, ptr @.str.58
  %40 = select i1 %cmp.not.i79, ptr @.str.59, ptr @.str.60
  %41 = ptrtoint ptr %cond.i.i.sink.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond.i.i.sink = load ptr, ptr %cond.i.i.sink.in, align 4
  %maxpacket.i8899 = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 16
  %addr_reg.i.sink = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 9
  %42 = ptrtoint ptr %maxpacket.i8899 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %maxpacket.i8899, align 2
  %.pn.in = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 8
  %44 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn = load ptr, ptr %.pn.in, align 4
  %.in = getelementptr inbounds %struct.usb_device, ptr %.pn, i32 0, i32 4
  %45 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %.in, align 4
  %47 = ptrtoint ptr %addr_reg.i.sink to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %addr_reg.i.sink, align 2
  %conv3.i = zext i8 %48 to i32
  %epnum4.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 14
  %49 = ptrtoint ptr %epnum4.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %epnum4.i, align 1
  %conv5.i = zext i8 %50 to i32
  %h_addr_reg.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 10
  %51 = ptrtoint ptr %h_addr_reg.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %h_addr_reg.i, align 1
  %conv8.i = zext i8 %52 to i32
  %h_port_reg.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 11
  %53 = ptrtoint ptr %h_port_reg.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %h_port_reg.i, align 4
  %conv9.i = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.56, ptr noundef nonnull %39, i32 noundef %conv, ptr noundef %retval.0.i, i32 noundef %46, i32 noundef %conv3.i, i32 noundef %conv5.i, ptr noundef nonnull %40, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %len.073) #9
  %ep_select.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %ep_select.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ep_select.i, align 4
  tail call void %56(ptr noundef %36, i8 noundef zeroext %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.073)
  %tobool11.not.i = icmp eq i32 %len.073, 0
  %57 = and i1 %cmp.not.i79, %tobool11.not.i
  br i1 %57, label %if.then.i, label %musb_ep_set_qh.exit.if.end.i63_crit_edge

musb_ep_set_qh.exit.if.end.i63_crit_edge:         ; preds = %musb_ep_set_qh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i63

if.then.i:                                        ; preds = %musb_ep_set_qh.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %58 = load ptr, ptr @musb_readw, align 4
  %call12.i = tail call zeroext i16 %58(ptr noundef %38, i32 noundef 2) #9
  %59 = and i16 %call12.i, -4097
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %60 = load ptr, ptr @musb_writew, align 4
  tail call void %60(ptr noundef %38, i32 noundef 2, i16 noundef zeroext %59) #9
  %tx_channel.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 10
  %61 = ptrtoint ptr %tx_channel.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %tx_channel.i, align 4
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.then.i, %musb_ep_set_qh.exit.if.end.i63_crit_edge
  br i1 %cmp.not.i79, label %if.then41.i, label %if.else193.i

if.then41.i:                                      ; preds = %if.end.i63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %62 = load ptr, ptr @musb_readw, align 4
  %call43.i = tail call zeroext i16 %62(ptr noundef %38, i32 noundef 2) #9
  %intrtxe.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 12
  %63 = ptrtoint ptr %intrtxe.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %intrtxe.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %65 = load ptr, ptr @musb_writew, align 4
  %shl.i = shl nuw i32 1, %conv
  %66 = trunc i32 %shl.i to i16
  %67 = xor i16 %66, -1
  %conv47.i = and i16 %64, %67
  tail call void %65(ptr noundef %36, i32 noundef 6, i16 noundef zeroext %conv47.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool48.not.i = icmp eq i8 %9, 0
  br i1 %tobool48.not.i, label %if.else72.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.then41.i
  %tx_double_buffered.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 6
  %68 = ptrtoint ptr %tx_double_buffered.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tx_double_buffered.i, align 2, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool50.not.i = icmp eq i8 %69, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end52.thread.i

if.end52.thread.i:                                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = and i16 %call43.i, 18266
  %71 = or i16 %70, 8192
  br label %if.end67.i

if.end52.i:                                       ; preds = %if.then49.i
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %add.ptr.i61) #9
  %72 = ptrtoint ptr %tx_double_buffered.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %.pr.i = load i8, ptr %tx_double_buffered.i, align 2
  %73 = and i16 %call43.i, 18266
  %74 = or i16 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool59.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %if.end52.i.if.end67.i_crit_edge

if.end52.i.if.end67.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then60.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %set_toggle.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 7
  %75 = ptrtoint ptr %set_toggle.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %set_toggle.i, align 4
  %call62.i = tail call zeroext i16 %76(ptr noundef %cond.i.i.sink, i32 noundef 1, ptr noundef %retval.0.i) #9
  %or651.i = or i16 %call62.i, %74
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then60.i, %if.end52.i.if.end67.i_crit_edge, %if.end52.thread.i
  %csr42.0.i = phi i16 [ %74, %if.end52.i.if.end67.i_crit_edge ], [ %or651.i, %if.then60.i ], [ %71, %if.end52.thread.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %77 = load ptr, ptr @musb_writew, align 4
  tail call void %77(ptr noundef %38, i32 noundef 2, i16 noundef zeroext %csr42.0.i) #9
  %78 = and i16 %csr42.0.i, -1025
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %79 = load ptr, ptr @musb_writew, align 4
  tail call void %79(ptr noundef %38, i32 noundef 2, i16 noundef zeroext %78) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %80 = load ptr, ptr @musb_readw, align 4
  %call71.i = tail call zeroext i16 %80(ptr noundef %38, i32 noundef 2) #9
  br label %if.end73.i

if.else72.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %add.ptr.i61) #9
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else72.i, %if.end67.i
  %is_multipoint.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %81 = ptrtoint ptr %is_multipoint.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 3)
  %bf.load.i = load i24, ptr %is_multipoint.i, align 8
  %82 = and i24 %bf.load.i, 1048576
  %tobool74.not.i = icmp eq i24 %82, 0
  br i1 %tobool74.not.i, label %if.else79.i, label %if.then75.i

if.then75.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %addr_reg.i.sink to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %addr_reg.i.sink, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %85 = load ptr, ptr @musb_writeb, align 4
  %86 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mregs.i, align 8
  %busctl_offset.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 5
  %88 = ptrtoint ptr %busctl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %busctl_offset.i.i, align 4
  %call.i.i = tail call i32 %89(i8 noundef zeroext %9, i16 noundef zeroext 0) #9
  tail call void %85(ptr noundef %87, i32 noundef %call.i.i, i8 noundef zeroext %84) #9
  %90 = ptrtoint ptr %h_addr_reg.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %h_addr_reg.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %92 = load ptr, ptr @musb_writeb, align 4
  %93 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mregs.i, align 8
  %95 = ptrtoint ptr %busctl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %busctl_offset.i.i, align 4
  %call.i4.i = tail call i32 %96(i8 noundef zeroext %9, i16 noundef zeroext 2) #9
  tail call void %92(ptr noundef %94, i32 noundef %call.i4.i, i8 noundef zeroext %91) #9
  %97 = ptrtoint ptr %h_port_reg.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %h_port_reg.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %99 = load ptr, ptr @musb_writeb, align 4
  %100 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mregs.i, align 8
  %102 = ptrtoint ptr %busctl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %busctl_offset.i.i, align 4
  %call.i7.i = tail call i32 %103(i8 noundef zeroext %9, i16 noundef zeroext 3) #9
  tail call void %99(ptr noundef %101, i32 noundef %call.i7.i, i8 noundef zeroext %98) #9
  br label %if.end81.i

if.else79.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %104 = load ptr, ptr @musb_writeb, align 4
  %105 = ptrtoint ptr %addr_reg.i.sink to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %addr_reg.i.sink, align 2
  tail call void %104(ptr noundef %36, i32 noundef 0, i8 noundef zeroext %106) #9
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else79.i, %if.then75.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %107 = load ptr, ptr @musb_writeb, align 4
  br i1 %tobool48.not.i, label %if.else112.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end81.i
  %type_reg.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 7
  %108 = ptrtoint ptr %type_reg.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %type_reg.i, align 4
  tail call void %107(ptr noundef %38, i32 noundef 10, i8 noundef zeroext %109) #9
  %type.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 13
  %110 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp.i = icmp eq i8 %111, 2
  br i1 %cmp.i, label %land.lhs.true86.i, label %if.then83.i.if.else102.i_crit_edge

if.then83.i.if.else102.i_crit_edge:               ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102.i

land.lhs.true86.i:                                ; preds = %if.then83.i
  %112 = ptrtoint ptr %is_multipoint.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 3)
  %bf.load87.i = load i24, ptr %is_multipoint.i, align 8
  %113 = and i24 %bf.load87.i, 65536
  %tobool91.not.i = icmp eq i24 %113, 0
  br i1 %tobool91.not.i, label %land.lhs.true86.i.if.else102.i_crit_edge, label %if.then92.i

land.lhs.true86.i.if.else102.i_crit_edge:         ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102.i

if.then92.i:                                      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_packet_sz_tx.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 8
  %114 = ptrtoint ptr %max_packet_sz_tx.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %max_packet_sz_tx.i, align 4
  %116 = udiv i16 %115, %43
  %conv95.i = trunc i16 %116 to i8
  %hb_mult.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 15
  %117 = ptrtoint ptr %hb_mult.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv95.i, ptr %hb_mult.i, align 4
  br label %if.end111.i

if.else102.i:                                     ; preds = %land.lhs.true86.i.if.else102.i_crit_edge, %if.then83.i.if.else102.i_crit_edge
  %118 = ptrtoint ptr %maxpacket.i8899 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %maxpacket.i8899, align 2
  %hb_mult105.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 15
  %120 = ptrtoint ptr %hb_mult105.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %hb_mult105.i, align 4
  %conv106.i = zext i8 %121 to i16
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else102.i, %if.then92.i
  %conv106.sink.i = phi i16 [ %conv106.i, %if.else102.i ], [ %116, %if.then92.i ]
  %.sink12.i = phi i16 [ %119, %if.else102.i ], [ %43, %if.then92.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %.sink.i = load ptr, ptr @musb_writew, align 4
  %sub107.i = shl i16 %conv106.sink.i, 11
  %shl108.i = add i16 %sub107.i, -2048
  %or109.i = or i16 %shl108.i, %.sink12.i
  tail call void %.sink.i(ptr noundef %38, i32 noundef 0, i16 noundef zeroext %or109.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %122 = load ptr, ptr @musb_writeb, align 4
  %intv_reg.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 8
  %123 = ptrtoint ptr %intv_reg.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %intv_reg.i, align 1
  tail call void %122(ptr noundef %38, i32 noundef 11, i8 noundef zeroext %124) #9
  br label %if.end123.i

if.else112.i:                                     ; preds = %if.end81.i
  %intv_reg113.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 8
  %125 = ptrtoint ptr %intv_reg113.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %intv_reg113.i, align 1
  tail call void %107(ptr noundef %38, i32 noundef 11, i8 noundef zeroext %126) #9
  %127 = ptrtoint ptr %is_multipoint.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 3)
  %bf.load115.i = load i24, ptr %is_multipoint.i, align 8
  %128 = and i24 %bf.load115.i, 1048576
  %tobool119.not.i = icmp eq i24 %128, 0
  br i1 %tobool119.not.i, label %if.else112.i.if.end123.i_crit_edge, label %if.then120.i

if.else112.i.if.end123.i_crit_edge:               ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i

if.then120.i:                                     ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %129 = load ptr, ptr @musb_writeb, align 4
  %type_reg121.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 7
  %130 = ptrtoint ptr %type_reg121.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %type_reg121.i, align 4
  tail call void %129(ptr noundef %38, i32 noundef 10, i8 noundef zeroext %131) #9
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then120.i, %if.else112.i.if.end123.i_crit_edge, %if.end111.i
  %type124.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 13
  %132 = ptrtoint ptr %type124.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %type124.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %133)
  %cmp126.i = icmp eq i8 %133, 2
  br i1 %cmp126.i, label %land.lhs.true128.i, label %if.end123.i.if.end155.i_crit_edge

if.end123.i.if.end155.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155.i

land.lhs.true128.i:                               ; preds = %if.end123.i
  %134 = ptrtoint ptr %is_multipoint.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 3)
  %bf.load130.i = load i24, ptr %is_multipoint.i, align 8
  %135 = and i24 %bf.load130.i, 65536
  %tobool134.not.i = icmp eq i24 %135, 0
  br i1 %tobool134.not.i, label %land.lhs.true128.i.if.end155.i_crit_edge, label %if.then135.i

land.lhs.true128.i.if.end155.i_crit_edge:         ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155.i

if.then135.i:                                     ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_packet_sz_tx136.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 8
  %136 = ptrtoint ptr %max_packet_sz_tx136.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %max_packet_sz_tx136.i, align 4
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.then135.i, %land.lhs.true128.i.if.end155.i_crit_edge, %if.end123.i.if.end155.i_crit_edge
  %.sink13.i = phi i16 [ %137, %if.then135.i ], [ %43, %land.lhs.true128.i.if.end155.i_crit_edge ], [ %43, %if.end123.i.if.end155.i_crit_edge ]
  %conv146.i = zext i16 %.sink13.i to i32
  %138 = tail call i32 @llvm.umin.i32(i32 %conv146.i, i32 %len.073) #9
  %load_count.0.i = trunc i32 %138 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %load_count.0.i)
  %tobool162.not.i = icmp eq i16 %load_count.0.i, 0
  br i1 %tobool162.not.i, label %if.end155.i.if.end_crit_edge, label %if.then163.i

if.end155.i.if.end_crit_edge:                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then163.i:                                     ; preds = %if.end155.i
  %segsize.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 6
  %139 = ptrtoint ptr %segsize.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %segsize.i, align 4
  %tobool165.not.i = icmp eq ptr %buf.076, null
  br i1 %tobool165.not.i, label %if.then166.i, label %if.else190.i

if.then166.i:                                     ; preds = %if.then163.i
  %sg_miter.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 19
  %sg.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 16
  %140 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sg.i, align 4
  tail call void @sg_miter_start(ptr noundef %sg_miter.i, ptr noundef %141, i32 noundef 1, i32 noundef 5) #9
  %call168.i = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter.i) #9
  br i1 %call168.i, label %if.end171.i, label %do.end.i

do.end.i:                                         ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #11
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %142 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %controller.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.61) #12
  tail call void @sg_miter_stop(ptr noundef %sg_miter.i) #9
  br label %if.end

if.end171.i:                                      ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 19, i32 1
  %144 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %addr.i, align 4
  %146 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sg.i, align 4
  %offset174.i = getelementptr inbounds %struct.scatterlist, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %offset174.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offset174.i, align 4
  %add.ptr175.i = getelementptr i8, ptr %145, i32 %149
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 20
  %150 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %actual_length.i, align 4
  %add.ptr176.i = getelementptr i8, ptr %add.ptr175.i, i32 %151
  %length.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 19, i32 2
  %152 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %length.i, align 4
  %154 = tail call i32 @llvm.umin.i32(i32 %138, i32 %153) #9
  %conv186.i = trunc i32 %154 to i16
  tail call void @musb_write_fifo(ptr noundef %add.ptr.i61, i16 noundef zeroext %conv186.i, ptr noundef %add.ptr176.i) #9
  %consumed.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 19, i32 3
  %155 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %consumed.i, align 4
  tail call void @sg_miter_stop(ptr noundef %sg_miter.i) #9
  br label %if.end

if.else190.i:                                     ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @musb_write_fifo(ptr noundef %add.ptr.i61, i16 noundef zeroext %load_count.0.i, ptr noundef nonnull %buf.076) #9
  br label %if.end

if.else193.i:                                     ; preds = %if.end.i63
  %rx_reinit.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 17
  %156 = ptrtoint ptr %rx_reinit.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %rx_reinit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool195.not.i = icmp eq i8 %157, 0
  br i1 %tobool195.not.i, label %if.else213.i, label %if.then196.i

if.then196.i:                                     ; preds = %if.else193.i
  %is_shared_fifo.i.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 5
  %158 = ptrtoint ptr %is_shared_fifo.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %is_shared_fifo.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i8.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i8.i, label %if.then196.i.if.end16.i.i_crit_edge, label %if.then.i.i

if.then196.i.if.end16.i.i_crit_edge:              ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then.i.i:                                      ; preds = %if.then196.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %160 = load ptr, ptr @musb_readw, align 4
  %161 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i, align 4
  %call.i9.i = tail call zeroext i16 %160(ptr noundef %162, i32 noundef 2) #9
  %163 = and i16 %call.i9.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool2.not.i.i = icmp eq i16 %163, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %add.ptr.i61) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %164 = load ptr, ptr @musb_readw, align 4
  %165 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i, align 4
  %call5.i.i = tail call zeroext i16 %164(ptr noundef %166, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %167 = load ptr, ptr @musb_writew, align 4
  %168 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i, align 4
  %170 = or i16 %call5.i.i, 2048
  tail call void %167(ptr noundef %169, i32 noundef 2, i16 noundef zeroext %170) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %csr.0.i.i = phi i16 [ %call5.i.i, %if.then3.i.i ], [ %call.i9.i, %if.then.i.i.if.end.i.i_crit_edge ]
  %171 = and i16 %csr.0.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool11.not.i.i = icmp eq i16 %171, 0
  br i1 %tobool11.not.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %if.then12.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %172 = load ptr, ptr @musb_writew, align 4
  %173 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i, align 4
  tail call void %172(ptr noundef %174, i32 noundef 2, i16 noundef zeroext 1024) #9
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %175 = load ptr, ptr @musb_writew, align 4
  %176 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i, align 4
  tail call void %175(ptr noundef %177, i32 noundef 2, i16 noundef zeroext 0) #9
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end14.i.i, %if.then196.i.if.end16.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %178 = load ptr, ptr @musb_readw, align 4
  %179 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i, align 4
  %call18.i.i = tail call zeroext i16 %178(ptr noundef %180, i32 noundef 6) #9
  %181 = and i16 %call18.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %tobool21.not.i.i = icmp eq i16 %181, 0
  br i1 %tobool21.not.i.i, label %if.end16.i.i.if.end32.i.i_crit_edge, label %do.end.i.i

if.end16.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

do.end.i.i:                                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %epnum24.i.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 4
  %182 = ptrtoint ptr %epnum24.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %epnum24.i.i, align 4
  %conv25.i.i = zext i8 %183 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %184 = load ptr, ptr @musb_readw, align 4
  %185 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i, align 4
  %call27.i.i = tail call zeroext i16 %184(ptr noundef %186, i32 noundef 8) #9
  %conv28.i.i = zext i16 %call27.i.i to i32
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 541, i32 noundef %conv25.i.i, i32 noundef %conv28.i.i) #12
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %do.end.i.i, %if.end16.i.i.if.end32.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %187 = load ptr, ptr @musb_writew, align 4
  %188 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i, align 4
  tail call void %187(ptr noundef %189, i32 noundef 6, i16 noundef zeroext 145) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %190 = load ptr, ptr @musb_writew, align 4
  %191 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regs.i, align 4
  tail call void %190(ptr noundef %192, i32 noundef 6, i16 noundef zeroext 145) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %193 = load ptr, ptr @musb_readw, align 4
  %194 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i, align 4
  %call.i.i.i = tail call zeroext i16 %193(ptr noundef %195, i32 noundef 6) #9
  %is_multipoint.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %196 = ptrtoint ptr %is_multipoint.i.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 3)
  %bf.load.i.i = load i24, ptr %is_multipoint.i.i, align 8
  %197 = and i24 %bf.load.i.i, 1048576
  %tobool34.not.i.i = icmp eq i24 %197, 0
  br i1 %tobool34.not.i.i, label %if.else.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = ptrtoint ptr %addr_reg.i.sink to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %addr_reg.i.sink, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %200 = load ptr, ptr @musb_writeb, align 4
  %201 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mregs.i, align 8
  %busctl_offset.i.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 5
  %203 = ptrtoint ptr %busctl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %busctl_offset.i.i.i, align 4
  %call.i77.i.i = tail call i32 %204(i8 noundef zeroext %9, i16 noundef zeroext 4) #9
  tail call void %200(ptr noundef %202, i32 noundef %call.i77.i.i, i8 noundef zeroext %199) #9
  %205 = ptrtoint ptr %h_addr_reg.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %h_addr_reg.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %207 = load ptr, ptr @musb_writeb, align 4
  %208 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mregs.i, align 8
  %210 = ptrtoint ptr %busctl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %busctl_offset.i.i.i, align 4
  %call.i80.i.i = tail call i32 %211(i8 noundef zeroext %9, i16 noundef zeroext 6) #9
  tail call void %207(ptr noundef %209, i32 noundef %call.i80.i.i, i8 noundef zeroext %206) #9
  %212 = ptrtoint ptr %h_port_reg.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %h_port_reg.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %214 = load ptr, ptr @musb_writeb, align 4
  %215 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mregs.i, align 8
  %217 = ptrtoint ptr %busctl_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %busctl_offset.i.i.i, align 4
  %call.i83.i.i = tail call i32 %218(i8 noundef zeroext %9, i16 noundef zeroext 7) #9
  tail call void %214(ptr noundef %216, i32 noundef %call.i83.i.i, i8 noundef zeroext %213) #9
  br label %musb_rx_reinit.exit.i

if.else.i.i:                                      ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %219 = load ptr, ptr @musb_writeb, align 4
  %220 = ptrtoint ptr %mregs.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mregs.i, align 8
  %222 = ptrtoint ptr %addr_reg.i.sink to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %addr_reg.i.sink, align 2
  tail call void %219(ptr noundef %221, i32 noundef 0, i8 noundef zeroext %223) #9
  br label %musb_rx_reinit.exit.i

musb_rx_reinit.exit.i:                            ; preds = %if.else.i.i, %if.then35.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %224 = load ptr, ptr @musb_writeb, align 4
  %225 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i, align 4
  %type_reg.i.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 7
  %227 = ptrtoint ptr %type_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %type_reg.i.i, align 4
  tail call void %224(ptr noundef %226, i32 noundef 12, i8 noundef zeroext %228) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %229 = load ptr, ptr @musb_writeb, align 4
  %230 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i, align 4
  %intv_reg.i.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 8
  %232 = ptrtoint ptr %intv_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %intv_reg.i.i, align 1
  tail call void %229(ptr noundef %231, i32 noundef 13, i8 noundef zeroext %233) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %234 = load ptr, ptr @musb_writew, align 4
  %235 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs.i, align 4
  %237 = ptrtoint ptr %maxpacket.i8899 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %maxpacket.i8899, align 2
  %hb_mult.i.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 15
  %239 = ptrtoint ptr %hb_mult.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %hb_mult.i.i, align 4
  %conv42.i.i = zext i8 %240 to i16
  %sub.i.i = shl i16 %conv42.i.i, 11
  %shl.i.i = add i16 %sub.i.i, -2048
  %or43.i.i = or i16 %shl.i.i, %238
  tail call void %234(ptr noundef %236, i32 noundef 4, i16 noundef zeroext %or43.i.i) #9
  %241 = ptrtoint ptr %rx_reinit.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %rx_reinit.i, align 4
  %set_toggle198.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 7
  %242 = ptrtoint ptr %set_toggle198.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %set_toggle198.i, align 4
  %call199.i = tail call zeroext i16 %243(ptr noundef %cond.i.i.sink, i32 noundef 0, ptr noundef %retval.0.i) #9
  %type204.i = getelementptr inbounds %struct.musb_qh, ptr %cond.i.i.sink, i32 0, i32 13
  %244 = ptrtoint ptr %type204.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %type204.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %245)
  %cmp206.i = icmp eq i8 %245, 3
  %246 = or i16 %call199.i, 4096
  %spec.select.i64 = select i1 %cmp206.i, i16 %246, i16 %call199.i
  br label %musb_ep_program.exit

if.else213.i:                                     ; preds = %if.else193.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %247 = load ptr, ptr @musb_readw, align 4
  %248 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i, align 4
  %call215.i = tail call zeroext i16 %247(ptr noundef %249, i32 noundef 6) #9
  %conv216.i = zext i16 %call215.i to i32
  %and217.i = and i32 %conv216.i, 8225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i)
  %tobool218.not.i = icmp eq i32 %and217.i, 0
  br i1 %tobool218.not.i, label %if.else213.i.if.end231.i_crit_edge, label %do.end223.i

if.else213.i.if.end231.i_crit_edge:               ; preds = %if.else213.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231.i

do.end223.i:                                      ; preds = %if.else213.i
  call void @__sanitizer_cov_trace_pc() #11
  %epnum225.i = getelementptr %struct.musb_hw_ep, ptr %endpoints.i, i32 %conv, i32 4
  %250 = ptrtoint ptr %epnum225.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %epnum225.i, align 4
  %conv226.i = zext i8 %251 to i32
  %call228.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef 850, i32 noundef %conv226.i, i32 noundef %conv216.i) #12
  br label %if.end231.i

if.end231.i:                                      ; preds = %do.end223.i, %if.else213.i.if.end231.i_crit_edge
  %and233.i = and i16 %call215.i, 4096
  br label %musb_ep_program.exit

musb_ep_program.exit:                             ; preds = %if.end231.i, %musb_rx_reinit.exit.i
  %csr194.0.i = phi i16 [ %and233.i, %if.end231.i ], [ %spec.select.i64, %musb_rx_reinit.exit.i ]
  %252 = or i16 %csr194.0.i, 32
  %conv240.i = zext i16 %252 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv240.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %253 = load ptr, ptr @musb_writew, align 4
  %254 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regs.i, align 4
  tail call void %253(ptr noundef %255, i32 noundef 6, i16 noundef zeroext %252) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %256 = load ptr, ptr @musb_readw, align 4
  %257 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs.i, align 4
  %call243.i = tail call zeroext i16 %256(ptr noundef %258, i32 noundef 6) #9
  br label %cleanup

if.end:                                           ; preds = %if.else190.i, %if.end171.i, %do.end.i, %if.end155.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %259 = load ptr, ptr @musb_writew, align 4
  tail call void %259(ptr noundef %36, i32 noundef 6, i16 noundef zeroext %64) #9
  %260 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %type, align 2
  %262 = zext i8 %261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %261, label %if.end.start_crit_edge [
    i8 1, label %if.end.sw.bb15_crit_edge
    i8 3, label %if.end.sw.bb15_crit_edge110
  ]

if.end.sw.bb15_crit_edge110:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

if.end.start_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %start

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge110
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.52) #9
  %frame16 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 17
  %263 = ptrtoint ptr %frame16 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 0, ptr %frame16, align 4
  br label %start

start:                                            ; preds = %sw.bb15, %if.end.start_crit_edge
  %tx_channel = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 10
  %264 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %tx_channel, align 4
  %tobool18.not = icmp eq ptr %265, null
  %cond = select i1 %tobool18.not, ptr @.str.55, ptr @.str.54
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.53, i32 noundef %conv, ptr noundef nonnull %cond) #9
  %266 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %tx_channel, align 4
  %tobool20.not = icmp eq ptr %267, null
  br i1 %tobool20.not, label %if.then21, label %start.cleanup_crit_edge

start.cleanup_crit_edge:                          ; preds = %start
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %start
  %268 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %epnum2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool.not.i65 = icmp eq i8 %269, 0
  br i1 %tobool.not.i65, label %if.else.i, label %if.then.i67

if.then.i67:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %270 = load ptr, ptr @musb_readw, align 4
  %regs.i66 = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 2
  %271 = ptrtoint ptr %regs.i66 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs.i66, align 4
  %call.i = tail call zeroext i16 %270(ptr noundef %272, i32 noundef 2) #9
  %273 = or i16 %call.i, 167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %274 = load ptr, ptr @musb_writew, align 4
  %275 = ptrtoint ptr %regs.i66 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs.i66, align 4
  tail call void %274(ptr noundef %276, i32 noundef 2, i16 noundef zeroext %273) #9
  br label %cleanup

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %277 = load ptr, ptr @musb_writew, align 4
  %regs3.i = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 2
  %278 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regs3.i, align 4
  tail call void %277(ptr noundef %279, i32 noundef 2, i16 noundef zeroext 10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i67, %start.cleanup_crit_edge, %musb_ep_program.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_urb_gb(ptr noundef %musb, ptr noundef %urb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_gb, i32 0, i32 1), ptr blockaddress(@trace_musb_urb_gb, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !209
  %call42 = tail call i32 @__traceiter_musb_urb_gb(ptr noundef null, ptr noundef %musb, ptr noundef %urb) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !210
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !202

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_gb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_gb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_urb_gb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_musb_urb_gb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 214, ptr noundef nonnull @.str.50) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_gb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_urb_start(ptr noundef %musb, ptr noundef %urb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_start, i32 0, i32 1), ptr blockaddress(@trace_musb_urb_start, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !211
  %call42 = tail call i32 @__traceiter_musb_urb_start(ptr noundef null, ptr noundef %musb, ptr noundef %urb) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !202

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_urb_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_musb_urb_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 209, ptr noundef nonnull @.str.50) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @musb_h_start(ptr nocapture noundef %hcd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state, align 4
  %port1_status = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %port1_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %port1_status, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @musb_h_stop(ptr nocapture noundef %hcd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  tail call void @musb_stop(ptr noundef %1) #9
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_h_get_frame_number(ptr nocapture noundef readonly %hcd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %2 = load ptr, ptr @musb_readw, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mregs, align 8
  %call1 = tail call zeroext i16 %2(ptr noundef %4, i32 noundef 12) #9
  %conv = zext i16 %call1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %is_host = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_host, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup231_crit_edge, label %lor.lhs.false

entry.cleanup231_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup231

lor.lhs.false:                                    ; preds = %entry
  %is_active = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 51
  %6 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %7 = and i24 %bf.load, 2097152
  %tobool1.not = icmp eq i24 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup231_crit_edge, label %if.end

lor.lhs.false.cleanup231_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup231

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @trace_musb_urb_enq(ptr noundef %1, ptr noundef %urb)
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %call7 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cond.end, label %lor.lhs.false15.critedge

cond.end:                                         ; preds = %if.end
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcpriv, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %hcpriv11 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %10 = ptrtoint ptr %hcpriv11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %hcpriv11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #9
  br label %cleanup231

lor.lhs.false15.critedge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #9
  br label %cleanup231

if.end18:                                         ; preds = %cond.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #9
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end18.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !202

if.end18.kzalloc.exit_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end18
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end18.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end18.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %mem_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %11 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %or.i, i32 noundef 100) #13
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %do.body23, label %if.end37

do.body23:                                        ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call31) #9
  br label %cleanup231

if.end37:                                         ; preds = %kzalloc.exit
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev39 = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dev39, align 4
  %ring = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %ring, ptr %ring, align 4
  %prev.i = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ring, ptr %prev.i, align 8
  %is_ready = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_ready, align 1
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wMaxPacketSize.i, align 1
  %22 = and i16 %21, -249
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %maxpacket = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %maxpacket, align 2
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bmAttributes.i, align 1
  %27 = and i8 %26, 3
  %type = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 13
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %type, align 2
  %29 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %wMaxPacketSize.i, align 1
  %31 = lshr i16 %30, 3
  %32 = and i16 %31, 3
  %narrow.i = add nuw nsw i16 %32, 1
  %conv45 = trunc i16 %narrow.i to i8
  %hb_mult = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 15
  %33 = ptrtoint ptr %hb_mult to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv45, ptr %hb_mult, align 8
  %34 = and i16 %narrow.i, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp48.not = icmp eq i16 %34, 0
  br i1 %cmp48.not, label %if.end37.if.end89_crit_edge, label %if.then50

if.end37.if.end89_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then50:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp53 = icmp eq i8 %27, 1
  br i1 %cmp53, label %if.then56, label %do.end76

if.then56:                                        ; preds = %if.then50
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %35 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe, align 4
  %and = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  %37 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %37, i32 3)
  %bf.load66 = load i24, ptr %is_active, align 8
  br i1 %tobool57.not, label %if.end71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then56
  %38 = and i24 %bf.load66, 524288
  %tobool62.not = icmp eq i24 %38, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end76.thread_crit_edge, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

land.lhs.true.do.end76.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76.thread

if.end71:                                         ; preds = %if.then56
  %39 = and i24 %bf.load66, 262144
  %tobool70.not = icmp eq i24 %39, 0
  br i1 %tobool70.not, label %if.end71.do.end76.thread_crit_edge, label %if.end71.cleanup.thread_crit_edge

if.end71.cleanup.thread_crit_edge:                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end71.do.end76.thread_crit_edge:               ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76.thread

do.end76.thread:                                  ; preds = %if.end71.do.end76.thread_crit_edge, %land.lhs.true.do.end76.thread_crit_edge
  %controller342 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %40 = ptrtoint ptr %controller342 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %controller342, align 8
  br label %done.thread

do.end76:                                         ; preds = %if.then50
  %controller = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %42 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %controller, align 8
  %trunc = trunc i8 %26 to i2
  %44 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.89)
  switch i2 %trunc, label %sw.default.i [
    i2 0, label %do.end76.done.thread_crit_edge
    i2 -1, label %sw.bb3.i
    i2 -2, label %sw.bb2.i
  ]

do.end76.done.thread_crit_edge:                   ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

sw.bb2.i:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

sw.bb3.i:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

sw.default.i:                                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread

cleanup.thread:                                   ; preds = %if.end71.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge
  %45 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %23, ptr %maxpacket, align 2
  br label %if.end89

done.thread:                                      ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %do.end76.done.thread_crit_edge, %do.end76.thread
  %46 = phi ptr [ %43, %sw.default.i ], [ %43, %sw.bb3.i ], [ %43, %sw.bb2.i ], [ %41, %do.end76.thread ], [ %43, %do.end76.done.thread_crit_edge ]
  %s.0.i = phi ptr [ @.str.12, %sw.default.i ], [ @.str.79, %sw.bb3.i ], [ @.str.78, %sw.bb2.i ], [ @.str.77, %do.end76.thread ], [ @.str.76, %do.end76.done.thread_crit_edge ]
  %conv80 = zext i16 %narrow.i to i32
  %and83 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.74, ptr noundef nonnull %s.0.i, i32 noundef %conv80, i32 noundef %and83) #12
  br label %do.body216

if.end89:                                         ; preds = %cleanup.thread, %if.end37.if.end89_crit_edge
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress.i, align 1
  %49 = and i8 %48, 15
  %epnum = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 14
  %50 = ptrtoint ptr %epnum to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %epnum, align 1
  %pipe92 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %51 = ptrtoint ptr %pipe92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pipe92, align 4
  %shr = lshr i32 %52, 8
  %53 = trunc i32 %shr to i8
  %conv94 = and i8 %53, 127
  %addr_reg = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %addr_reg to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv94, ptr %addr_reg, align 2
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type, align 2
  %shl = shl i8 %56, 4
  %or = or i8 %shl, %49
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %switch.selectcmp = icmp eq i32 %60, 2
  %switch.select = select i1 %switch.selectcmp, i8 -128, i8 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %switch.selectcmp362 = icmp eq i32 %60, 1
  %switch.select363 = select i1 %switch.selectcmp362, i8 -64, i8 %switch.select
  %or103 = or i8 %or, %switch.select363
  %type_reg105 = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %type_reg105 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %or103, ptr %type_reg105, align 8
  %62 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %56, label %if.end89.sw.epilog140_crit_edge [
    i8 3, label %sw.bb108
    i8 1, label %if.end89.sw.bb126_crit_edge
  ]

if.end89.sw.bb126_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb126

if.end89.sw.epilog140_crit_edge:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog140

sw.bb108:                                         ; preds = %if.end89
  %63 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp111 = icmp ult i32 %64, 3
  br i1 %cmp111, label %if.then113, label %sw.bb108.sw.bb126_crit_edge

sw.bb108.sw.bb126_crit_edge:                      ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb126

if.then113:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %65 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bInterval, align 1
  %67 = tail call i8 @llvm.umax.i8(i8 %66, i8 1)
  br label %sw.epilog140

sw.bb126:                                         ; preds = %sw.bb108.sw.bb126_crit_edge, %if.end89.sw.bb126_crit_edge
  %bInterval127 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %68 = ptrtoint ptr %bInterval127 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bInterval127, align 1
  %70 = tail call i8 @llvm.umin.i8(i8 %69, i8 16)
  br label %sw.epilog140

sw.epilog140:                                     ; preds = %sw.bb126, %if.then113, %if.end89.sw.epilog140_crit_edge
  %interval.0 = phi i8 [ %70, %sw.bb126 ], [ %67, %if.then113 ], [ 0, %if.end89.sw.epilog140_crit_edge ]
  %intv_reg = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 8
  %71 = ptrtoint ptr %intv_reg to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %interval.0, ptr %intv_reg, align 1
  %72 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %72, i32 3)
  %bf.load142 = load i24, ptr %is_active, align 8
  %73 = and i24 %bf.load142, 1048576
  %tobool146.not = icmp eq i24 %73, 0
  br i1 %tobool146.not, label %sw.epilog140.do.body183_crit_edge, label %if.then147

sw.epilog140.do.body183_crit_edge:                ; preds = %sw.epilog140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body183

if.then147:                                       ; preds = %sw.epilog140
  %parent149 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 11
  %74 = ptrtoint ptr %parent149 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent149, align 4
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %76 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %root_hub, align 8
  %cmp150.not = icmp eq ptr %75, %77
  br i1 %cmp150.not, label %if.then147.do.body183_crit_edge, label %if.then152

if.then147.do.body183_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body183

if.then152:                                       ; preds = %if.then147
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %75, align 8
  %conv153 = trunc i32 %79 to i8
  %h_addr_reg = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 10
  %80 = ptrtoint ptr %h_addr_reg to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv153, ptr %h_addr_reg, align 1
  %tt = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 8
  %81 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tt, align 4
  %tobool155.not = icmp eq ptr %82, null
  br i1 %tobool155.not, label %if.then152.do.body183_crit_edge, label %if.then156

if.then152.do.body183_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body183

if.then156:                                       ; preds = %if.then152
  %ttport = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 9
  %83 = ptrtoint ptr %ttport to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ttport, align 8
  %conv158 = trunc i32 %84 to i8
  %h_port_reg = getelementptr inbounds %struct.musb_qh, ptr %call7.i.i, i32 0, i32 11
  %85 = ptrtoint ptr %h_port_reg to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv158, ptr %h_port_reg, align 4
  %86 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tt, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool161.not = icmp eq ptr %89, null
  br i1 %tobool161.not, label %if.then156.if.end169_crit_edge, label %if.then162

if.then156.if.end169_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

if.then162:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %conv167 = trunc i32 %91 to i8
  %92 = ptrtoint ptr %h_addr_reg to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv167, ptr %h_addr_reg, align 1
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %if.then156.if.end169_crit_edge
  %93 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tt, align 4
  %multi = getelementptr inbounds %struct.usb_tt, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool172.not = icmp eq i32 %96, 0
  br i1 %tobool172.not, label %if.end169.do.body183_crit_edge, label %if.then173

if.end169.do.body183_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body183

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %h_addr_reg to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %h_addr_reg, align 1
  %99 = or i8 %98, -128
  store i8 %99, ptr %h_addr_reg, align 1
  br label %do.body183

do.body183:                                       ; preds = %if.then173, %if.end169.do.body183_crit_edge, %if.then152.do.body183_crit_edge, %if.then147.do.body183_crit_edge, %sw.epilog140.do.body183_crit_edge
  %call191 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %100 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hcpriv, align 4
  %tobool197.not = icmp eq ptr %101, null
  br i1 %tobool197.not, label %next_urb.exit, label %do.body183.if.end205.thread_crit_edge

do.body183.if.end205.thread_crit_edge:            ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205.thread

next_urb.exit:                                    ; preds = %do.body183
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i, align 8
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %105, %urb_list.i
  %add.ptr.i = getelementptr i8, ptr %105, i32 -20
  %tobool200.not361 = icmp eq ptr %add.ptr.i, null
  %tobool200.not = or i1 %cmp.i.not.i, %tobool200.not361
  br i1 %tobool200.not, label %next_urb.exit.if.end205.thread_crit_edge, label %if.end205

next_urb.exit.if.end205.thread_crit_edge:         ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205.thread

if.end205.thread:                                 ; preds = %next_urb.exit.if.end205.thread_crit_edge, %do.body183.if.end205.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %done.thread357

if.end205:                                        ; preds = %next_urb.exit
  %106 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bEndpointAddress.i, align 1
  %108 = and i8 %107, -128
  %and203 = zext i8 %108 to i32
  %call204 = tail call fastcc i32 @musb_schedule(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef %and203)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %cmp206 = icmp eq i32 %call204, 0
  br i1 %cmp206, label %if.end205.done.thread357_crit_edge, label %done

if.end205.done.thread357_crit_edge:               ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.thread357

done.thread357:                                   ; preds = %if.end205.done.thread357_crit_edge, %if.end205.thread
  %qh.0350 = phi ptr [ null, %if.end205.thread ], [ %call7.i.i, %if.end205.done.thread357_crit_edge ]
  %hcpriv209 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %109 = ptrtoint ptr %hcpriv209 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %qh.0350, ptr %hcpriv209, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call191) #9
  br label %cleanup231

done:                                             ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call191) #9
  br label %do.body216

do.body216:                                       ; preds = %done, %done.thread
  %ret.2355 = phi i32 [ -90, %done.thread ], [ %call204, %done ]
  %call224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call224) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup231

cleanup231:                                       ; preds = %do.body216, %done.thread357, %do.body23, %lor.lhs.false15.critedge, %if.then10, %lor.lhs.false.cleanup231_crit_edge, %entry.cleanup231_crit_edge
  %retval.0 = phi i32 [ -12, %do.body23 ], [ -19, %lor.lhs.false.cleanup231_crit_edge ], [ -19, %entry.cleanup231_crit_edge ], [ 0, %if.then10 ], [ %call7, %lor.lhs.false15.critedge ], [ %ret.2355, %do.body216 ], [ 0, %done.thread357 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %and = and i32 %3, 128
  tail call fastcc void @trace_musb_urb_deq(ptr noundef %1, ptr noundef %urb)
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %call6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.done_crit_edge, label %if.end9

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end9:                                          ; preds = %if.end
  %is_ready = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %is_ready to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_ready, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %done.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %prev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %urb_list11 = getelementptr inbounds %struct.usb_host_endpoint, ptr %11, i32 0, i32 4
  %cmp12.not = icmp eq ptr %9, %urb_list11
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %hw_ep = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %in_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %13, i32 0, i32 15
  %out_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %13, i32 0, i32 16
  %cond.in.i = select i1 %tobool.not.i, ptr %out_qh.i, ptr %in_qh.i
  %14 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %cmp16.not = icmp eq ptr %cond.i, %5
  br i1 %cmp16.not, label %if.else, label %lor.lhs.false14.land.lhs.true_crit_edge

lor.lhs.false14.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false14.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge
  %15 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_ready, align 1
  tail call fastcc void @trace_musb_urb_gb(ptr noundef %1, ptr noundef %urb) #9
  %hcd.i.c61 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 58
  %16 = ptrtoint ptr %hcd.i.c61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hcd.i.c61, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %17, ptr noundef %urb) #9
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  %18 = ptrtoint ptr %hcd.i.c61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcd.i.c61, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %19, ptr noundef %urb, i32 noundef 0) #9
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %20 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %7, ptr %is_ready, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %urb_list26 = getelementptr inbounds %struct.usb_host_endpoint, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %urb_list26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %urb_list26, align 4
  %cmp.i.not = icmp eq ptr %24, %urb_list26
  br i1 %cmp.i.not, label %if.then29, label %land.lhs.true.done_crit_edge

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then29:                                        ; preds = %land.lhs.true
  %hcpriv31 = getelementptr inbounds %struct.usb_host_endpoint, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %hcpriv31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %hcpriv31, align 4
  %ring = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ring) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %32 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %ring, align 4
  %prev.i = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %done

if.else:                                          ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_cleanup_urb(ptr noundef %urb, ptr noundef nonnull %5)
  br label %done

done.critedge:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %is_ready, align 1
  tail call fastcc void @trace_musb_urb_gb(ptr noundef %1, ptr noundef %urb) #9
  %hcd.i.c62 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 58
  %35 = ptrtoint ptr %hcd.i.c62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hcd.i.c62, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %36, ptr noundef %urb) #9
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  %37 = ptrtoint ptr %hcd.i.c62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hcd.i.c62, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %38, ptr noundef %urb, i32 noundef 0) #9
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %39 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %is_ready, align 1
  br label %done

done:                                             ; preds = %done.critedge, %if.else, %list_del.exit, %land.lhs.true.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #9
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @musb_h_disable(ptr nocapture noundef readonly %hcd, ptr noundef %hep) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %hep, i32 0, i32 2
  %0 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bEndpointAddress, align 2
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv, align 4
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %6 = and i8 %1, -128
  %is_ready = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %is_ready to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_ready, align 1
  %hw_ep = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_ep, align 4
  %conv10 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %in_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %9, i32 0, i32 15
  %out_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %9, i32 0, i32 16
  %cond.in.i = select i1 %tobool.not.i, ptr %out_qh.i, ptr %in_qh.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %cmp12 = icmp eq ptr %cond.i, %5
  br i1 %cmp12, label %next_urb.exit, label %while.cond25.preheader

while.cond25.preheader:                           ; preds = %if.end
  %urb_list26 = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 4
  %11 = ptrtoint ptr %urb_list26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %urb_list26, align 4
  %cmp.i67.not77 = icmp eq ptr %12, %urb_list26
  br i1 %cmp.i67.not77, label %while.cond25.preheader.while.end32_crit_edge, label %next_urb.exit76.lr.ph

while.cond25.preheader.while.end32_crit_edge:     ; preds = %while.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end32

next_urb.exit76.lr.ph:                            ; preds = %while.cond25.preheader
  %hcd.i = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 58
  br label %next_urb.exit76

next_urb.exit:                                    ; preds = %if.end
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %urb_list.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 -20
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  %unlinked = getelementptr inbounds %struct.urb, ptr %spec.select.i, i32 0, i32 1
  %17 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then16, label %next_urb.exit.if.end17_crit_edge

next_urb.exit.if.end17_crit_edge:                 ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.urb, ptr %spec.select.i, i32 0, i32 12
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -108, ptr %status, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %next_urb.exit.if.end17_crit_edge
  tail call fastcc void @musb_cleanup_urb(ptr noundef %spec.select.i, ptr noundef nonnull %5)
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %hep, i32 0, i32 4
  %20 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not78 = icmp eq ptr %21, %urb_list
  br i1 %cmp.i.not78, label %if.end17.exit_crit_edge, label %if.end17.next_urb.exit66_crit_edge

if.end17.next_urb.exit66_crit_edge:               ; preds = %if.end17
  br label %next_urb.exit66

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

next_urb.exit66:                                  ; preds = %next_urb.exit66.next_urb.exit66_crit_edge, %if.end17.next_urb.exit66_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %urb_list.i60 = getelementptr inbounds %struct.usb_host_endpoint, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %urb_list.i60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %urb_list.i60, align 4
  %cmp.i.not.i61 = icmp eq ptr %25, %urb_list.i60
  %add.ptr.i62 = getelementptr i8, ptr %25, i32 -20
  %spec.select.i63 = select i1 %cmp.i.not.i61, ptr null, ptr %add.ptr.i62
  %status22 = getelementptr inbounds %struct.urb, ptr %spec.select.i63, i32 0, i32 12
  %26 = ptrtoint ptr %status22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -108, ptr %status22, align 4
  %27 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_ep, align 4
  tail call fastcc void @musb_advance_schedule(ptr noundef %3, ptr noundef %spec.select.i63, ptr noundef %28, i32 noundef %conv10)
  %29 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %30, %urb_list
  br i1 %cmp.i.not, label %next_urb.exit66.exit_crit_edge, label %next_urb.exit66.next_urb.exit66_crit_edge

next_urb.exit66.next_urb.exit66_crit_edge:        ; preds = %next_urb.exit66
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit66

next_urb.exit66.exit_crit_edge:                   ; preds = %next_urb.exit66
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

next_urb.exit76:                                  ; preds = %next_urb.exit76.next_urb.exit76_crit_edge, %next_urb.exit76.lr.ph
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %urb_list.i70 = getelementptr inbounds %struct.usb_host_endpoint, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %urb_list.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %urb_list.i70, align 4
  %cmp.i.not.i71 = icmp eq ptr %34, %urb_list.i70
  %add.ptr.i72 = getelementptr i8, ptr %34, i32 -20
  %spec.select.i73 = select i1 %cmp.i.not.i71, ptr null, ptr %add.ptr.i72
  tail call fastcc void @trace_musb_urb_gb(ptr noundef %3, ptr noundef %spec.select.i73) #9
  %35 = ptrtoint ptr %hcd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hcd.i, align 4
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %36, ptr noundef %spec.select.i73) #9
  tail call void @_raw_spin_unlock(ptr noundef %3) #9
  %37 = ptrtoint ptr %hcd.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hcd.i, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %38, ptr noundef %spec.select.i73, i32 noundef -108) #9
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %39 = ptrtoint ptr %urb_list26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %urb_list26, align 4
  %cmp.i67.not = icmp eq ptr %40, %urb_list26
  br i1 %cmp.i67.not, label %next_urb.exit76.while.end32_crit_edge, label %next_urb.exit76.next_urb.exit76_crit_edge

next_urb.exit76.next_urb.exit76_crit_edge:        ; preds = %next_urb.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit76

next_urb.exit76.while.end32_crit_edge:            ; preds = %next_urb.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end32

while.end32:                                      ; preds = %next_urb.exit76.while.end32_crit_edge, %while.cond25.preheader.while.end32_crit_edge
  %41 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %hcpriv, align 4
  %ring = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ring) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.end32.list_del.exit_crit_edge

while.end32.list_del.exit_crit_edge:              ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.end32.list_del.exit_crit_edge
  %48 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %ring, align 4
  %prev.i = getelementptr inbounds %struct.musb_qh, ptr %5, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %exit

exit:                                             ; preds = %list_del.exit, %next_urb.exit66.exit_crit_edge, %if.end17.exit_crit_edge, %entry.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_hub_status_data(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_bus_suspend(ptr nocapture noundef readonly %hcd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %call1 = tail call i32 @musb_port_suspend(ptr noundef %1, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_host = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_host, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %xceiv = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %9, label %if.end4.sw.epilog_crit_edge [
    i32 10, label %if.end4.cleanup_crit_edge
    i32 7, label %sw.bb5
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %11 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mregs, align 8
  %call6 = tail call zeroext i8 %11(ptr noundef %13, i32 noundef 96) #9
  %14 = and i8 %call6, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %14)
  %cmp = icmp eq i8 %14, 24
  br i1 %cmp, label %if.then8, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xceiv, align 8
  %otg10 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %otg10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %otg10, align 4
  %state11 = getelementptr inbounds %struct.usb_otg, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %state11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then8, %sw.bb5.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  %is_active = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 51
  %20 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %21 = and i24 %bf.load, 2097152
  %tobool13.not = icmp eq i24 %21, 0
  br i1 %tobool13.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xceiv, align 8
  %otg17 = getelementptr inbounds %struct.usb_phy, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %otg17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %otg17, align 4
  %state18 = getelementptr inbounds %struct.usb_otg, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state18, align 4
  %call19 = tail call ptr @usb_otg_state_string(i32 noundef %27) #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef 2522, ptr noundef %call19) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_bus_resume(ptr nocapture noundef readonly %hcd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 8
  %config = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host_port_deassert_reset_at_resume = getelementptr inbounds %struct.musb_hdrc_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %host_port_deassert_reset_at_resume to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %host_port_deassert_reset_at_resume, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @musb_port_reset(ptr noundef %1, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_urb_enq(ptr noundef %musb, ptr noundef %urb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_enq, i32 0, i32 1), ptr blockaddress(@trace_musb_urb_enq, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !213
  %call42 = tail call i32 @__traceiter_musb_urb_enq(ptr noundef null, ptr noundef %musb, ptr noundef %urb) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !202

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_enq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_enq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_urb_enq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_musb_urb_enq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 229, ptr noundef nonnull @.str.50) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @musb_schedule(ptr noundef %musb, ptr noundef %qh, i32 noundef %is_in) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %qh, null
  br i1 %tobool.not.i, label %entry.next_urb.exit_crit_edge, label %if.end.i

entry.next_urb.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_urb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qh, align 4
  %urb_list.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %urb_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %urb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %urb_list.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -20
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  br label %next_urb.exit

next_urb.exit:                                    ; preds = %if.end.i, %entry.next_urb.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.next_urb.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %type = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 13
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %next_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %control = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 17
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  br label %success

if.end:                                           ; preds = %next_urb.exit
  %endpoints2 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %nr_endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 42
  %6 = ptrtoint ptr %nr_endpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_endpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5183 = icmp ugt i8 %7, 1
  br i1 %cmp5183, label %for.body.lr.ph, label %if.end.land.lhs.true58_crit_edge

if.end.land.lhs.true58_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool.not.i165 = icmp eq i32 %is_in, 0
  %bulk_ep = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 16
  %maxpacket = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 16
  %hb_mult = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 15
  %dev = getelementptr inbounds %struct.urb, ptr %retval.0.i, i32 0, i32 8
  %lnot.ext = zext i1 %tobool.not.i165 to i32
  %epnum32 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %hw_ep.0189 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %epnum.0186 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %best_end.0185 = phi i32 [ -1, %for.body.lr.ph ], [ %best_end.2, %cleanup.for.body_crit_edge ]
  %best_diff.0184 = phi i32 [ 4096, %for.body.lr.ph ], [ %best_diff.2, %cleanup.for.body_crit_edge ]
  %in_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.0189, i32 0, i32 15
  %out_qh.i = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.0189, i32 0, i32 16
  %cond.in.i = select i1 %tobool.not.i165, ptr %out_qh.i, ptr %in_qh.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %cmp8.not = icmp eq ptr %cond.i, null
  br i1 %cmp8.not, label %if.end11, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %9 = ptrtoint ptr %bulk_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bulk_ep, align 4
  %cmp12 = icmp eq ptr %hw_ep.0189, %10
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %max_packet_sz_rx = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.0189, i32 0, i32 9
  %max_packet_sz_tx = getelementptr inbounds %struct.musb_hw_ep, ptr %hw_ep.0189, i32 0, i32 8
  %diff.0.in.in = select i1 %tobool.not.i165, ptr %max_packet_sz_tx, ptr %max_packet_sz_rx
  %11 = ptrtoint ptr %diff.0.in.in to i32
  call void @__asan_load2_noabort(i32 %11)
  %diff.0.in = load i16, ptr %diff.0.in.in, align 2
  %diff.0 = zext i16 %diff.0.in to i32
  %12 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %maxpacket, align 2
  %conv20 = zext i16 %13 to i32
  %14 = ptrtoint ptr %hb_mult to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hb_mult, align 4
  %conv21 = zext i8 %15 to i32
  %mul = mul nuw nsw i32 %conv21, %conv20
  %sub = sub nsw i32 %diff.0, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp22 = icmp sgt i32 %sub, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.0184, i32 %sub)
  %cmp24 = icmp sgt i32 %best_diff.0184, %sub
  %or.cond = select i1 %cmp22, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.then26, label %if.end15.if.end55_crit_edge

if.end15.if.end55_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then26:                                        ; preds = %if.end15
  %add.ptr29 = getelementptr %struct.musb_hw_ep, ptr %endpoints2, i32 %epnum.0186
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.usb_device, ptr %17, i32 0, i32 10, i32 %lnot.ext
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %epnum32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %epnum32, align 1
  %conv33 = zext i8 %21 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %22 = load ptr, ptr @musb_readb, align 4
  %regs = getelementptr %struct.musb_hw_ep, ptr %endpoints2, i32 %epnum.0186, i32 2
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %call35 = tail call zeroext i8 %22(ptr noundef %24, i32 noundef 10) #9
  br i1 %tobool.not.i165, label %land.lhs.true41, label %if.then26.if.end55_crit_edge

if.then26.if.end55_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true41:                                  ; preds = %if.then26
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp44 = icmp eq i8 %26, 2
  br i1 %cmp44, label %land.lhs.true46, label %land.lhs.true41.if.end55_crit_edge

land.lhs.true41.if.end55_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true46:                                  ; preds = %land.lhs.true41
  %27 = shl nuw i32 1, %conv33
  %28 = and i32 %27, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool48.not = icmp ne i32 %28, 0
  %29 = and i8 %call35, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %29)
  %cmp51 = icmp eq i8 %29, 16
  %or.cond164 = select i1 %tobool48.not, i1 %cmp51, i1 false
  br i1 %or.cond164, label %land.lhs.true46.cleanup_crit_edge, label %land.lhs.true46.if.end55_crit_edge

land.lhs.true46.if.end55_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %land.lhs.true46.if.end55_crit_edge, %land.lhs.true41.if.end55_crit_edge, %if.then26.if.end55_crit_edge, %if.end15.if.end55_crit_edge
  %best_diff.1 = phi i32 [ %best_diff.0184, %if.end15.if.end55_crit_edge ], [ %sub, %land.lhs.true46.if.end55_crit_edge ], [ %sub, %land.lhs.true41.if.end55_crit_edge ], [ %sub, %if.then26.if.end55_crit_edge ]
  %best_end.1 = phi i32 [ %best_end.0185, %if.end15.if.end55_crit_edge ], [ %epnum.0186, %land.lhs.true46.if.end55_crit_edge ], [ %epnum.0186, %land.lhs.true41.if.end55_crit_edge ], [ %epnum.0186, %if.then26.if.end55_crit_edge ]
  %hw_ep.1 = phi ptr [ %hw_ep.0189, %if.end15.if.end55_crit_edge ], [ %add.ptr29, %land.lhs.true46.if.end55_crit_edge ], [ %add.ptr29, %land.lhs.true41.if.end55_crit_edge ], [ %add.ptr29, %if.then26.if.end55_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %land.lhs.true46.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best_diff.2 = phi i32 [ %best_diff.1, %if.end55 ], [ %best_diff.0184, %for.body.cleanup_crit_edge ], [ %best_diff.0184, %if.end11.cleanup_crit_edge ], [ %best_diff.0184, %land.lhs.true46.cleanup_crit_edge ]
  %best_end.2 = phi i32 [ %best_end.1, %if.end55 ], [ %best_end.0185, %for.body.cleanup_crit_edge ], [ %best_end.0185, %if.end11.cleanup_crit_edge ], [ %best_end.0185, %land.lhs.true46.cleanup_crit_edge ]
  %hw_ep.2 = phi ptr [ %hw_ep.1, %if.end55 ], [ %hw_ep.0189, %for.body.cleanup_crit_edge ], [ %hw_ep.0189, %if.end11.cleanup_crit_edge ], [ %add.ptr29, %land.lhs.true46.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %epnum.0186, 1
  %incdec.ptr = getelementptr %struct.musb_hw_ep, ptr %hw_ep.2, i32 1
  %30 = ptrtoint ptr %nr_endpoints to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_endpoints, align 4
  %conv4 = zext i8 %31 to i32
  %cmp5 = icmp ult i32 %inc, %conv4
  br i1 %cmp5, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_end.2)
  %cmp56 = icmp slt i32 %best_end.2, 0
  br i1 %cmp56, label %for.end.land.lhs.true58_crit_edge, label %if.end96.thread176

for.end.land.lhs.true58_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %for.end.land.lhs.true58_crit_edge, %if.end.land.lhs.true58_crit_edge
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp61 = icmp eq i8 %33, 2
  br i1 %cmp61, label %if.then63, label %do.end.critedge

if.then63:                                        ; preds = %land.lhs.true58
  %bulk_ep64 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 16
  %34 = ptrtoint ptr %bulk_ep64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bulk_ep64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_in)
  %tobool65.not = icmp eq i32 %is_in, 0
  %in_bulk = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 18
  %out_bulk = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 19
  %head.0 = select i1 %tobool65.not, ptr %out_bulk, ptr %in_bulk
  %dev69 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 1
  %36 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev69, align 4
  %tobool70.not = icmp eq ptr %37, null
  br i1 %tobool70.not, label %if.then63.success_crit_edge, label %if.then71

if.then63.success_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %success

if.then71:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %speed = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp73 = icmp eq i32 %39, 3
  %conv75 = select i1 %cmp73, i8 8, i8 4
  %intv_reg = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 8
  %40 = ptrtoint ptr %intv_reg to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv75, ptr %intv_reg, align 1
  br label %success

do.end.critedge:                                  ; preds = %land.lhs.true58
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %41 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %controller, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %43 = icmp ult i8 %33, 4
  br i1 %43, label %switch.lookup, label %do.end.critedge.musb_ep_xfertype_string.exit_crit_edge

do.end.critedge.musb_ep_xfertype_string.exit_crit_edge: ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %musb_ep_xfertype_string.exit

switch.lookup:                                    ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %44 = sext i8 %33 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.musb_schedule, i32 0, i32 %44
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %musb_ep_xfertype_string.exit

musb_ep_xfertype_string.exit:                     ; preds = %switch.lookup, %do.end.critedge.musb_ep_xfertype_string.exit_crit_edge
  %s.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.12, %do.end.critedge.musb_ep_xfertype_string.exit_crit_edge ]
  %hb_mult83 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 15
  %46 = ptrtoint ptr %hb_mult83 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hb_mult83, align 4
  %conv84 = zext i8 %47 to i32
  %maxpacket85 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 16
  %48 = ptrtoint ptr %maxpacket85 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %maxpacket85, align 2
  %conv86 = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.80, ptr noundef nonnull %s.0.i, i32 noundef %conv84, i32 noundef %conv86) #12
  br label %cleanup101

if.end96.thread176:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %mux = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 4
  %50 = ptrtoint ptr %mux to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %mux, align 4
  %add.ptr91 = getelementptr %struct.musb_hw_ep, ptr %endpoints2, i32 %best_end.2
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.82, ptr noundef %qh, i32 noundef %best_end.2) #9
  %hw_ep97179 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 2
  %51 = ptrtoint ptr %hw_ep97179 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr91, ptr %hw_ep97179, align 4
  %52 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qh, align 4
  %hcpriv180 = getelementptr inbounds %struct.usb_host_endpoint, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %hcpriv180 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %qh, ptr %hcpriv180, align 4
  br label %if.then99

success:                                          ; preds = %if.then71, %if.then63.success_crit_edge, %if.then
  %hw_ep.3 = phi ptr [ %endpoints, %if.then ], [ %35, %if.then71 ], [ %35, %if.then63.success_crit_edge ]
  %head.1 = phi ptr [ %control, %if.then ], [ %head.0, %if.then71 ], [ %head.0, %if.then63.success_crit_edge ]
  %tobool92.not = icmp eq ptr %head.1, null
  br i1 %tobool92.not, label %if.end96.thread, label %if.then93

if.end96.thread:                                  ; preds = %success
  call void @__sanitizer_cov_trace_pc() #11
  %hw_ep97173 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 2
  %55 = ptrtoint ptr %hw_ep97173 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %hw_ep.3, ptr %hw_ep97173, align 4
  %56 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %qh, align 4
  %hcpriv174 = getelementptr inbounds %struct.usb_host_endpoint, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %hcpriv174 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %qh, ptr %hcpriv174, align 4
  br label %cleanup101

if.then93:                                        ; preds = %success
  %59 = ptrtoint ptr %head.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %head.1, align 4
  %cmp.i.not = icmp eq ptr %60, %head.1
  %ring = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head.1, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ring, ptr noundef %62, ptr noundef nonnull %head.1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then93.if.end96_crit_edge

if.then93.if.end96_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.end.i.i:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ring, ptr %prev.i, align 4
  %64 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %head.1, ptr %ring, align 4
  %prev3.i.i = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %ring, ptr %62, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end.i.i, %if.then93.if.end96_crit_edge
  %mux95 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 4
  %67 = ptrtoint ptr %mux95 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %mux95, align 4
  %hw_ep97 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 2
  %68 = ptrtoint ptr %hw_ep97 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %hw_ep.3, ptr %hw_ep97, align 4
  %69 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %qh, align 4
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %qh, ptr %hcpriv, align 4
  br i1 %cmp.i.not, label %if.end96.if.then99_crit_edge, label %if.end96.cleanup101_crit_edge

if.end96.cleanup101_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup101

if.end96.if.then99_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

if.then99:                                        ; preds = %if.end96.if.then99_crit_edge, %if.end96.thread176
  tail call fastcc void @musb_start_urb(ptr noundef %musb, i32 noundef %is_in, ptr noundef %qh)
  br label %cleanup101

cleanup101:                                       ; preds = %if.then99, %if.end96.cleanup101_crit_edge, %if.end96.thread, %musb_ep_xfertype_string.exit
  %retval.0 = phi i32 [ -28, %musb_ep_xfertype_string.exit ], [ 0, %if.then99 ], [ 0, %if.end96.cleanup101_crit_edge ], [ 0, %if.end96.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_enq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_urb_deq(ptr noundef %musb, ptr noundef %urb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_deq, i32 0, i32 1), ptr blockaddress(@trace_musb_urb_deq, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !201

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %call42 = tail call i32 @__traceiter_musb_urb_deq(ptr noundef null, ptr noundef %musb, ptr noundef %urb) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !216
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !202

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_deq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_deq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_urb_deq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_musb_urb_deq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 234, ptr noundef nonnull @.str.50) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_cleanup_urb(ptr noundef %urb, ptr nocapture noundef readonly %qh) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ep = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 2
  %0 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ep, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regs = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %epnum = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %epnum, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mregs, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe, align 4
  %and = and i32 %11, 128
  %ep_select = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep_select, align 4
  tail call void %13(ptr noundef %9, i8 noundef zeroext %7) #9
  %14 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %epnum, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %16 = load ptr, ptr @musb_writew, align 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  tail call void %16(ptr noundef %18, i32 noundef 6, i16 noundef zeroext 17) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %19 = load ptr, ptr @musb_writew, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void %19(ptr noundef %21, i32 noundef 6, i16 noundef zeroext 17) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %22 = load ptr, ptr @musb_readw, align 4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %call.i = tail call zeroext i16 %22(ptr noundef %24, i32 noundef 6) #9
  br label %if.then19

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else16, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_h_tx_flush_fifo(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %25 = load ptr, ptr @musb_readw, align 4
  %call11 = tail call zeroext i16 %25(ptr noundef %5, i32 noundef 2) #9
  %26 = and i16 %call11, 28506
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %27 = load ptr, ptr @musb_writew, align 4
  tail call void %27(ptr noundef %5, i32 noundef 2, i16 noundef zeroext %26) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %28 = load ptr, ptr @musb_writew, align 4
  tail call void %28(ptr noundef %5, i32 noundef 2, i16 noundef zeroext %26) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %29 = load ptr, ptr @musb_readw, align 4
  %call15 = tail call zeroext i16 %29(ptr noundef %5, i32 noundef 2) #9
  br label %if.then19

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @musb_h_ep0_flush_fifo(ptr noundef %1)
  br label %if.then19

if.then19:                                        ; preds = %if.else16, %if.then10, %if.then
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call fastcc void @musb_advance_schedule(ptr noundef %31, ptr noundef %urb, ptr noundef %1, i32 noundef %and)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_urb_deq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_port_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_port_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !104, !106, !108, !110, !112, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !139, !141, !142, !144, !145, !147, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !168, !170, !172, !174, !176, !177, !178, !179, !181, !183, !184, !186, !187, !188}
!llvm.named.register.sp = !{!189}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/musb_host.c", i32 1069, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/musb_host.c", i32 1080, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/musb_host.c", i32 1084, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/musb/musb_host.c", i32 1088, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/musb/musb_host.c", i32 1103, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/musb_host.c", i32 1128, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @musb_h_ep0_irq._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @musb_h_ep0_irq._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/musb/musb_host.c", i32 1156, i32 19}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/musb/musb_host.c", i32 1210, i32 18}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/musb/musb_host.c", i32 1217, i32 17}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/musb/musb_host.c", i32 1218, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/musb/musb_host.c", i32 1218, i32 20}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/musb/musb_host.c", i32 1223, i32 18}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/musb_host.c", i32 1230, i32 18}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/musb/musb_host.c", i32 1237, i32 19}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/musb/musb_host.c", i32 1240, i32 19}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/musb/musb_host.c", i32 1413, i32 18}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/musb/musb_host.c", i32 1436, i32 4}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @musb_host_tx._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @musb_host_tx._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/musb/musb_host.c", i32 1754, i32 18}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/musb/musb_host.c", i32 1765, i32 18}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/musb/musb_host.c", i32 1771, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @musb_host_rx._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @musb_host_rx._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/musb/musb_host.c", i32 1788, i32 19}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/musb/musb_host.c", i32 1811, i32 19}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/musb/musb_host.c", i32 1816, i32 18}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/musb/musb_host.c", i32 1837, i32 3}
!60 = !{ptr @musb_host_rx._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @musb_host_rx._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/musb/musb_host.c", i32 1861, i32 18}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/musb/musb_host.c", i32 1895, i32 4}
!66 = !{ptr @musb_host_rx._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @musb_host_rx._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @musb_host_rx._entry.36, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/usb/musb/musb_host.c", i32 1943, i32 6}
!70 = !{ptr @musb_host_rx._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/musb/musb_host.c", i32 1963, i32 19}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/musb/musb_host.c", i32 1963, i32 43}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/musb/musb_host.c", i32 137, i32 2}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/musb/musb_host.c", i32 1004, i32 19}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/musb/musb_host.c", i32 1007, i32 19}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/musb/musb_host.c", i32 1012, i32 19}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/musb/musb_host.c", i32 1024, i32 19}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/musb/musb_host.c", i32 1026, i32 31}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/musb/musb_host.c", i32 1035, i32 3}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @musb_h_ep0_continue._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @musb_h_ep0_continue._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/musb/musb_host.c", i32 378, i32 18}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../drivers/usb/musb/musb_trace.h", i32 211, i32 1}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!98 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/musb/musb_host.c", i32 245, i32 18}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/musb/musb_host.c", i32 266, i32 18}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/musb/musb_host.c", i32 267, i32 24}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/musb/musb_host.c", i32 267, i32 32}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../drivers/usb/musb/musb_trace.h", i32 206, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/musb/musb_host.c", i32 678, i32 17}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/musb/musb_host.c", i32 680, i32 13}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/musb/musb_host.c", i32 680, i32 21}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/musb/musb_host.c", i32 682, i32 38}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/musb/musb_host.c", i32 682, i32 46}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/musb/musb_host.c", i32 812, i32 6}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @musb_ep_program._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @musb_ep_program._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/musb/musb_host.c", i32 849, i32 5}
!130 = !{ptr @musb_ep_program._entry.63, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @musb_ep_program._entry_ptr.65, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/musb/musb_host.c", i32 884, i32 18}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/musb/musb_host.c", i32 540, i32 3}
!136 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @musb_rx_reinit._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @musb_rx_reinit._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../drivers/usb/musb/musb_trace.h", i32 221, i32 1}
!141 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../drivers/usb/musb/musb_host.c", i32 113, i32 7}
!144 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/usb/musb/musb_trace.h", i32 216, i32 1}
!147 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/musb/musb_host.c", i32 423, i32 17}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/musb/musb_host.c", i32 445, i32 19}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/musb/musb_host.c", i32 2656, i32 18}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/musb/musb_host.c", i32 2657, i32 19}
!156 = !{ptr @musb_hc_driver, !157, !"musb_hc_driver", i1 false, i1 false}
!157 = !{!"../drivers/usb/musb/musb_host.c", i32 2655, i32 31}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/musb/musb_host.c", i32 2179, i32 4}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @musb_urb_enqueue._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @musb_urb_enqueue._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../drivers/usb/musb/musb_trace.h", i32 226, i32 1}
!165 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/musb/musb_core.h", i32 434, i32 7}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/musb/musb_core.h", i32 437, i32 7}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/musb/musb_core.h", i32 440, i32 7}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/musb/musb_core.h", i32 443, i32 7}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/musb/musb_host.c", i32 2083, i32 3}
!176 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @musb_schedule._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @musb_schedule._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/musb/musb_host.c", i32 2093, i32 17}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../drivers/usb/musb/musb_trace.h", i32 231, i32 1}
!183 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/musb/musb_host.c", i32 2521, i32 3}
!186 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @musb_bus_suspend._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @musb_bus_suspend._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{!"sp"}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{i8 0, i8 2}
!201 = !{i64 2149026899, i64 2149026904, i64 2149026917, i64 2149026961, i64 2149026995, i64 2149027016}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{i64 2155750696}
!204 = !{i64 2155750899}
!205 = !{i64 2149438240}
!206 = !{i64 2149439276}
!207 = !{i64 2155734732}
!208 = !{i64 2155734935}
!209 = !{i64 2155718768}
!210 = !{i64 2155718971}
!211 = !{i64 2155698581}
!212 = !{i64 2155698790}
!213 = !{i64 2155766698}
!214 = !{i64 2155766903}
!215 = !{i64 2155786815}
!216 = !{i64 2155787020}
