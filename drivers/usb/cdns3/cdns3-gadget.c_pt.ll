; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/cdns3-gadget.c_pt.bc'
source_filename = "../drivers/usb/cdns3/cdns3-gadget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdns3_device = type { ptr, ptr, %struct.usb_gadget, ptr, i32, %struct.spinlock, ptr, ptr, ptr, i32, ptr, i8, i32, [32 x ptr], %struct.list_head, %struct.work_struct, i32, i16, i16, i32, %struct.work_struct, ptr, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cdns3_usb_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [26 x i32], i32, i32, i32, [74 x i32], [51 x i32], i32, i32, i32, i32, i32 }
%struct.cdns3_endpoint = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i32, ptr, [20 x i8], i32, ptr, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, ptr, i32, i8, i32, i16, i16, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.cdns3_trb = type { i32, i32, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.cdns3_request = type { %struct.usb_request, ptr, ptr, i32, i32, ptr, i32, %struct.list_head, i32, i32 }
%struct.cdns3_aligned_buf = type { ptr, i32, i32, i32, i8, %struct.list_head }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cdns_role_driver = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cdns = type { ptr, ptr, [2 x %struct.resource], ptr, %struct.resource, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, [3 x ptr], i32, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i8, i8, ptr, %struct.spinlock, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }

@cdns3_ep_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"onchip mem is full, ep is invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns3_ep_config\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/cdns3/cdns3-gadget.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns3_ep_config._entry_ptr = internal global ptr @cdns3_ep_config._entry, section ".printk_index", align 4
@cdns3_ep_config.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 2, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdns3\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Configure %s: with val %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_gadget_giveback = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/cdns3/cdns3-trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_cdns3_gadget_giveback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cdns3_start_all_request.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns3_start_all_request\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Blocking external request\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set guard\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_wa1 = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_wa1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_prepare_trb = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_prepare_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"restore cycle bit\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_ring = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_ring.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_doorbell_epx = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_doorbell_epx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_cdns3_alloc_request = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_alloc_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_free_request = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_free_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_ep_dequeue = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_ep_dequeue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_halt = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_halt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cdns3_gadget_init._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 3261, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set dma mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__cdns3_gadget_init\00", [44 x i8] zeroinitializer }, align 32
@__cdns3_gadget_init._entry_ptr = internal global ptr @__cdns3_gadget_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns,on-chip-buff-size\00", [41 x i8] zeroinitializer }, align 32
@cdns3_gadget_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 3163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid maximum_speed parameter %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns3_gadget_start\00", [45 x i8] zeroinitializer }, align 32
@cdns3_gadget_start._entry_ptr = internal global ptr @cdns3_gadget_start._entry, section ".printk_index", align 4
@cdns3_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @cdns3_gadget_get_frame, ptr @cdns3_gadget_wakeup, ptr @cdns3_gadget_set_selfpowered, ptr null, ptr null, ptr @cdns3_gadget_pullup, ptr null, ptr null, ptr @cdns3_gadget_udc_start, ptr @cdns3_gadget_udc_stop, ptr null, ptr null, ptr null, ptr @cdns3_gadget_match_ep, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-ss-gadget\00", [18 x i8] zeroinitializer }, align 32
@cdns3_gadget_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv_dev->lock\00", [16 x i8] zeroinitializer }, align 32
@cdns3_gadget_start.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&priv_dev->pending_status_wq)\00", [48 x i8] zeroinitializer }, align 32
@cdns3_gadget_start.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&priv_dev->aligned_buf_wq)\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns3_eps_dma_pool\00", [45 x i8] zeroinitializer }, align 32
@cdns3_gadget_start._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.2, i32 3193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create TRB dma pool\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns3_gadget_start._entry_ptr.29 = internal global ptr @cdns3_gadget_start._entry.27, section ".printk_index", align 4
@cdns3_gadget_start._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.2, i32 3200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create endpoints\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns3_gadget_start._entry_ptr.32 = internal global ptr @cdns3_gadget_start._entry.30, section ".printk_index", align 4
@cdns3_gadget_start.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.33, i8 3, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device Controller version: %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns3_gadget_start.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.34, i8 3, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB Capabilities:: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@cdns3_gadget_start.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.35, i8 3, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"On-Chip memory configuration: %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@cdns3_gadget_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.19, ptr @.str.2, i32 3234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to add gadget\0A\00", [42 x i8] zeroinitializer }, align 32
@cdns3_gadget_start._entry_ptr.38 = internal global ptr @cdns3_gadget_start._entry.36, section ".printk_index", align 4
@cdns3_gadget_udc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.39, ptr @.str.2, i32 2909, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns3_gadget_udc_start\00", [41 x i8] zeroinitializer }, align 32
@cdns3_gadget_udc_start._entry_ptr = internal global ptr @cdns3_gadget_udc_start._entry, section ".printk_index", align 4
@cdns3_gadget_match_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 2206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no available ep\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns3_gadget_match_ep\00", [42 x i8] zeroinitializer }, align 32
@cdns3_gadget_match_ep._entry_ptr = internal global ptr @cdns3_gadget_match_ep._entry, section ".printk_index", align 4
@cdns3_gadget_match_ep.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 2, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"match endpoint: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@cdns3_init_eps.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 2, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns3_init_eps\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Initializing non-zero endpoints\0A\00", [63 x i8] zeroinitializer }, align 32
@cdns3_init_eps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 3033, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to init ep0\0A\00", [44 x i8] zeroinitializer }, align 32
@cdns3_init_eps._entry_ptr = internal global ptr @cdns3_init_eps._entry, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%d%s\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @cdns3_gadget_ep_enable, ptr @cdns3_gadget_ep_disable, ptr null, ptr @cdns3_gadget_ep_alloc_request, ptr @cdns3_gadget_ep_free_request, ptr @cdns3_gadget_ep_queue, ptr @cdns3_gadget_ep_dequeue, ptr @cdns3_gadget_ep_set_halt, ptr @cdns3_gadget_ep_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@cdns3_init_eps.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.43, ptr @.str.2, ptr @.str.49, i8 2, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initialized  %s support: %s %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BULK, INT\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISO\00", [28 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_enable.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 2, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns3_gadget_ep_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usbss: invalid parameters\0A\00", [37 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 2293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"usbss: missing wMaxPacketSize\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_enable._entry_ptr = internal global ptr @cdns3_gadget_ep_enable._entry, section ".printk_index", align 4
@cdns3_gadget_ep_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s: %s is already enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_enable._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 2310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Driver is limited to %d period\0A\00", [32 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_enable._entry_ptr.59 = internal global ptr @cdns3_gadget_ep_enable._entry.57, section ".printk_index", align 4
@__tracepoint_cdns3_gadget_ep_enable = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_gadget_ep_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cdns3_gadget_ep_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 2416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013usbss: invalid parameters\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns3_gadget_ep_disable\00", [40 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_disable._entry_ptr = internal global ptr @cdns3_gadget_ep_disable._entry, section ".printk_index", align 4
@cdns3_gadget_ep_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s: %s is already disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_disable._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.2, i32 2451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout: %s resetting failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns3_gadget_ep_disable._entry_ptr.65 = internal global ptr @cdns3_gadget_ep_disable._entry.63, section ".printk_index", align 4
@__tracepoint_cdns3_gadget_ep_disable = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_gadget_ep_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cdns3_gadget_ep_queue.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 2, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns3_gadget_ep_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Queuing ZLP for endpoint: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_ep_queue = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_ep_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"workaround disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get internal stored data\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wait for pending transfer\0A\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_cdns3_wa2 = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_wa2.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_cdns3_free_aligned_request = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_free_aligned_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_prepare_aligned_request = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_prepare_aligned_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_usb_irq = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_usb_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_epx_irq = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_epx_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cdns3_transfer_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1562, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request_trb=0x%p, queue_trb=0x%p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns3_transfer_completed\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdns3_transfer_completed._entry_ptr = internal global ptr @cdns3_transfer_completed._entry, section ".printk_index", align 4
@__tracepoint_cdns3_complete_trb = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_complete_trb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cdns3_request_handled = external dso_local global %struct.tracepoint, align 4
@trace_cdns3_request_handled.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ignoring Descriptor missing IRQ\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Description Missing detected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WA2 overflow\0A\00", [18 x i8] zeroinitializer }, align 32
@cdns3_wa2_descmissing_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 706, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed: No sufficient memory for DESCMIS\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cdns3_wa2_descmissing_packet\00", [35 x i8] zeroinitializer }, align 32
@cdns3_wa2_descmissing_packet._entry_ptr = internal global ptr @cdns3_wa2_descmissing_packet._entry, section ".printk_index", align 4
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"removes eldest request\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enabling WA2 skipping doorbell\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enabling WA2 ringing doorbell\0A\00", [33 x i8] zeroinitializer }, align 32
@switch.table.cdns3_get_speed = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 5], [16 x i8] zeroinitializer }, align 32
@switch.table.cdns3_gadget_start = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 5, i32 2, i32 2, i32 3, i32 2, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.cdns3_device_thread_irq_handler = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 5], [16 x i8] zeroinitializer }, align 32
@switch.table.cdns3_device_thread_irq_handler.82 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2103, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2136, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3346, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant [35 x i8] c"../drivers/usb/cdns3/cdns3-trace.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 270, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 108, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 403, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 965, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 844, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3261, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3141, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3162, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"cdns3_gadget_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2961, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3175, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3179, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3180, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3183, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3189, i32 43 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3193, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3200, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3214, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3216, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3218, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3234, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2907, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2206, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2210, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3004, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3033, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3037, i32 51 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3038, i32 28 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3038, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c"cdns3_gadget_ep_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2756, i32 32 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 3062, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2288, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2293, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2297, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2309, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2416, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2423, i32 6 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2450, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 2579, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 565, i32 28 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 583, i32 29 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 603, i32 29 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1560, i32 5 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 653, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 662, i32 27 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 665, i32 28 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 705, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 625, i32 28 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 766, i32 31 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private constant [36 x i8] c"../drivers/usb/cdns3/cdns3-gadget.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 769, i32 31 }
@___asan_gen_.352 = private unnamed_addr constant [29 x i8] c"switch.table.cdns3_get_speed\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [32 x i8] c"switch.table.cdns3_gadget_start\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [45 x i8] c"switch.table.cdns3_device_thread_irq_handler\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [48 x i8] c"switch.table.cdns3_device_thread_irq_handler.82\00", align 1
@llvm.compiler.used = appending global [109 x ptr] [ptr @__cdns3_gadget_init._entry, ptr @__cdns3_gadget_init._entry_ptr, ptr @cdns3_ep_config._entry, ptr @cdns3_ep_config._entry_ptr, ptr @cdns3_gadget_ep_disable._entry, ptr @cdns3_gadget_ep_disable._entry.63, ptr @cdns3_gadget_ep_disable._entry_ptr, ptr @cdns3_gadget_ep_disable._entry_ptr.65, ptr @cdns3_gadget_ep_enable._entry, ptr @cdns3_gadget_ep_enable._entry.57, ptr @cdns3_gadget_ep_enable._entry_ptr, ptr @cdns3_gadget_ep_enable._entry_ptr.59, ptr @cdns3_gadget_match_ep._entry, ptr @cdns3_gadget_match_ep._entry_ptr, ptr @cdns3_gadget_start._entry, ptr @cdns3_gadget_start._entry.27, ptr @cdns3_gadget_start._entry.30, ptr @cdns3_gadget_start._entry.36, ptr @cdns3_gadget_start._entry_ptr, ptr @cdns3_gadget_start._entry_ptr.29, ptr @cdns3_gadget_start._entry_ptr.32, ptr @cdns3_gadget_start._entry_ptr.38, ptr @cdns3_gadget_udc_start._entry, ptr @cdns3_gadget_udc_start._entry_ptr, ptr @cdns3_init_eps._entry, ptr @cdns3_init_eps._entry_ptr, ptr @cdns3_transfer_completed._entry, ptr @cdns3_transfer_completed._entry_ptr, ptr @cdns3_wa2_descmissing_packet._entry, ptr @cdns3_wa2_descmissing_packet._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @cdns3_gadget_ops, ptr @.str.20, ptr @cdns3_gadget_start.__key, ptr @.str.21, ptr @cdns3_gadget_start.__key.22, ptr @.str.23, ptr @cdns3_gadget_start.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @cdns3_gadget_ep_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.cdns3_get_speed, ptr @switch.table.cdns3_gadget_start, ptr @switch.table.cdns3_device_thread_irq_handler, ptr @switch.table.cdns3_device_thread_irq_handler.82], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_ep_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_start.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_start.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_start._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_start._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_udc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_match_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_init_eps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep_enable._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_gadget_ep_disable._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_transfer_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_wa2_descmissing_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns3_get_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns3_gadget_start to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns3_device_thread_irq_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns3_device_thread_irq_handler.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_set_register_bit(ptr noundef %ptr, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptr) #12, !srcloc !236
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %or = or i32 %1, %mask
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr, i32 %2) #12, !srcloc !239
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cdns3_ep_addr_to_index(i8 noundef zeroext %ep_addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i8 %ep_addr, 127
  %and2 = lshr i8 %ep_addr, 3
  %0 = and i8 %and2, 16
  %add = add nuw i8 %0, %and
  ret i8 %add
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cdns3_next_request(ptr noundef %list) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.not = icmp eq ptr %1, %list
  %add.ptr = getelementptr i8, ptr %1, i32 -36
  %spec.select = select i1 %cmp.not, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_select_ep(ptr nocapture noundef %priv_dev, i32 noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %selected_ep = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 16
  %0 = ptrtoint ptr %selected_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %selected_ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ep)
  %cmp = icmp eq i32 %1, %ep
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %selected_ep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ep, ptr %selected_ep, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %3 = tail call i32 @llvm.bswap.i32(i32 %ep)
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ep_sel = getelementptr inbounds %struct.cdns3_usb_regs, ptr %5, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel, i32 %3) #12, !srcloc !239
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cdns3_trb_virt_to_dma(ptr nocapture noundef readonly %priv_ep, ptr noundef %trb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %0 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trb_pool, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %trb to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %trb_pool_dma = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %2 = ptrtoint ptr %trb_pool_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trb_pool_dma, align 4
  %add = add i32 %sub.ptr.sub, %3
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns3_allocate_trb_pool(ptr noundef %priv_ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %2 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trb_pool, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %land.lhs.true

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

land.lhs.true:                                    ; preds = %entry
  %alloc_ring_size = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 17
  %4 = ptrtoint ptr %alloc_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloc_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7200, i32 %5)
  %cmp = icmp slt i32 %5, 7200
  br i1 %cmp, label %cdns3_free_trb_pool.exit, label %if.end

cdns3_free_trb_pool.exit:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %eps_dma_pool.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %eps_dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eps_dma_pool.i, align 8
  %trb_pool_dma.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %8 = ptrtoint ptr %trb_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trb_pool_dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef nonnull %3, i32 noundef %9) #12
  %10 = ptrtoint ptr %trb_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %trb_pool, align 4
  br label %if.then3

if.end:                                           ; preds = %land.lhs.true
  %11 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %trb_pool, align 4
  %tobool2.not = icmp eq ptr %.pr, null
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %cdns3_free_trb_pool.exit, %entry.if.then3_crit_edge
  %eps_dma_pool = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %eps_dma_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eps_dma_pool, align 8
  %trb_pool_dma = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %call = tail call ptr @dma_pool_alloc(ptr noundef %13, i32 noundef 2596, ptr noundef %trb_pool_dma) #12
  %14 = ptrtoint ptr %trb_pool to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %trb_pool, align 4
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %alloc_ring_size9 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 17
  %15 = ptrtoint ptr %alloc_ring_size9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7200, ptr %alloc_ring_size9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  %16 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trb_pool, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 7200)
  %num_trbs12 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 16
  %19 = ptrtoint ptr %num_trbs12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 600, ptr %num_trbs12, align 4
  %num = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 12
  %20 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not = icmp eq i8 %21, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trb_pool, align 4
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %24 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %use_streams, align 4
  %25 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not = icmp eq i8 %25, 0
  br i1 %tobool18.not, label %if.else, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr %struct.cdns3_trb, ptr %23, i32 599
  %trb_pool_dma20 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %26 = ptrtoint ptr %trb_pool_dma20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %trb_pool_dma20, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.end15.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 51904512, %if.else ], [ 0, %if.end15.cleanup.sink.split_crit_edge ]
  %control = getelementptr %struct.cdns3_trb, ptr %23, i32 599, i32 2
  %30 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %control, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_free_trb_pool(ptr nocapture noundef %priv_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %0 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trb_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %2 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdns3_dev, align 4
  %eps_dma_pool = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %eps_dma_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eps_dma_pool, align 8
  %trb_pool_dma = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %6 = ptrtoint ptr %trb_pool_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trb_pool_dma, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef nonnull %1, i32 noundef %7) #12
  %8 = ptrtoint ptr %trb_pool to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %trb_pool, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_hw_reset_eps_config(ptr nocapture noundef %priv_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 512) #12, !srcloc !239
  %hw_configured_flag = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 18
  %4 = ptrtoint ptr %hw_configured_flag to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %hw_configured_flag, align 2
  %onchip_used_size = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 23
  %5 = ptrtoint ptr %onchip_used_size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %onchip_used_size, align 2
  %out_mem_is_allocated = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 19
  %6 = ptrtoint ptr %out_mem_is_allocated to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %out_mem_is_allocated, align 4
  %bf.clear5 = and i16 %bf.load, 31615
  store i16 %bf.clear5, ptr %hw_configured_flag, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13, i32 %i.020
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, -65537
  store i32 %and, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_allow_enable_l1(ptr nocapture noundef readonly %priv_dev, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %regs3 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs3, align 4
  br i1 %tobool.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 256) #12, !srcloc !239
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 512) #12, !srcloc !239
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns3_get_speed(ptr nocapture noundef readonly %priv_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %usb_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts) #12, !srcloc !236
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %and = and i32 %3, 112
  %4 = add nsw i32 %and, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %5 = icmp ult i32 %4, 64
  br i1 %5, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = lshr exact i32 %4, 4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cdns3_get_speed, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_gadget_giveback(ptr noundef %priv_ep, ptr noundef %priv_req, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %list = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i3.i, align 4
  %status2 = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 11
  %10 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %11)
  %cmp = icmp eq i32 %11, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status, ptr %status2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %sysdev = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sysdev, align 4
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 11
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dir, align 4
  %conv = zext i8 %16 to i32
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %14, ptr noundef %priv_req, i32 noundef %conv) #12
  %flags = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 6
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %19 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp6 = icmp eq i8 %20, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true8:                                   ; preds = %land.lhs.true
  %21 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true8.if.end18_crit_edge

land.lhs.true8.if.end18_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sysdev, align 4
  %aligned_buf = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 5
  %25 = ptrtoint ptr %aligned_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aligned_buf, align 4
  %dma = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma, align 4
  %size = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %dir15 = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %dir15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dir15, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %24, i32 noundef %28, i32 noundef %30, i32 noundef %32) #12
  %33 = ptrtoint ptr %priv_req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv_req, align 4
  %35 = ptrtoint ptr %aligned_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aligned_buf, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %41 = call ptr @memcpy(ptr %34, ptr %38, i32 %40)
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %land.lhs.true8.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and20 = and i32 %43, -18
  store i32 %and20, ptr %flags, align 4
  %finished_trb = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 8
  %44 = ptrtoint ptr %finished_trb to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %finished_trb, align 4
  tail call fastcc void @trace_cdns3_gadget_giveback(ptr noundef %priv_req)
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %46)
  %cmp21 = icmp ult i32 %46, 148748
  br i1 %cmp21, label %if.then23, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %if.end18
  %flags.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then23.cdns3_wa2_gadget_giveback.exit_crit_edge, label %land.lhs.true.i

if.then23.cdns3_wa2_gadget_giveback.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_wa2_gadget_giveback.exit

land.lhs.true.i:                                  ; preds = %if.then23
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and2.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.cdns3_wa2_gadget_giveback.exit_crit_edge, label %if.then.i

land.lhs.true.i.cdns3_wa2_gadget_giveback.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_wa2_gadget_giveback.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %deferred_req_list.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 2
  %51 = ptrtoint ptr %deferred_req_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %deferred_req_list.i, align 4
  %cmp.not.i.i = icmp eq ptr %52, %deferred_req_list.i
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 -36
  %descmis_req.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 10
  %53 = ptrtoint ptr %descmis_req.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %descmis_req.i, align 4
  %tobool4.not42.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not.i = or i1 %cmp.not.i.i, %tobool4.not42.i
  br i1 %tobool4.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %54 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sysdev, align 4
  %56 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dir, align 4
  %conv.i = zext i8 %57 to i32
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %55, ptr noundef nonnull %add.ptr.i.i, i32 noundef %conv.i) #12
  tail call fastcc void @cdns3_wa2_descmiss_copy_data(ptr noundef %priv_ep, ptr noundef nonnull %add.ptr.i.i) #12
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i, align 4
  %and7.i = and i32 %59, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %length.i = getelementptr i8, ptr %52, i32 -32
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i, align 4
  %actual.i = getelementptr i8, ptr %52, i32 16
  %62 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.not.i = icmp eq i32 %61, %63
  br i1 %cmp.not.i, label %land.lhs.true9.i.if.end15.i_crit_edge, label %if.then11.i

land.lhs.true9.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sysdev, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 9
  %66 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bEndpointAddress.i.i, align 1
  %.lobit.i.i = lshr i8 %69, 7
  %70 = zext i8 %.lobit.i.i to i32
  %call14.i = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %65, ptr noundef nonnull %add.ptr.i.i, i32 noundef %70) #12
  br label %cleanup

if.end15.i:                                       ; preds = %land.lhs.true9.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %status.i = getelementptr i8, ptr %52, i32 12
  %71 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %72)
  %cmp16.i = icmp eq i32 %72, -115
  br i1 %cmp16.i, label %if.then18.i, label %if.end15.i.if.end20.i_crit_edge

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %status.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end20.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %52) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end20.i.cdns3_wa2_gadget_giveback.exit.thread75_crit_edge

if.end20.i.cdns3_wa2_gadget_giveback.exit.thread75_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_wa2_gadget_giveback.exit.thread75

if.end.i.i.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i, align 4
  %76 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %52, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %cdns3_wa2_gadget_giveback.exit.thread75

cdns3_wa2_gadget_giveback.exit.thread75:          ; preds = %if.end.i.i.i, %if.end20.i.cdns3_wa2_gadget_giveback.exit.thread75_crit_edge
  %80 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %52, ptr %52, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %52, ptr %prev.i3.i.i, align 4
  tail call fastcc void @cdns3_start_all_request(ptr noundef %1, ptr noundef %priv_ep) #12
  br label %if.end27

cdns3_wa2_gadget_giveback.exit:                   ; preds = %land.lhs.true.i.cdns3_wa2_gadget_giveback.exit_crit_edge, %if.then23.cdns3_wa2_gadget_giveback.exit_crit_edge
  %tobool24.not = icmp eq ptr %priv_req, null
  br i1 %tobool24.not, label %cdns3_wa2_gadget_giveback.exit.cleanup_crit_edge, label %cdns3_wa2_gadget_giveback.exit.if.end27_crit_edge

cdns3_wa2_gadget_giveback.exit.if.end27_crit_edge: ; preds = %cdns3_wa2_gadget_giveback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

cdns3_wa2_gadget_giveback.exit.cleanup_crit_edge: ; preds = %cdns3_wa2_gadget_giveback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %cdns3_wa2_gadget_giveback.exit.if.end27_crit_edge, %cdns3_wa2_gadget_giveback.exit.thread75, %if.end18.if.end27_crit_edge
  %request.0 = phi ptr [ %priv_req, %cdns3_wa2_gadget_giveback.exit.if.end27_crit_edge ], [ %priv_req, %if.end18.if.end27_crit_edge ], [ %add.ptr.i.i, %cdns3_wa2_gadget_giveback.exit.thread75 ]
  %complete = getelementptr inbounds %struct.usb_request, ptr %request.0, i32 0, i32 7
  %82 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %complete, align 4
  %tobool28.not = icmp eq ptr %83, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @usb_gadget_giveback_request(ptr noundef %priv_ep, ptr noundef %request.0) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %84 = ptrtoint ptr %request.0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %request.0, align 4
  %zlp_buf = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 10
  %86 = ptrtoint ptr %zlp_buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %zlp_buf, align 4
  %cmp33 = icmp eq ptr %85, %87
  br i1 %cmp33, label %if.then35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %if.end31
  %aligned_buf.i = getelementptr inbounds %struct.cdns3_request, ptr %request.0, i32 0, i32 5
  %88 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %aligned_buf.i, align 4
  %tobool.not.i70 = icmp eq ptr %89, null
  br i1 %tobool.not.i70, label %if.then35.cdns3_gadget_ep_free_request.exit_crit_edge, label %if.then.i71

if.then35.cdns3_gadget_ep_free_request.exit_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_gadget_ep_free_request.exit

if.then.i71:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %in_use.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i = load i8, ptr %in_use.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %in_use.i, align 4
  br label %cdns3_gadget_ep_free_request.exit

cdns3_gadget_ep_free_request.exit:                ; preds = %if.then.i71, %if.then35.cdns3_gadget_ep_free_request.exit_crit_edge
  tail call fastcc void @trace_cdns3_free_request(ptr noundef %request.0) #12
  tail call void @kfree(ptr noundef %request.0) #12
  br label %cleanup

cleanup:                                          ; preds = %cdns3_gadget_ep_free_request.exit, %if.end31.cleanup_crit_edge, %cdns3_wa2_gadget_giveback.exit.cleanup_crit_edge, %if.then11.i, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_gadget_giveback(ptr noundef %req) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_giveback, i32 0, i32 1), ptr blockaddress(@trace_cdns3_gadget_giveback, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !245
  %call42 = tail call i32 @__traceiter_cdns3_gadget_giveback(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !246
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_giveback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_giveback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_gadget_giveback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_gadget_giveback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 273, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_gadget_ep_free_request(ptr nocapture readnone %ep, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aligned_buf = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 5
  %0 = ptrtoint ptr %aligned_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aligned_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %in_use = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %in_use, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %in_use, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @trace_cdns3_free_request(ptr noundef %request)
  tail call void @kfree(ptr noundef %request) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_set_hw_configuration(ptr noundef %priv_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_configured_flag = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 18
  %0 = ptrtoint ptr %hw_configured_flag to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %hw_configured_flag, align 2
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 33554432) #12, !srcloc !239
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %7 = or i32 %6, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #12, !srcloc !239
  %8 = ptrtoint ptr %hw_configured_flag to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load4 = load i16, ptr %hw_configured_flag, align 2
  %bf.set = or i16 %bf.load4, 1024
  store i16 %bf.set, ptr %hw_configured_flag, align 2
  %ep_list = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn31 = load ptr, ptr %ep_list, align 4
  %cmp.not33 = icmp eq ptr %.pn31, %ep_list
  br i1 %cmp.not33, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %do.body.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn34, i32 13
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ep.035 = getelementptr i8, ptr %.pn34, i32 -12
  tail call fastcc void @cdns3_start_all_request(ptr noundef %priv_dev, ptr noundef %ep.035)
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 256) #12, !srcloc !239
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_start_all_request(ptr nocapture noundef readonly %priv_dev, ptr noundef %priv_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 1
  %0 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_req_list
  br i1 %cmp.i.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.not.i = icmp eq ptr %3, %pending_req_list
  %add.ptr.i = getelementptr i8, ptr %3, i32 -36
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %flags = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %flags4 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4, align 4
  %and5 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %8 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %use_streams, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %lor.lhs.false7.if.end17_crit_edge, label %lor.lhs.false7.do.body_crit_edge

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false7.if.end17_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_start_all_request.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_start_all_request, %if.then15)) #12
          to label %cleanup49 [label %if.then15], !srcloc !243

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv_dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_start_all_request.__UNIQUE_ID_ddebug353, ptr noundef %11, ptr noundef nonnull @.str.12) #12
  br label %cleanup49

if.end17:                                         ; preds = %lor.lhs.false7.if.end17_crit_edge, %entry.if.end17_crit_edge
  %deferred_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 2
  %use_streams24 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %stream_sg_idx = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 30
  %cdns3_dev.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %type.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 13
  %interval.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 14
  %free_trbs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 15
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 9
  %flags11.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %trb_pool.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %enqueue.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 20
  %num_trbs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 16
  %trb_pool_dma.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %pcs53.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 18
  %wa1_set.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 23
  %wa1_trb.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 24
  %wa1_trb_index.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 25
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 7
  %trb_burst_size.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 22
  %dir.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 11
  %pending_tdl.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 29
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %prev.i2.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 1, i32 1
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false41.while.cond_crit_edge, %if.end17
  %12 = ptrtoint ptr %deferred_req_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %deferred_req_list, align 4
  %cmp.i2.not = icmp eq ptr %13, %deferred_req_list
  br i1 %cmp.i2.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond
  %14 = ptrtoint ptr %deferred_req_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %deferred_req_list, align 4
  %cmp.not.i4 = icmp eq ptr %15, %deferred_req_list
  %add.ptr.i5 = getelementptr i8, ptr %15, i32 -36
  %spec.select.i6 = select i1 %cmp.not.i4, ptr null, ptr %add.ptr.i5
  %16 = ptrtoint ptr %use_streams24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load25 = load i8, ptr %use_streams24, align 4
  %17 = and i8 %bf.load25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %while.body
  %18 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdns3_dev.i, align 4
  %num_mapped_sgs.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 5
  %20 = ptrtoint ptr %num_mapped_sgs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_mapped_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp.i7 = icmp eq i8 %23, 1
  br i1 %cmp.i7, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %interval.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select.i8 = select i1 %tobool.not.i, i32 1, i32 %21
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %num_trb.0.i = phi i32 [ %25, %if.then.i ], [ %spec.select.i8, %if.else.i ]
  %26 = ptrtoint ptr %free_trbs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %free_trbs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_trb.0.i, i32 %27)
  %cmp6.i = icmp sgt i32 %num_trb.0.i, %27
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags11.i, align 4
  %or.i = or i32 %29, 128
  store i32 %or.i, ptr %flags11.i, align 4
  br label %cleanup49

if.end9.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress.i, align 1
  %conv10.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags11.i, align 4
  %or12.i = or i32 %35, 64
  store i32 %or12.i, ptr %flags11.i, align 4
  %flags13.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i6, i32 0, i32 6
  %36 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags13.i, align 4
  %and.i = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.else16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %aligned_buf.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i6, i32 0, i32 5
  %38 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %aligned_buf.i, align 4
  %dma.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %39, i32 0, i32 1
  br label %if.end18.i

if.else16.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %dma17.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else16.i, %if.then15.i
  %trb_dma.0.in.i = phi ptr [ %dma.i, %if.then15.i ], [ %dma17.i, %if.else16.i ]
  %40 = ptrtoint ptr %trb_dma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %trb_dma.0.i = load i32, ptr %trb_dma.0.in.i, align 4
  %41 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trb_pool.i, align 4
  %43 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %enqueue.i, align 4
  %add.ptr19.i = getelementptr %struct.cdns3_trb, ptr %42, i32 %44
  %start_trb.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i6, i32 0, i32 3
  %45 = ptrtoint ptr %start_trb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %start_trb.i, align 4
  %trb21.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i6, i32 0, i32 2
  %46 = ptrtoint ptr %trb21.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr19.i, ptr %trb21.i, align 4
  %47 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cdns3_dev.i, align 4
  %selected_ep.i.i = getelementptr inbounds %struct.cdns3_device, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %selected_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %selected_ep.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv10.i)
  %cmp.i.i = icmp eq i32 %50, %conv10.i
  br i1 %cmp.i.i, label %if.end18.i.cdns3_select_ep.exit.i_crit_edge, label %if.end.i.i

if.end18.i.cdns3_select_ep.exit.i_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit.i

if.end.i.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %selected_ep.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv10.i, ptr %selected_ep.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %52 = shl nuw i32 %conv10.i, 24
  %regs.i.i = getelementptr inbounds %struct.cdns3_device, ptr %48, i32 0, i32 6
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %ep_sel.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %54, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i.i, i32 %52) #12, !srcloc !239
  br label %cdns3_select_ep.exit.i

cdns3_select_ep.exit.i:                           ; preds = %if.end.i.i, %if.end18.i.cdns3_select_ep.exit.i_crit_edge
  %55 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %enqueue.i, align 4
  %add.i = add i32 %56, %num_trb.0.i
  %57 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_trbs.i, align 4
  %sub.i = add i32 %58, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i)
  %cmp24.not.i = icmp slt i32 %add.i, %sub.i
  br i1 %cmp24.not.i, label %cdns3_select_ep.exit.i.if.end63.i_crit_edge, label %if.then26.i

cdns3_select_ep.exit.i.if.end63.i_crit_edge:      ; preds = %cdns3_select_ep.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.then26.i:                                      ; preds = %cdns3_select_ep.exit.i
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 6
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %ep_cmd.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %60, i32 0, i32 10
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  %62 = and i32 %61, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool30.not.i = icmp eq i32 %62, 0
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %ep_traddr.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %64, i32 0, i32 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  br i1 %tobool30.not.i, label %if.then26.i.cleanup.thread.i_crit_edge, label %land.lhs.true.i

if.then26.i.cleanup.thread.i_crit_edge:           ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

land.lhs.true.i:                                  ; preds = %if.then26.i
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #12
  %67 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %trb_pool_dma.i.i, align 4
  %sub.i.i = sub i32 %66, %68
  %div.i.i = udiv i32 %sub.i.i, 12
  %69 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_trbs.i, align 4
  %sub36.i = add i32 %70, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %sub36.i)
  %cmp37.i = icmp eq i32 %div.i.i, %sub36.i
  br i1 %cmp37.i, label %cleanup.i, label %land.lhs.true.i.cleanup.thread.i_crit_edge

land.lhs.true.i.cleanup.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %land.lhs.true.i.cleanup.thread.i_crit_edge, %if.then26.i.cleanup.thread.i_crit_edge
  %71 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trb_pool.i, align 4
  %73 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_trbs.i, align 4
  %sub45.i = add i32 %74, -1
  %add.ptr46.i = getelementptr %struct.cdns3_trb, ptr %72, i32 %sub45.i
  %75 = ptrtoint ptr %pcs53.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %pcs53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool55.not.i = icmp ne i8 %76, 0
  %cond56.i = zext i1 %tobool55.not.i to i32
  %or59.i = or i32 %cond56.i, 6162
  %77 = tail call i32 @llvm.bswap.i32(i32 %or59.i) #12
  %control60.i = getelementptr %struct.cdns3_trb, ptr %72, i32 %sub45.i, i32 2
  %78 = ptrtoint ptr %control60.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %control60.i, align 4
  br label %if.end63.i

cleanup.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags11.i, align 4
  %or41.i = or i32 %80, 512
  store i32 %or41.i, ptr %flags11.i, align 4
  br label %cleanup49

if.end63.i:                                       ; preds = %cleanup.thread.i, %cdns3_select_ep.exit.i.if.end63.i_crit_edge
  %link_trb.1.i = phi ptr [ null, %cdns3_select_ep.exit.i.if.end63.i_crit_edge ], [ %add.ptr46.i, %cleanup.thread.i ]
  %dev_ver.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 4
  %81 = ptrtoint ptr %dev_ver.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dev_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148749, i32 %82)
  %cmp64.i = icmp ult i32 %82, 148749
  br i1 %cmp64.i, label %if.then66.i, label %if.end63.i.if.end68.i_crit_edge

if.end63.i.if.end68.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end63.i
  %83 = ptrtoint ptr %wa1_set.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i.i = load i8, ptr %wa1_set.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then66.i.if.end68.i_crit_edge

if.then66.i.if.end68.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.then.i.i:                                      ; preds = %if.then66.i
  %84 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cdns3_dev.i, align 4
  %regs.i498.i = getelementptr inbounds %struct.cdns3_device, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %regs.i498.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i498.i, align 4
  %ep_cmd.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %87, i32 0, i32 10
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  %89 = and i32 %88, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool2.not.i.i = icmp eq i32 %89, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end68.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.end68.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %pcs53.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pcs53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool6.not.not.i.i = icmp eq i8 %91, 0
  %92 = ptrtoint ptr %use_streams24 to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load7.i.i = load i8, ptr %use_streams24, align 4
  %bf.shl.i.i = select i1 %tobool6.not.not.i.i, i8 0, i8 -128
  %bf.clear.i.i = and i8 %bf.load7.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %use_streams24, align 4
  %93 = ptrtoint ptr %wa1_set.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load9.i.i = load i8, ptr %wa1_set.i.i, align 1
  %bf.set11.i.i = or i8 %bf.load9.i.i, -128
  store i8 %bf.set11.i.i, ptr %wa1_set.i.i, align 1
  %94 = ptrtoint ptr %wa1_trb.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr19.i, ptr %wa1_trb.i.i, align 4
  %95 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %enqueue.i, align 4
  %97 = ptrtoint ptr %wa1_trb_index.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %wa1_trb_index.i.i, align 4
  tail call fastcc void @trace_cdns3_wa1(ptr noundef %priv_ep, ptr noundef nonnull @.str.13) #12
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then5.i.i, %if.then.i.i.if.end68.i_crit_edge, %if.then66.i.if.end68.i_crit_edge, %if.end63.i.if.end68.i_crit_edge
  %tobool255.not.i = phi i1 [ true, %if.then5.i.i ], [ false, %if.then.i.i.if.end68.i_crit_edge ], [ false, %if.then66.i.if.end68.i_crit_edge ], [ false, %if.end63.i.if.end68.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end68.i.if.end71.i_crit_edge, label %if.then70.i

if.end68.i.if.end71.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 3
  %98 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sg.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %if.end68.i.if.end71.i_crit_edge
  %s.0.i = phi ptr [ %99, %if.then70.i ], [ null, %if.end68.i.if.end71.i_crit_edge ]
  %100 = ptrtoint ptr %pcs53.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pcs53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool74.not.i = icmp eq i8 %101, 0
  %cond75.i = zext i1 %tobool74.not.i to i32
  %length.i = getelementptr %struct.cdns3_trb, ptr %42, i32 %44, i32 1
  %102 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %length.i, align 4
  %103 = ptrtoint ptr %dev_ver.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dev_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148747, i32 %104)
  %cmp77.i = icmp ugt i32 %104, 148747
  br i1 %cmp77.i, label %if.then79.i, label %if.end71.i.if.end102.i_crit_edge

if.end71.i.if.end102.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102.i

if.then79.i:                                      ; preds = %if.end71.i
  %length80.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 1
  %105 = ptrtoint ptr %length80.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length80.i, align 4
  %107 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %add82.i = add i32 %106, -1
  %sub83.i = add i32 %add82.i, %bf.cast.i
  %div.i = udiv i32 %sub83.i, %bf.cast.i
  %speed.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 2, i32 5
  %108 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %109)
  %cmp90.i = icmp eq i32 %109, 5
  br i1 %cmp90.i, label %if.then92.i, label %if.else96.i

if.then92.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = shl i32 %div.i, 9
  %111 = and i32 %110, 65024
  %112 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %length.i, align 4
  br label %if.end102.i

if.else96.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl98.i = shl i32 %div.i, 16
  %or100.i = or i32 %shl98.i, %cond75.i
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else96.i, %if.then92.i, %if.end71.i.if.end102.i_crit_edge
  %control.1.i = phi i32 [ %cond75.i, %if.end71.i.if.end102.i_crit_edge ], [ %cond75.i, %if.then92.i ], [ %or100.i, %if.else96.i ]
  %113 = tail call i32 @llvm.bswap.i32(i32 %trb_dma.0.i) #12
  %length111.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 1
  %sub159.i = add i32 %num_trb.0.i, -1
  %end_trb.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i6, i32 0, i32 4
  %smax.i = tail call i32 @llvm.smax.i32(i32 %num_trb.0.i, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge, %if.end102.i
  %s.1.i = phi ptr [ %s.0.i, %if.end102.i ], [ %s.2.i, %cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge ]
  %total_tdl.0.i = phi i16 [ 0, %if.end102.i ], [ %total_tdl.1.i, %cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge ]
  %control.2.i = phi i32 [ %control.1.i, %if.end102.i ], [ 0, %cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge ]
  %sg_iter.0.i = phi i32 [ 0, %if.end102.i ], [ %inc.i, %cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge ]
  %trb.0.i = phi ptr [ %add.ptr19.i, %if.end102.i ], [ %add.ptr194.i, %cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge ]
  br i1 %tobool.not.i, label %if.else108.i, label %if.then106.i

if.then106.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %s.1.i, i32 0, i32 3
  %114 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma_address.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #12
  %117 = ptrtoint ptr %trb.0.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %trb.0.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %s.1.i, i32 0, i32 4
  br label %if.end112.i

if.else108.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %trb.0.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %113, ptr %trb.0.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.else108.i, %if.then106.i
  %length103.0.in.i = phi ptr [ %dma_length.i, %if.then106.i ], [ %length111.i, %if.else108.i ]
  %119 = ptrtoint ptr %length103.0.in.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %length103.0.i = load i32, ptr %length103.0.in.i, align 4
  %120 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags11.i, align 4
  %and114.i = and i32 %121, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %if.end112.i.if.end133.i_crit_edge, label %if.then116.i

if.end112.i.if.end133.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133.i

if.then116.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 7)
  %bf.load119.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr120.i = lshr i56 %bf.load119.i, 40
  %bf.cast121.i = trunc i56 %bf.lshr120.i to i32
  %add122.i = add i32 %length103.0.i, -1
  %sub123.i = add i32 %add122.i, %bf.cast121.i
  %div129.i = udiv i32 %sub123.i, %bf.cast121.i
  %123 = trunc i32 %div129.i to i16
  %conv132.i = add i16 %total_tdl.0.i, %123
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then116.i, %if.end112.i.if.end133.i_crit_edge
  %total_tdl.1.i = phi i16 [ %conv132.i, %if.then116.i ], [ %total_tdl.0.i, %if.end112.i.if.end133.i_crit_edge ]
  %124 = ptrtoint ptr %trb_burst_size.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %trb_burst_size.i, align 4
  %conv134.i = zext i8 %125 to i32
  %shl135.i = shl nuw i32 %conv134.i, 24
  %and137.i = and i32 %length103.0.i, 131071
  %or138.i = or i32 %shl135.i, %and137.i
  %126 = tail call i32 @llvm.bswap.i32(i32 %or138.i) #12
  %length139.i = getelementptr inbounds %struct.cdns3_trb, ptr %trb.0.i, i32 0, i32 1
  %127 = ptrtoint ptr %length139.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %length139.i, align 4
  %or140.i = or i32 %126, %128
  store i32 %or140.i, ptr %length139.i, align 4
  %129 = ptrtoint ptr %pcs53.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pcs53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool143.not.i = icmp ne i8 %130, 0
  %cond144.i = zext i1 %tobool143.not.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_iter.0.i)
  %cmp145.not.i = icmp eq i32 %sg_iter.0.i, 0
  %or148.i = select i1 %cmp145.not.i, i32 0, i32 %cond144.i
  %or104.i = or i32 %or148.i, %control.2.i
  %spec.select495.i = or i32 %or104.i, 1024
  %131 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp152.i = icmp eq i8 %132, 1
  br i1 %cmp152.i, label %land.lhs.true154.i, label %if.end133.i.if.else158.i_crit_edge

if.end133.i.if.else158.i_crit_edge:               ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158.i

land.lhs.true154.i:                               ; preds = %if.end133.i
  %133 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool155.not.i = icmp eq i8 %134, 0
  br i1 %tobool155.not.i, label %if.then156.i, label %land.lhs.true154.i.if.else158.i_crit_edge

land.lhs.true154.i.if.else158.i_crit_edge:        ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158.i

if.then156.i:                                     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #14
  %or157.i = or i32 %or104.i, 1060
  br label %if.end170.i

if.else158.i:                                     ; preds = %land.lhs.true154.i.if.else158.i_crit_edge, %if.end133.i.if.else158.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sg_iter.0.i, i32 %sub159.i)
  %cmp160.i = icmp ne i32 %sg_iter.0.i, %sub159.i
  %brmerge.i = or i1 %cmp160.i, %cmp145.not.i
  br i1 %brmerge.i, label %if.else158.i.if.end170.i_crit_edge, label %if.then165.i

if.else158.i.if.end170.i_crit_edge:               ; preds = %if.else158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170.i

if.then165.i:                                     ; preds = %if.else158.i
  call void @__sanitizer_cov_trace_pc() #14
  %or167.i = or i32 %spec.select495.i, %cond144.i
  %or168.i = or i32 %or167.i, 36
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then165.i, %if.else158.i.if.end170.i_crit_edge, %if.then156.i
  %control.4.i = phi i32 [ %or168.i, %if.then165.i ], [ %spec.select495.i, %if.else158.i.if.end170.i_crit_edge ], [ %or157.i, %if.then156.i ]
  %135 = tail call i32 @llvm.bswap.i32(i32 %control.4.i) #12
  br i1 %cmp145.not.i, label %if.else174.i, label %if.end170.i.if.end177.i_crit_edge

if.end170.i.if.end177.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177.i

if.else174.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %trb21.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %trb21.i, align 4
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.else174.i, %if.end170.i.if.end177.i_crit_edge
  %.sink.i = phi ptr [ %137, %if.else174.i ], [ %trb.0.i, %if.end170.i.if.end177.i_crit_edge ]
  %control176.i = getelementptr inbounds %struct.cdns3_trb, ptr %.sink.i, i32 0, i32 2
  %138 = ptrtoint ptr %control176.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %135, ptr %control176.i, align 4
  br i1 %tobool.not.i, label %if.end177.i.if.end190.i_crit_edge, label %if.then179.i

if.end177.i.if.end190.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.i

if.then179.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #14
  %control180.i = getelementptr inbounds %struct.cdns3_trb, ptr %trb.0.i, i32 0, i32 2
  %139 = ptrtoint ptr %control180.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %control180.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sg_iter.0.i, i32 %sub159.i)
  %cmp183.i = icmp slt i32 %sg_iter.0.i, %sub159.i
  %spec.select496.v.i = select i1 %cmp183.i, i32 335544320, i32 67108864
  %spec.select496.i = or i32 %140, %spec.select496.v.i
  %141 = ptrtoint ptr %control180.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %spec.select496.i, ptr %control180.i, align 4
  %call189.i = tail call ptr @sg_next(ptr noundef %s.1.i) #12
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then179.i, %if.end177.i.if.end190.i_crit_edge
  %s.2.i = phi ptr [ %call189.i, %if.then179.i ], [ %s.1.i, %if.end177.i.if.end190.i_crit_edge ]
  %inc.i = add nuw nsw i32 %sg_iter.0.i, 1
  %142 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %enqueue.i, align 4
  %144 = ptrtoint ptr %end_trb.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %end_trb.i, align 4
  %145 = ptrtoint ptr %free_trbs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %free_trbs.i, align 4
  %dec.i.i = add i32 %146, -1
  store i32 %dec.i.i, ptr %free_trbs.i, align 4
  %147 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_trbs.i, align 4
  %149 = load i32, ptr %enqueue.i, align 4
  %inc.i.i.i = add i32 %149, 1
  store i32 %inc.i.i.i, ptr %enqueue.i, align 4
  %150 = add i32 %148, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %150)
  %cmp.i.i.i = icmp eq i32 %149, %150
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end190.i.cdns3_ep_inc_enq.exit.i_crit_edge

if.end190.i.cdns3_ep_inc_enq.exit.i_crit_edge:    ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_ep_inc_enq.exit.i

if.then.i.i.i:                                    ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %enqueue.i, align 4
  %152 = ptrtoint ptr %pcs53.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %pcs53.i, align 1
  %154 = xor i8 %153, 1
  store i8 %154, ptr %pcs53.i, align 1
  br label %cdns3_ep_inc_enq.exit.i

cdns3_ep_inc_enq.exit.i:                          ; preds = %if.then.i.i.i, %if.end190.i.cdns3_ep_inc_enq.exit.i_crit_edge
  %155 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %trb_pool.i, align 4
  %157 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %enqueue.i, align 4
  %add.ptr194.i = getelementptr %struct.cdns3_trb, ptr %156, i32 %158
  %length195.i = getelementptr %struct.cdns3_trb, ptr %156, i32 %158, i32 1
  %159 = ptrtoint ptr %length195.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %length195.i, align 4
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %do.end.i, label %cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge

cdns3_ep_inc_enq.exit.i.do.body.i_crit_edge:      ; preds = %cdns3_ep_inc_enq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i:                                         ; preds = %cdns3_ep_inc_enq.exit.i
  %160 = ptrtoint ptr %trb21.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %trb21.i, align 4
  %162 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags13.i, align 4
  %or200.i = or i32 %163, 1
  store i32 %or200.i, ptr %flags13.i, align 4
  %num_of_trb.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i6, i32 0, i32 9
  %164 = ptrtoint ptr %num_of_trb.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %num_trb.0.i, ptr %num_of_trb.i, align 4
  br i1 %cmp145.not.i, label %if.then203.i, label %do.end.i.if.end206.i_crit_edge

do.end.i.if.end206.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206.i

if.then203.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %control204.i = getelementptr inbounds %struct.cdns3_trb, ptr %161, i32 0, i32 2
  %165 = ptrtoint ptr %control204.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %control204.i, align 4
  %or205.i = or i32 %166, 603979776
  store i32 %or205.i, ptr %control204.i, align 4
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then203.i, %do.end.i.if.end206.i_crit_edge
  %167 = ptrtoint ptr %dev_ver.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dev_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %168)
  %cmp208.i = icmp ult i32 %168, 148748
  br i1 %cmp208.i, label %land.lhs.true210.i, label %if.end206.i.do.body252.i_crit_edge

if.end206.i.do.body252.i_crit_edge:               ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body252.i

land.lhs.true210.i:                               ; preds = %if.end206.i
  %169 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags11.i, align 4
  %and212.i = and i32 %170, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212.i)
  %tobool213.not.i = icmp eq i32 %and212.i, 0
  br i1 %tobool213.not.i, label %land.lhs.true210.i.do.body252.i_crit_edge, label %if.then214.i

land.lhs.true210.i.do.body252.i_crit_edge:        ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body252.i

if.then214.i:                                     ; preds = %land.lhs.true210.i
  %regs217.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 6
  %171 = ptrtoint ptr %regs217.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs217.i, align 4
  %ep_cmd218.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %172, i32 0, i32 10
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd218.i) #12, !srcloc !236
  %174 = lshr i32 %173, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  %conv223.i = and i32 %174, 127
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %total_tdl.1.i)
  %cmp225.i = icmp ugt i16 %total_tdl.1.i, 127
  br i1 %cmp225.i, label %if.then227.i, label %if.then214.i.if.end231.i_crit_edge

if.then214.i.if.end231.i_crit_edge:               ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231.i

if.then227.i:                                     ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub229.i = add i16 %total_tdl.1.i, -127
  %175 = ptrtoint ptr %pending_tdl.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %sub229.i, ptr %pending_tdl.i, align 2
  br label %if.end231.i

if.end231.i:                                      ; preds = %if.then227.i, %if.then214.i.if.end231.i_crit_edge
  %tdl.0.i = phi i16 [ 127, %if.then227.i ], [ %total_tdl.1.i, %if.then214.i.if.end231.i_crit_edge ]
  %conv233.i = zext i16 %tdl.0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv223.i, i32 %conv233.i)
  %cmp234.i = icmp ult i32 %conv223.i, %conv233.i
  br i1 %cmp234.i, label %if.then236.i, label %if.end231.i.do.body252.i_crit_edge

if.end231.i.do.body252.i_crit_edge:               ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body252.i

if.then236.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #14
  %176 = trunc i32 %174 to i16
  %conv240.i = sub nsw i16 %tdl.0.i, %176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  tail call void @arm_heavy_mb() #12
  %conv244.i = zext i16 %conv240.i to i32
  %shl245.i = shl i32 %conv244.i, 17
  %and246.i = and i32 %shl245.i, 16646144
  %or247.i = or i32 %and246.i, 65536
  %177 = ptrtoint ptr %regs217.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs217.i, align 4
  %ep_cmd249.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %178, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd249.i, i32 %or247.i) #12, !srcloc !239
  br label %do.body252.i

do.body252.i:                                     ; preds = %if.then236.i, %if.end231.i.do.body252.i_crit_edge, %land.lhs.true210.i.do.body252.i_crit_edge, %if.end206.i.do.body252.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @arm_heavy_mb() #12
  br i1 %tobool255.not.i, label %do.body252.i.if.end259.i_crit_edge, label %if.then256.i

do.body252.i.if.end259.i_crit_edge:               ; preds = %do.body252.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end259.i

if.then256.i:                                     ; preds = %do.body252.i
  call void @__sanitizer_cov_trace_pc() #14
  %control257.i = getelementptr inbounds %struct.cdns3_trb, ptr %161, i32 0, i32 2
  %179 = ptrtoint ptr %control257.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %control257.i, align 4
  %xor.i = xor i32 %180, 16777216
  store i32 %xor.i, ptr %control257.i, align 4
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.then256.i, %do.body252.i.if.end259.i_crit_edge
  %181 = ptrtoint ptr %dev_ver.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %dev_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148749, i32 %182)
  %cmp261.i = icmp ult i32 %182, 148749
  br i1 %cmp261.i, label %if.then263.i, label %if.end259.i.if.end264.i_crit_edge

if.end259.i.if.end264.i_crit_edge:                ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264.i

if.then263.i:                                     ; preds = %if.end259.i
  %regs.i501.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 6
  %183 = ptrtoint ptr %regs.i501.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i501.i, align 4
  %ep_cmd.i502.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %184, i32 0, i32 10
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd.i502.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %186 = and i32 %185, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i503.i = icmp eq i32 %186, 0
  %187 = ptrtoint ptr %regs.i501.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i501.i, align 4
  %ep_traddr.i.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %188, i32 0, i32 8
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr.i.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  br i1 %tobool.not.i503.i, label %if.then263.i.if.then.i505.i_crit_edge, label %lor.lhs.false.i.i

if.then263.i.if.then.i505.i_crit_edge:            ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i505.i

lor.lhs.false.i.i:                                ; preds = %if.then263.i
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #12
  %191 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %trb_pool_dma.i.i, align 4
  %sub.i.i.i = sub i32 %190, %192
  %div.i.i.i = udiv i32 %sub.i.i.i, 12
  %193 = ptrtoint ptr %wa1_trb_index.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %wa1_trb_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i, i32 %194)
  %cmp.not.i.i = icmp eq i32 %div.i.i.i, %194
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i.if.end264.i_crit_edge, label %lor.lhs.false.i.i.if.then.i505.i_crit_edge

lor.lhs.false.i.i.if.then.i505.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i505.i

lor.lhs.false.i.i.if.end264.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264.i

if.then.i505.i:                                   ; preds = %lor.lhs.false.i.i.if.then.i505.i_crit_edge, %if.then263.i.if.then.i505.i_crit_edge
  %195 = ptrtoint ptr %wa1_set.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %bf.load.i.i.i = load i8, ptr %wa1_set.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i505.i.if.end264.i_crit_edge, label %if.then.i.i506.i

if.then.i505.i.if.end264.i_crit_edge:             ; preds = %if.then.i505.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264.i

if.then.i.i506.i:                                 ; preds = %if.then.i505.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_cdns3_wa1(ptr noundef %priv_ep, ptr noundef nonnull @.str.14) #12
  %196 = ptrtoint ptr %wa1_set.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load2.i.i.i = load i8, ptr %wa1_set.i.i, align 1
  %bf.clear.i.i.i = and i8 %bf.load2.i.i.i, 127
  store i8 %bf.clear.i.i.i, ptr %wa1_set.i.i, align 1
  %197 = ptrtoint ptr %wa1_trb_index.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 65535, ptr %wa1_trb_index.i.i, align 4
  %198 = ptrtoint ptr %use_streams24 to i32
  call void @__asan_load1_noabort(i32 %198)
  %bf.load3.i.i.i = load i8, ptr %use_streams24, align 4
  %199 = ptrtoint ptr %wa1_trb.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %wa1_trb.i.i, align 4
  %control11.i.i.i = getelementptr inbounds %struct.cdns3_trb, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %control11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %control11.i.i.i, align 4
  %and.i.i.i = and i32 %202, -16777217
  %203 = and i8 %bf.load3.i.i.i, -128
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 17
  %or.sink.i.i.i = or i32 %and.i.i.i, %205
  store i32 %or.sink.i.i.i, ptr %control11.i.i.i, align 4
  br label %if.end264.i

if.end264.i:                                      ; preds = %if.then.i.i506.i, %if.then.i505.i.if.end264.i_crit_edge, %lor.lhs.false.i.i.if.end264.i_crit_edge, %if.end259.i.if.end264.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_trb.0.i)
  %cmp265.i = icmp sgt i32 %num_trb.0.i, 1
  br i1 %cmp265.i, label %if.end264.i.while.body.i_crit_edge, label %if.else280.i

if.end264.i.while.body.i_crit_edge:               ; preds = %if.end264.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end279.i.while.body.i_crit_edge, %if.end264.i.while.body.i_crit_edge
  %trb.1520.i = phi ptr [ %trb.2.i, %if.end279.i.while.body.i_crit_edge ], [ %161, %if.end264.i.while.body.i_crit_edge ]
  %i.0519.i = phi i32 [ %i.1.i, %if.end279.i.while.body.i_crit_edge ], [ 0, %if.end264.i.while.body.i_crit_edge ]
  %num_trb.1518.i = phi i32 [ %num_trb.2.i, %if.end279.i.while.body.i_crit_edge ], [ %num_trb.0.i, %if.end264.i.while.body.i_crit_edge ]
  %add.ptr270.i = getelementptr %struct.cdns3_trb, ptr %trb.1520.i, i32 %i.0519.i
  tail call fastcc void @trace_cdns3_prepare_trb(ptr noundef %priv_ep, ptr noundef %add.ptr270.i) #12
  %cmp272.i = icmp eq ptr %add.ptr270.i, %link_trb.1.i
  br i1 %cmp272.i, label %if.then274.i, label %if.else277.i

if.then274.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %trb_pool.i, align 4
  %sub276.i = sub i32 %num_trb.1518.i, %i.0519.i
  br label %if.end279.i

if.else277.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc278.i = add i32 %i.0519.i, 1
  br label %if.end279.i

if.end279.i:                                      ; preds = %if.else277.i, %if.then274.i
  %num_trb.2.i = phi i32 [ %sub276.i, %if.then274.i ], [ %num_trb.1518.i, %if.else277.i ]
  %i.1.i = phi i32 [ 0, %if.then274.i ], [ %inc278.i, %if.else277.i ]
  %trb.2.i = phi ptr [ %207, %if.then274.i ], [ %trb.1520.i, %if.else277.i ]
  %cmp268.i = icmp sgt i32 %num_trb.2.i, %i.1.i
  br i1 %cmp268.i, label %if.end279.i.while.body.i_crit_edge, label %if.end279.i.do.body283.i_crit_edge

if.end279.i.do.body283.i_crit_edge:               ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body283.i

if.end279.i.while.body.i_crit_edge:               ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.else280.i:                                     ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %trb21.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %trb21.i, align 4
  tail call fastcc void @trace_cdns3_prepare_trb(ptr noundef %priv_ep, ptr noundef %209) #12
  br label %do.body283.i

do.body283.i:                                     ; preds = %if.else280.i, %if.end279.i.do.body283.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  tail call void @arm_heavy_mb() #12
  %210 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %flags11.i, align 4
  %and287.i = and i32 %211, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287.i)
  %tobool288.not.i = icmp eq i32 %and287.i, 0
  br i1 %tobool288.not.i, label %do.body283.i.if.end314.i_crit_edge, label %if.then289.i

do.body283.i.if.end314.i_crit_edge:               ; preds = %do.body283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end314.i

if.then289.i:                                     ; preds = %do.body283.i
  %212 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %213)
  %cmp292.i = icmp eq i8 %213, 1
  br i1 %cmp292.i, label %land.lhs.true294.i, label %if.then289.i.do.body306.i_crit_edge

if.then289.i.do.body306.i_crit_edge:              ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body306.i

land.lhs.true294.i:                               ; preds = %if.then289.i
  %214 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool296.not.i = icmp eq i8 %215, 0
  %and299.i = and i32 %211, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299.i)
  %tobool300.not.i = icmp eq i32 %and299.i, 0
  %or.cond.i = select i1 %tobool296.not.i, i1 %tobool300.not.i, i1 false
  br i1 %or.cond.i, label %if.then301.i, label %land.lhs.true294.i.do.body306.i_crit_edge

land.lhs.true294.i.do.body306.i_crit_edge:        ; preds = %land.lhs.true294.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body306.i

if.then301.i:                                     ; preds = %land.lhs.true294.i
  call void @__sanitizer_cov_trace_pc() #14
  %or303.i = or i32 %211, 1024
  %216 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %or303.i, ptr %flags11.i, align 4
  %regs304.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 6
  %217 = ptrtoint ptr %regs304.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs304.i, align 4
  %ep_cfg.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %218, i32 0, i32 9
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cfg.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %220 = or i32 %219, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cfg.i, i32 %220) #12, !srcloc !239
  br label %do.body306.i

do.body306.i:                                     ; preds = %if.then301.i, %land.lhs.true294.i.do.body306.i_crit_edge, %if.then289.i.do.body306.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %221 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %trb_pool_dma.i.i, align 4
  %223 = ptrtoint ptr %start_trb.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %start_trb.i, align 4
  %mul.i = mul i32 %224, 12
  %add310.i = add i32 %mul.i, %222
  %225 = tail call i32 @llvm.bswap.i32(i32 %add310.i) #12
  %regs311.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 6
  %226 = ptrtoint ptr %regs311.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs311.i, align 4
  %ep_traddr.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %227, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_traddr.i, i32 %225) #12, !srcloc !239
  %228 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %flags11.i, align 4
  %and313.i = and i32 %229, -33
  store i32 %and313.i, ptr %flags11.i, align 4
  br label %if.end314.i

if.end314.i:                                      ; preds = %do.body306.i, %do.body283.i.if.end314.i_crit_edge
  %230 = ptrtoint ptr %wa1_set.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %bf.load315.i = load i8, ptr %wa1_set.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load315.i)
  %tobool318.not.i = icmp sgt i8 %bf.load315.i, -1
  br i1 %tobool318.not.i, label %land.lhs.true319.i, label %if.end314.i.if.end340.i_crit_edge

if.end314.i.if.end340.i_crit_edge:                ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end340.i

land.lhs.true319.i:                               ; preds = %if.end314.i
  %231 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %flags11.i, align 4
  %and321.i = and i32 %232, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321.i)
  %tobool322.not.i = icmp eq i32 %and321.i, 0
  br i1 %tobool322.not.i, label %if.then323.i, label %land.lhs.true319.i.if.end340.i_crit_edge

land.lhs.true319.i.if.end340.i_crit_edge:         ; preds = %land.lhs.true319.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end340.i

if.then323.i:                                     ; preds = %land.lhs.true319.i
  tail call fastcc void @trace_cdns3_ring(ptr noundef %priv_ep) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  tail call void @arm_heavy_mb() #12
  %regs327.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 6
  %233 = ptrtoint ptr %regs327.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs327.i, align 4
  %ep_sts.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %234, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts.i, i32 -1879048192) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %235 = ptrtoint ptr %regs327.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs327.i, align 4
  %ep_cmd332.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %236, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd332.i, i32 1073741824) #12, !srcloc !239
  %237 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cdns3_dev.i, align 4
  %dev_ver.i.i = getelementptr inbounds %struct.cdns3_device, ptr %238, i32 0, i32 4
  %239 = ptrtoint ptr %dev_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %dev_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148749, i32 %240)
  %cmp.i509.i = icmp ult i32 %240, 148749
  br i1 %cmp.i509.i, label %if.then323.i.cdns3_rearm_drdy_if_needed.exit.i_crit_edge, label %if.end.i512.i

if.then323.i.cdns3_rearm_drdy_if_needed.exit.i_crit_edge: ; preds = %if.then323.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_rearm_drdy_if_needed.exit.i

if.end.i512.i:                                    ; preds = %if.then323.i
  %regs.i510.i = getelementptr inbounds %struct.cdns3_device, ptr %238, i32 0, i32 6
  %241 = ptrtoint ptr %regs.i510.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs.i510.i, align 4
  %ep_sts.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %242, i32 0, i32 11
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %243)
  %tobool.not.i511.i = icmp sgt i32 %243, -1
  br i1 %tobool.not.i511.i, label %if.end.i512.i.cdns3_rearm_drdy_if_needed.exit.i_crit_edge, label %do.body.i.i

if.end.i512.i.cdns3_rearm_drdy_if_needed.exit.i_crit_edge: ; preds = %if.end.i512.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_rearm_drdy_if_needed.exit.i

do.body.i.i:                                      ; preds = %if.end.i512.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %244 = ptrtoint ptr %regs.i510.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i510.i, align 4
  %ep_sts4.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %245, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts4.i.i, i32 -2147483648) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %246 = ptrtoint ptr %regs.i510.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs.i510.i, align 4
  %ep_cmd.i513.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %247, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd.i513.i, i32 1073741824) #12, !srcloc !239
  br label %cdns3_rearm_drdy_if_needed.exit.i

cdns3_rearm_drdy_if_needed.exit.i:                ; preds = %do.body.i.i, %if.end.i512.i.cdns3_rearm_drdy_if_needed.exit.i_crit_edge, %if.then323.i.cdns3_rearm_drdy_if_needed.exit.i_crit_edge
  %248 = ptrtoint ptr %regs327.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs327.i, align 4
  %ep_traddr336.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %249, i32 0, i32 8
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr336.i) #12, !srcloc !236
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call fastcc void @trace_cdns3_doorbell_epx(ptr noundef %name.i, i32 noundef %251) #12
  br label %if.end340.i

if.end340.i:                                      ; preds = %cdns3_rearm_drdy_if_needed.exit.i, %land.lhs.true319.i.if.end340.i_crit_edge, %if.end314.i.if.end340.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.cdns3_device, ptr %19, i32 0, i32 6
  %252 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i.i.i, align 4
  %usb_sts.i.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %253, i32 0, i32 1
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %255 = and i32 %254, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %255)
  %cond.i.i = icmp eq i32 %255, 1073741824
  br i1 %cond.i.i, label %if.end340.i.if.end36_crit_edge, label %do.body.i514.i

if.end340.i.if.end36_crit_edge:                   ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.body.i514.i:                                   ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %256 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 4096) #12, !srcloc !239
  br label %if.end36

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %258 = ptrtoint ptr %stream_sg_idx to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %stream_sg_idx, align 4
  tail call fastcc void @cdns3_ep_run_stream_transfer(ptr noundef %priv_ep, ptr noundef %spec.select.i6)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %do.body.i514.i, %if.end340.i.if.end36_crit_edge
  %list = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i9, label %if.end36.__list_del_entry.exit.i_crit_edge

if.end36.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i9:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 9, i32 1
  %259 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %prev.i.i, align 4
  %261 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %260, ptr %prev1.i.i.i, align 4
  %264 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %262, ptr %260, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i9, %if.end36.__list_del_entry.exit.i_crit_edge
  %265 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %266, ptr noundef %pending_req_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %267 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %list, ptr %prev.i2.i, align 4
  %268 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %pending_req_list, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 9, i32 1
  %269 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %266, ptr %prev3.i.i.i, align 4
  %270 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %270)
  store volatile ptr %list, ptr %266, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %spec.select.i6, i32 0, i32 6
  %271 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %271)
  %bf.load38 = load i32, ptr %stream_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load38)
  %cmp.not = icmp ult i32 %bf.load38, 65536
  br i1 %cmp.not, label %lor.lhs.false41, label %list_move_tail.exit.while.end_crit_edge

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

lor.lhs.false41:                                  ; preds = %list_move_tail.exit
  %272 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %flags11.i, align 4
  %and43 = and i32 %273, 32768
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false41.while.cond_crit_edge, label %lor.lhs.false41.while.end_crit_edge

lor.lhs.false41.while.end_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

lor.lhs.false41.while.cond_crit_edge:             ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %lor.lhs.false41.while.end_crit_edge, %list_move_tail.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %274 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %flags11.i, align 4
  %and48 = and i32 %275, -129
  store i32 %and48, ptr %flags11.i, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %while.end, %cleanup.i, %if.then8.i, %if.then15, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns3_rearm_transfer(ptr noundef %priv_ep, i8 noundef zeroext %rearm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %wa1_set.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 23
  %2 = ptrtoint ptr %wa1_set.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %wa1_set.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cdns3_wa1_restore_cycle_bit.exit_crit_edge, label %if.then.i

entry.cdns3_wa1_restore_cycle_bit.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_wa1_restore_cycle_bit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_cdns3_wa1(ptr noundef %priv_ep, ptr noundef nonnull @.str.14) #12
  %3 = ptrtoint ptr %wa1_set.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2.i = load i8, ptr %wa1_set.i, align 1
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %wa1_set.i, align 1
  %wa1_trb_index.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 25
  %4 = ptrtoint ptr %wa1_trb_index.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %wa1_trb_index.i, align 4
  %wa1_cycle_bit.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %5 = ptrtoint ptr %wa1_cycle_bit.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load3.i = load i8, ptr %wa1_cycle_bit.i, align 4
  %wa1_trb10.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 24
  %6 = ptrtoint ptr %wa1_trb10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wa1_trb10.i, align 4
  %control11.i = getelementptr inbounds %struct.cdns3_trb, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %control11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control11.i, align 4
  %and.i = and i32 %9, -16777217
  %10 = and i8 %bf.load3.i, -128
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 17
  %or.sink.i = or i32 %and.i, %12
  store i32 %or.sink.i, ptr %control11.i, align 4
  br label %cdns3_wa1_restore_cycle_bit.exit

cdns3_wa1_restore_cycle_bit.exit:                 ; preds = %if.then.i, %entry.cdns3_wa1_restore_cycle_bit.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rearm)
  %tobool.not = icmp eq i8 %rearm, 0
  br i1 %tobool.not, label %cdns3_wa1_restore_cycle_bit.exit.if.end_crit_edge, label %if.then

cdns3_wa1_restore_cycle_bit.exit.if.end_crit_edge: ; preds = %cdns3_wa1_restore_cycle_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cdns3_wa1_restore_cycle_bit.exit
  tail call fastcc void @trace_cdns3_ring(ptr noundef %priv_ep)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %14, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 1073741824) #12, !srcloc !239
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %usb_sts.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %16, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %18 = and i32 %17, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %18)
  %cond.i = icmp eq i32 %18, 1073741824
  br i1 %cond.i, label %if.then.__cdns3_gadget_wakeup.exit_crit_edge, label %do.body.i

if.then.__cdns3_gadget_wakeup.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cdns3_gadget_wakeup.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 4096) #12, !srcloc !239
  br label %__cdns3_gadget_wakeup.exit

__cdns3_gadget_wakeup.exit:                       ; preds = %do.body.i, %if.then.__cdns3_gadget_wakeup.exit_crit_edge
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %ep_traddr = getelementptr inbounds %struct.cdns3_usb_regs, ptr %22, i32 0, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr) #12, !srcloc !236
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  tail call fastcc void @trace_cdns3_doorbell_epx(ptr noundef %name, i32 noundef %24)
  br label %if.end

if.end:                                           ; preds = %__cdns3_gadget_wakeup.exit, %cdns3_wa1_restore_cycle_bit.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_ring(ptr noundef %priv_ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ring, i32 0, i32 1), ptr blockaddress(@trace_cdns3_ring, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !270
  %call42 = tail call i32 @__traceiter_cdns3_ring(ptr noundef null, ptr noundef %priv_ep) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !271
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ring, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ring, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_ring.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_ring.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 462, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
define dso_local i32 @__cdns3_gadget_wakeup(ptr nocapture noundef readonly %priv_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %usb_sts.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %3 = and i32 %2, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cond = icmp eq i32 %3, 1073741824
  br i1 %cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 4096) #12, !srcloc !239
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_doorbell_epx(ptr noundef %ep_name, i32 noundef %ep_trbaddr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_doorbell_epx, i32 0, i32 1), ptr blockaddress(@trace_cdns3_doorbell_epx, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !272
  %call42 = tail call i32 @__traceiter_cdns3_doorbell_epx(ptr noundef null, ptr noundef %ep_name, i32 noundef %ep_trbaddr) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !273
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_doorbell_epx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_doorbell_epx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_doorbell_epx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_doorbell_epx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 95, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
define dso_local i32 @cdns3_ep_config(ptr noundef %priv_ep, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 13
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %2 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdns3_dev, align 4
  %num = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 12
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num, align 1
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 11
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dir, align 4
  %or187 = or i8 %7, %5
  %or = zext i8 %or187 to i32
  tail call fastcc void @cdns3_configure_dmult(ptr noundef %3, ptr noundef %priv_ep)
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 2, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148747, i32 %12)
  %cmp7 = icmp ugt i32 %12, 148747
  br i1 %cmp7, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool.not, i32 22, i32 6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %dev_ver12 = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %dev_ver12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_ver12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148747, i32 %16)
  %cmp13 = icmp ugt i32 %16, 148747
  br i1 %cmp13, label %land.lhs.true15, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true15:                                  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  %spec.select188 = select i1 %tobool17.not, i32 20, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true15, %sw.bb11.sw.epilog_crit_edge, %land.lhs.true, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ep_cfg.0 = phi i32 [ 4, %sw.bb11.sw.epilog_crit_edge ], [ 6, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true ], [ %spec.select188, %land.lhs.true15 ], [ 2, %entry.sw.epilog_crit_edge ]
  %mult.0 = phi i8 [ 0, %sw.bb11.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true15 ], [ 2, %entry.sw.epilog_crit_edge ]
  %speed = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %20, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.bb23
    i32 3, label %sw.bb26
    i32 5, label %sw.bb30
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb23:                                          ; preds = %sw.epilog
  br i1 %cmp, label %sw.bb23.if.then54_crit_edge, label %sw.bb23.if.end59_crit_edge

sw.bb23.if.end59_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

sw.bb23.if.then54_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

sw.bb26:                                          ; preds = %sw.epilog
  br i1 %cmp, label %sw.bb26.if.end59_crit_edge, label %sw.bb26.if.then54_crit_edge

sw.bb26.if.then54_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

sw.bb26.if.end59_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

sw.bb30:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp33 = icmp eq i8 %9, 1
  br i1 %cmp33, label %if.then35, label %sw.bb30.if.end59_crit_edge

sw.bb30.if.end59_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  %interval = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 14
  %22 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp41 = icmp sgt i32 %23, 1
  %spec.select189 = select i1 %cmp41, i32 4, i32 3
  br label %if.end59

if.then54:                                        ; preds = %sw.bb26.if.then54_crit_edge, %sw.bb23.if.then54_crit_edge
  %max_packet_size.0.ph = phi i32 [ 33554432, %sw.bb26.if.then54_crit_edge ], [ 67043328, %sw.bb23.if.then54_crit_edge ]
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.then35, %sw.bb30.if.end59_crit_edge, %sw.bb26.if.end59_crit_edge, %sw.bb23.if.end59_crit_edge
  %.sink = phi i8 [ 64, %if.then54 ], [ -128, %sw.bb26.if.end59_crit_edge ], [ -128, %if.then35 ], [ -128, %sw.bb30.if.end59_crit_edge ], [ 16, %sw.bb23.if.end59_crit_edge ]
  %mult.1203 = phi i8 [ %mult.0, %if.then54 ], [ %mult.0, %sw.bb26.if.end59_crit_edge ], [ 0, %if.then35 ], [ 0, %sw.bb30.if.end59_crit_edge ], [ %mult.0, %sw.bb23.if.end59_crit_edge ]
  %buffering.1201 = phi i32 [ 3, %if.then54 ], [ 3, %sw.bb26.if.end59_crit_edge ], [ %spec.select189, %if.then35 ], [ 3, %sw.bb30.if.end59_crit_edge ], [ 3, %sw.bb23.if.end59_crit_edge ]
  %maxburst.0199 = phi i32 [ 0, %if.then54 ], [ 0, %sw.bb26.if.end59_crit_edge ], [ 512, %if.then35 ], [ 768, %sw.bb30.if.end59_crit_edge ], [ 0, %sw.bb23.if.end59_crit_edge ]
  %max_packet_size.0197 = phi i32 [ %max_packet_size.0.ph, %if.then54 ], [ 67108864, %sw.bb26.if.end59_crit_edge ], [ 67108864, %if.then35 ], [ 67108864, %sw.bb30.if.end59_crit_edge ], [ 4194304, %sw.bb23.if.end59_crit_edge ]
  %trb_burst_size55 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 22
  %24 = ptrtoint ptr %trb_burst_size55 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %trb_burst_size55, align 4
  %hw_configured_flag = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 18
  %25 = ptrtoint ptr %hw_configured_flag to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %hw_configured_flag, align 2
  %26 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool60.not = icmp eq i16 %26, 0
  br i1 %tobool60.not, label %if.then61, label %if.end59.if.end70_crit_edge

if.end59.if.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then61:                                        ; preds = %if.end59
  %add63 = add nuw nsw i32 %buffering.1201, 1
  %27 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool65.not = icmp eq i8 %28, 0
  %onchip_buffers.i = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 22
  %29 = ptrtoint ptr %onchip_buffers.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %onchip_buffers.i, align 8
  %conv.i = zext i16 %30 to i32
  %onchip_used_size.i = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 23
  %31 = ptrtoint ptr %onchip_used_size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %onchip_used_size.i, align 2
  %conv1.i = zext i16 %32 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %sub2.i = add nsw i32 %sub.i, -2
  br i1 %tobool65.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %buffering.1201)
  %cmp.i.not = icmp sgt i32 %sub2.i, %buffering.1201
  br i1 %cmp.i.not, label %if.then.i.cleanup25.sink.split.i_crit_edge, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then.i.cleanup25.sink.split.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25.sink.split.i

if.else.i:                                        ; preds = %if.then61
  %out_mem_is_allocated.i = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 19
  %33 = ptrtoint ptr %out_mem_is_allocated.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out_mem_is_allocated.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %buffering.1201, i32 %34)
  %cmp8.not.i.not = icmp slt i32 %buffering.1201, %34
  br i1 %cmp8.not.i.not, label %if.else.i.if.end70_crit_edge, label %if.end11.i

if.else.i.if.end70_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end11.i:                                       ; preds = %if.else.i
  %sub13.i = sub i32 %add63, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %sub2.i)
  %cmp14.i = icmp sgt i32 %sub13.i, %sub2.i
  br i1 %cmp14.i, label %if.end11.i.do.end_crit_edge, label %cleanup.i

if.end11.i.do.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cleanup.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %out_mem_is_allocated.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add63, ptr %out_mem_is_allocated.i, align 4
  br label %cleanup25.sink.split.i

cleanup25.sink.split.i:                           ; preds = %cleanup.i, %if.then.i.cleanup25.sink.split.i_crit_edge
  %size.sink.i = phi i32 [ %sub13.i, %cleanup.i ], [ %add63, %if.then.i.cleanup25.sink.split.i_crit_edge ]
  %36 = trunc i32 %size.sink.i to i16
  %conv7.i = add i16 %32, %36
  %37 = ptrtoint ptr %onchip_used_size.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv7.i, ptr %onchip_used_size.i, align 2
  br label %if.end70

do.end:                                           ; preds = %if.end11.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str) #15
  br label %cleanup

if.end70:                                         ; preds = %cleanup25.sink.split.i, %if.else.i.if.end70_crit_edge, %if.end59.if.end70_crit_edge
  %or73 = zext i1 %enable to i32
  %spec.select190 = or i32 %ep_cfg.0, %or73
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %40 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load75 = load i8, ptr %use_streams, align 4
  %41 = and i8 %bf.load75, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool79.not = icmp eq i8 %41, 0
  br i1 %tobool79.not, label %if.end70.if.end99_crit_edge, label %land.lhs.true80

if.end70.if.end99_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true80:                                  ; preds = %if.end70
  %42 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp83 = icmp ugt i32 %43, 4
  br i1 %cmp83, label %if.then85, label %land.lhs.true80.if.end99_crit_edge

land.lhs.true80.if.end99_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then85:                                        ; preds = %land.lhs.true80
  %dev_ver86 = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %dev_ver86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dev_ver86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %45)
  %cmp87 = icmp ugt i32 %45, 148748
  br i1 %cmp87, label %if.then89, label %if.then85.if.end97_crit_edge

if.then85.if.end97_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then89:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num, align 1
  %conv91 = zext i8 %47 to i32
  %48 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool94.not = icmp eq i8 %49, 0
  %cond95 = select i1 %tobool94.not, i32 0, i32 16
  %add96 = add nuw nsw i32 %cond95, %conv91
  %shl = shl nuw i32 1, %add96
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 6
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %tdl_from_trb = getelementptr inbounds %struct.cdns3_usb_regs, ptr %51, i32 0, i32 33
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tdl_from_trb) #12, !srcloc !236
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %53, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !275
  tail call void @arm_heavy_mb() #12
  %54 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tdl_from_trb, i32 %54) #12, !srcloc !239
  br label %if.end97

if.end97:                                         ; preds = %if.then89, %if.then85.if.end97_crit_edge
  %or98 = or i32 %spec.select190, 56
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %land.lhs.true80.if.end99_crit_edge, %if.end70.if.end99_crit_edge
  %ep_cfg.2 = phi i32 [ %or98, %if.end97 ], [ %spec.select190, %land.lhs.true80.if.end99_crit_edge ], [ %spec.select190, %if.end70.if.end99_crit_edge ]
  %conv101 = zext i8 %mult.1203 to i32
  %shl102 = shl nuw nsw i32 %conv101, 14
  %and103 = and i32 %shl102, 49152
  %shl106 = shl nuw nsw i32 %buffering.1201, 27
  %or104 = or i32 %maxburst.0199, %shl106
  %or108 = or i32 %or104, %and103
  %or112 = or i32 %or108, %max_packet_size.0197
  %or113 = or i32 %or112, %ep_cfg.2
  %selected_ep.i = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 16
  %55 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %or)
  %cmp.i191 = icmp eq i32 %56, %or
  br i1 %cmp.i191, label %if.end99.cdns3_select_ep.exit_crit_edge, label %if.end.i

if.end99.cdns3_select_ep.exit_crit_edge:          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i:                                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %58 = shl nuw i32 %or, 24
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 6
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %60, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %58) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i, %if.end99.cdns3_select_ep.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @arm_heavy_mb() #12
  %61 = tail call i32 @llvm.bswap.i32(i32 %or113)
  %regs117 = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 6
  %62 = ptrtoint ptr %regs117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs117, align 4
  %ep_cfg118 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %63, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cfg118, i32 %61) #12, !srcloc !239
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %or119 = or i32 %65, 65536
  store i32 %or119, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_ep_config.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_ep_config, %if.then129)) #12
          to label %cleanup [label %if.then129], !srcloc !243

if.then129:                                       ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_ep_config.__UNIQUE_ID_ddebug354, ptr noundef %67, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %or113) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %cdns3_select_ep.exit, %do.end, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then129 ], [ 0, %cdns3_select_ep.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_configure_dmult(ptr nocapture noundef readonly %priv_dev, ptr noundef readonly %priv_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148749, i32 %3)
  %cmp = icmp ult i32 %3, 148749
  br i1 %cmp, label %if.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !277
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 131072) #12, !srcloc !239
  %4 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %.pr)
  %cmp3 = icmp eq i32 %.pr, 148748
  br i1 %cmp3, label %do.body5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !278
  tail call void @arm_heavy_mb() #12
  %usb_conf2 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_conf2, i32 67108864) #12, !srcloc !239
  br label %if.end8

if.end8:                                          ; preds = %do.body5, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %5 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148749, i32 %6)
  %cmp10 = icmp ult i32 %6, 148749
  %tobool.not = icmp eq ptr %priv_ep, null
  %or.cond = or i1 %tobool.not, %cmp10
  br i1 %or.cond, label %if.end8.if.end36_crit_edge, label %if.then11

if.end8.if.end36_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then11:                                        ; preds = %if.end8
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 11
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  %num14 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 12
  %9 = ptrtoint ptr %num14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num14, align 1
  %conv15 = zext i8 %10 to i32
  br i1 %tobool12.not, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %if.then11
  %mask.0 = shl nuw i32 1, %conv15
  %type = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 13
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp19.not = icmp eq i8 %12, 1
  br i1 %cmp19.not, label %if.end17.land.lhs.true30_crit_edge, label %if.end25

if.end17.land.lhs.true30_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true30

if.end17.thread:                                  ; preds = %if.then11
  %mask.066 = shl i32 65536, %conv15
  %type67 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 13
  %13 = ptrtoint ptr %type67 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type67, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp19.not68 = icmp eq i8 %14, 1
  br i1 %cmp19.not68, label %if.end17.thread.land.lhs.true30_crit_edge, label %if.end17.thread.if.end35_crit_edge

if.end17.thread.if.end35_crit_edge:               ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end17.thread.land.lhs.true30_crit_edge:        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true30

if.end25:                                         ; preds = %if.end17
  %tdl_from_trb = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 33
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tdl_from_trb) #12, !srcloc !236
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %or.i = or i32 %16, %mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tdl_from_trb, i32 %17) #12, !srcloc !239
  %tdl_beh = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 34
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tdl_beh) #12, !srcloc !236
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %or.i59 = or i32 %19, %mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i59) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tdl_beh, i32 %20) #12, !srcloc !239
  %tdl_beh2 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tdl_beh2) #12, !srcloc !236
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %or.i60 = or i32 %22, %mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i60) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tdl_beh2, i32 %23) #12, !srcloc !239
  %dma_adv_td = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 37
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_adv_td) #12, !srcloc !236
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %or.i61 = or i32 %25, %mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i61) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_adv_td, i32 %26) #12, !srcloc !239
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr76 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr76)
  %cmp28 = icmp eq i8 %.pr76, 1
  br i1 %cmp28, label %if.end25.land.lhs.true30_crit_edge, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end25.land.lhs.true30_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end25.land.lhs.true30_crit_edge, %if.end17.thread.land.lhs.true30_crit_edge, %if.end17.land.lhs.true30_crit_edge
  %mask.07080 = phi i32 [ %mask.0, %if.end25.land.lhs.true30_crit_edge ], [ %mask.0, %if.end17.land.lhs.true30_crit_edge ], [ %mask.066, %if.end17.thread.land.lhs.true30_crit_edge ]
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  %tdl_from_trb34 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 33
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tdl_from_trb34) #12, !srcloc !236
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %or.i62 = or i32 %31, %mask.07080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i62) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tdl_from_trb34, i32 %32) #12, !srcloc !239
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true30.if.end35_crit_edge, %if.end25.if.end35_crit_edge, %if.end17.thread.if.end35_crit_edge
  %mask.071 = phi i32 [ %mask.07080, %if.then33 ], [ %mask.07080, %land.lhs.true30.if.end35_crit_edge ], [ %mask.0, %if.end25.if.end35_crit_edge ], [ %mask.066, %if.end17.thread.if.end35_crit_edge ]
  %dtrans = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dtrans) #12, !srcloc !236
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %or.i63 = or i32 %34, %mask.071
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i63) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dtrans, i32 %35) #12, !srcloc !239
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end8.if.end36_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cdns3_gadget_ep_alloc_request(ptr noundef %ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !244

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 96) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %priv_ep1 = getelementptr inbounds %struct.cdns3_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %priv_ep1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep, ptr %priv_ep1, align 8
  tail call fastcc void @trace_cdns3_alloc_request(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_alloc_request(ptr noundef %req) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_alloc_request, i32 0, i32 1), ptr blockaddress(@trace_cdns3_alloc_request, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !279
  %call42 = tail call i32 @__traceiter_cdns3_alloc_request(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !280
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_alloc_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_alloc_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_alloc_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_alloc_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 253, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_free_request(ptr noundef %req) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_free_request, i32 0, i32 1), ptr blockaddress(@trace_cdns3_free_request, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !281
  %call42 = tail call i32 @__traceiter_cdns3_free_request(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !282
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_free_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_free_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_free_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_free_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 258, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns3_gadget_ep_dequeue(ptr noundef %ep, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %tobool.not = icmp eq ptr %ep, null
  %tobool1.not = icmp eq ptr %request, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %do.body4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false2
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 5
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @trace_cdns3_ep_dequeue(ptr noundef nonnull %request)
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv13 = zext i8 %7 to i32
  %selected_ep.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv13)
  %cmp.i = icmp eq i32 %9, %conv13
  br i1 %cmp.i, label %do.body4.cdns3_select_ep.exit_crit_edge, label %if.end.i

do.body4.cdns3_select_ep.exit_crit_edge:          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv13, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %11 = shl nuw i32 %conv13, 24
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %13, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %11) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i, %do.body4.cdns3_select_ep.exit_crit_edge
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %cdns3_select_ep.exit
  %.pn.in.in = phi ptr [ %pending_req_list, %cdns3_select_ep.exit ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp23.not = icmp eq ptr %.pn.in, %pending_req_list
  br i1 %cmp23.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %req.0 = getelementptr i8, ptr %.pn.in, i32 -36
  %cmp25 = icmp eq ptr %req.0, %request
  br i1 %cmp25, label %for.body.found_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

for.end:                                          ; preds = %for.cond
  %deferred_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 2
  br label %for.cond43

for.cond43:                                       ; preds = %for.body49.for.cond43_crit_edge, %for.end
  %.pn115.in.in = phi ptr [ %deferred_req_list, %for.end ], [ %.pn115.in, %for.body49.for.cond43_crit_edge ]
  %15 = ptrtoint ptr %.pn115.in.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn115.in = load ptr, ptr %.pn115.in.in, align 4
  %cmp46.not = icmp eq ptr %.pn115.in, %deferred_req_list
  br i1 %cmp46.not, label %for.cond43.not_found_crit_edge, label %for.body49

for.cond43.not_found_crit_edge:                   ; preds = %for.cond43
  call void @__sanitizer_cov_trace_pc() #14
  br label %not_found

for.body49:                                       ; preds = %for.cond43
  %req.1 = getelementptr i8, ptr %.pn115.in, i32 -36
  %cmp50 = icmp eq ptr %req.1, %request
  br i1 %cmp50, label %for.body49.found_crit_edge, label %for.body49.for.cond43_crit_edge

for.body49.for.cond43_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond43

for.body49.found_crit_edge:                       ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

found:                                            ; preds = %for.body49.found_crit_edge, %for.body.found_crit_edge
  %trb = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 2
  %16 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trb, align 4
  %tobool63.not = icmp eq ptr %17, null
  %or.cond118 = select i1 %cmp23.not, i1 true, i1 %tobool63.not
  br i1 %or.cond118, label %found.if.end74_crit_edge, label %if.then64

found.if.end74_crit_edge:                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then64:                                        ; preds = %found
  %trb_pool_dma = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 6
  %18 = ptrtoint ptr %trb_pool_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trb_pool_dma, align 4
  %end_trb = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 4
  %20 = ptrtoint ptr %end_trb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end_trb, align 4
  %22 = mul i32 %21, 12
  %mul = add i32 %19, 12
  %add65 = add i32 %mul, %22
  %23 = tail call i32 @llvm.bswap.i32(i32 %add65)
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %17, align 4
  %control = getelementptr inbounds %struct.cdns3_trb, ptr %17, i32 0, i32 2
  %25 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %control, align 4
  %27 = lshr i32 %26, 24
  %and66 = and i32 %27, 1
  %or67 = or i32 %and66, 6160
  %28 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %29 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %control, align 4
  %wa1_trb = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 24
  %30 = ptrtoint ptr %wa1_trb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wa1_trb, align 4
  %32 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trb, align 4
  %cmp70 = icmp eq ptr %31, %33
  br i1 %cmp70, label %if.then72, label %if.then64.if.end74_crit_edge

if.then64.if.end74_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then72:                                        ; preds = %if.then64
  %wa1_set.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 23
  %34 = ptrtoint ptr %wa1_set.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %wa1_set.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then72.if.end74_crit_edge, label %if.then.i

if.then72.if.end74_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then.i:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_cdns3_wa1(ptr noundef %ep, ptr noundef nonnull @.str.14) #12
  %35 = ptrtoint ptr %wa1_set.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load2.i = load i8, ptr %wa1_set.i, align 1
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %wa1_set.i, align 1
  %wa1_trb_index.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 25
  %36 = ptrtoint ptr %wa1_trb_index.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 65535, ptr %wa1_trb_index.i, align 4
  %wa1_cycle_bit.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 26
  %37 = ptrtoint ptr %wa1_cycle_bit.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load3.i = load i8, ptr %wa1_cycle_bit.i, align 4
  %38 = ptrtoint ptr %wa1_trb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wa1_trb, align 4
  %control11.i = getelementptr inbounds %struct.cdns3_trb, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %control11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %control11.i, align 4
  %and.i = and i32 %41, -16777217
  %42 = and i8 %bf.load3.i, -128
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 17
  %or.sink.i = or i32 %and.i, %44
  store i32 %or.sink.i, ptr %control11.i, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then.i, %if.then72.if.end74_crit_edge, %if.then64.if.end74_crit_edge, %found.if.end74_crit_edge
  tail call void @cdns3_gadget_giveback(ptr noundef nonnull %ep, ptr noundef nonnull %request, i32 noundef -104)
  br label %not_found

not_found:                                        ; preds = %if.end74, %for.cond43.not_found_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %not_found, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %not_found ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_ep_dequeue(ptr noundef %req) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep_dequeue, i32 0, i32 1), ptr blockaddress(@trace_cdns3_ep_dequeue, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !283
  %call42 = tail call i32 @__traceiter_cdns3_ep_dequeue(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !284
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep_dequeue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep_dequeue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_ep_dequeue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_ep_dequeue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 268, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
define dso_local void @__cdns3_gadget_ep_set_halt(ptr noundef %priv_ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  tail call fastcc void @trace_cdns3_halt(ptr noundef %priv_ep, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %5, i32 0, i32 11
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !285
  %7 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cdns3_ep_stall_flush(ptr noundef %priv_ep)
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_halt(ptr noundef %ep_priv, i8 noundef zeroext %halt, i8 noundef zeroext %flush) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_halt, i32 0, i32 1), ptr blockaddress(@trace_cdns3_halt, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %call42 = tail call i32 @__traceiter_cdns3_halt(ptr noundef null, ptr noundef %ep_priv, i8 noundef zeroext %halt, i8 noundef zeroext %flush) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !287
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_halt, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_halt, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_halt.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_halt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 42, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
define internal fastcc void @cdns3_ep_stall_flush(ptr noundef %priv_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  tail call fastcc void @trace_cdns3_halt(ptr noundef %priv_ep, i8 noundef zeroext 1, i8 noundef zeroext 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !288
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 -1979711488) #12, !srcloc !239
  %call = tail call i64 @ktime_get() #12
  %add.i = add i64 %call, 1000000
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ep_cmd341 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %5, i32 0, i32 10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd341) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not42 = icmp sgt i32 %6, -1
  br i1 %tobool.not42, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call7 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %if.then9, label %cond.false

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %ep_cmd13 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %8, i32 0, i32 10
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd13) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #12
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %ep_cmd3 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %12, i32 0, i32 10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd3) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !289
  %tobool.not = icmp sgt i32 %13, -1
  br i1 %tobool.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then9, %entry.for.end_crit_edge
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = and i32 %15, -7
  %and29 = or i32 %or, 2
  store i32 %and29, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cdns3_gadget_ep_clear_halt(ptr noundef %priv_ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  tail call fastcc void @trace_cdns3_halt(ptr noundef %priv_ep, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 1
  %2 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.not.i = icmp eq ptr %3, %pending_req_list
  %add.ptr.i = getelementptr i8, ptr %3, i32 -36
  %tobool.not79 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not79
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %entry
  %trb1 = getelementptr i8, ptr %3, i32 24
  %4 = ptrtoint ptr %trb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trb1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.do.body_crit_edge, label %if.then3

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %control = getelementptr inbounds %struct.cdns3_trb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %xor = xor i32 %7, 16777216
  store i32 %xor, ptr %control, align 4
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %trb.0 = phi ptr [ %5, %if.then3 ], [ null, %if.then.do.body_crit_edge ], [ null, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %9, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 83886080) #12, !srcloc !239
  %call6 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call6, 100000
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %ep_cmd981 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %11, i32 0, i32 10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd981) #12, !srcloc !236
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !292
  %and82 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool13.not83 = icmp eq i32 %and82, 0
  br i1 %tobool13.not83, label %do.body.for.end_crit_edge, label %do.body.land.lhs.true_crit_edge

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  br label %land.lhs.true

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.body.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then19, label %cond.false

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %ep_cmd23 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %15, i32 0, i32 10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd23) #12, !srcloc !236
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %ep_cmd9 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %20, i32 0, i32 10
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd9) #12, !srcloc !236
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !292
  %and = and i32 %22, 1
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then19, %do.body.for.end_crit_edge
  %val.0 = phi i32 [ %17, %if.then19 ], [ %13, %do.body.for.end_crit_edge ], [ %22, %cond.false.for.end_crit_edge ]
  %and36 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end40, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %for.end
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and41 = and i32 %24, -7
  store i32 %and41, ptr %flags, align 4
  br i1 %tobool.not, label %if.end40.if.end50_crit_edge, label %if.then43

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then43:                                        ; preds = %if.end40
  %tobool44.not = icmp eq ptr %trb.0, null
  br i1 %tobool44.not, label %if.then43.if.end49_crit_edge, label %if.then45

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %control46 = getelementptr inbounds %struct.cdns3_trb, ptr %trb.0, i32 0, i32 2
  %25 = ptrtoint ptr %control46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %control46, align 4
  %xor47 = xor i32 %26, 16777216
  store i32 %xor47, ptr %control46, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.then43.if.end49_crit_edge
  tail call void @cdns3_rearm_transfer(ptr noundef %priv_ep, i8 noundef zeroext 1)
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end40.if.end50_crit_edge
  tail call fastcc void @cdns3_start_all_request(ptr noundef %1, ptr noundef %priv_ep)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns3_gadget_ep_set_halt(ptr noundef %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body2:                                         ; preds = %entry
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdns3_dev, align 4
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv7 = zext i8 %7 to i32
  %selected_ep.i = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7)
  %cmp.i = icmp eq i32 %9, %conv7
  br i1 %cmp.i, label %do.body2.cdns3_select_ep.exit_crit_edge, label %if.end.i

do.body2.cdns3_select_ep.exit_crit_edge:          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %11 = shl nuw i32 %conv7, 24
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %13, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %11) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i, %do.body2.cdns3_select_ep.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool8.not = icmp eq i32 %value, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1, align 4
  %and11 = and i32 %15, -9
  store i32 %and11, ptr %flags1, align 4
  %call12 = tail call i32 @__cdns3_gadget_ep_clear_halt(ptr noundef %ep)
  br label %if.end13

if.else:                                          ; preds = %cdns3_select_ep.exit
  %16 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdns3_dev, align 4
  tail call fastcc void @trace_cdns3_halt(ptr noundef %ep, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  %18 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags1, align 4
  %and.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then.i:                                        ; preds = %if.else
  %regs.i25 = getelementptr inbounds %struct.cdns3_device, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %regs.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i25, align 4
  %ep_sts.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %21, i32 0, i32 11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !285
  %23 = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cdns3_ep_stall_flush(ptr noundef %ep) #12
  br label %if.end13

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags1, align 4
  %or.i = or i32 %25, 4
  store i32 %or.i, ptr %flags1, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else.i, %if.then4.i, %if.else.if.end13_crit_edge, %if.then9
  %ret.0 = phi i32 [ %call12, %if.then9 ], [ 0, %if.else.if.end13_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.else.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns3_gadget_init(ptr nocapture noundef %cdns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @__cdns3_gadget_init, ptr %call.i, align 4
  %stop = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cdns3_gadget_exit, ptr %stop, align 4
  %suspend = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cdns3_gadget_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cdns3_gadget_resume, ptr %resume, align 4
  %state = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  %name = getelementptr inbounds %struct.cdns_role_driver, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.7, ptr %name, align 4
  %arrayidx = getelementptr %struct.cdns, ptr %cdns, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__cdns3_gadget_init(ptr noundef %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns, align 4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %1, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %call.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef 4294967295) #12
  %call2 = tail call i32 @cdns_drd_gadget_on(ptr noundef %cdns) #12
  %4 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdns, align 4
  %call.i34 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  %call5 = tail call fastcc i32 @cdns3_gadget_start(ptr noundef %cdns)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %6 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdns, align 4
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %dev_irq = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 13
  %8 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end10.dev_name.exit_crit_edge ]
  %gadget_dev = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 18
  %14 = ptrtoint ptr %gadget_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gadget_dev, align 4
  %call14 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %9, ptr noundef nonnull @cdns3_device_irq_handler, ptr noundef nonnull @cdns3_device_thread_irq_handler, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %dev_name.exit.cleanup_crit_edge, label %err0

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err0:                                             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cdns3_gadget_exit(ptr noundef %cdns)
  br label %cleanup

cleanup:                                          ; preds = %err0, %dev_name.exit.cleanup_crit_edge, %if.then7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call5, %if.then7 ], [ %call14, %err0 ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns3_gadget_exit(ptr noundef %cdns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget_dev = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 18
  %0 = ptrtoint ptr %gadget_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget_dev, align 4
  %2 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdns, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdns, align 4
  %call.i32 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #12
  %gadget = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2
  tail call void @usb_del_gadget(ptr noundef %gadget) #12
  %7 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdns, align 4
  %dev_irq = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 13
  %9 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_irq, align 4
  tail call void @devm_free_irq(ptr noundef %8, i32 noundef %10, ptr noundef %1) #12
  %arrayidx.i = getelementptr %struct.cdns3_device, ptr %1, i32 0, i32 13, i32 16
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.cdns3_device, ptr %1, i32 0, i32 13, i32 %i.015.i
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %trb_pool.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %trb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trb_pool.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then.i.cdns3_free_trb_pool.exit.i_crit_edge, label %if.then.i.i

if.then.i.cdns3_free_trb_pool.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_free_trb_pool.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %cdns3_dev.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %cdns3_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdns3_dev.i.i, align 4
  %eps_dma_pool.i.i = getelementptr inbounds %struct.cdns3_device, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %eps_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eps_dma_pool.i.i, align 8
  %trb_pool_dma.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %13, i32 0, i32 6
  %20 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %trb_pool_dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef nonnull %15, i32 noundef %21) #12
  %22 = ptrtoint ptr %trb_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %trb_pool.i.i, align 4
  br label %cdns3_free_trb_pool.exit.i

cdns3_free_trb_pool.exit.i:                       ; preds = %if.then.i.i, %if.then.i.cdns3_free_trb_pool.exit.i_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @devm_kfree(ptr noundef %24, ptr noundef %26) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %cdns3_free_trb_pool.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %while.cond.preheader, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

while.cond.preheader:                             ; preds = %for.inc.i
  %aligned_buf_list = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %aligned_buf_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %aligned_buf_list, align 4
  %cmp.i.not34 = icmp eq ptr %28, %aligned_buf_list
  br i1 %cmp.i.not34, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sysdev = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %29 = ptrtoint ptr %aligned_buf_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %aligned_buf_list, align 4
  %cmp.not.i = icmp eq ptr %30, %aligned_buf_list
  %add.ptr.i = getelementptr i8, ptr %30, i32 -20
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %31 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sysdev, align 4
  %size = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %spec.select.i, i32 0, i32 2
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %35 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spec.select.i, align 4
  %dma = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %spec.select.i, i32 0, i32 1
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma, align 4
  %dir = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %spec.select.i, i32 0, i32 3
  %39 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dir, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %36 to i32
  %sub.i = add i32 %42, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i33 = getelementptr %struct.page, ptr %41, i32 %shr.i
  tail call void @dma_free_pages(ptr noundef %32, i32 noundef %34, ptr noundef %add.ptr.i33, i32 noundef %38, i32 noundef %40) #12
  %list = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %spec.select.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %spec.select.i, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %49 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %spec.select.i, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %spec.select.i) #12
  %51 = ptrtoint ptr %aligned_buf_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %aligned_buf_list, align 4
  %cmp.i.not = icmp eq ptr %52, %aligned_buf_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %sysdev7 = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %sysdev7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sysdev7, align 4
  %setup_buf = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %setup_buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %setup_buf, align 4
  %setup_dma = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 9
  %57 = ptrtoint ptr %setup_dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %setup_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef 8, ptr noundef %56, i32 noundef %58, i32 noundef 0) #12
  %eps_dma_pool = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %eps_dma_pool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eps_dma_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %60) #12
  %zlp_buf = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %zlp_buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %zlp_buf, align 4
  tail call void @kfree(ptr noundef %62) #12
  %dev.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2, i32 11
  tail call void @put_device(ptr noundef %dev.i) #12
  %63 = ptrtoint ptr %gadget_dev to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %gadget_dev, align 4
  tail call void @cdns_drd_gadget_off(ptr noundef %cdns) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_suspend(ptr noundef %cdns, i1 noundef zeroext %do_wakeup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget_dev = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 18
  %0 = ptrtoint ptr %gadget_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget_dev, align 4
  %lock = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 27
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %gadget_driver.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cdns3_disconnect_gadget.exit_crit_edge, label %land.lhs.true.i

entry.cdns3_disconnect_gadget.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_disconnect_gadget.exit

land.lhs.true.i:                                  ; preds = %entry
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconnect.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cdns3_disconnect_gadget.exit_crit_edge, label %if.then.i

land.lhs.true.i.cdns3_disconnect_gadget.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_disconnect_gadget.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %gadget.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2
  tail call void %5(ptr noundef %gadget.i) #12
  br label %cdns3_disconnect_gadget.exit

cdns3_disconnect_gadget.exit:                     ; preds = %if.then.i, %land.lhs.true.i.cdns3_disconnect_gadget.exit_crit_edge, %entry.cdns3_disconnect_gadget.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %gadget = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2
  %speed = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %speed, align 8
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 0) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 512) #12, !srcloc !239
  %hw_configured_flag.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %hw_configured_flag.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %hw_configured_flag.i, align 2
  %onchip_used_size.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %onchip_used_size.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %onchip_used_size.i, align 2
  %out_mem_is_allocated.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %out_mem_is_allocated.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %out_mem_is_allocated.i, align 4
  %bf.clear5.i = and i16 %bf.load.i, 31615
  store i16 %bf.clear5.i, ptr %hw_configured_flag.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cdns3_disconnect_gadget.exit
  %i.020.i = phi i32 [ 0, %cdns3_disconnect_gadget.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cdns3_device, ptr %1, i32 0, i32 13, i32 %i.020.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i9 = icmp eq ptr %15, null
  br i1 %tobool.not.i9, label %for.body.i.for.inc.i_crit_edge, label %if.then.i10

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i10:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, -65537
  store i32 %and.i, ptr %flags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i10, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %cdns3_hw_reset_eps_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cdns3_hw_reset_eps_config.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %usb_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %19, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_ien, i32 0) #12, !srcloc !239
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_resume(ptr nocapture noundef readonly %cdns, i1 noundef zeroext %hibernated) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget_dev = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 18
  %0 = ptrtoint ptr %gadget_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget_dev, align 4
  %gadget_driver = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @cdns3_gadget_config(ptr noundef %1)
  br i1 %hibernated, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 4194304) #12, !srcloc !239
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_gadget_giveback(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_wa2_descmiss_copy_data(ptr noundef %priv_ep, ptr nocapture noundef %request) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wa2_descmiss_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 3
  %status7 = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 11
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 12
  %sg.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 3
  %length2.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %wa2_counter = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cdns3_gadget_ep_free_request.exit.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %wa2_descmiss_req_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %wa2_descmiss_req_list, align 4
  %cmp.i.not = icmp eq ptr %1, %wa2_descmiss_req_list
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %wa2_descmiss_req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %wa2_descmiss_req_list, align 4
  %cmp.not.i = icmp eq ptr %3, %wa2_descmiss_req_list
  %add.ptr.i = getelementptr i8, ptr %3, i32 -80
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %flags = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  %and6 = and i32 %5, 4
  %status = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 11
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %status7, align 4
  %9 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual.i, align 4
  %actual1.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 12
  %11 = ptrtoint ptr %actual1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual1.i, align 4
  %add.i = add i32 %12, %10
  %13 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else8.i

if.then.i:                                        ; preds = %if.end
  %15 = ptrtoint ptr %length2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp.not.i21 = icmp ugt i32 %add.i, %16
  br i1 %cmp.not.i21, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request, align 4
  %arrayidx.i = getelementptr i8, ptr %18, i32 %10
  %19 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spec.select.i, align 4
  %21 = call ptr @memcpy(ptr %arrayidx.i, ptr %20, i32 %12)
  %22 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %actual.i, align 4
  br label %__cdns3_descmiss_copy_data.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -12, ptr %status7, align 4
  br label %__cdns3_descmiss_copy_data.exit

if.else8.i:                                       ; preds = %if.end
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp9.not.i = icmp ugt i32 %add.i, %25
  br i1 %cmp9.not.i, label %if.else16.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #14
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 3
  %26 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_address.i, align 4
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %27, i32 -2130706432, i32 8454144) #17, !srcloc !296
  %29 = inttoptr i32 %28 to ptr
  %arrayidx12.i = getelementptr i8, ptr %29, i32 %10
  %30 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spec.select.i, align 4
  %32 = call ptr @memcpy(ptr %arrayidx12.i, ptr %31, i32 %12)
  %33 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %actual.i, align 4
  br label %__cdns3_descmiss_copy_data.exit

if.else16.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -12, ptr %status7, align 4
  br label %__cdns3_descmiss_copy_data.exit

__cdns3_descmiss_copy_data.exit:                  ; preds = %if.else16.i, %if.then10.i, %if.else.i, %if.then3.i
  %list = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %__cdns3_descmiss_copy_data.exit.list_del_init.exit_crit_edge

__cdns3_descmiss_copy_data.exit.list_del_init.exit_crit_edge: ; preds = %__cdns3_descmiss_copy_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %__cdns3_descmiss_copy_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %__cdns3_descmiss_copy_data.exit.list_del_init.exit_crit_edge
  %41 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list, ptr %prev.i3.i, align 4
  %43 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spec.select.i, align 4
  tail call void @kfree(ptr noundef %44) #12
  %aligned_buf.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 5
  %45 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %aligned_buf.i, align 4
  %tobool.not.i22 = icmp eq ptr %46, null
  br i1 %tobool.not.i22, label %list_del_init.exit.cdns3_gadget_ep_free_request.exit_crit_edge, label %if.then.i23

list_del_init.exit.cdns3_gadget_ep_free_request.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_gadget_ep_free_request.exit

if.then.i23:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %in_use.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %in_use.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %in_use.i, align 4
  br label %cdns3_gadget_ep_free_request.exit

cdns3_gadget_ep_free_request.exit:                ; preds = %if.then.i23, %list_del_init.exit.cdns3_gadget_ep_free_request.exit_crit_edge
  tail call fastcc void @trace_cdns3_free_request(ptr noundef %spec.select.i) #12
  tail call void @kfree(ptr noundef %spec.select.i) #12
  %48 = ptrtoint ptr %wa2_counter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wa2_counter, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %wa2_counter, align 4
  %tobool8.not = icmp eq i32 %and6, 0
  br i1 %tobool8.not, label %cdns3_gadget_ep_free_request.exit.while.end_crit_edge, label %cdns3_gadget_ep_free_request.exit.while.cond_crit_edge

cdns3_gadget_ep_free_request.exit.while.cond_crit_edge: ; preds = %cdns3_gadget_ep_free_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

cdns3_gadget_ep_free_request.exit.while.end_crit_edge: ; preds = %cdns3_gadget_ep_free_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cdns3_gadget_ep_free_request.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_ep_run_stream_transfer(ptr noundef %priv_ep, ptr nocapture noundef %request) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %stream_sg_idx = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 30
  %2 = ptrtoint ptr %stream_sg_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_sg_idx, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 9
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %7 to i32
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 64
  store i32 %or, ptr %flags, align 4
  %flags1 = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 6
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %aligned_buf = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 5
  %12 = ptrtoint ptr %aligned_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aligned_buf, align 4
  %dma = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %13, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dma2 = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %trb_dma.0.in = phi ptr [ %dma, %if.then ], [ %dma2, %if.else ]
  %14 = ptrtoint ptr %trb_dma.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %trb_dma.0 = load i32, ptr %trb_dma.0.in, align 4
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %15 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trb_pool, align 4
  %enqueue = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 20
  %17 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enqueue, align 4
  %add.ptr3 = getelementptr %struct.cdns3_trb, ptr %16, i32 %18
  %start_trb = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 3
  %19 = ptrtoint ptr %start_trb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %start_trb, align 4
  %end_trb = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 4
  %20 = ptrtoint ptr %end_trb to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %end_trb, align 4
  %trb6 = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 2
  %21 = ptrtoint ptr %trb6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr3, ptr %trb6, align 4
  %22 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cdns3_dev, align 4
  %selected_ep.i = getelementptr inbounds %struct.cdns3_device, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv)
  %cmp.i = icmp eq i32 %25, %conv
  br i1 %cmp.i, label %if.end.cdns3_select_ep.exit_crit_edge, label %if.end.i

if.end.cdns3_select_ep.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %27 = shl nuw i32 %conv, 24
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %23, i32 0, i32 6
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %29, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %27) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i, %if.end.cdns3_select_ep.exit_crit_edge
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 6
  %30 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %stream_id, align 4
  %bf.lshr = and i32 %bf.load, -65536
  %or10 = or i32 %bf.lshr, 1029
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 4
  %31 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %if.then12, label %if.else15

if.then12:                                        ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %trb_dma.0)
  %34 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr3, align 4
  %length14 = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  br label %if.end21

if.else15:                                        ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sg = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 3
  %35 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sg, align 4
  %dma_address = getelementptr %struct.scatterlist, ptr %36, i32 %3, i32 3
  %37 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %add.ptr3, align 4
  %41 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sg, align 4
  %length20 = getelementptr %struct.scatterlist, ptr %42, i32 %3, i32 2
  br label %if.end21

if.end21:                                         ; preds = %if.else15, %if.then12
  %length.0.in = phi ptr [ %length20, %if.else15 ], [ %length14, %if.then12 ]
  %43 = ptrtoint ptr %length.0.in to i32
  call void @__asan_load4_noabort(i32 %43)
  %length.0 = load i32, ptr %length.0.in, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 7
  %44 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %44, i32 7)
  %bf.load23 = load i56, ptr %maxpacket, align 2
  %bf.lshr24 = lshr i56 %bf.load23, 40
  %bf.cast = trunc i56 %bf.lshr24 to i32
  %add = add i32 %length.0, -1
  %sub = add i32 %add, %bf.cast
  %div = udiv i32 %sub, %bf.cast
  %and30 = and i32 %length.0, 131071
  %or31 = or i32 %and30, 268435456
  %45 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %length32 = getelementptr %struct.cdns3_trb, ptr %16, i32 %18, i32 1
  %46 = ptrtoint ptr %length32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %length32, align 4
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148747, i32 %48)
  %cmp = icmp ugt i32 %48, 148747
  br i1 %cmp, label %if.then34, label %if.end21.if.end43_crit_edge

if.end21.if.end43_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then34:                                        ; preds = %if.end21
  %speed = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2, i32 5
  %49 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %50)
  %cmp35 = icmp eq i32 %50, 5
  br i1 %cmp35, label %if.then37, label %if.then34.if.end43_crit_edge

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %51 = shl i32 %div, 9
  %52 = and i32 %51, 65024
  %or41 = or i32 %52, %45
  %53 = ptrtoint ptr %length32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or41, ptr %length32, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.then34.if.end43_crit_edge, %if.end21.if.end43_crit_edge
  %54 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags1, align 4
  %or45 = or i32 %55, 1
  store i32 %or45, ptr %flags1, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %control46 = getelementptr %struct.cdns3_trb, ptr %16, i32 %18, i32 2
  %57 = ptrtoint ptr %control46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %control46, align 4
  %58 = ptrtoint ptr %trb6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trb6, align 4
  tail call fastcc void @trace_cdns3_prepare_trb(ptr noundef %priv_ep, ptr noundef %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  %trb_pool_dma = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %60 = ptrtoint ptr %trb_pool_dma to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %trb_pool_dma, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %ep_traddr = getelementptr inbounds %struct.cdns3_usb_regs, ptr %64, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_traddr, i32 %62) #12, !srcloc !239
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and52 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end43.if.end108_crit_edge

if.end43.if.end108_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

if.then54:                                        ; preds = %if.end43
  tail call fastcc void @trace_cdns3_ring(ptr noundef %priv_ep)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !299
  tail call void @arm_heavy_mb() #12
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %68, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts, i32 -1879048192) #12, !srcloc !239
  %prime_flag = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %69 = ptrtoint ptr %prime_flag to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load59 = load i8, ptr %prime_flag, align 4
  %bf.clear = and i8 %bf.load59, -33
  store i8 %bf.clear, ptr %prime_flag, align 4
  %70 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %71)
  %cmp61 = icmp ult i32 %71, 148748
  br i1 %cmp61, label %do.body64, label %if.else71

do.body64:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !300
  tail call void @arm_heavy_mb() #12
  %shl67 = shl i32 %div, 17
  %and68 = and i32 %shl67, 16646144
  %or69 = or i32 %and68, 65536
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %73, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 %or69) #12, !srcloc !239
  br label %if.end81

if.else71:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %71)
  %cmp73.not = icmp eq i32 %71, 148748
  br i1 %cmp73.not, label %if.else71.if.end81_crit_edge, label %do.body76

if.else71.if.end81_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

do.body76:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !301
  tail call void @arm_heavy_mb() #12
  %74 = tail call i32 @llvm.bswap.i32(i32 %div)
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %ep_tdl = getelementptr inbounds %struct.cdns3_usb_regs, ptr %76, i32 0, i32 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_tdl, i32 %74) #12, !srcloc !239
  br label %if.end81

if.end81:                                         ; preds = %do.body76, %if.else71.if.end81_crit_edge, %do.body64
  %77 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load84 = load i32, ptr %stream_id, align 4
  %bf.lshr85 = lshr i32 %bf.load84, 16
  %conv86 = trunc i32 %bf.lshr85 to i16
  %last_stream_id = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 28
  %78 = ptrtoint ptr %last_stream_id to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv86, ptr %last_stream_id, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %ep_cmd91 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %80, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd91, i32 1073741824) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !303
  tail call void @arm_heavy_mb() #12
  %81 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load97 = load i32, ptr %stream_id, align 4
  %bf.lshr98 = and i32 %bf.load97, -65536
  %or101 = or i32 %bf.lshr98, 8
  %82 = tail call i32 @llvm.bswap.i32(i32 %or101)
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %ep_cmd103 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %84, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd103, i32 %82) #12, !srcloc !239
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 4
  %ep_traddr105 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %86, i32 0, i32 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr105) #12, !srcloc !236
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call fastcc void @trace_cdns3_doorbell_epx(ptr noundef %name, i32 noundef %88)
  br label %if.end108

if.end108:                                        ; preds = %if.end81, %if.end43.if.end108_crit_edge
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %usb_sts.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %90, i32 0, i32 1
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %92 = and i32 %91, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %92)
  %cond.i = icmp eq i32 %92, 1073741824
  br i1 %cond.i, label %if.end108.__cdns3_gadget_wakeup.exit_crit_edge, label %do.body.i

if.end108.__cdns3_gadget_wakeup.exit_crit_edge:   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cdns3_gadget_wakeup.exit

do.body.i:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 4096) #12, !srcloc !239
  br label %__cdns3_gadget_wakeup.exit

__cdns3_gadget_wakeup.exit:                       ; preds = %do.body.i, %if.end108.__cdns3_gadget_wakeup.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_prepare_trb(ptr noundef %priv_ep, ptr noundef %trb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_trb, i32 0, i32 1), ptr blockaddress(@trace_cdns3_prepare_trb, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !305
  %call42 = tail call i32 @__traceiter_cdns3_prepare_trb(ptr noundef null, ptr noundef %priv_ep, ptr noundef %trb) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !306
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_trb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_prepare_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_prepare_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 430, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_wa1(ptr noundef %ep_priv, ptr noundef %msg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_wa1, i32 0, i32 1), ptr blockaddress(@trace_cdns3_wa1, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !307
  %call42 = tail call i32 @__traceiter_cdns3_wa1(ptr noundef null, ptr noundef %ep_priv, ptr noundef %msg) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !308
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_wa1, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_wa1, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_wa1.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_wa1.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 56, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local i32 @__traceiter_cdns3_wa1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_prepare_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_doorbell_epx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_alloc_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_halt(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_drd_gadget_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns3_gadget_start(ptr nocapture noundef %cdns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1384) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdns, align 4
  %gadget = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2
  tail call void @usb_initialize_gadget(ptr noundef %2, ptr noundef %gadget, ptr noundef nonnull @cdns3_gadget_release) #12
  %gadget_dev = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 18
  %3 = ptrtoint ptr %gadget_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %gadget_dev, align 4
  %4 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdns, align 4
  %sysdev = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %sysdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sysdev, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call7.i.i, align 8
  %dev_regs = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 3
  %8 = ptrtoint ptr %dev_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_regs, align 4
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regs, align 4
  %onchip_buffers = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 22
  %call.i = tail call i32 @device_property_read_u16_array(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef %onchip_buffers, i32 noundef 1) #12
  %11 = ptrtoint ptr %onchip_buffers to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %onchip_buffers, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp = icmp eq i16 %12, 0
  br i1 %cmp, label %if.end14, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %usb_cap2 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %14, i32 0, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cap2) #12, !srcloc !236
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !309
  %conv12 = trunc i32 %16 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv12)
  %tobool16.not = icmp eq i16 %conv12, 0
  %spec.store.select = select i1 %tobool16.not, i16 256, i16 %conv12
  %17 = ptrtoint ptr %onchip_buffers to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.store.select, ptr %onchip_buffers, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.end.if.end19_crit_edge
  %18 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdns, align 4
  %call21 = tail call i32 @usb_get_maximum_speed(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call21)
  %20 = icmp ult i32 %call21, 6
  br i1 %20, label %switch.hole_check, label %if.end19.do.end_crit_edge

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end19.do.end_crit_edge
  %21 = ptrtoint ptr %cdns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cdns, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.18, i32 noundef %call21) #15
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end19
  %switch.maskindex = trunc i32 %call21 to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %23 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.lobit.not = icmp eq i8 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.cdns3_gadget_start, i32 0, i32 %call21
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %max_speed.0 = phi i32 [ 5, %do.end ], [ %switch.load, %switch.lookup ]
  %max_speed25 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 6
  %25 = ptrtoint ptr %max_speed25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %max_speed.0, ptr %max_speed25, align 4
  %speed = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %speed, align 8
  %ops = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @cdns3_gadget_ops, ptr %ops, align 8
  %name = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.20, ptr %name, align 4
  %quirk_avoids_skb_reserve = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 17
  %29 = ptrtoint ptr %quirk_avoids_skb_reserve to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %quirk_avoids_skb_reserve, align 4
  %bf.set = or i32 %bf.load, 524288
  store i32 %bf.set, ptr %quirk_avoids_skb_reserve, align 4
  %dev_irq = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 13
  %30 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev_irq, align 4
  %irq = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 18
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %irq, align 8
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @cdns3_gadget_start.__key, i16 noundef signext 3) #12
  %pending_status_wq = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %pending_status_wq, i32 noundef 0) #12
  %33 = ptrtoint ptr %pending_status_wq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %pending_status_wq, align 8
  %lockdep_map = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @cdns3_gadget_start.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry39 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 20, i32 1
  %34 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 20, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry39, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 20, i32 2
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @cdns3_pending_setup_status_handler, ptr %func, align 4
  %aligned_buf_wq = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %aligned_buf_wq, i32 noundef 0) #12
  %37 = ptrtoint ptr %aligned_buf_wq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %aligned_buf_wq, align 8
  %lockdep_map49 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.25, ptr noundef nonnull @cdns3_gadget_start.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry51 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i270 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i270 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry51, ptr %prev.i270, align 8
  %func53 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 15, i32 2
  %40 = ptrtoint ptr %func53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @cdns3_free_aligned_request_buf, ptr %func53, align 4
  %ep_list = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %ep_list, ptr %ep_list, align 8
  %prev.i271 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i271 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ep_list, ptr %prev.i271, align 4
  %aligned_buf_list = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 14
  %43 = ptrtoint ptr %aligned_buf_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %aligned_buf_list, ptr %aligned_buf_list, align 8
  %prev.i272 = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 14, i32 1
  %44 = ptrtoint ptr %prev.i272 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %aligned_buf_list, ptr %prev.i272, align 4
  %45 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sysdev, align 4
  %call58 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.26, ptr noundef %46, i32 noundef 7200, i32 noundef 8, i32 noundef 0) #12
  %eps_dma_pool = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %eps_dma_pool to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call58, ptr %eps_dma_pool, align 8
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %sw.epilog.err1.sink.split_crit_edge, label %if.end66

sw.epilog.err1.sink.split_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1.sink.split

if.end66:                                         ; preds = %sw.epilog
  %call67 = tail call fastcc i32 @cdns3_init_eps(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %if.end66.err1.sink.split_crit_edge

if.end66.err1.sink.split_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1.sink.split

if.end74:                                         ; preds = %if.end66
  %48 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sysdev, align 4
  %setup_dma = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 9
  %call.i273 = tail call ptr @dma_alloc_attrs(ptr noundef %49, i32 noundef 8, ptr noundef %setup_dma, i32 noundef 1, i32 noundef 0) #12
  %setup_buf = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %setup_buf to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i273, ptr %setup_buf, align 4
  %tobool78.not = icmp eq ptr %call.i273, null
  br i1 %tobool78.not, label %if.end74.err2_crit_edge, label %if.end80

if.end74.err2_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end80:                                         ; preds = %if.end74
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %usb_cap6 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %52, i32 0, i32 24
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cap6) #12, !srcloc !236
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !310
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %dev_ver to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dev_ver, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_gadget_start.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_gadget_start, %if.then93)) #12
          to label %do.body105 [label %if.then93], !srcloc !243

if.then93:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %usb_cap698 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %59, i32 0, i32 24
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cap698) #12, !srcloc !236
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_gadget_start.__UNIQUE_ID_ddebug362, ptr noundef %57, ptr noundef nonnull @.str.33, i32 noundef %61) #12
  br label %do.body105

do.body105:                                       ; preds = %if.then93, %if.end80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_gadget_start.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_gadget_start, %if.then117)) #12
          to label %do.body128 [label %if.then117], !srcloc !243

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i, align 8
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %usb_cap1 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %65, i32 0, i32 19
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cap1) #12, !srcloc !236
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !312
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_gadget_start.__UNIQUE_ID_ddebug363, ptr noundef %63, ptr noundef nonnull @.str.34, i32 noundef %67) #12
  br label %do.body128

do.body128:                                       ; preds = %if.then117, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_gadget_start.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_gadget_start, %if.then140)) #12
          to label %do.end151 [label %if.then140], !srcloc !243

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i, align 8
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %usb_cap2145 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %71, i32 0, i32 20
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cap2145) #12, !srcloc !236
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !313
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_gadget_start.__UNIQUE_ID_ddebug364, ptr noundef %69, ptr noundef nonnull @.str.35, i32 noundef %73) #12
  br label %do.end151

do.end151:                                        ; preds = %if.then140, %do.body128
  %74 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dev_ver, align 4
  %and153 = and i32 %75, 16777215
  store i32 %and153, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148747, i32 %and153)
  %cmp156 = icmp ugt i32 %and153, 148747
  br i1 %cmp156, label %if.then158, label %do.end151.if.end163_crit_edge

do.end151.if.end163_crit_edge:                    ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then158:                                       ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %quirk_avoids_skb_reserve to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load160 = load i32, ptr %quirk_avoids_skb_reserve, align 4
  %bf.set162 = or i32 %bf.load160, -2147483648
  store i32 %bf.set162, ptr %quirk_avoids_skb_reserve, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %do.end151.if.end163_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i274 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 1024) #16
  %zlp_buf = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 10
  %78 = ptrtoint ptr %zlp_buf to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i274, ptr %zlp_buf, align 4
  %tobool166.not = icmp eq ptr %call7.i.i274, null
  br i1 %tobool166.not, label %if.end163.err3_crit_edge, label %if.end168

if.end163.err3_crit_edge:                         ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %err3

if.end168:                                        ; preds = %if.end163
  %call170 = tail call i32 @usb_add_gadget(ptr noundef %gadget) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %do.end176, label %if.end168.cleanup_crit_edge

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end176:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.37) #15
  %81 = ptrtoint ptr %zlp_buf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %zlp_buf, align 4
  tail call void @kfree(ptr noundef %82) #12
  br label %err3

err3:                                             ; preds = %do.end176, %if.end163.err3_crit_edge
  %ret.0 = phi i32 [ %call170, %do.end176 ], [ -12, %if.end163.err3_crit_edge ]
  %83 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sysdev, align 4
  %85 = ptrtoint ptr %setup_buf to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %setup_buf, align 4
  %87 = ptrtoint ptr %setup_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %setup_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %84, i32 noundef 8, ptr noundef %86, i32 noundef %88, i32 noundef 0) #12
  br label %err2

err2:                                             ; preds = %err3, %if.end74.err2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err3 ], [ -12, %if.end74.err2_crit_edge ]
  %arrayidx.i = getelementptr %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 13, i32 16
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err2
  %i.015.i = phi i32 [ 0, %err2 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 13, i32 %i.015.i
  %90 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %91, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %trb_pool.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %trb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %trb_pool.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i, label %if.then.i.cdns3_free_trb_pool.exit.i_crit_edge, label %if.then.i.i

if.then.i.cdns3_free_trb_pool.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_free_trb_pool.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %cdns3_dev.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %91, i32 0, i32 7
  %94 = ptrtoint ptr %cdns3_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cdns3_dev.i.i, align 4
  %eps_dma_pool.i.i = getelementptr inbounds %struct.cdns3_device, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %eps_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %eps_dma_pool.i.i, align 8
  %trb_pool_dma.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %91, i32 0, i32 6
  %98 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %trb_pool_dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %97, ptr noundef nonnull %93, i32 noundef %99) #12
  %100 = ptrtoint ptr %trb_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %trb_pool.i.i, align 4
  br label %cdns3_free_trb_pool.exit.i

cdns3_free_trb_pool.exit.i:                       ; preds = %if.then.i.i, %if.then.i.cdns3_free_trb_pool.exit.i_crit_edge
  %101 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i, align 8
  %103 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @devm_kfree(ptr noundef %102, ptr noundef %104) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %cdns3_free_trb_pool.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.err1_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.err1_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

err1.sink.split:                                  ; preds = %if.end66.err1.sink.split_crit_edge, %sw.epilog.err1.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.28, %sw.epilog.err1.sink.split_crit_edge ], [ @.str.31, %if.end66.err1.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ -12, %sw.epilog.err1.sink.split_crit_edge ], [ %call67, %if.end66.err1.sink.split_crit_edge ]
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull %.str.31.sink) #15
  br label %err1

err1:                                             ; preds = %err1.sink.split, %for.inc.i.err1_crit_edge
  %ret.2 = phi i32 [ %ret.2.ph, %err1.sink.split ], [ %ret.1, %for.inc.i.err1_crit_edge ]
  %107 = ptrtoint ptr %eps_dma_pool to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %eps_dma_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %108) #12
  %dev.i = getelementptr inbounds %struct.cdns3_device, ptr %call7.i.i, i32 0, i32 2, i32 11
  tail call void @put_device(ptr noundef %dev.i) #12
  %109 = ptrtoint ptr %gadget_dev to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %gadget_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end168.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end168.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_device_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %in_lpm = getelementptr inbounds %struct.cdns, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_lpm, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %usb_ists = getelementptr inbounds %struct.cdns3_usb_regs, ptr %7, i32 0, i32 6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_ists) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = xor i32 %8, -1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %usb_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %11, i32 0, i32 5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_ien) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !315
  %13 = and i32 %12, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !316
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %usb_ien12 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %15, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_ien12, i32 %13) #12, !srcloc !239
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %if.end.if.end13_crit_edge
  %ret.0 = phi i32 [ 2, %if.then4 ], [ 0, %if.end.if.end13_crit_edge ]
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %ep_ists = getelementptr inbounds %struct.cdns3_usb_regs, ptr %17, i32 0, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_ists) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %if.end13.cleanup_crit_edge, label %do.body22

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !318
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %ep_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %20, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_ien, i32 0) #12, !srcloc !239
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2, %do.body22 ], [ %ret.0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_device_thread_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #12
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %usb_ists = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_ists) #12, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body8

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body8:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %usb_ists12 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_ists12, i32 %7) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !321
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %usb_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %11, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_ien, i32 1056978689) #12, !srcloc !239
  tail call fastcc void @trace_cdns3_usb_irq(ptr noundef %data, i32 noundef %6) #12
  %and.i = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body8.if.end5.i_crit_edge, label %if.then.i

do.body8.if.end5.i_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then.i:                                        ; preds = %do.body8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %drbl.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %13, i32 0, i32 14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %drbl.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then3.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.then.i
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %usb_sts.i.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %16, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %18 = and i32 %17, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %18)
  %cond.i.i = icmp eq i32 %18, 1073741824
  br i1 %cond.i.i, label %if.then3.i.if.end5.i_crit_edge, label %do.body.i.i

if.then3.i.if.end5.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

do.body.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 4096) #12, !srcloc !239
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.body.i.i, %if.then3.i.if.end5.i_crit_edge, %if.then.i.if.end5.i_crit_edge, %do.body8.if.end5.i_crit_edge
  %and6.i = and i32 %6, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end12.i_crit_edge, label %if.then8.i

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end5.i
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %usb_sts.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %22, i32 0, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i.i) #12, !srcloc !236
  %24 = lshr i32 %23, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %and.i.i = and i32 %24, 112
  %25 = add nsw i32 %and.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %25)
  %26 = icmp ult i32 %25, 64
  br i1 %26, label %switch.lookup, label %if.then8.i.cdns3_get_speed.exit.i_crit_edge

if.then8.i.cdns3_get_speed.exit.i_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_get_speed.exit.i

switch.lookup:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = lshr exact i32 %25, 4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cdns3_device_thread_irq_handler, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cdns3_get_speed.exit.i

cdns3_get_speed.exit.i:                           ; preds = %switch.lookup, %if.then8.i.cdns3_get_speed.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then8.i.cdns3_get_speed.exit.i_crit_edge ]
  %gadget.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2
  %speed10.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %speed10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i, ptr %speed10.i, align 8
  tail call void @usb_gadget_set_state(ptr noundef %gadget.i, i32 noundef 2) #12
  tail call void @cdns3_ep0_config(ptr noundef %data) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %cdns3_get_speed.exit.i, %if.end5.i.if.end12.i_crit_edge
  %and13.i = and i32 %6, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end20.i_crit_edge, label %if.then15.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end12.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %gadget_driver.i.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %gadget_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gadget_driver.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then15.i.cdns3_disconnect_gadget.exit.i_crit_edge, label %land.lhs.true.i.i

if.then15.i.cdns3_disconnect_gadget.exit.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_disconnect_gadget.exit.i

land.lhs.true.i.i:                                ; preds = %if.then15.i
  %disconnect.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %disconnect.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disconnect.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %33, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cdns3_disconnect_gadget.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.cdns3_disconnect_gadget.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_disconnect_gadget.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %gadget.i.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2
  tail call void %33(ptr noundef %gadget.i.i) #12
  br label %cdns3_disconnect_gadget.exit.i

cdns3_disconnect_gadget.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.cdns3_disconnect_gadget.exit.i_crit_edge, %if.then15.i.cdns3_disconnect_gadget.exit.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %gadget17.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2
  %speed18.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2, i32 5
  %34 = ptrtoint ptr %speed18.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %speed18.i, align 8
  tail call void @usb_gadget_set_state(ptr noundef %gadget17.i, i32 noundef 0) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16777216) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 512) #12, !srcloc !239
  %hw_configured_flag.i.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 18
  %39 = ptrtoint ptr %hw_configured_flag.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i.i = load i16, ptr %hw_configured_flag.i.i, align 2
  %onchip_used_size.i.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 23
  %40 = ptrtoint ptr %onchip_used_size.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %onchip_used_size.i.i, align 2
  %out_mem_is_allocated.i.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 19
  %41 = ptrtoint ptr %out_mem_is_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %out_mem_is_allocated.i.i, align 4
  %bf.clear5.i.i = and i16 %bf.load.i.i, 31615
  store i16 %bf.clear5.i.i, ptr %hw_configured_flag.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %cdns3_disconnect_gadget.exit.i
  %i.020.i.i = phi i32 [ 0, %cdns3_disconnect_gadget.exit.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.cdns3_device, ptr %data, i32 0, i32 13, i32 %i.020.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i108.i = icmp eq ptr %43, null
  br i1 %tobool.not.i108.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i110.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i110.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i.i, align 4
  %and.i109.i = and i32 %45, -65537
  store i32 %and.i109.i, ptr %flags.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i110.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end20.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end20.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.end20.i:                                       ; preds = %for.inc.i.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge
  %and21.i = and i32 %6, 1048592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end34.i_crit_edge, label %if.then23.i

if.end20.i.if.end34.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then23.i:                                      ; preds = %if.end20.i
  %gadget_driver.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 3
  %46 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gadget_driver.i, align 8
  %tobool24.not.i = icmp eq ptr %47, null
  br i1 %tobool24.not.i, label %if.then23.i.if.end34.i_crit_edge, label %land.lhs.true.i

if.then23.i.if.end34.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.then23.i
  %suspend.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %suspend.i, align 4
  %tobool26.not.i = icmp eq ptr %49, null
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %if.then27.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %50 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gadget_driver.i, align 8
  %suspend30.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %suspend30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %suspend30.i, align 4
  %gadget31.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2
  tail call void %53(ptr noundef %gadget31.i) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end34.i_crit_edge, %if.then23.i.if.end34.i_crit_edge, %if.end20.i.if.end34.i_crit_edge
  %and35.i = and i32 %6, 2097184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end50.i_crit_edge, label %if.then37.i

if.end34.i.if.end50.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then37.i:                                      ; preds = %if.end34.i
  %gadget_driver38.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 3
  %54 = ptrtoint ptr %gadget_driver38.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gadget_driver38.i, align 8
  %tobool39.not.i = icmp eq ptr %55, null
  br i1 %tobool39.not.i, label %if.then37.i.if.end50.i_crit_edge, label %land.lhs.true40.i

if.then37.i.if.end50.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

land.lhs.true40.i:                                ; preds = %if.then37.i
  %resume.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resume.i, align 4
  %tobool42.not.i = icmp eq ptr %57, null
  br i1 %tobool42.not.i, label %land.lhs.true40.i.if.end50.i_crit_edge, label %if.then43.i

land.lhs.true40.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then43.i:                                      ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %58 = ptrtoint ptr %gadget_driver38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gadget_driver38.i, align 8
  %resume46.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %resume46.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resume46.i, align 4
  %gadget47.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2
  tail call void %61(ptr noundef %gadget47.i) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then43.i, %land.lhs.true40.i.if.end50.i_crit_edge, %if.then37.i.if.end50.i_crit_edge, %if.end34.i.if.end50.i_crit_edge
  %and51.i = and i32 %6, 262156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end_crit_edge, label %if.then53.i

if.end50.i.if.end_crit_edge:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then53.i:                                      ; preds = %if.end50.i
  %gadget_driver54.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 3
  %62 = ptrtoint ptr %gadget_driver54.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gadget_driver54.i, align 8
  %tobool55.not.i = icmp eq ptr %63, null
  br i1 %tobool55.not.i, label %if.then53.i.if.end_crit_edge, label %if.then56.i

if.then53.i.if.end_crit_edge:                     ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then56.i:                                      ; preds = %if.then53.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %gadget58.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2
  %64 = ptrtoint ptr %gadget_driver54.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gadget_driver54.i, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget58.i, ptr noundef %65) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %usb_sts.i112.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %67, i32 0, i32 1
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i112.i) #12, !srcloc !236
  %69 = lshr i32 %68, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %and.i113.i = and i32 %69, 112
  %70 = add nsw i32 %and.i113.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %70)
  %71 = icmp ult i32 %70, 64
  br i1 %71, label %switch.lookup104, label %if.then56.i.cdns3_get_speed.exit119.i_crit_edge

if.then56.i.cdns3_get_speed.exit119.i_crit_edge:  ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_get_speed.exit119.i

switch.lookup104:                                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = lshr exact i32 %70, 4
  %switch.gep105 = getelementptr inbounds [4 x i32], ptr @switch.table.cdns3_device_thread_irq_handler.82, i32 0, i32 %72
  %73 = ptrtoint ptr %switch.gep105 to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load106 = load i32, ptr %switch.gep105, align 4
  br label %cdns3_get_speed.exit119.i

cdns3_get_speed.exit119.i:                        ; preds = %switch.lookup104, %if.then56.i.cdns3_get_speed.exit119.i_crit_edge
  %retval.0.i118.i = phi i32 [ %switch.load106, %switch.lookup104 ], [ 0, %if.then56.i.cdns3_get_speed.exit119.i_crit_edge ]
  %speed63.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 2, i32 5
  %74 = ptrtoint ptr %speed63.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i118.i, ptr %speed63.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 16777216) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 512) #12, !srcloc !239
  %hw_configured_flag.i121.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 18
  %79 = ptrtoint ptr %hw_configured_flag.i121.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load.i122.i = load i16, ptr %hw_configured_flag.i121.i, align 2
  %onchip_used_size.i123.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 23
  %80 = ptrtoint ptr %onchip_used_size.i123.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %onchip_used_size.i123.i, align 2
  %out_mem_is_allocated.i124.i = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 19
  %81 = ptrtoint ptr %out_mem_is_allocated.i124.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %out_mem_is_allocated.i124.i, align 4
  %bf.clear5.i125.i = and i16 %bf.load.i122.i, 31615
  store i16 %bf.clear5.i125.i, ptr %hw_configured_flag.i121.i, align 2
  br label %for.body.i129.i

for.body.i129.i:                                  ; preds = %for.inc.i135.i.for.body.i129.i_crit_edge, %cdns3_get_speed.exit119.i
  %i.020.i126.i = phi i32 [ 0, %cdns3_get_speed.exit119.i ], [ %inc.i133.i, %for.inc.i135.i.for.body.i129.i_crit_edge ]
  %arrayidx.i127.i = getelementptr %struct.cdns3_device, ptr %data, i32 0, i32 13, i32 %i.020.i126.i
  %82 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i127.i, align 4
  %tobool.not.i128.i = icmp eq ptr %83, null
  br i1 %tobool.not.i128.i, label %for.body.i129.i.for.inc.i135.i_crit_edge, label %if.then.i132.i

for.body.i129.i.for.inc.i135.i_crit_edge:         ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i135.i

if.then.i132.i:                                   ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i130.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %flags.i130.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i130.i, align 4
  %and.i131.i = and i32 %85, -65537
  store i32 %and.i131.i, ptr %flags.i130.i, align 4
  br label %for.inc.i135.i

for.inc.i135.i:                                   ; preds = %if.then.i132.i, %for.body.i129.i.for.inc.i135.i_crit_edge
  %inc.i133.i = add nuw nsw i32 %i.020.i126.i, 1
  %exitcond.not.i134.i = icmp eq i32 %inc.i133.i, 32
  br i1 %exitcond.not.i134.i, label %cdns3_hw_reset_eps_config.exit136.i, label %for.inc.i135.i.for.body.i129.i_crit_edge

for.inc.i135.i.for.body.i129.i_crit_edge:         ; preds = %for.inc.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i129.i

cdns3_hw_reset_eps_config.exit136.i:              ; preds = %for.inc.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cdns3_ep0_config(ptr noundef %data) #12
  br label %if.end

if.end:                                           ; preds = %cdns3_hw_reset_eps_config.exit136.i, %if.then53.i.if.end_crit_edge, %if.end50.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end50.i.if.end_crit_edge ], [ 1, %if.then53.i.if.end_crit_edge ], [ 1, %cdns3_hw_reset_eps_config.exit136.i ]
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %ep_ists = getelementptr inbounds %struct.cdns3_usb_regs, ptr %87, i32 0, i32 16
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_ists) #12, !srcloc !236
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !323
  %90 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %reg, align 4
  %and = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end.if.end25_crit_edge, label %if.then24

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cdns3_check_ep0_interrupt_proceed(ptr noundef %data, i32 noundef 0) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end.if.end25_crit_edge
  %ret.1 = phi i32 [ 1, %if.then24 ], [ %ret.0, %if.end.if.end25_crit_edge ]
  %91 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %reg, align 4
  %and26 = and i32 %92, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cdns3_check_ep0_interrupt_proceed(ptr noundef %data, i32 noundef 128) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %ret.2 = phi i32 [ 1, %if.then28 ], [ %ret.1, %if.end25.if.end29_crit_edge ]
  %93 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg, align 4
  %and30 = and i32 %94, -65538
  store i32 %and30, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.do.body44_crit_edge, label %if.end33

if.end29.do.body44_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.end33:                                         ; preds = %if.end29
  %call34 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call34)
  %cmp35102 = icmp ult i32 %call34, 32
  br i1 %cmp35102, label %if.end33.for.body_crit_edge, label %if.end33.for.end_crit_edge

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

for.body:                                         ; preds = %cdns3_check_ep_interrupt_proceed.exit.for.body_crit_edge, %if.end33.for.body_crit_edge
  %bit.0103 = phi i32 [ %call38, %cdns3_check_ep_interrupt_proceed.exit.for.body_crit_edge ], [ %call34, %if.end33.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cdns3_device, ptr %data, i32 0, i32 13, i32 %bit.0103
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  %cdns3_dev.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cdns3_dev.i, align 4
  %address.i = getelementptr inbounds %struct.usb_ep, ptr %96, i32 0, i32 8
  %99 = ptrtoint ptr %address.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %address.i, align 1
  %conv.i = zext i8 %100 to i32
  %selected_ep.i.i = getelementptr inbounds %struct.cdns3_device, ptr %98, i32 0, i32 16
  %101 = ptrtoint ptr %selected_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %selected_ep.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %conv.i)
  %cmp.i.i = icmp eq i32 %102, %conv.i
  br i1 %cmp.i.i, label %for.body.cdns3_select_ep.exit.i_crit_edge, label %if.end.i.i

for.body.cdns3_select_ep.exit.i_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %selected_ep.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv.i, ptr %selected_ep.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  call void @arm_heavy_mb() #12
  %104 = shl nuw i32 %conv.i, 24
  %regs.i.i64 = getelementptr inbounds %struct.cdns3_device, ptr %98, i32 0, i32 6
  %105 = ptrtoint ptr %regs.i.i64 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i.i64, align 4
  %ep_sel.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %106, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i.i, i32 %104) #12, !srcloc !239
  br label %cdns3_select_ep.exit.i

cdns3_select_ep.exit.i:                           ; preds = %if.end.i.i, %for.body.cdns3_select_ep.exit.i_crit_edge
  call fastcc void @trace_cdns3_epx_irq(ptr noundef %98, ptr noundef %96) #12
  %regs.i65 = getelementptr inbounds %struct.cdns3_device, ptr %98, i32 0, i32 6
  %107 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i65, align 4
  %ep_sts.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %108, i32 0, i32 11
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts.i) #12, !srcloc !236
  %110 = call i32 @llvm.bswap.i32(i32 %109) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !324
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !325
  call void @arm_heavy_mb() #12
  %111 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i65, align 4
  %ep_sts3.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %112, i32 0, i32 11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts3.i, i32 %109) #12, !srcloc !239
  %and.i66 = and i32 %110, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i67, label %cdns3_select_ep.exit.i.if.end36.i_crit_edge, label %land.lhs.true.i68

cdns3_select_ep.exit.i.if.end36.i_crit_edge:      ; preds = %cdns3_select_ep.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

land.lhs.true.i68:                                ; preds = %cdns3_select_ep.exit.i
  %use_streams.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 26
  %113 = ptrtoint ptr %use_streams.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load.i = load i8, ptr %use_streams.i, align 4
  %114 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool4.not.i = icmp eq i8 %114, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i68.if.end36.i_crit_edge, label %if.then.i69

land.lhs.true.i68.if.end36.i_crit_edge:           ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.then.i69:                                      ; preds = %land.lhs.true.i68
  %dev_ver.i.i = getelementptr inbounds %struct.cdns3_device, ptr %98, i32 0, i32 4
  %115 = ptrtoint ptr %dev_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dev_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148749, i32 %116)
  %cmp.i8.i = icmp ult i32 %116, 148749
  %117 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i65, align 4
  br i1 %cmp.i8.i, label %if.then.i.i71, label %if.else.i.i

if.then.i.i71:                                    ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #14
  %ep_cmd.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %118, i32 0, i32 10
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd.i.i) #12, !srcloc !236
  %120 = lshr i32 %119, 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !326
  %and.i.i70 = and i32 %120, 127
  br label %cdns3_get_tdl.exit.i

if.else.i.i:                                      ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #14
  %ep_tdl.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %118, i32 0, i32 35
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_tdl.i.i) #12, !srcloc !236
  %122 = call i32 @llvm.bswap.i32(i32 %121) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !327
  br label %cdns3_get_tdl.exit.i

cdns3_get_tdl.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i71
  %retval.0.i.i72 = phi i32 [ %and.i.i70, %if.then.i.i71 ], [ %122, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i72)
  %tobool9.not.i = icmp eq i32 %retval.0.i.i72, 0
  %123 = and i32 %110, 67072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %123)
  %124 = icmp eq i32 %123, 1024
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %124
  br i1 %or.cond.i, label %if.else.i, label %do.body19.i

do.body19.i:                                      ; preds = %cdns3_get_tdl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !328
  call void @arm_heavy_mb() #12
  %last_stream_id.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 28
  %125 = ptrtoint ptr %last_stream_id.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %last_stream_id.i, align 4
  %conv22.i = zext i16 %126 to i32
  %shl.i = shl nuw i32 %conv22.i, 16
  %or.i = or i32 %shl.i, 8
  %127 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  %128 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i65, align 4
  %ep_cmd.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %129, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd.i, i32 %127) #12, !srcloc !239
  %and25.i = and i32 %110, -69
  br label %if.end36.i

if.else.i:                                        ; preds = %cdns3_get_tdl.exit.i
  %130 = ptrtoint ptr %use_streams.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load26.i = load i8, ptr %use_streams.i, align 4
  %bf.set.i = or i8 %bf.load26.i, 32
  store i8 %bf.set.i, ptr %use_streams.i, align 4
  %pending_req_list.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 1
  %131 = ptrtoint ptr %pending_req_list.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %pending_req_list.i, align 4
  %cmp.not.i.i = icmp eq ptr %132, %pending_req_list.i
  %add.ptr.i.i = getelementptr i8, ptr %132, i32 -36
  %deferred_req_list.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 2
  %133 = ptrtoint ptr %deferred_req_list.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile ptr, ptr %deferred_req_list.i, align 4
  %cmp.not.i10.i = icmp ne ptr %134, %deferred_req_list.i
  %add.ptr.i11.i = getelementptr i8, ptr %134, i32 -36
  %tobool30.not24.i = icmp ne ptr %add.ptr.i11.i, null
  %tobool30.not.i = and i1 %cmp.not.i10.i, %tobool30.not24.i
  %tobool32.not25.i = icmp eq ptr %add.ptr.i.i, null
  %tobool32.not.i = or i1 %cmp.not.i.i, %tobool32.not25.i
  %or.cond2.i = select i1 %tobool30.not.i, i1 %tobool32.not.i, i1 false
  br i1 %or.cond2.i, label %if.then33.i, label %if.else.i.if.end36.i_crit_edge

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @cdns3_start_all_request(ptr noundef %98, ptr noundef %96) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.else.i.if.end36.i_crit_edge, %do.body19.i, %land.lhs.true.i68.if.end36.i_crit_edge, %cdns3_select_ep.exit.i.if.end36.i_crit_edge
  %ep_sts_reg.1.i = phi i32 [ %110, %land.lhs.true.i68.if.end36.i_crit_edge ], [ %110, %cdns3_select_ep.exit.i.if.end36.i_crit_edge ], [ %and25.i, %do.body19.i ], [ %110, %if.then33.i ], [ %110, %if.else.i.if.end36.i_crit_edge ]
  %and37.i = and i32 %ep_sts_reg.1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end101.i_crit_edge, label %if.then39.i

if.end36.i.if.end101.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i

if.then39.i:                                      ; preds = %if.end36.i
  %flags.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 9
  %135 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags.i, align 4
  %and40.i = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.then39.i.if.end48.i_crit_edge, label %land.lhs.true42.i

if.then39.i.if.end48.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

land.lhs.true42.i:                                ; preds = %if.then39.i
  %and43.i = and i32 %ep_sts_reg.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true42.i.if.then47.i_crit_edge, label %land.lhs.true45.i

land.lhs.true42.i.if.then47.i_crit_edge:          ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47.i

land.lhs.true45.i:                                ; preds = %land.lhs.true42.i
  %dev_ver.i = getelementptr inbounds %struct.cdns3_device, ptr %98, i32 0, i32 4
  %137 = ptrtoint ptr %dev_ver.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dev_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %138)
  %cmp.i = icmp ult i32 %138, 148748
  br i1 %cmp.i, label %land.lhs.true45.i.if.end48.i_crit_edge, label %land.lhs.true45.i.if.then47.i_crit_edge

land.lhs.true45.i.if.then47.i_crit_edge:          ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47.i

land.lhs.true45.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then47.i:                                      ; preds = %land.lhs.true45.i.if.then47.i_crit_edge, %land.lhs.true42.i.if.then47.i_crit_edge
  call fastcc void @cdns3_ep_stall_flush(ptr noundef %96) #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %land.lhs.true45.i.if.end48.i_crit_edge, %if.then39.i.if.end48.i_crit_edge
  %type.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 13
  %139 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %140)
  %cmp50.i = icmp eq i8 %140, 1
  br i1 %cmp50.i, label %land.lhs.true52.i, label %if.end48.i.if.else76.i_crit_edge

if.end48.i.if.else76.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else76.i

land.lhs.true52.i:                                ; preds = %if.end48.i
  %wa1_set.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 23
  %141 = ptrtoint ptr %wa1_set.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load53.i = load i8, ptr %wa1_set.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load53.i)
  %tobool56.not.i = icmp sgt i8 %bf.load53.i, -1
  br i1 %tobool56.not.i, label %if.then57.i, label %land.lhs.true52.i.if.else76.i_crit_edge

land.lhs.true52.i.if.else76.i_crit_edge:          ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else76.i

if.then57.i:                                      ; preds = %land.lhs.true52.i
  %dir.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 11
  %142 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool58.not.i = icmp eq i8 %143, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.then57.i.if.end75.i_crit_edge

if.then57.i.if.end75.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then59.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i65, align 4
  %ep_cfg63.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %145, i32 0, i32 9
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cfg63.i) #12, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !329
  %147 = and i32 %146, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  call void @arm_heavy_mb() #12
  %148 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i65, align 4
  %ep_cfg72.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %149, i32 0, i32 9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cfg72.i, i32 %147) #12, !srcloc !239
  %150 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags.i, align 4
  %and74.i = and i32 %151, -1025
  store i32 %and74.i, ptr %flags.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then59.i, %if.then57.i.if.end75.i_crit_edge
  call fastcc void @cdns3_transfer_completed(ptr noundef %98, ptr noundef %96) #12
  br label %if.end101.i

if.else76.i:                                      ; preds = %land.lhs.true52.i.if.else76.i_crit_edge, %if.end48.i.if.else76.i_crit_edge
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i, align 4
  %154 = and i32 %153, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %if.then84.i, label %if.else76.i.if.end101.i_crit_edge

if.else76.i.if.end101.i_crit_edge:                ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i

if.then84.i:                                      ; preds = %if.else76.i
  %and86.i = and i32 %153, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.else92.i, label %if.then88.i

if.then88.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  %and90.i = and i32 %153, -513
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and90.i, ptr %flags.i, align 4
  call fastcc void @cdns3_start_all_request(ptr noundef %98, ptr noundef %96) #12
  br label %if.end101.i

if.else92.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #14
  %wa1_set93.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 23
  %157 = ptrtoint ptr %wa1_set93.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %bf.load94.i = load i8, ptr %wa1_set93.i, align 1
  %bf.lshr95.i = lshr i8 %bf.load94.i, 7
  call void @cdns3_rearm_transfer(ptr noundef %96, i8 noundef zeroext %bf.lshr95.i) #12
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else92.i, %if.then88.i, %if.else76.i.if.end101.i_crit_edge, %if.end75.i, %if.end36.i.if.end101.i_crit_edge
  %and105.i = and i32 %ep_sts_reg.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  %158 = and i32 %ep_sts_reg.1.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %159 = icmp eq i32 %158, 0
  %and108.i = and i32 %ep_sts_reg.1.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  %160 = and i32 %ep_sts_reg.1.i, 524300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %if.end101.i.if.end161.i_crit_edge, label %if.then110.i

if.end101.i.if.end161.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161.i

if.then110.i:                                     ; preds = %if.end101.i
  %flags111.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 9
  %162 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags111.i, align 4
  %and112.i = and i32 %163, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %if.then110.i.if.end124.i_crit_edge, label %if.then114.i

if.then110.i.if.end124.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124.i

if.then114.i:                                     ; preds = %if.then110.i
  br i1 %tobool106.not.i, label %if.else120.i, label %if.end124.thread.i

if.else120.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #14
  %and122.i = and i32 %163, -2049
  %164 = ptrtoint ptr %flags111.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %and122.i, ptr %flags111.i, align 4
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.else120.i, %if.then110.i.if.end124.i_crit_edge
  %use_streams125.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 26
  %165 = ptrtoint ptr %use_streams125.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load126.i = load i8, ptr %use_streams125.i, align 4
  %166 = and i8 %bf.load126.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool130.not.i = icmp eq i8 %166, 0
  br i1 %tobool130.not.i, label %if.then131.i, label %if.end124.i.if.else147.i_crit_edge

if.end124.i.if.else147.i_crit_edge:               ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else147.i

if.end124.thread.i:                               ; preds = %if.then114.i
  %or119.i = or i32 %163, 2048
  %167 = ptrtoint ptr %flags111.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or119.i, ptr %flags111.i, align 4
  %use_streams12521.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 26
  %168 = ptrtoint ptr %use_streams12521.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load12622.i = load i8, ptr %use_streams12521.i, align 4
  %169 = and i8 %bf.load12622.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool130.not23.i = icmp eq i8 %169, 0
  br i1 %tobool130.not23.i, label %if.end124.thread.i.if.then137.i_crit_edge, label %if.end124.thread.i.if.else147.i_crit_edge

if.end124.thread.i.if.else147.i_crit_edge:        ; preds = %if.end124.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else147.i

if.end124.thread.i.if.then137.i_crit_edge:        ; preds = %if.end124.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then137.i

if.then131.i:                                     ; preds = %if.end124.i
  br i1 %159, label %if.else138.i, label %if.then131.i.if.then137.i_crit_edge

if.then131.i.if.then137.i_crit_edge:              ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then137.i

if.then137.i:                                     ; preds = %if.then131.i.if.then137.i_crit_edge, %if.end124.thread.i.if.then137.i_crit_edge
  call fastcc void @cdns3_transfer_completed(ptr noundef %98, ptr noundef %96) #12
  br label %if.end161.i

if.else138.i:                                     ; preds = %if.then131.i
  %170 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags111.i, align 4
  %and140.i = and i32 %171, 32768
  %pending_tdl.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 29
  %172 = ptrtoint ptr %pending_tdl.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %pending_tdl.i, align 2
  %conv141.i = zext i16 %173 to i32
  %and142.i = and i32 %and140.i, %conv141.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %if.else138.i.if.end161.i_crit_edge, label %if.then144.i

if.else138.i.if.end161.i_crit_edge:               ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161.i

if.then144.i:                                     ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #14
  %174 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cdns3_dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %173)
  %cmp.i13.i = icmp ugt i16 %173, 127
  %phi.bo.i.i = shl i32 %conv141.i, 17
  %phi.bo11.i.i = and i32 %phi.bo.i.i, 16646144
  %phi.bo12.i.i = or i32 %phi.bo11.i.i, 65536
  %176 = call i16 @llvm.usub.sat.i16(i16 %173, i16 127) #12
  %tdl.0.i.i = select i1 %cmp.i13.i, i32 16711680, i32 %phi.bo12.i.i
  %177 = ptrtoint ptr %pending_tdl.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %pending_tdl.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !331
  call void @arm_heavy_mb() #12
  %regs.i14.i = getelementptr inbounds %struct.cdns3_device, ptr %175, i32 0, i32 6
  %178 = ptrtoint ptr %regs.i14.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i14.i, align 4
  %ep_cmd.i15.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %179, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd.i15.i, i32 %tdl.0.i.i) #12, !srcloc !239
  br label %if.end161.i

if.else147.i:                                     ; preds = %if.end124.thread.i.if.else147.i_crit_edge, %if.end124.i.if.else147.i_crit_edge
  %dir148.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 11
  %180 = ptrtoint ptr %dir148.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %dir148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp150.i = icmp eq i8 %181, 0
  br i1 %cmp150.i, label %if.then152.i, label %if.else154.i

if.then152.i:                                     ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #14
  %ep_sts_pending.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 27
  %182 = ptrtoint ptr %ep_sts_pending.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ep_sts_pending.i, align 4
  %or153.i = or i32 %183, %ep_sts_reg.1.i
  store i32 %or153.i, ptr %ep_sts_pending.i, align 4
  br label %if.end161.i

if.else154.i:                                     ; preds = %if.else147.i
  br i1 %tobool109.not.i, label %if.else154.i.if.end161.i_crit_edge, label %if.then157.i

if.else154.i.if.end161.i_crit_edge:               ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161.i

if.then157.i:                                     ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @cdns3_transfer_completed(ptr noundef %98, ptr noundef %96) #12
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then157.i, %if.else154.i.if.end161.i_crit_edge, %if.then152.i, %if.then144.i, %if.else138.i.if.end161.i_crit_edge, %if.then137.i, %if.end101.i.if.end161.i_crit_edge
  %dir162.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 11
  %184 = ptrtoint ptr %dir162.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %dir162.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %cmp164.i = icmp ne i8 %185, 0
  %and167.i = and i32 %ep_sts_reg.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  %or.cond7.i = select i1 %cmp164.i, i1 true, i1 %tobool168.not.i
  br i1 %or.cond7.i, label %if.end161.i.if.end182.i_crit_edge, label %land.lhs.true169.i

if.end161.i.if.end182.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i

land.lhs.true169.i:                               ; preds = %if.end161.i
  %ep_sts_pending170.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 27
  %186 = ptrtoint ptr %ep_sts_pending170.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ep_sts_pending170.i, align 4
  %and171.i = and i32 %187, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %land.lhs.true169.i.if.end182.i_crit_edge, label %land.lhs.true173.i

land.lhs.true169.i.if.end182.i_crit_edge:         ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i

land.lhs.true173.i:                               ; preds = %land.lhs.true169.i
  %use_streams174.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 26
  %188 = ptrtoint ptr %use_streams174.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %bf.load175.i = load i8, ptr %use_streams174.i, align 4
  %189 = and i8 %bf.load175.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool179.not.i = icmp eq i8 %189, 0
  br i1 %tobool179.not.i, label %land.lhs.true173.i.if.end182.i_crit_edge, label %if.then180.i

land.lhs.true173.i.if.end182.i_crit_edge:         ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i

if.then180.i:                                     ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #14
  %190 = ptrtoint ptr %ep_sts_pending170.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %ep_sts_pending170.i, align 4
  call fastcc void @cdns3_transfer_completed(ptr noundef %98, ptr noundef %96) #12
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then180.i, %land.lhs.true173.i.if.end182.i_crit_edge, %land.lhs.true169.i.if.end182.i_crit_edge, %if.end161.i.if.end182.i_crit_edge
  %and183.i = and i32 %ep_sts_reg.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i)
  %tobool184.not.i = icmp eq i32 %and183.i, 0
  br i1 %tobool184.not.i, label %if.end182.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge, label %land.lhs.true185.i

if.end182.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge: ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_check_ep_interrupt_proceed.exit

land.lhs.true185.i:                               ; preds = %if.end182.i
  %dev_ver186.i = getelementptr inbounds %struct.cdns3_device, ptr %98, i32 0, i32 4
  %191 = ptrtoint ptr %dev_ver186.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %dev_ver186.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %192)
  %cmp187.i = icmp ult i32 %192, 148748
  br i1 %cmp187.i, label %land.lhs.true189.i, label %land.lhs.true185.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge

land.lhs.true185.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge: ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_check_ep_interrupt_proceed.exit

land.lhs.true189.i:                               ; preds = %land.lhs.true185.i
  %flags190.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 9
  %193 = ptrtoint ptr %flags190.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flags190.i, align 4
  %and191.i = and i32 %194, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.not.i, label %if.then193.i, label %land.lhs.true189.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge

land.lhs.true189.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge: ; preds = %land.lhs.true189.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_check_ep_interrupt_proceed.exit

if.then193.i:                                     ; preds = %land.lhs.true189.i
  %pending_req_list.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 1
  %195 = ptrtoint ptr %pending_req_list.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile ptr, ptr %pending_req_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %196, %pending_req_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i18.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_cdns3_wa2(ptr noundef %96, ptr noundef nonnull @.str.74) #12
  br label %cdns3_check_ep_interrupt_proceed.exit

if.end.i18.i:                                     ; preds = %if.then193.i
  %and.i17.i = and i32 %194, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool1.not.i.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i18.i.if.end6.i.i_crit_edge, label %if.then2.i.i

if.end.i18.i.if.end6.i.i_crit_edge:               ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  %and4.i.i = and i32 %194, -12289
  %or.i.i = or i32 %and4.i.i, 8192
  %197 = ptrtoint ptr %flags190.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %or.i.i, ptr %flags190.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i, %if.end.i18.i.if.end6.i.i_crit_edge
  call fastcc void @trace_cdns3_wa2(ptr noundef %96, ptr noundef nonnull @.str.75) #12
  %wa2_counter.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 4
  %198 = ptrtoint ptr %wa2_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %wa2_counter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %199)
  %cmp.i19.i = icmp sgt i32 %199, 127
  br i1 %cmp.i19.i, label %if.then8.i.i73, label %if.end6.i.i.if.end9.i.i_crit_edge

if.end6.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then8.i.i73:                                   ; preds = %if.end6.i.i
  call fastcc void @trace_cdns3_wa2(ptr noundef %96, ptr noundef nonnull @.str.76) #12
  %wa2_descmiss_req_list.i.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 3
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %list_del_init.exit.i.i.i.while.cond.i.i.i_crit_edge, %if.then8.i.i73
  %200 = ptrtoint ptr %wa2_descmiss_req_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile ptr, ptr %wa2_descmiss_req_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %201, %wa2_descmiss_req_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %while.cond.i.i.i.if.end9.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.if.end9.i.i_crit_edge:           ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %202 = ptrtoint ptr %wa2_descmiss_req_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile ptr, ptr %wa2_descmiss_req_list.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %203, %wa2_descmiss_req_list.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %203, i32 -80
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i.i.i, ptr null, ptr %add.ptr.i.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i.i.i.i, i32 0, i32 6
  %204 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %flags.i.i.i, align 4
  call fastcc void @trace_cdns3_wa2(ptr noundef %96, ptr noundef nonnull @.str.79) #12
  %206 = ptrtoint ptr %spec.select.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %spec.select.i.i.i.i, align 4
  call void @kfree(ptr noundef %207) #12
  %aligned_buf.i.i.i.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i.i.i.i, i32 0, i32 5
  %208 = ptrtoint ptr %aligned_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %aligned_buf.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %209, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.cdns3_gadget_ep_free_request.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.i.cdns3_gadget_ep_free_request.exit.i.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_gadget_ep_free_request.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %in_use.i.i.i.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %in_use.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %bf.load.i.i.i.i = load i8, ptr %in_use.i.i.i.i, align 4
  %bf.clear.i.i.i.i = and i8 %bf.load.i.i.i.i, 127
  store i8 %bf.clear.i.i.i.i, ptr %in_use.i.i.i.i, align 4
  br label %cdns3_gadget_ep_free_request.exit.i.i.i

cdns3_gadget_ep_free_request.exit.i.i.i:          ; preds = %if.then.i.i.i.i, %while.body.i.i.i.cdns3_gadget_ep_free_request.exit.i.i.i_crit_edge
  call fastcc void @trace_cdns3_free_request(ptr noundef %spec.select.i.i.i.i) #12
  call void @kfree(ptr noundef %spec.select.i.i.i.i) #12
  %list.i.i.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %cdns3_gadget_ep_free_request.exit.i.i.i.list_del_init.exit.i.i.i_crit_edge

cdns3_gadget_ep_free_request.exit.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %cdns3_gadget_ep_free_request.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %cdns3_gadget_ep_free_request.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i.i.i.i, i32 0, i32 7, i32 1
  %211 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %213 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %212, ptr %prev1.i.i.i.i.i.i, align 4
  %216 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %214, ptr %212, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %cdns3_gadget_ep_free_request.exit.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %217 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile ptr %list.i.i.i, ptr %list.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i.i.i.i, i32 0, i32 7, i32 1
  %218 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %list.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  %219 = ptrtoint ptr %wa2_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %wa2_counter.i.i, align 4
  %dec.i.i.i = add i32 %220, -1
  store i32 %dec.i.i.i, ptr %wa2_counter.i.i, align 4
  %221 = and i32 %205, 4
  %tobool7.not.i.i.i = icmp eq i32 %221, 0
  br i1 %tobool7.not.i.i.i, label %list_del_init.exit.i.i.i.if.end9.i.i_crit_edge, label %list_del_init.exit.i.i.i.while.cond.i.i.i_crit_edge

list_del_init.exit.i.i.i.while.cond.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

list_del_init.exit.i.i.i.if.end9.i.i_crit_edge:   ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %list_del_init.exit.i.i.i.if.end9.i.i_crit_edge, %while.cond.i.i.i.if.end9.i.i_crit_edge, %if.end6.i.i.if.end9.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %222 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %222, i32 noundef 2848, i32 noundef 96) #16
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end9.i.i.do.end.i.i_crit_edge, label %if.end13.i.i

if.end9.i.i.do.end.i.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %priv_ep1.i.i.i = getelementptr inbounds %struct.cdns3_request, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %223 = ptrtoint ptr %priv_ep1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %96, ptr %priv_ep1.i.i.i, align 8
  call fastcc void @trace_cdns3_alloc_request(ptr noundef nonnull %call7.i.i.i.i.i) #12
  %flags14.i.i = getelementptr inbounds %struct.cdns3_request, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %224 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %flags14.i.i, align 4
  %or15.i.i = or i32 %225, 2
  store i32 %or15.i.i, ptr %flags14.i.i, align 4
  %descmis_req.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %96, i32 0, i32 10
  %226 = ptrtoint ptr %descmis_req.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %descmis_req.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %227, null
  br i1 %tobool16.not.i.i, label %if.end13.i.i.if.end21.i.i_crit_edge, label %if.then17.i.i

if.end13.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i.i

if.then17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags19.i.i = getelementptr inbounds %struct.cdns3_request, ptr %227, i32 0, i32 6
  %228 = ptrtoint ptr %flags19.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %flags19.i.i, align 4
  %or20.i.i = or i32 %229, 4
  store i32 %or20.i.i, ptr %flags19.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then17.i.i, %if.end13.i.i.if.end21.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %230 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %230, i32 noundef 2848, i32 noundef 2048) #16
  %231 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call7.i.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %232 = ptrtoint ptr %wa2_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %wa2_counter.i.i, align 4
  %inc.i.i74 = add i32 %233, 1
  store i32 %inc.i.i74, ptr %wa2_counter.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %if.end30.i.i

if.then28.i.i:                                    ; preds = %if.end21.i.i
  %aligned_buf.i.i.i = getelementptr inbounds %struct.cdns3_request, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %234 = ptrtoint ptr %aligned_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %aligned_buf.i.i.i, align 8
  %tobool.not.i62.i.i = icmp eq ptr %235, null
  br i1 %tobool.not.i62.i.i, label %if.then28.i.i.cdns3_gadget_ep_free_request.exit.i.i_crit_edge, label %if.then.i.i.i

if.then28.i.i.cdns3_gadget_ep_free_request.exit.i.i_crit_edge: ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_gadget_ep_free_request.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %in_use.i.i.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %235, i32 0, i32 4
  %236 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %bf.load.i.i.i = load i8, ptr %in_use.i.i.i, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 127
  store i8 %bf.clear.i.i.i, ptr %in_use.i.i.i, align 4
  br label %cdns3_gadget_ep_free_request.exit.i.i

cdns3_gadget_ep_free_request.exit.i.i:            ; preds = %if.then.i.i.i, %if.then28.i.i.cdns3_gadget_ep_free_request.exit.i.i_crit_edge
  call fastcc void @trace_cdns3_free_request(ptr noundef nonnull %call7.i.i.i.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  br label %do.end.i.i

if.end30.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 2048, ptr %length.i.i, align 4
  %238 = ptrtoint ptr %descmis_req.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call7.i.i.i.i.i, ptr %descmis_req.i.i, align 4
  %239 = call fastcc i32 @__cdns3_gadget_ep_queue(ptr noundef %96, ptr noundef nonnull %call7.i.i.i.i.i) #12
  br label %cdns3_check_ep_interrupt_proceed.exit

do.end.i.i:                                       ; preds = %cdns3_gadget_ep_free_request.exit.i.i, %if.end9.i.i.do.end.i.i_crit_edge
  %240 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cdns3_dev.i, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.77) #15
  br label %cdns3_check_ep_interrupt_proceed.exit

cdns3_check_ep_interrupt_proceed.exit:            ; preds = %do.end.i.i, %if.end30.i.i, %if.then.i16.i, %land.lhs.true189.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge, %land.lhs.true185.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge, %if.end182.i.cdns3_check_ep_interrupt_proceed.exit_crit_edge
  %add = add i32 %bit.0103, 1
  %call38 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 32, i32 noundef %add) #12
  %cmp35 = icmp ult i32 %call38, 32
  br i1 %cmp35, label %cdns3_check_ep_interrupt_proceed.exit.for.body_crit_edge, label %cdns3_check_ep_interrupt_proceed.exit.for.end_crit_edge

cdns3_check_ep_interrupt_proceed.exit.for.end_crit_edge: ; preds = %cdns3_check_ep_interrupt_proceed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cdns3_check_ep_interrupt_proceed.exit.for.body_crit_edge: ; preds = %cdns3_check_ep_interrupt_proceed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cdns3_check_ep_interrupt_proceed.exit.for.end_crit_edge, %if.end33.for.end_crit_edge
  %ret.3.lcssa = phi i32 [ %ret.2, %if.end33.for.end_crit_edge ], [ 1, %cdns3_check_ep_interrupt_proceed.exit.for.end_crit_edge ]
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 4
  %244 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %245)
  %cmp39 = icmp ult i32 %245, 148748
  br i1 %cmp39, label %land.lhs.true, label %for.end.do.body44_crit_edge

for.end.do.body44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

land.lhs.true:                                    ; preds = %for.end
  %using_streams = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 18
  %246 = ptrtoint ptr %using_streams to i32
  call void @__asan_load2_noabort(i32 %246)
  %bf.load = load i16, ptr %using_streams, align 2
  %247 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %247)
  %tobool41.not = icmp eq i16 %247, 0
  br i1 %tobool41.not, label %land.lhs.true.do.body44_crit_edge, label %if.then42

land.lhs.true.do.body44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.then42:                                        ; preds = %land.lhs.true
  %selected_ep.i.i75 = getelementptr inbounds %struct.cdns3_device, ptr %data, i32 0, i32 16
  %248 = ptrtoint ptr %selected_ep.i.i75 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %selected_ep.i.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp.i.i76 = icmp eq i32 %249, 0
  br i1 %cmp.i.i76, label %if.then42.cdns3_select_ep.exit.i84_crit_edge, label %if.end.i.i79

if.then42.cdns3_select_ep.exit.i84_crit_edge:     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit.i84

if.end.i.i79:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %250 = ptrtoint ptr %selected_ep.i.i75 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %selected_ep.i.i75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  call void @arm_heavy_mb() #12
  %251 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs, align 4
  %ep_sel.i.i78 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %252, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i.i78, i32 0) #12, !srcloc !239
  br label %cdns3_select_ep.exit.i84

cdns3_select_ep.exit.i84:                         ; preds = %if.end.i.i79, %if.then42.cdns3_select_ep.exit.i84_crit_edge
  %253 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regs, align 4
  %ep_sts.i81 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %254, i32 0, i32 11
  %255 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts.i81) #12, !srcloc !236
  %256 = call i32 @llvm.bswap.i32(i32 %255) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !332
  %and.i82 = and i32 %256, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %cdns3_select_ep.exit.i84.do.body44_crit_edge, label %if.then.i87

cdns3_select_ep.exit.i84.do.body44_crit_edge:     ; preds = %cdns3_select_ep.exit.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.then.i87:                                      ; preds = %cdns3_select_ep.exit.i84
  %and2.i = lshr i32 %256, 24
  %shr.i = and i32 %and2.i, 15
  %arrayidx.i = getelementptr %struct.cdns3_device, ptr %data, i32 0, i32 13, i32 %shr.i
  %257 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx.i, align 4
  %flags.i85 = getelementptr inbounds %struct.cdns3_endpoint, ptr %258, i32 0, i32 9
  %259 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %flags.i85, align 4
  %and3.i = and i32 %260, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i86 = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i86, label %if.then.i87.do.body44_crit_edge, label %land.lhs.true.i90

if.then.i87.do.body44_crit_edge:                  ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

land.lhs.true.i90:                                ; preds = %if.then.i87
  %use_streams.i88 = getelementptr inbounds %struct.cdns3_endpoint, ptr %258, i32 0, i32 26
  %261 = ptrtoint ptr %use_streams.i88 to i32
  call void @__asan_load1_noabort(i32 %261)
  %bf.load.i89 = load i8, ptr %use_streams.i88, align 4
  %262 = and i8 %bf.load.i89, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool5.not.i = icmp eq i8 %262, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i90.do.body44_crit_edge

land.lhs.true.i90.do.body44_crit_edge:            ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i90
  %type.i91 = getelementptr inbounds %struct.cdns3_endpoint, ptr %258, i32 0, i32 13
  %263 = ptrtoint ptr %type.i91 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %type.i91, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %264)
  %cmp.not.i = icmp eq i8 %264, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool9.not.i92 = icmp eq i32 %shr.i, 0
  %or.cond.i93 = select i1 %cmp.not.i, i1 true, i1 %tobool9.not.i92
  br i1 %or.cond.i93, label %land.lhs.true6.i.do.body44_crit_edge, label %if.then10.i

land.lhs.true6.i.do.body44_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.then10.i:                                      ; preds = %land.lhs.true6.i
  %pending_req_list.i94 = getelementptr inbounds %struct.cdns3_endpoint, ptr %258, i32 0, i32 1
  %265 = ptrtoint ptr %pending_req_list.i94 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile ptr, ptr %pending_req_list.i94, align 4
  %cmp.i99.i = icmp ne ptr %266, %pending_req_list.i94
  %267 = and i32 %260, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %268 = icmp ne i32 %267, 0
  %or.cond98.i = select i1 %268, i1 true, i1 %cmp.i99.i
  br i1 %or.cond98.i, label %if.then10.i.do.body44_crit_edge, label %if.else.i97

if.then10.i.do.body44_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

if.else.i97:                                      ; preds = %if.then10.i
  %num.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %258, i32 0, i32 12
  %269 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %num.i, align 1
  %dir.i95 = getelementptr inbounds %struct.cdns3_endpoint, ptr %258, i32 0, i32 11
  %271 = ptrtoint ptr %dir.i95 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %dir.i95, align 4
  %or96.i = or i8 %272, %270
  %or.i96 = zext i8 %or96.i to i32
  %273 = ptrtoint ptr %selected_ep.i.i75 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %selected_ep.i.i75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %or.i96)
  %cmp.i101.i = icmp eq i32 %274, %or.i96
  br i1 %cmp.i101.i, label %if.else.i97.cdns3_select_ep.exit105.i_crit_edge, label %if.end.i104.i

if.else.i97.cdns3_select_ep.exit105.i_crit_edge:  ; preds = %if.else.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit105.i

if.end.i104.i:                                    ; preds = %if.else.i97
  call void @__sanitizer_cov_trace_pc() #14
  %275 = ptrtoint ptr %selected_ep.i.i75 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %or.i96, ptr %selected_ep.i.i75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  call void @arm_heavy_mb() #12
  %276 = shl nuw i32 %or.i96, 24
  %277 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regs, align 4
  %ep_sel.i103.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %278, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i103.i, i32 %276) #12, !srcloc !239
  br label %cdns3_select_ep.exit105.i

cdns3_select_ep.exit105.i:                        ; preds = %if.end.i104.i, %if.else.i97.cdns3_select_ep.exit105.i_crit_edge
  %279 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs, align 4
  %ep_sts_en.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %280, i32 0, i32 13
  %281 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts_en.i) #12, !srcloc !236
  %282 = call i32 @llvm.bswap.i32(i32 %281) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !333
  %283 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regs, align 4
  %ep_cmd.i98 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %284, i32 0, i32 10
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd.i98) #12, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !334
  %286 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %flags.i85, align 4
  %or37.i = or i32 %287, 32768
  store i32 %or37.i, ptr %flags.i85, align 4
  %288 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regs, align 4
  %ep_cfg.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %289, i32 0, i32 9
  %290 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cfg.i) #12, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %291 = or i32 %290, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cfg.i, i32 %291) #12, !srcloc !239
  %292 = ptrtoint ptr %dir.i95 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %dir.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool40.not.i = icmp eq i8 %293, 0
  br i1 %tobool40.not.i, label %land.lhs.true41.i, label %cdns3_select_ep.exit105.i.do.body50.i_crit_edge

cdns3_select_ep.exit105.i.do.body50.i_crit_edge:  ; preds = %cdns3_select_ep.exit105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50.i

land.lhs.true41.i:                                ; preds = %cdns3_select_ep.exit105.i
  %294 = ptrtoint ptr %type.i91 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %type.i91, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %295)
  %cmp44.not.i = icmp eq i8 %295, 1
  br i1 %cmp44.not.i, label %land.lhs.true41.i.do.body50.i_crit_edge, label %if.then46.i

land.lhs.true41.i.do.body50.i_crit_edge:          ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50.i

if.then46.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #14
  %296 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %flags.i85, align 4
  %or48.i = or i32 %297, 4096
  store i32 %or48.i, ptr %flags.i85, align 4
  %or49.i = or i32 %282, 16
  br label %do.body50.i

do.body50.i:                                      ; preds = %if.then46.i, %land.lhs.true41.i.do.body50.i_crit_edge, %cdns3_select_ep.exit105.i.do.body50.i_crit_edge
  %ep_sts_en_reg.0.i = phi i32 [ %282, %cdns3_select_ep.exit105.i.do.body50.i_crit_edge ], [ %or49.i, %if.then46.i ], [ %282, %land.lhs.true41.i.do.body50.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !335
  call void @arm_heavy_mb() #12
  %298 = call i32 @llvm.bswap.i32(i32 %ep_sts_en_reg.0.i) #12
  %299 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regs, align 4
  %ep_sts_en54.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %300, i32 0, i32 13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts_en54.i, i32 %298) #12, !srcloc !239
  %301 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs, align 4
  %ep_cmd.i.i99 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %302, i32 0, i32 10
  %303 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd.i.i99) #12, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !336
  %304 = and i32 %303, 16646144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool.not.i.i100 = icmp eq i32 %304, 0
  br i1 %tobool.not.i.i100, label %do.body50.i.cdns3_wa2_reset_tdl.exit.i_crit_edge, label %if.then.i.i101

do.body50.i.cdns3_wa2_reset_tdl.exit.i_crit_edge: ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_wa2_reset_tdl.exit.i

if.then.i.i101:                                   ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  %305 = lshr i32 %303, 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !337
  call void @arm_heavy_mb() #12
  %and5.i.i = mul i32 %305, 16646144
  %or.i107.i = and i32 %and5.i.i, 16646144
  %306 = or i32 %or.i107.i, 65536
  %307 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %regs, align 4
  %ep_cmd7.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %308, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd7.i.i, i32 %306) #12, !srcloc !239
  br label %cdns3_wa2_reset_tdl.exit.i

cdns3_wa2_reset_tdl.exit.i:                       ; preds = %if.then.i.i101, %do.body50.i.cdns3_wa2_reset_tdl.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !338
  call void @arm_heavy_mb() #12
  %309 = and i32 %285, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool59.not.i = icmp eq i32 %309, 0
  br i1 %tobool59.not.i, label %if.else61.i, label %if.then60.i

if.then60.i:                                      ; preds = %cdns3_wa2_reset_tdl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_cdns3_wa2(ptr noundef %258, ptr noundef nonnull @.str.80) #12
  br label %do.body44

if.else61.i:                                      ; preds = %cdns3_wa2_reset_tdl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_cdns3_wa2(ptr noundef %258, ptr noundef nonnull @.str.81) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  call void @arm_heavy_mb() #12
  %310 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs, align 4
  %ep_cmd66.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %311, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd66.i, i32 1073741824) #12, !srcloc !239
  br label %do.body44

do.body44:                                        ; preds = %if.else61.i, %if.then60.i, %if.then10.i.do.body44_crit_edge, %land.lhs.true6.i.do.body44_crit_edge, %land.lhs.true.i90.do.body44_crit_edge, %if.then.i87.do.body44_crit_edge, %cdns3_select_ep.exit.i84.do.body44_crit_edge, %land.lhs.true.do.body44_crit_edge, %for.end.do.body44_crit_edge, %if.end29.do.body44_crit_edge
  %ret.4 = phi i32 [ %ret.3.lcssa, %land.lhs.true.do.body44_crit_edge ], [ %ret.3.lcssa, %for.end.do.body44_crit_edge ], [ %ret.2, %if.end29.do.body44_crit_edge ], [ %ret.3.lcssa, %cdns3_select_ep.exit.i84.do.body44_crit_edge ], [ %ret.3.lcssa, %if.then.i87.do.body44_crit_edge ], [ %ret.3.lcssa, %land.lhs.true.i90.do.body44_crit_edge ], [ %ret.3.lcssa, %land.lhs.true6.i.do.body44_crit_edge ], [ %ret.3.lcssa, %if.then10.i.do.body44_crit_edge ], [ %ret.3.lcssa, %if.then60.i ], [ %ret.3.lcssa, %if.else61.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !340
  call void @arm_heavy_mb() #12
  %312 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regs, align 4
  %ep_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %313, i32 0, i32 15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_ien, i32 -1) #12, !srcloc !239
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #12
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_initialize_gadget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns3_gadget_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -96
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_pending_setup_status_handler(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns3_free_aligned_request_buf(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -208
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %aligned_buf_list = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %aligned_buf_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aligned_buf_list, align 8
  %cmp16.not60 = icmp eq ptr %1, %aligned_buf_list
  br i1 %cmp16.not60, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sysdev = getelementptr i8, ptr %work, i32 -1268
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in62 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn65, %for.inc.for.body_crit_edge ]
  %flags.061 = phi i32 [ %call4, %for.body.lr.ph ], [ %flags.1, %for.inc.for.body_crit_edge ]
  %buf.064 = getelementptr i8, ptr %.pn.in62, i32 -20
  %2 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn65 = load ptr, ptr %.pn.in62, align 4
  %in_use = getelementptr i8, ptr %.pn.in62, i32 -4
  %3 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in62) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in62, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in62, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.061) #12
  %12 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sysdev, align 4
  %size = getelementptr i8, ptr %.pn.in62, i32 -12
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = ptrtoint ptr %buf.064 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf.064, align 4
  %dma = getelementptr i8, ptr %.pn.in62, i32 -16
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma, align 4
  %dir = getelementptr i8, ptr %.pn.in62, i32 -8
  %20 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dir, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %17 to i32
  %sub.i = add i32 %23, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %22, i32 %shr.i
  tail call void @dma_free_pages(ptr noundef %13, i32 noundef %15, ptr noundef %add.ptr.i, i32 noundef %19, i32 noundef %21) #12
  tail call void @kfree(ptr noundef %buf.064) #12
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %flags.1 = phi i32 [ %flags.061, %for.body.for.inc_crit_edge ], [ %call30, %list_del.exit ]
  %cmp16.not = icmp eq ptr %.pn65, %aligned_buf_list
  br i1 %cmp16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call4, %entry.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns3_init_eps(ptr noundef %priv_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %usb_cap3 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 21
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cap3) #12, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !341
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %usb_cap4 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %5, i32 0, i32 22
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_cap4) #12, !srcloc !236
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !342
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_init_eps.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_init_eps, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !243

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv_dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_init_eps.__UNIQUE_ID_ddebug360, ptr noundef %9, ptr noundef nonnull @.str.44) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep_list87 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 4
  %prev.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 2, i32 4, i32 1
  %eps = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0187 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %and = and i32 %i.0187, 15
  %shl = shl nuw i32 1, %i.0187
  %and12 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0187)
  %tobool16.not = icmp ult i32 %i.0187, 16
  %tobool16.not.not = xor i1 %tobool16.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool17.not, %tobool16.not.not
  br i1 %or.cond, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eps, align 8
  %arrayidx20 = getelementptr %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13, i32 %i.0187
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %arrayidx20, align 4
  br label %for.inc

if.end21:                                         ; preds = %if.end15
  %13 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv_dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 172, i32 noundef 3520) #12
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %if.end21.err_crit_edge, label %if.end26

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end26:                                         ; preds = %if.end21
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %priv_dev, ptr %cdns3_dev, align 4
  %arrayidx28 = getelementptr %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13, i32 %i.0187
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %arrayidx28, align 4
  %conv = trunc i32 %and to i8
  %num = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %num, align 1
  %conv30 = select i1 %tobool16.not, i8 0, i8 -128
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv30, ptr %dir, align 4
  br i1 %tobool17.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end26
  %call33 = tail call i32 @cdns3_init_ep0(ptr noundef %priv_dev, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end88_crit_edge, label %do.end38

if.then32.if.end88_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.45) #15
  br label %err

if.else:                                          ; preds = %if.end26
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 8
  %cond46 = select i1 %tobool16.not, ptr @.str.48, ptr @.str.47
  %call47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str.46, i32 noundef %and, ptr noundef nonnull %cond46)
  %name50 = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %name50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name, ptr %name50, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %call.i, i32 noundef 1024) #12
  %max_streams = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %max_streams to i32
  call void @__asan_loadN_noabort(i32 %22, i32 7)
  %bf.load = load i56, ptr %max_streams, align 2
  %bf.clear = and i56 %bf.load, -16776961
  %bf.set = or i56 %bf.clear, 3840
  store i56 %bf.set, ptr %max_streams, align 2
  %ops = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cdns3_gadget_ep_ops, ptr %ops, align 4
  %caps62 = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %caps62 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load63 = load i8, ptr %caps62, align 4
  %. = select i1 %tobool16.not, i8 4, i8 8
  %bf.set65 = or i8 %bf.load63, %.
  store i8 %bf.set65, ptr %caps62, align 4
  %and67 = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else.if.end75_crit_edge, label %if.then69

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %caps71 = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %caps71 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load72 = load i8, ptr %caps71, align 4
  %bf.set74 = or i8 %bf.load72, 64
  store i8 %bf.set74, ptr %caps71, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.else.if.end75_crit_edge
  %caps77 = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %caps77 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load78 = load i8, ptr %caps77, align 4
  %bf.set85 = or i8 %bf.load78, 48
  store i8 %bf.set85, ptr %caps77, align 4
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %28, ptr noundef %ep_list87) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end75.if.end88_crit_edge

if.end75.if.end88_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end.i.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ep_list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ep_list87, ptr %ep_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %ep_list, ptr %28, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end.i.i, %if.end75.if.end88_crit_edge, %if.then32.if.end88_crit_edge
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 9
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_init_eps.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_init_eps, %if.then101)) #12
          to label %do.end121 [label %if.then101], !srcloc !243

if.then101:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv_dev, align 8
  %name103 = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 8
  %caps106 = getelementptr inbounds %struct.usb_ep, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %caps106 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load107 = load i8, ptr %caps106, align 4
  %37 = and i8 %bf.load107, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool109.not = icmp eq i8 %37, 0
  %cond110 = select i1 %tobool109.not, ptr @.str.51, ptr @.str.50
  %38 = and i8 %bf.load107, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool117.not = icmp eq i8 %38, 0
  %cond118 = select i1 %tobool117.not, ptr @.str.51, ptr @.str.52
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_init_eps.__UNIQUE_ID_ddebug361, ptr noundef %35, ptr noundef nonnull @.str.49, ptr noundef %name103, ptr noundef nonnull %cond110, ptr noundef nonnull %cond118) #12
  br label %do.end121

do.end121:                                        ; preds = %if.then101, %if.end88
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %pending_req_list, ptr %pending_req_list, align 4
  %prev.i181 = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i181 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pending_req_list, ptr %prev.i181, align 4
  %deferred_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %deferred_req_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %deferred_req_list, ptr %deferred_req_list, align 4
  %prev.i182 = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %deferred_req_list, ptr %prev.i182, align 4
  %wa2_descmiss_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %wa2_descmiss_req_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %wa2_descmiss_req_list, ptr %wa2_descmiss_req_list, align 4
  %prev.i183 = getelementptr inbounds %struct.cdns3_endpoint, ptr %call.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev.i183 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %wa2_descmiss_req_list, ptr %prev.i183, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end121, %if.then18, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err:                                              ; preds = %do.end38, %if.end21.err_crit_edge
  %arrayidx.i = getelementptr %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13, i32 16
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err
  %i.015.i = phi i32 [ 0, %err ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.cdns3_device, ptr %priv_dev, i32 0, i32 13, i32 %i.015.i
  %46 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %trb_pool.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %trb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trb_pool.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.then.i.cdns3_free_trb_pool.exit.i_crit_edge, label %if.then.i.i

if.then.i.cdns3_free_trb_pool.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_free_trb_pool.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %cdns3_dev.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %47, i32 0, i32 7
  %50 = ptrtoint ptr %cdns3_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cdns3_dev.i.i, align 4
  %eps_dma_pool.i.i = getelementptr inbounds %struct.cdns3_device, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %eps_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %eps_dma_pool.i.i, align 8
  %trb_pool_dma.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %47, i32 0, i32 6
  %54 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %trb_pool_dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %53, ptr noundef nonnull %49, i32 noundef %55) #12
  %56 = ptrtoint ptr %trb_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %trb_pool.i.i, align 4
  br label %cdns3_free_trb_pool.exit.i

cdns3_free_trb_pool.exit.i:                       ; preds = %if.then.i.i, %if.then.i.cdns3_free_trb_pool.exit.i_crit_edge
  %57 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv_dev, align 8
  %59 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @devm_kfree(ptr noundef %58, ptr noundef %60) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %cdns3_free_trb_pool.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.inc.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_get_frame(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %gadget, i32 1100
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %usb_itpn = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_itpn) #12, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !343
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_wakeup(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %gadget, i32 1056
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %regs.i.i = getelementptr i8, ptr %gadget, i32 1100
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %usb_sts.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usb_sts.i.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %3 = and i32 %2, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cond.i = icmp eq i32 %3, 1073741824
  br i1 %cond.i, label %entry.__cdns3_gadget_wakeup.exit_crit_edge, label %do.body.i

entry.__cdns3_gadget_wakeup.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cdns3_gadget_wakeup.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 4096) #12, !srcloc !239
  br label %__cdns3_gadget_wakeup.exit

__cdns3_gadget_wakeup.exit:                       ; preds = %do.body.i, %entry.__cdns3_gadget_wakeup.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_set_selfpowered(ptr noundef %gadget, i32 noundef %is_selfpowered) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %gadget, i32 1056
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_selfpowered)
  %tobool.not = icmp eq i32 %is_selfpowered, 0
  %is_selfpowered7 = getelementptr i8, ptr %gadget, i32 1314
  %0 = ptrtoint ptr %is_selfpowered7 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_selfpowered7, align 2
  %bf.shl = select i1 %tobool.not, i16 0, i16 4096
  %bf.clear = and i16 %bf.load, -4097
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %is_selfpowered7, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_pullup(ptr nocapture noundef readonly %gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %regs4 = getelementptr i8, ptr %gadget, i32 1100
  %0 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs4, align 4
  br i1 %tobool.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 4194304) #12, !srcloc !239
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ep_ists = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_ists, i32 -1) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !344
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs4, align 4
  %usb_ists = getelementptr inbounds %struct.cdns3_usb_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_ists, i32 -1) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !345
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 8388608) #12, !srcloc !239
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_udc_start(ptr noundef %gadget, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -8
  %max_speed1 = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %lock = getelementptr i8, ptr %gadget, i32 1056
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %gadget_driver = getelementptr i8, ptr %gadget, i32 1048
  %0 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %driver, ptr %gadget_driver, align 8
  %1 = ptrtoint ptr %max_speed1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_speed1, align 4
  %max_speed8 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 6
  %3 = ptrtoint ptr %max_speed8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_speed8, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %5, label %do.end28 [
    i32 2, label %do.body12
    i32 3, label %do.body21
    i32 5, label %entry.sw.epilog_crit_edge
    i32 0, label %entry.sw.epilog_crit_edge45
  ]

entry.sw.epilog_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !346
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr i8, ptr %gadget, i32 1100
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 2097152) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !347
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 134217728) #12, !srcloc !239
  br label %sw.epilog

do.body21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !348
  tail call void @arm_heavy_mb() #12
  %regs24 = getelementptr i8, ptr %gadget, i32 1100
  %11 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 134217728) #12, !srcloc !239
  br label %sw.epilog

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %5) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %do.body21, %do.body12, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge45
  tail call fastcc void @cdns3_gadget_config(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_udc_stop(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget_driver = getelementptr i8, ptr %gadget, i32 1048
  %0 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %gadget_driver, align 8
  %onchip_used_size = getelementptr i8, ptr %gadget, i32 1370
  %1 = ptrtoint ptr %onchip_used_size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %onchip_used_size, align 2
  %out_mem_is_allocated = getelementptr i8, ptr %gadget, i32 1316
  %2 = ptrtoint ptr %out_mem_is_allocated to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %out_mem_is_allocated, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %speed, align 8
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  %4 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn91 = load ptr, ptr %ep_list, align 4
  %cmp.not92 = icmp eq ptr %.pn91, %ep_list
  br i1 %cmp.not92, label %entry.do.body53_crit_edge, label %for.body.lr.ph

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

for.body.lr.ph:                                   ; preds = %entry
  %selected_ep.i = getelementptr i8, ptr %gadget, i32 1308
  %regs.i = getelementptr i8, ptr %gadget, i32 1100
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %.pn93 = phi ptr [ %.pn91, %for.body.lr.ph ], [ %.pn, %for.end.for.body_crit_edge ]
  %num = getelementptr i8, ptr %.pn93, i32 101
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num, align 1
  %dir = getelementptr i8, ptr %.pn93, i32 100
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dir, align 4
  %or87 = or i8 %8, %6
  %or = zext i8 %or87 to i32
  %9 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or)
  %cmp.i = icmp eq i32 %10, %or
  br i1 %cmp.i, label %for.body.cdns3_select_ep.exit_crit_edge, label %if.end.i

for.body.cdns3_select_ep.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %12 = shl nuw i32 %or, 24
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %14, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %12) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i, %for.body.cdns3_select_ep.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !349
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %16, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 16777216) #12, !srcloc !239
  %call = tail call i64 @ktime_get() #12
  %add.i = add i64 %call, 100000
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %ep_cmd1689 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %18, i32 0, i32 10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd1689) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not90 = icmp eq i32 %20, 0
  br i1 %tobool.not90, label %cdns3_select_ep.exit.for.end_crit_edge, label %cdns3_select_ep.exit.land.lhs.true_crit_edge

cdns3_select_ep.exit.land.lhs.true_crit_edge:     ; preds = %cdns3_select_ep.exit
  br label %land.lhs.true

cdns3_select_ep.exit.for.end_crit_edge:           ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %cdns3_select_ep.exit.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then25, label %cond.false

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %ep_cmd29 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %22, i32 0, i32 10
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd29) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !351
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #12
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %ep_cmd16 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %26, i32 0, i32 10
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd16) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !350
  %28 = and i32 %27, 16777216
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then25, %cdns3_select_ep.exit.for.end_crit_edge
  %flags = getelementptr i8, ptr %.pn93, i32 92
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and46 = and i32 %30, -257
  store i32 %and46, ptr %flags, align 4
  %31 = ptrtoint ptr %.pn93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn93, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.end.do.body53_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.do.body53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

do.body53:                                        ; preds = %for.end.do.body53_crit_edge, %entry.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !352
  tail call void @arm_heavy_mb() #12
  %regs56 = getelementptr i8, ptr %gadget, i32 1100
  %32 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs56, align 4
  %usb_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %33, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_ien, i32 0) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !353
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs56, align 4
  %usb_pwr = getelementptr inbounds %struct.cdns3_usb_regs, ptr %35, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_pwr, i32 0) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !354
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 8388608) #12, !srcloc !239
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cdns3_gadget_match_ep(ptr noundef %gadget, ptr noundef %desc, ptr nocapture noundef readnone %comp_desc) #0 align 64 {
entry:
  %num.i = alloca i32, align 4
  %c.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -8
  %ep_list.i = getelementptr i8, ptr %gadget, i32 56
  %0 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn44.i = load ptr, ptr %ep_list.i, align 4
  %cmp.not45.i = icmp eq ptr %.pn44.i, %ep_list.i
  br i1 %cmp.not45.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %1 = getelementptr inbounds [2 x i8], ptr %c.i, i32 0, i32 1
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn46.i = phi ptr [ %.pn44.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #12
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num.i, align 4, !annotation !355
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c.i) #12
  %3 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %c.i, align 1, !annotation !355
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %1, align 1, !annotation !355
  %name.i = getelementptr i8, ptr %.pn46.i, i32 -8
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  %arrayidx.i = getelementptr i8, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  store i8 %8, ptr %c.i, align 1
  store i8 0, ptr %1, align 1
  %call.i.i = call i32 @_kstrtoul(ptr noundef nonnull %c.i, i32 noundef 10, ptr noundef nonnull %num.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = inttoptr i32 %call.i.i to ptr
  br label %cdns3_find_available_ep.exit

if.end.i:                                         ; preds = %for.body.i
  %caps.i.i = getelementptr i8, ptr %.pn46.i, i32 8
  %10 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %caps.i.i, align 4
  %11 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.lor.rhs.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %12 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool1.not.i.i = icmp sgt i8 %13, -1
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i.if.then10.i_crit_edge

land.lhs.true.i.i.if.then10.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

land.lhs.true.i.i.lor.rhs.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, %if.end.i.lor.rhs.i.i_crit_edge
  %14 = and i8 %bf.load.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool8.not.i.i, label %lor.rhs.i.i.cleanup.i_crit_edge, label %cdns3_ep_dir_is_correct.exit.i

lor.rhs.i.i.cleanup.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cdns3_ep_dir_is_correct.exit.i:                   ; preds = %lor.rhs.i.i
  %15 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not.i = icmp slt i8 %16, 0
  br i1 %tobool9.not.i, label %cdns3_ep_dir_is_correct.exit.i.cleanup.i_crit_edge, label %cdns3_ep_dir_is_correct.exit.i.if.then10.i_crit_edge

cdns3_ep_dir_is_correct.exit.i.if.then10.i_crit_edge: ; preds = %cdns3_ep_dir_is_correct.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

cdns3_ep_dir_is_correct.exit.i.cleanup.i_crit_edge: ; preds = %cdns3_ep_dir_is_correct.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then10.i:                                      ; preds = %cdns3_ep_dir_is_correct.exit.i.if.then10.i_crit_edge, %land.lhs.true.i.i.if.then10.i_crit_edge
  %flags.i = getelementptr i8, ptr %.pn46.i, i32 92
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then10.i.cleanup.i_crit_edge

if.then10.i.cleanup.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %ep.0.le.i = getelementptr i8, ptr %.pn46.i, i32 -12
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num.i, align 4
  %conv.i = trunc i32 %20 to i8
  %num13.i = getelementptr i8, ptr %.pn46.i, i32 101
  %21 = ptrtoint ptr %num13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %num13.i, align 1
  br label %cdns3_find_available_ep.exit

cleanup.i:                                        ; preds = %if.then10.i.cleanup.i_crit_edge, %cdns3_ep_dir_is_correct.exit.i.cleanup.i_crit_edge, %lor.rhs.i.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #12
  %22 = ptrtoint ptr %.pn46.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn46.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list.i
  br i1 %cmp.not.i, label %cleanup.i.do.end_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup.i.do.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cdns3_find_available_ep.exit:                     ; preds = %if.then12.i, %if.then.i
  %retval.1.ph.i = phi ptr [ %9, %if.then.i ], [ %ep.0.le.i, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #12
  %cmp.i = icmp ugt ptr %retval.1.ph.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cdns3_find_available_ep.exit.do.end_crit_edge, label %do.body2

cdns3_find_available_ep.exit.do.end_crit_edge:    ; preds = %cdns3_find_available_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %cdns3_find_available_ep.exit.do.end_crit_edge, %cleanup.i.do.end_crit_edge, %entry.do.end_crit_edge
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.40) #15
  br label %cleanup

do.body2:                                         ; preds = %cdns3_find_available_ep.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_gadget_match_ep.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_gadget_match_ep, %if.then7)) #12
          to label %do.body13 [label %if.then7], !srcloc !243

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %retval.1.ph.i, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_gadget_match_ep.__UNIQUE_ID_ddebug355, ptr noundef %26, ptr noundef nonnull @.str.42, ptr noundef %name) #12
  br label %do.body13

do.body13:                                        ; preds = %if.then7, %do.body2
  %lock = getelementptr i8, ptr %gadget, i32 1056
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desc21 = getelementptr inbounds %struct.usb_ep, ptr %retval.1.ph.i, i32 0, i32 9
  %27 = ptrtoint ptr %desc21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %desc, ptr %desc21, align 4
  %28 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  %30 = and i8 %29, -128
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %retval.1.ph.i, i32 0, i32 11
  %31 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dir, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %32 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bmAttributes.i, align 1
  %34 = and i8 %33, 3
  %type = getelementptr inbounds %struct.cdns3_endpoint, ptr %retval.1.ph.i, i32 0, i32 13
  %35 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %type, align 2
  %flags27 = getelementptr inbounds %struct.cdns3_endpoint, ptr %retval.1.ph.i, i32 0, i32 9
  %36 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags27, align 4
  %or = or i32 %37, 256
  store i32 %or, ptr %flags27, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 5
  %38 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bInterval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool29.not = icmp eq i8 %39, 0
  %conv28 = zext i8 %39 to i32
  %sub = add nsw i32 %conv28, -1
  %shl = shl nuw i32 1, %sub
  %cond32 = select i1 %tobool29.not, i32 0, i32 %shl
  %interval = getelementptr inbounds %struct.cdns3_endpoint, ptr %retval.1.ph.i, i32 0, i32 14
  %40 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond32, ptr %interval, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %retval.1.ph.i, %do.body13 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_gadget_config(ptr noundef %priv_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  tail call void @cdns3_ep0_config(ptr noundef %priv_dev) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @arm_heavy_mb() #12
  %ep_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_ien, i32 16777472) #12, !srcloc !239
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148745, i32 %3)
  %cmp = icmp eq i32 %3, 148745
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dbg_link1 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dbg_link1) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !357
  %5 = and i32 %4, -16711683
  %6 = or i32 %5, 5570562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !358
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dbg_link1, i32 %6) #12, !srcloc !239
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_axi_ctrl = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_axi_ctrl) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !359
  %8 = or i32 %7, 33554944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !360
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_axi_ctrl, i32 %8) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !361
  tail call void @arm_heavy_mb() #12
  %usb_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_ien, i32 1056978689) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !362
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 2560) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !363
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs1, align 4
  %usb_pwr = getelementptr inbounds %struct.cdns3_usb_regs, ptr %10, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_pwr, i32 128) #12, !srcloc !239
  %11 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1, align 4
  %13 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148749, i32 %14)
  %cmp.i = icmp ult i32 %14, 148749
  br i1 %cmp.i, label %if.end.i, label %if.end.cdns3_configure_dmult.exit_crit_edge

if.end.cdns3_configure_dmult.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_configure_dmult.exit

if.end.i:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !277
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 131072) #12, !srcloc !239
  %15 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %.pr.i)
  %cmp3.i = icmp eq i32 %.pr.i, 148748
  br i1 %cmp3.i, label %do.body5.i, label %if.end.i.cdns3_configure_dmult.exit_crit_edge

if.end.i.cdns3_configure_dmult.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_configure_dmult.exit

do.body5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !278
  tail call void @arm_heavy_mb() #12
  %usb_conf2.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %12, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usb_conf2.i, i32 67108864) #12, !srcloc !239
  br label %cdns3_configure_dmult.exit

cdns3_configure_dmult.exit:                       ; preds = %do.body5.i, %if.end.i.cdns3_configure_dmult.exit_crit_edge, %if.end.cdns3_configure_dmult.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_ep0_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_init_ep0(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_ep_enable(ptr noundef %ep, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %comp_desc1 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 10
  %2 = ptrtoint ptr %comp_desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp_desc1, align 4
  %tobool.not = icmp eq ptr %ep, null
  %tobool2.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %lor.lhs.false3

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false3:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp.not = icmp eq i8 %5, 5
  br i1 %cmp.not, label %if.end10, label %lor.lhs.false3.do.body_crit_edge

lor.lhs.false3.do.body_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false3.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_gadget_ep_enable.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_gadget_ep_enable, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !243

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_gadget_ep_enable.__UNIQUE_ID_ddebug356, ptr noundef %7, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false3
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %8 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool11.not = icmp eq i16 %9, 0
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %flags18 = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 9
  %12 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags18, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body78, label %land.rhs

land.rhs:                                         ; preds = %if.end17
  %.b354 = load i1, ptr @cdns3_gadget_ep_enable.__already_done, align 1
  br i1 %.b354, label %land.rhs.cleanup_crit_edge, label %if.then36, !prof !244

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36:                                        ; preds = %land.rhs
  store i1 true, ptr @cdns3_gadget_ep_enable.__already_done, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call50 = tail call ptr @dev_driver_string(ptr noundef %15) #12
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then36.dev_name.exit_crit_edge

if.then36.dev_name.exit_crit_edge:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then36.dev_name.exit_crit_edge
  %retval.0.i356 = phi ptr [ %21, %if.end.i ], [ %19, %if.then36.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2298, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call50, ptr noundef %retval.0.i356, ptr noundef %name) #12
  br label %cleanup

do.body78:                                        ; preds = %if.end17
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 5
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %desc89 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %22 = ptrtoint ptr %desc89 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %desc, ptr %desc89, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %23 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bmAttributes.i, align 1
  %25 = and i8 %24, 3
  %type = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 13
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %type, align 2
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 5
  %27 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool93.not = icmp eq i8 %28, 0
  %conv92 = zext i8 %28 to i32
  %sub = add nsw i32 %conv92, -1
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %tobool93.not, i32 0, i32 %shl
  %interval = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 14
  %29 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cond)
  %cmp97 = icmp sgt i32 %cond, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp101 = icmp eq i8 %25, 1
  %or.cond382 = select i1 %cmp97, i1 %cmp101, i1 false
  br i1 %or.cond382, label %do.end106, label %if.end108

do.end106:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.58, i32 noundef 10) #15
  br label %exit

if.end108:                                        ; preds = %do.body78
  %num = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 12
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num, align 1
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 11
  %34 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dir, align 4
  %or352 = or i8 %35, %33
  %or = zext i8 %or352 to i32
  %selected_ep.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or)
  %cmp.i = icmp eq i32 %37, %or
  br i1 %cmp.i, label %if.end108.cdns3_select_ep.exit_crit_edge, label %if.end.i357

if.end108.cdns3_select_ep.exit_crit_edge:         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i357:                                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %39 = shl nuw i32 %or, 24
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %41, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %39) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i357, %if.end108.cdns3_select_ep.exit_crit_edge
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp113 = icmp eq i8 %43, 1
  br i1 %cmp113, label %land.lhs.true115, label %cdns3_select_ep.exit.if.end119_crit_edge

cdns3_select_ep.exit.if.end119_crit_edge:         ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

land.lhs.true115:                                 ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool117.not = icmp ne i8 %45, 0
  br label %if.end119

if.end119:                                        ; preds = %land.lhs.true115, %cdns3_select_ep.exit.if.end119_crit_edge
  %tobool139 = phi i1 [ true, %cdns3_select_ep.exit.if.end119_crit_edge ], [ %tobool117.not, %land.lhs.true115 ]
  %tobool.not.i358 = icmp eq ptr %3, null
  br i1 %tobool.not.i358, label %if.end119.if.else_crit_edge, label %if.end.i360

if.end119.if.else_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.i360:                                      ; preds = %if.end119
  %bmAttributes.i359 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %bmAttributes.i359 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bmAttributes.i359, align 1
  %48 = and i8 %47, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool1.not.i = icmp eq i8 %48, 0
  br i1 %tobool1.not.i, label %if.end.i360.if.else_crit_edge, label %usb_ss_max_streams.exit

if.end.i360.if.else_crit_edge:                    ; preds = %if.end.i360
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

usb_ss_max_streams.exit:                          ; preds = %if.end.i360
  %49 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bmAttributes.i, align 1
  %51 = and i8 %50, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp.i364.not = icmp eq i8 %51, 2
  br i1 %cmp.i364.not, label %if.then125, label %usb_ss_max_streams.exit.if.else_crit_edge

usb_ss_max_streams.exit.if.else_crit_edge:        ; preds = %usb_ss_max_streams.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then125:                                       ; preds = %usb_ss_max_streams.exit
  %speed = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 2, i32 5
  %52 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp126 = icmp ugt i32 %53, 4
  br i1 %cmp126, label %if.then128, label %if.then125.if.end144_crit_edge

if.then125.if.end144_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then128:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 26
  %54 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %use_streams, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %use_streams, align 4
  %call131 = tail call i32 @cdns3_ep_config(ptr noundef nonnull %ep, i1 noundef zeroext %tobool139)
  %using_streams = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 18
  %55 = ptrtoint ptr %using_streams to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load132 = load i16, ptr %using_streams, align 2
  %bf.set137 = or i16 %bf.load132, 128
  store i16 %bf.set137, ptr %using_streams, align 2
  br label %if.end141

if.else:                                          ; preds = %usb_ss_max_streams.exit.if.else_crit_edge, %if.end.i360.if.else_crit_edge, %if.end119.if.else_crit_edge
  %call140 = tail call i32 @cdns3_ep_config(ptr noundef nonnull %ep, i1 noundef zeroext %tobool139)
  br label %if.end141

if.end141:                                        ; preds = %if.else, %if.then128
  %ret.0 = phi i32 [ %call131, %if.then128 ], [ %call140, %if.else ]
  %reg.0 = phi i32 [ 536800, %if.then128 ], [ 128, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool142.not = icmp eq i32 %ret.0, 0
  br i1 %tobool142.not, label %if.end141.if.end144_crit_edge, label %if.end141.exit_crit_edge

if.end141.exit_crit_edge:                         ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end141.if.end144_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.end144:                                        ; preds = %if.end141.if.end144_crit_edge, %if.then125.if.end144_crit_edge
  %reg.0379 = phi i32 [ %reg.0, %if.end141.if.end144_crit_edge ], [ 128, %if.then125.if.end144_crit_edge ]
  %56 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cdns3_dev, align 4
  %trb_pool.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 5
  %58 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trb_pool.i, align 4
  %tobool.not.i365 = icmp eq ptr %59, null
  br i1 %tobool.not.i365, label %if.end144.if.then3.i_crit_edge, label %land.lhs.true.i

if.end144.if.then3.i_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

land.lhs.true.i:                                  ; preds = %if.end144
  %alloc_ring_size.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 17
  %60 = ptrtoint ptr %alloc_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %alloc_ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7200, i32 %61)
  %cmp.i366 = icmp slt i32 %61, 7200
  br i1 %cmp.i366, label %cdns3_free_trb_pool.exit.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

cdns3_free_trb_pool.exit.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %eps_dma_pool.i.i = getelementptr inbounds %struct.cdns3_device, ptr %57, i32 0, i32 7
  %62 = ptrtoint ptr %eps_dma_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %eps_dma_pool.i.i, align 8
  %trb_pool_dma.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 6
  %64 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %trb_pool_dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %63, ptr noundef nonnull %59, i32 noundef %65) #12
  %66 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %trb_pool.i, align 4
  br label %if.then3.i

if.then3.i:                                       ; preds = %cdns3_free_trb_pool.exit.i, %if.end144.if.then3.i_crit_edge
  %eps_dma_pool.i = getelementptr inbounds %struct.cdns3_device, ptr %57, i32 0, i32 7
  %67 = ptrtoint ptr %eps_dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %eps_dma_pool.i, align 8
  %trb_pool_dma.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 6
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %68, i32 noundef 2596, ptr noundef %trb_pool_dma.i) #12
  %69 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %trb_pool.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %if.then3.i.exit_crit_edge, label %if.end8.i

if.then3.i.exit_crit_edge:                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end8.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %alloc_ring_size9.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 17
  %70 = ptrtoint ptr %alloc_ring_size9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 7200, ptr %alloc_ring_size9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end8.i, %land.lhs.true.i.if.end10.i_crit_edge
  %71 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trb_pool.i, align 4
  %73 = call ptr @memset(ptr %72, i32 0, i32 7200)
  %num_trbs12.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 16
  %74 = ptrtoint ptr %num_trbs12.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 600, ptr %num_trbs12.i, align 4
  %75 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool13.not.i = icmp eq i8 %76, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end148_crit_edge, label %if.end15.i

if.end10.i.if.end148_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.end15.i:                                       ; preds = %if.end10.i
  %77 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %trb_pool.i, align 4
  %use_streams.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 26
  %79 = ptrtoint ptr %use_streams.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i = load i8, ptr %use_streams.i, align 4
  %80 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool18.not.i = icmp eq i8 %80, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.end15.i.cleanup.sink.split.i_crit_edge

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.cdns3_trb, ptr %78, i32 599
  %trb_pool_dma20.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 6
  %81 = ptrtoint ptr %trb_pool_dma20.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %trb_pool_dma20.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #12
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %add.ptr.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.end15.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 51904512, %if.else.i ], [ 0, %if.end15.i.cleanup.sink.split.i_crit_edge ]
  %control.i = getelementptr %struct.cdns3_trb, ptr %78, i32 599, i32 2
  %85 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink.i, ptr %control.i, align 4
  br label %if.end148

if.end148:                                        ; preds = %cleanup.sink.split.i, %if.end10.i.if.end148_crit_edge
  %86 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num, align 1
  %88 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %dir, align 4
  %or153353 = or i8 %89, %87
  %or153 = zext i8 %or153353 to i32
  tail call void @cdns3_select_ep(ptr noundef %1, i32 noundef %or153)
  tail call fastcc void @trace_cdns3_gadget_ep_enable(ptr noundef nonnull %ep)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %91, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 16777216) #12, !srcloc !239
  %call157 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call157, 1000000
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %ep_cmd160384 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %93, i32 0, i32 10
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd160384) #12, !srcloc !236
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !365
  %and164385 = and i32 %95, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164385)
  %tobool165.not386 = icmp eq i32 %and164385, 0
  br i1 %tobool165.not386, label %if.end148.for.end_crit_edge, label %if.end148.land.lhs.true169_crit_edge

if.end148.land.lhs.true169_crit_edge:             ; preds = %if.end148
  br label %land.lhs.true169

if.end148.for.end_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true169:                                 ; preds = %cond.false189.land.lhs.true169_crit_edge, %if.end148.land.lhs.true169_crit_edge
  %call170 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call170, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call170, %add.i
  br i1 %cmp3.i, label %if.then174, label %cond.false189

if.then174:                                       ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %ep_cmd178 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %97, i32 0, i32 10
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd178) #12, !srcloc !236
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !366
  br label %for.end

cond.false189:                                    ; preds = %land.lhs.true169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748) #12
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %ep_cmd160 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %102, i32 0, i32 10
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd160) #12, !srcloc !236
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !365
  %and164 = and i32 %104, 5
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %cond.false189.for.end_crit_edge, label %cond.false189.land.lhs.true169_crit_edge

cond.false189.land.lhs.true169_crit_edge:         ; preds = %cond.false189
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true169

cond.false189.for.end_crit_edge:                  ; preds = %cond.false189
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.false189.for.end_crit_edge, %if.then174, %if.end148.for.end_crit_edge
  %val.0 = phi i32 [ %99, %if.then174 ], [ %95, %if.end148.for.end_crit_edge ], [ %104, %cond.false189.for.end_crit_edge ]
  %and195 = and i32 %val.0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end208, label %if.then207, !prof !244

if.then207:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cdns3_free_trb_pool(ptr noundef %ep)
  br label %exit

if.end208:                                        ; preds = %for.end
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %ep_ien = getelementptr inbounds %struct.cdns3_usb_regs, ptr %106, i32 0, i32 15
  %and.i371 = and i8 %or153353, 127
  %and2.i = lshr i8 %or153353, 3
  %107 = and i8 %and2.i, 16
  %add.i372 = add nuw i8 %107, %and.i371
  %conv212 = zext i8 %add.i372 to i32
  %shl213 = shl nuw i32 1, %conv212
  tail call void @cdns3_set_register_bit(ptr noundef %ep_ien, i32 noundef %shl213)
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 4
  %108 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %109)
  %cmp214 = icmp ult i32 %109, 148748
  br i1 %cmp214, label %do.body217, label %if.end208.do.body233_crit_edge

if.end208.do.body233_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body233

do.body217:                                       ; preds = %if.end208
  %110 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool219.not = icmp eq i8 %111, 0
  br i1 %tobool219.not, label %land.lhs.true220, label %do.body217.do.body233_crit_edge

do.body217.do.body233_crit_edge:                  ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body233

land.lhs.true220:                                 ; preds = %do.body217
  %112 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp223.not = icmp eq i8 %113, 1
  br i1 %cmp223.not, label %land.lhs.true220.do.body233_crit_edge, label %if.then225

land.lhs.true220.do.body233_crit_edge:            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body233

if.then225:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags18, align 4
  %or227 = or i32 %115, 4096
  store i32 %or227, ptr %flags18, align 4
  %or228 = or i32 %reg.0379, 16
  br label %do.body233

do.body233:                                       ; preds = %if.then225, %land.lhs.true220.do.body233_crit_edge, %do.body217.do.body233_crit_edge, %if.end208.do.body233_crit_edge
  %reg.1 = phi i32 [ %reg.0379, %do.body217.do.body233_crit_edge ], [ %or228, %if.then225 ], [ %reg.0379, %land.lhs.true220.do.body233_crit_edge ], [ %reg.0379, %if.end208.do.body233_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !367
  tail call void @arm_heavy_mb() #12
  %116 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %ep_sts_en = getelementptr inbounds %struct.cdns3_usb_regs, ptr %118, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts_en, i32 %116) #12, !srcloc !239
  %119 = ptrtoint ptr %desc89 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %desc, ptr %desc89, align 4
  %120 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags18, align 4
  %and239 = and i32 %121, -9320
  %or241 = or i32 %and239, 33
  store i32 %or241, ptr %flags18, align 4
  %wa1_set = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 23
  %122 = ptrtoint ptr %wa1_set to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load242 = load i8, ptr %wa1_set, align 1
  %bf.clear243 = and i8 %bf.load242, 127
  store i8 %bf.clear243, ptr %wa1_set, align 1
  %enqueue = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 20
  %123 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %enqueue, align 4
  %dequeue = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 21
  %124 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %dequeue, align 4
  %125 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs, align 4
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %126, i32 0, i32 11
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !368
  %128 = lshr i32 %127, 19
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %pcs = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 18
  %131 = ptrtoint ptr %pcs to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %pcs, align 4
  %ccs = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 19
  %132 = ptrtoint ptr %ccs to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %130, ptr %ccs, align 1
  %133 = ptrtoint ptr %num_trbs12.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_trbs12.i, align 4
  %sub265 = add i32 %134, -1
  %free_trbs = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 15
  %135 = ptrtoint ptr %free_trbs to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %sub265, ptr %free_trbs, align 4
  br label %exit

exit:                                             ; preds = %do.body233, %if.then207, %if.then3.i.exit_crit_edge, %if.end141.exit_crit_edge, %do.end106
  %ret.1 = phi i32 [ -22, %do.end106 ], [ %ret.0, %if.end141.exit_crit_edge ], [ -22, %if.then207 ], [ 0, %do.body233 ], [ -12, %if.then3.i.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call83) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %dev_name.exit, %land.rhs.cleanup_crit_edge, %do.end15, %if.then9, %do.body
  %retval.0 = phi i32 [ %ret.1, %exit ], [ -22, %do.end15 ], [ -22, %if.then9 ], [ 0, %dev_name.exit ], [ 0, %land.rhs.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_ep_disable(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %flags2 = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 9
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.rhs, label %do.body53

land.rhs:                                         ; preds = %if.end
  %.b276 = load i1, ptr @cdns3_gadget_ep_disable.__already_done, align 1
  br i1 %.b276, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !244

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  store i1 true, ptr @cdns3_gadget_ep_disable.__already_done, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call25 = tail call ptr @dev_driver_string(ptr noundef %5) #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.dev_name.exit_crit_edge

if.then12.dev_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.then12.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2424, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call25, ptr noundef %retval.0.i, ptr noundef %name) #12
  br label %cleanup

do.body53:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 5
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @trace_cdns3_gadget_ep_disable(ptr noundef nonnull %ep)
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress, align 1
  %conv61 = zext i8 %15 to i32
  %selected_ep.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv61)
  %cmp.i = icmp eq i32 %17, %conv61
  br i1 %cmp.i, label %do.body53.cdns3_select_ep.exit_crit_edge, label %if.end.i278

do.body53.cdns3_select_ep.exit_crit_edge:         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i278:                                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv61, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %19 = shl nuw i32 %conv61, 24
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %21, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %19) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i278, %do.body53.cdns3_select_ep.exit_crit_edge
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %ep_cfg62 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %23, i32 0, i32 9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cfg62) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !369
  %25 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !370
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %ep_cfg71 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %27, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cfg71, i32 %25) #12, !srcloc !239
  %call72 = tail call i64 @ktime_get() #12
  %add.i = add i64 %call72, 10000
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %ep_sts299 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %29, i32 0, i32 11
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts299) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !371
  %31 = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool81.not300 = icmp eq i32 %31, 0
  br i1 %tobool81.not300, label %cdns3_select_ep.exit.for.end_crit_edge, label %cdns3_select_ep.exit.land.lhs.true_crit_edge

cdns3_select_ep.exit.land.lhs.true_crit_edge:     ; preds = %cdns3_select_ep.exit
  br label %land.lhs.true

cdns3_select_ep.exit.for.end_crit_edge:           ; preds = %cdns3_select_ep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %cdns3_select_ep.exit.land.lhs.true_crit_edge
  %call85 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call85, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call85, %add.i
  br i1 %cmp3.i, label %if.then89, label %cond.false

if.then89:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %ep_sts93 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %33, i32 0, i32 11
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts93) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !372
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #12
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %37, i32 0, i32 11
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !371
  %39 = and i32 %38, 131072
  %tobool81.not = icmp eq i32 %39, 0
  br i1 %tobool81.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then89, %cdns3_select_ep.exit.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !373
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %ep_cmd = getelementptr inbounds %struct.cdns3_usb_regs, ptr %41, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_cmd, i32 16777216) #12, !srcloc !239
  %call118 = tail call i64 @ktime_get() #12
  %add.i281 = add i64 %call118, 1000000
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %ep_cmd124301 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %43, i32 0, i32 10
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd124301) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !374
  %45 = and i32 %44, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool129.not302 = icmp eq i32 %45, 0
  br i1 %tobool129.not302, label %for.end.if.end180_crit_edge, label %for.end.land.lhs.true133_crit_edge

for.end.land.lhs.true133_crit_edge:               ; preds = %for.end
  br label %land.lhs.true133

for.end.if.end180_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

land.lhs.true133:                                 ; preds = %cond.false153.land.lhs.true133_crit_edge, %for.end.land.lhs.true133_crit_edge
  %call134 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call134, i64 %add.i281)
  %cmp3.i283 = icmp sgt i64 %call134, %add.i281
  br i1 %cmp3.i283, label %if.then138, label %cond.false153

if.then138:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %ep_cmd142 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %47, i32 0, i32 10
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd142) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !375
  br label %if.end180

cond.false153:                                    ; preds = %land.lhs.true133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #12
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %ep_cmd124 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %51, i32 0, i32 10
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd124) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !374
  %53 = and i32 %52, 83886080
  %tobool129.not = icmp eq i32 %53, 0
  br i1 %tobool129.not, label %cond.false153.if.end180_crit_edge, label %cond.false153.land.lhs.true133_crit_edge

cond.false153.land.lhs.true133_crit_edge:         ; preds = %cond.false153
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true133

cond.false153.if.end180_crit_edge:                ; preds = %cond.false153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.end180:                                        ; preds = %cond.false153.if.end180_crit_edge, %if.then138, %for.end.if.end180_crit_edge
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 1
  %54 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.i286.not303 = icmp eq ptr %55, %pending_req_list
  br i1 %cmp.i286.not303, label %if.end180.while.cond190.preheader_crit_edge, label %if.end180.while.body_crit_edge

if.end180.while.body_crit_edge:                   ; preds = %if.end180
  br label %while.body

if.end180.while.cond190.preheader_crit_edge:      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond190.preheader

while.cond190.preheader:                          ; preds = %while.body.while.cond190.preheader_crit_edge, %if.end180.while.cond190.preheader_crit_edge
  %wa2_descmiss_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 3
  %56 = ptrtoint ptr %wa2_descmiss_req_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %wa2_descmiss_req_list, align 4
  %cmp.i287.not304 = icmp eq ptr %57, %wa2_descmiss_req_list
  br i1 %cmp.i287.not304, label %while.cond190.preheader.while.cond201.preheader_crit_edge, label %while.body195.lr.ph

while.cond190.preheader.while.cond201.preheader_crit_edge: ; preds = %while.cond190.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond201.preheader

while.body195.lr.ph:                              ; preds = %while.cond190.preheader
  %wa2_counter = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 4
  br label %while.body195

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end180.while.body_crit_edge
  %58 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.not.i = icmp eq ptr %59, %pending_req_list
  %add.ptr.i = getelementptr i8, ptr %59, i32 -36
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  tail call void @cdns3_gadget_giveback(ptr noundef nonnull %ep, ptr noundef %spec.select.i, i32 noundef -108)
  %60 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.i286.not = icmp eq ptr %61, %pending_req_list
  br i1 %cmp.i286.not, label %while.body.while.cond190.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.cond190.preheader_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond190.preheader

while.cond201.preheader:                          ; preds = %list_del_init.exit.while.cond201.preheader_crit_edge, %while.cond190.preheader.while.cond201.preheader_crit_edge
  %deferred_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 2
  %62 = ptrtoint ptr %deferred_req_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %deferred_req_list, align 4
  %cmp.i294.not305 = icmp eq ptr %63, %deferred_req_list
  br i1 %cmp.i294.not305, label %while.cond201.preheader.while.end212_crit_edge, label %while.cond201.preheader.while.body206_crit_edge

while.cond201.preheader.while.body206_crit_edge:  ; preds = %while.cond201.preheader
  br label %while.body206

while.cond201.preheader.while.end212_crit_edge:   ; preds = %while.cond201.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end212

while.body195:                                    ; preds = %list_del_init.exit.while.body195_crit_edge, %while.body195.lr.ph
  %64 = ptrtoint ptr %wa2_descmiss_req_list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %wa2_descmiss_req_list, align 4
  %cmp.not.i289 = icmp eq ptr %65, %wa2_descmiss_req_list
  %add.ptr.i290 = getelementptr i8, ptr %65, i32 -80
  %spec.select.i291 = select i1 %cmp.not.i289, ptr null, ptr %add.ptr.i290
  %66 = ptrtoint ptr %spec.select.i291 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spec.select.i291, align 4
  tail call void @kfree(ptr noundef %67) #12
  %aligned_buf.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i291, i32 0, i32 5
  %68 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %aligned_buf.i, align 4
  %tobool.not.i292 = icmp eq ptr %69, null
  br i1 %tobool.not.i292, label %while.body195.cdns3_gadget_ep_free_request.exit_crit_edge, label %if.then.i

while.body195.cdns3_gadget_ep_free_request.exit_crit_edge: ; preds = %while.body195
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_gadget_ep_free_request.exit

if.then.i:                                        ; preds = %while.body195
  call void @__sanitizer_cov_trace_pc() #14
  %in_use.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i = load i8, ptr %in_use.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %in_use.i, align 4
  br label %cdns3_gadget_ep_free_request.exit

cdns3_gadget_ep_free_request.exit:                ; preds = %if.then.i, %while.body195.cdns3_gadget_ep_free_request.exit_crit_edge
  tail call fastcc void @trace_cdns3_free_request(ptr noundef %spec.select.i291) #12
  tail call void @kfree(ptr noundef %spec.select.i291) #12
  %list = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i291, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %cdns3_gadget_ep_free_request.exit.list_del_init.exit_crit_edge

cdns3_gadget_ep_free_request.exit.list_del_init.exit_crit_edge: ; preds = %cdns3_gadget_ep_free_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %cdns3_gadget_ep_free_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i291, i32 0, i32 7, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %cdns3_gadget_ep_free_request.exit.list_del_init.exit_crit_edge
  %77 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i291, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %list, ptr %prev.i3.i, align 4
  %79 = ptrtoint ptr %wa2_counter to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wa2_counter, align 4
  %dec = add i32 %80, -1
  store i32 %dec, ptr %wa2_counter, align 4
  %81 = ptrtoint ptr %wa2_descmiss_req_list to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %wa2_descmiss_req_list, align 4
  %cmp.i287.not = icmp eq ptr %82, %wa2_descmiss_req_list
  br i1 %cmp.i287.not, label %list_del_init.exit.while.cond201.preheader_crit_edge, label %list_del_init.exit.while.body195_crit_edge

list_del_init.exit.while.body195_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body195

list_del_init.exit.while.cond201.preheader_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond201.preheader

while.body206:                                    ; preds = %while.body206.while.body206_crit_edge, %while.cond201.preheader.while.body206_crit_edge
  %83 = ptrtoint ptr %deferred_req_list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %deferred_req_list, align 4
  %cmp.not.i296 = icmp eq ptr %84, %deferred_req_list
  %add.ptr.i297 = getelementptr i8, ptr %84, i32 -36
  %spec.select.i298 = select i1 %cmp.not.i296, ptr null, ptr %add.ptr.i297
  tail call void @cdns3_gadget_giveback(ptr noundef nonnull %ep, ptr noundef %spec.select.i298, i32 noundef -108)
  %85 = ptrtoint ptr %deferred_req_list to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %deferred_req_list, align 4
  %cmp.i294.not = icmp eq ptr %86, %deferred_req_list
  br i1 %cmp.i294.not, label %while.body206.while.end212_crit_edge, label %while.body206.while.body206_crit_edge

while.body206.while.body206_crit_edge:            ; preds = %while.body206
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body206

while.body206.while.end212_crit_edge:             ; preds = %while.body206
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end212

while.end212:                                     ; preds = %while.body206.while.end212_crit_edge, %while.cond201.preheader.while.end212_crit_edge
  %descmis_req = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 10
  %87 = ptrtoint ptr %descmis_req to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %descmis_req, align 4
  %88 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %desc, align 4
  %89 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags2, align 4
  %and215 = and i32 %90, -2
  store i32 %and215, ptr %flags2, align 4
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 26
  %91 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load = load i8, ptr %use_streams, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %use_streams, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call56) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end212, %dev_name.exit, %land.rhs.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %while.end212 ], [ -22, %do.end ], [ 0, %dev_name.exit ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_gadget_ep_queue(ptr noundef %ep, ptr noundef %request, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %request, null
  %tobool1.not = icmp eq ptr %ep, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %lock = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call7 = tail call fastcc i32 @__cdns3_gadget_ep_queue(ptr noundef nonnull %ep, ptr noundef nonnull %request)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end
  %zero = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 6
  %2 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %zero, align 4
  %3 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true11

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true11:                                  ; preds = %land.lhs.true
  %length = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.end37_crit_edge, label %land.lhs.true13

land.lhs.true11.if.end37_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load15 = load i56, ptr %maxpacket, align 2
  %bf.lshr16 = lshr i56 %bf.load15, 40
  %bf.cast = trunc i56 %bf.lshr16 to i32
  %rem = urem i32 %5, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp17 = icmp eq i32 %rem, 0
  br i1 %cmp17, label %if.then19, label %land.lhs.true13.if.end37_crit_edge

land.lhs.true13.if.end37_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then19:                                        ; preds = %land.lhs.true13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 96) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then19.cdns3_gadget_ep_alloc_request.exit_crit_edge, label %if.end.i

if.then19.cdns3_gadget_ep_alloc_request.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_gadget_ep_alloc_request.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %priv_ep1.i = getelementptr inbounds %struct.cdns3_request, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %priv_ep1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ep, ptr %priv_ep1.i, align 8
  tail call fastcc void @trace_cdns3_alloc_request(ptr noundef nonnull %call7.i.i.i) #12
  br label %cdns3_gadget_ep_alloc_request.exit

cdns3_gadget_ep_alloc_request.exit:               ; preds = %if.end.i, %if.then19.cdns3_gadget_ep_alloc_request.exit_crit_edge
  %zlp_buf = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %zlp_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zlp_buf, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i.i, align 8
  %length21 = getelementptr inbounds %struct.usb_request, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %length21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %length21, align 4
  %flags25 = getelementptr inbounds %struct.cdns3_request, ptr %call7.i.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags25, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %flags25, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_gadget_ep_queue.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_gadget_ep_queue, %if.then32)) #12
          to label %do.end35 [label %if.then32], !srcloc !243

if.then32:                                        ; preds = %cdns3_gadget_ep_alloc_request.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_gadget_ep_queue.__UNIQUE_ID_ddebug357, ptr noundef %16, ptr noundef nonnull @.str.67, ptr noundef %name) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %cdns3_gadget_ep_alloc_request.exit
  %call36 = tail call fastcc i32 @__cdns3_gadget_ep_queue(ptr noundef nonnull %ep, ptr noundef %call7.i.i.i)
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %land.lhs.true13.if.end37_crit_edge, %land.lhs.true11.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %ret.0 = phi i32 [ %call36, %do.end35 ], [ 0, %land.lhs.true13.if.end37_crit_edge ], [ 0, %land.lhs.true11.if.end37_crit_edge ], [ 0, %land.lhs.true.if.end37_crit_edge ], [ %call7, %if.end.if.end37_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end37 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_gadget_ep_set_wedge(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_gadget_ep_enable(ptr noundef %priv_ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_ep_enable, i32 0, i32 1), ptr blockaddress(@trace_cdns3_gadget_ep_enable, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !376
  %call42 = tail call i32 @__traceiter_cdns3_gadget_ep_enable(ptr noundef null, ptr noundef %priv_ep) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !377
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_ep_enable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_ep_enable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_gadget_ep_enable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_gadget_ep_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 513, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local i32 @__traceiter_cdns3_gadget_ep_enable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_gadget_ep_disable(ptr noundef %priv_ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_ep_disable, i32 0, i32 1), ptr blockaddress(@trace_cdns3_gadget_ep_disable, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !378
  %call42 = tail call i32 @__traceiter_cdns3_gadget_ep_disable(ptr noundef null, ptr noundef %priv_ep) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !379
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_ep_disable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_gadget_ep_disable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_gadget_ep_disable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_gadget_ep_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 518, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local i32 @__traceiter_cdns3_gadget_ep_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cdns3_gadget_ep_queue(ptr noundef %ep, ptr noundef %request) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdns3_dev = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %cdns3_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdns3_dev, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 12
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 11
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -115, ptr %status, align 4
  tail call fastcc void @trace_cdns3_ep_queue(ptr noundef %request)
  %dev_ver = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 148748, i32 %5)
  %cmp = icmp ult i32 %5, 148748
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 9
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %num.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 12
  %8 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num.i, align 1
  %dir.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 11
  %10 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dir.i, align 4
  %or67.i = or i8 %11, %9
  %or.i = zext i8 %or67.i to i32
  %selected_ep.i.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %selected_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %selected_ep.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %or.i)
  %cmp.i.i = icmp eq i32 %13, %or.i
  br i1 %cmp.i.i, label %if.then.i.cdns3_select_ep.exit.i_crit_edge, label %if.end.i.i

if.then.i.cdns3_select_ep.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %selected_ep.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %selected_ep.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %15 = shl nuw i32 %or.i, 24
  %regs.i.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %ep_sel.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %17, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i.i, i32 %15) #12, !srcloc !239
  br label %cdns3_select_ep.exit.i

cdns3_select_ep.exit.i:                           ; preds = %if.end.i.i, %if.then.i.cdns3_select_ep.exit.i_crit_edge
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and3.i = and i32 %19, -4097
  store i32 %and3.i, ptr %flags.i, align 4
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %ep_sts_en.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %21, i32 0, i32 13
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts_en.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !380
  %23 = and i32 %22, -268435457
  tail call fastcc void @trace_cdns3_wa2(ptr noundef %ep, ptr noundef nonnull @.str.68) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !381
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %ep_sts_en7.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %25, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sts_en7.i, i32 %23) #12, !srcloc !239
  br label %if.end.i

if.end.i:                                         ; preds = %cdns3_select_ep.exit.i, %if.then.if.end.i_crit_edge
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and9.i = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end6_crit_edge, label %if.then11.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then11.i:                                      ; preds = %if.end.i
  %pending_req_list.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 1
  %28 = ptrtoint ptr %pending_req_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pending_req_list.i, align 4
  %cmp.i69.i = icmp eq ptr %29, %pending_req_list.i
  %wa2_descmiss_req_list.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 3
  %30 = ptrtoint ptr %wa2_descmiss_req_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %wa2_descmiss_req_list.i, align 4
  %cmp.i70.i = icmp ne ptr %31, %wa2_descmiss_req_list.i
  %or.cond.i = select i1 %cmp.i69.i, i1 %cmp.i70.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true19.i, label %if.then11.i.if.end27.i_crit_edge

if.then11.i.if.end27.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

land.lhs.true19.i:                                ; preds = %if.then11.i
  %flags20.i = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 6
  %32 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags20.i, align 4
  %and21.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %land.lhs.true19.i.if.end27.i_crit_edge

land.lhs.true19.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then23.i:                                      ; preds = %land.lhs.true19.i
  tail call fastcc void @cdns3_wa2_descmiss_copy_data(ptr noundef %ep, ptr noundef %request) #12
  tail call fastcc void @trace_cdns3_wa2(ptr noundef %ep, ptr noundef nonnull @.str.69) #12
  %list.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %35, ptr noundef %pending_req_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.i.cdns3_wa2_gadget_ep_queue.exit_crit_edge

if.then23.i.cdns3_wa2_gadget_ep_queue.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_wa2_gadget_ep_queue.exit

if.end.i.i.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pending_req_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.i, ptr %35, align 4
  br label %cdns3_wa2_gadget_ep_queue.exit

if.end27.i:                                       ; preds = %land.lhs.true19.i.if.end27.i_crit_edge, %if.then11.i.if.end27.i_crit_edge
  %tobool28.not.i = xor i1 %cmp.i69.i, true
  %or.cond68.i = select i1 %tobool28.not.i, i1 %cmp.i70.i, i1 false
  br i1 %or.cond68.i, label %if.then31.i, label %if.end27.i.if.end32.i_crit_edge

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_cdns3_wa2(ptr noundef %ep, ptr noundef nonnull @.str.70) #12
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end27.i.if.end32.i_crit_edge
  %flags33.i = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 6
  %40 = ptrtoint ptr %flags33.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags33.i, align 4
  %and34.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end6_crit_edge, label %if.then36.i

if.end32.i.if.end6_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then36.i:                                      ; preds = %if.end32.i
  %list37.i = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 7
  %prev.i72.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %prev.i72.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i72.i, align 4
  %call.i.i73.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list37.i, ptr noundef %43, ptr noundef %wa2_descmiss_req_list.i) #12
  br i1 %call.i.i73.i, label %if.end.i.i75.i, label %if.then36.i.if.end6_crit_edge

if.then36.i.if.end6_crit_edge:                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.i.i75.i:                                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %prev.i72.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list37.i, ptr %prev.i72.i, align 4
  %45 = ptrtoint ptr %list37.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %wa2_descmiss_req_list.i, ptr %list37.i, align 4
  %prev3.i.i74.i = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %prev3.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i74.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list37.i, ptr %43, align 4
  br label %if.end6

cdns3_wa2_gadget_ep_queue.exit:                   ; preds = %if.end.i.i.i, %if.then23.i.cdns3_wa2_gadget_ep_queue.exit_crit_edge
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status, align 4
  tail call void @cdns3_gadget_giveback(ptr noundef %ep, ptr noundef %request, i32 noundef %49) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i75.i, %if.then36.i.if.end6_crit_edge, %if.end32.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %priv_ep1.i = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 1
  %50 = ptrtoint ptr %priv_ep1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv_ep1.i, align 4
  %cdns3_dev.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdns3_dev.i, align 4
  %54 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %request, align 4
  %56 = ptrtoint ptr %55 to i32
  %and.i1 = and i32 %56, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i2 = icmp eq i32 %and.i1, 0
  br i1 %tobool.not.i2, label %if.end6.if.end10_crit_edge, label %if.end.i3

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i3:                                        ; preds = %if.end6
  %aligned_buf.i = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 5
  %57 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %aligned_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %58, null
  br i1 %tobool3.not.i, label %if.end.i3.if.then5.i_crit_edge, label %lor.lhs.false.i

if.end.i3.if.then5.i_crit_edge:                   ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.end.i3
  %length.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i, align 4
  %size.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.i = icmp ugt i32 %60, %62
  br i1 %cmp.i, label %lor.lhs.false.i.if.then5.i_crit_edge, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.end.i3.if.then5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 2848, i32 noundef 28) #16
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.then5.i.cleanup_crit_edge, label %if.end8.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.then5.i
  %length10.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %64 = ptrtoint ptr %length10.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length10.i, align 4
  %size11.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %call7.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %size11.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %size11.i, align 8
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %51, i32 0, i32 9
  %67 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %tobool13.not.i = icmp sgt i8 %70, -1
  %cond.i = select i1 %tobool13.not.i, i32 2, i32 1
  %dir.i4 = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %call7.i.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %dir.i4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond.i, ptr %dir.i4, align 4
  %sysdev.i = getelementptr inbounds %struct.cdns3_device, ptr %53, i32 0, i32 1
  %72 = ptrtoint ptr %sysdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sysdev.i, align 4
  %dma.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_pages(ptr noundef %73, i32 noundef %65, ptr noundef %dma.i, i32 noundef %cond.i, i32 noundef 2592) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %dma_alloc_noncoherent.exit.thread.i, label %dma_alloc_noncoherent.exit.i

dma_alloc_noncoherent.exit.thread.i:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %if.then20.i

dma_alloc_noncoherent.exit.i:                     ; preds = %if.end8.i
  %call1.i.i = tail call ptr @page_address(ptr noundef nonnull %call.i.i) #12
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call1.i.i, ptr %call7.i.i.i, align 8
  %tobool19.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool19.not.i, label %dma_alloc_noncoherent.exit.i.if.then20.i_crit_edge, label %if.end21.i

dma_alloc_noncoherent.exit.i.if.then20.i_crit_edge: ; preds = %dma_alloc_noncoherent.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i

if.then20.i:                                      ; preds = %dma_alloc_noncoherent.exit.i.if.then20.i_crit_edge, %dma_alloc_noncoherent.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end21.i:                                       ; preds = %dma_alloc_noncoherent.exit.i
  %76 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %aligned_buf.i, align 4
  %tobool23.not.i = icmp eq ptr %77, null
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i8_crit_edge, label %if.then24.i

if.end21.i.if.end27.i8_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i8

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_cdns3_free_aligned_request(ptr noundef %request) #12
  %78 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %aligned_buf.i, align 4
  %in_use.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i = load i8, ptr %in_use.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %in_use.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %81 = load ptr, ptr @system_freezable_wq, align 4
  %aligned_buf_wq.i = getelementptr inbounds %struct.cdns3_device, ptr %53, i32 0, i32 15
  %call.i92.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %aligned_buf_wq.i) #12
  br label %if.end27.i8

if.end27.i8:                                      ; preds = %if.then24.i, %if.end21.i.if.end27.i8_crit_edge
  %in_use28.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %call7.i.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %in_use28.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load29.i = load i8, ptr %in_use28.i, align 8
  %bf.set31.i = or i8 %bf.load29.i, -128
  store i8 %bf.set31.i, ptr %in_use28.i, align 8
  %83 = ptrtoint ptr %aligned_buf.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i.i, ptr %aligned_buf.i, align 4
  %list.i5 = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %call7.i.i.i, i32 0, i32 5
  %aligned_buf_list.i = getelementptr inbounds %struct.cdns3_device, ptr %53, i32 0, i32 14
  %prev.i.i6 = getelementptr inbounds %struct.cdns3_device, ptr %53, i32 0, i32 14, i32 1
  %84 = ptrtoint ptr %prev.i.i6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i6, align 4
  %call.i.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i5, ptr noundef %85, ptr noundef %aligned_buf_list.i) #12
  br i1 %call.i.i.i7, label %if.end.i.i.i10, label %if.end27.i8.if.end33.i_crit_edge

if.end27.i8.if.end33.i_crit_edge:                 ; preds = %if.end27.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.end.i.i.i10:                                   ; preds = %if.end27.i8
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %prev.i.i6 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list.i5, ptr %prev.i.i6, align 4
  %87 = ptrtoint ptr %list.i5 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %aligned_buf_list.i, ptr %list.i5, align 4
  %prev3.i.i.i9 = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %88 = ptrtoint ptr %prev3.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i.i9, align 8
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %list.i5, ptr %85, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end.i.i.i10, %if.end27.i8.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge
  %buf.0.i = phi ptr [ %58, %lor.lhs.false.i.if.end33.i_crit_edge ], [ %call7.i.i.i, %if.end27.i8.if.end33.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i10 ]
  %dir34.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %51, i32 0, i32 11
  %90 = ptrtoint ptr %dir34.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dir34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %91)
  %cmp35.i = icmp eq i8 %91, -128
  br i1 %cmp35.i, label %if.then37.i, label %if.end33.i.if.end47.i_crit_edge

if.end33.i.if.end47.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %sysdev38.i = getelementptr inbounds %struct.cdns3_device, ptr %53, i32 0, i32 1
  %92 = ptrtoint ptr %sysdev38.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sysdev38.i, align 4
  %dma39.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %buf.0.i, i32 0, i32 1
  %94 = ptrtoint ptr %dma39.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma39.i, align 4
  %size40.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %buf.0.i, i32 0, i32 2
  %96 = ptrtoint ptr %size40.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size40.i, align 4
  %dir41.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %buf.0.i, i32 0, i32 3
  %98 = ptrtoint ptr %dir41.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dir41.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99) #12
  %100 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buf.0.i, align 4
  %102 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %request, align 4
  %length46.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %104 = ptrtoint ptr %length46.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %length46.i, align 4
  %106 = call ptr @memcpy(ptr %101, ptr %103, i32 %105)
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then37.i, %if.end33.i.if.end47.i_crit_edge
  %sysdev48.i = getelementptr inbounds %struct.cdns3_device, ptr %53, i32 0, i32 1
  %107 = ptrtoint ptr %sysdev48.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sysdev48.i, align 4
  %dma49.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %buf.0.i, i32 0, i32 1
  %109 = ptrtoint ptr %dma49.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma49.i, align 4
  %size50.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %buf.0.i, i32 0, i32 2
  %111 = ptrtoint ptr %size50.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size50.i, align 4
  %dir51.i = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %buf.0.i, i32 0, i32 3
  %113 = ptrtoint ptr %dir51.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dir51.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %108, i32 noundef %110, i32 noundef %112, i32 noundef %114) #12
  %flags.i11 = getelementptr inbounds %struct.cdns3_request, ptr %request, i32 0, i32 6
  %115 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags.i11, align 4
  %or.i12 = or i32 %116, 16
  store i32 %or.i12, ptr %flags.i11, align 4
  tail call fastcc void @trace_cdns3_prepare_aligned_request(ptr noundef %request) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end47.i, %if.end6.if.end10_crit_edge
  %sysdev = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 1
  %117 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sysdev, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %119 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %desc, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bEndpointAddress.i, align 1
  %.lobit.i = lshr i8 %122, 7
  %123 = zext i8 %.lobit.i to i32
  %call12 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %118, ptr noundef %request, i32 noundef %123) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %list = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 9
  %deferred_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 2, i32 1
  %124 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %125, ptr noundef %deferred_req_list) #12
  br i1 %call.i.i14, label %if.end.i.i15, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i15:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %list, ptr %prev.i, align 4
  %127 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %deferred_req_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 9, i32 1
  %128 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %list, ptr %125, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i15, %if.end14.list_add_tail.exit_crit_edge
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 6
  %130 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load = load i32, ptr %stream_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load)
  %tobool15.not = icmp ult i32 %bf.load, 65536
  %hw_configured_flag = getelementptr inbounds %struct.cdns3_device, ptr %1, i32 0, i32 18
  %131 = ptrtoint ptr %hw_configured_flag to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load17 = load i16, ptr %hw_configured_flag, align 2
  %132 = and i16 %bf.load17, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool19.not = icmp eq i16 %132, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %list_add_tail.exit
  br i1 %tobool19.not, label %if.then16.cleanup_crit_edge, label %land.lhs.true

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then16
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 9
  %133 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags, align 4
  %135 = and i32 %134, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %if.then25, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cdns3_start_all_request(ptr noundef %1, ptr noundef %ep)
  br label %cleanup

if.else:                                          ; preds = %list_add_tail.exit
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %land.lhs.true34

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.else
  %prime_flag = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep, i32 0, i32 26
  %137 = ptrtoint ptr %prime_flag to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load35 = load i8, ptr %prime_flag, align 4
  %138 = and i8 %bf.load35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool39.not = icmp eq i8 %138, 0
  br i1 %tobool39.not, label %land.lhs.true34.cleanup_crit_edge, label %if.then40

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cdns3_start_all_request(ptr noundef %1, ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %land.lhs.true34.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then25, %land.lhs.true.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then20.i, %if.then5.i.cleanup_crit_edge, %cdns3_wa2_gadget_ep_queue.exit
  %retval.0 = phi i32 [ 0, %cdns3_wa2_gadget_ep_queue.exit ], [ %call12, %if.end10.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true34.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then25 ], [ -12, %if.then20.i ], [ -12, %if.then5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_ep_queue(ptr noundef %req) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep_queue, i32 0, i32 1), ptr blockaddress(@trace_cdns3_ep_queue, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !382
  %call42 = tail call i32 @__traceiter_cdns3_ep_queue(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !383
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_ep_queue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_ep_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_ep_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 263, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local i32 @__traceiter_cdns3_ep_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_wa2(ptr noundef %ep_priv, ptr noundef %msg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_wa2, i32 0, i32 1), ptr blockaddress(@trace_cdns3_wa2, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !384
  %call42 = tail call i32 @__traceiter_cdns3_wa2(ptr noundef null, ptr noundef %ep_priv, ptr noundef %msg) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !385
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_wa2, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_wa2, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_wa2.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_wa2.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 70, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local i32 @__traceiter_cdns3_wa2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_free_aligned_request(ptr noundef %req) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_free_aligned_request, i32 0, i32 1), ptr blockaddress(@trace_cdns3_free_aligned_request, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !386
  %call42 = tail call i32 @__traceiter_cdns3_free_aligned_request(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !387
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_free_aligned_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_free_aligned_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_free_aligned_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_free_aligned_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 354, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_prepare_aligned_request(ptr noundef %req) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_aligned_request, i32 0, i32 1), ptr blockaddress(@trace_cdns3_prepare_aligned_request, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !388
  %call42 = tail call i32 @__traceiter_cdns3_prepare_aligned_request(ptr noundef null, ptr noundef %req) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !389
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_aligned_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_prepare_aligned_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_prepare_aligned_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_prepare_aligned_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 359, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local ptr @dma_alloc_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_free_aligned_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_prepare_aligned_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns3_check_ep0_interrupt_proceed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_usb_irq(ptr noundef %priv_dev, i32 noundef %usb_ists) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_usb_irq, i32 0, i32 1), ptr blockaddress(@trace_cdns3_usb_irq, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !390
  %call42 = tail call i32 @__traceiter_cdns3_usb_irq(ptr noundef null, ptr noundef %priv_dev, i32 noundef %usb_ists) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !391
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_usb_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_usb_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_usb_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_usb_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 116, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_usb_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_epx_irq(ptr noundef %priv_dev, ptr noundef %priv_ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_epx_irq, i32 0, i32 1), ptr blockaddress(@trace_cdns3_epx_irq, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !392
  %call42 = tail call i32 @__traceiter_cdns3_epx_irq(ptr noundef null, ptr noundef %priv_dev, ptr noundef %priv_ep) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !393
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_epx_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_epx_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_epx_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_epx_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 148, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
define internal fastcc void @cdns3_transfer_completed(ptr nocapture noundef %priv_dev, ptr noundef %priv_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_req_list = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 1
  %0 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.i.not176 = icmp eq ptr %1, %pending_req_list
  br i1 %cmp.i.not176, label %entry.while.end70_crit_edge, label %while.body.lr.ph

entry.while.end70_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end70

while.body.lr.ph:                                 ; preds = %entry
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %dequeue = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 21
  %free_trbs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 15
  %num_trbs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 16
  %ccs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 19
  %address = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 8
  %selected_ep.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 16
  %regs.i = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %cdns3_dev.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 7
  %trb_pool_dma.i.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 6
  %enqueue.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.then34.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.not.i = icmp eq ptr %3, %pending_req_list
  %add.ptr.i = getelementptr i8, ptr %3, i32 -36
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %4 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trb_pool, align 4
  %6 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dequeue, align 4
  %control173 = getelementptr %struct.cdns3_trb, ptr %5, i32 %7, i32 2
  %8 = ptrtoint ptr %control173 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control173, align 4
  %10 = and i32 %9, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %10)
  %cmp174 = icmp eq i32 %10, 1572864
  br i1 %cmp174, label %while.body5.preheader, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body5.preheader:                            ; preds = %while.body
  %add.ptr3 = getelementptr %struct.cdns3_trb, ptr %5, i32 %7
  br label %while.body5

while.body5:                                      ; preds = %cdns3_ep_inc_deq.exit.while.body5_crit_edge, %while.body5.preheader
  %trb.0175 = phi ptr [ %add.ptr8, %cdns3_ep_inc_deq.exit.while.body5_crit_edge ], [ %add.ptr3, %while.body5.preheader ]
  tail call fastcc void @trace_cdns3_complete_trb(ptr noundef %priv_ep, ptr noundef %trb.0175)
  %11 = ptrtoint ptr %free_trbs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %free_trbs.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %free_trbs.i, align 4
  %13 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_trbs.i, align 4
  %15 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dequeue, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %dequeue, align 4
  %17 = add i32 %14, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp.i.i = icmp eq i32 %16, %17
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body5.cdns3_ep_inc_deq.exit_crit_edge

while.body5.cdns3_ep_inc_deq.exit_crit_edge:      ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_ep_inc_deq.exit

if.then.i.i:                                      ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dequeue, align 4
  %19 = ptrtoint ptr %ccs.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ccs.i, align 1
  %21 = xor i8 %20, 1
  store i8 %21, ptr %ccs.i, align 1
  br label %cdns3_ep_inc_deq.exit

cdns3_ep_inc_deq.exit:                            ; preds = %if.then.i.i, %while.body5.cdns3_ep_inc_deq.exit_crit_edge
  %22 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trb_pool, align 4
  %24 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dequeue, align 4
  %add.ptr8 = getelementptr %struct.cdns3_trb, ptr %23, i32 %25
  %control = getelementptr %struct.cdns3_trb, ptr %23, i32 %25, i32 2
  %26 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %control, align 4
  %28 = and i32 %27, 16515072
  %cmp = icmp eq i32 %28, 1572864
  br i1 %cmp, label %cdns3_ep_inc_deq.exit.while.body5_crit_edge, label %cdns3_ep_inc_deq.exit.while.end_crit_edge

cdns3_ep_inc_deq.exit.while.end_crit_edge:        ; preds = %cdns3_ep_inc_deq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cdns3_ep_inc_deq.exit.while.body5_crit_edge:      ; preds = %cdns3_ep_inc_deq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5

while.end:                                        ; preds = %cdns3_ep_inc_deq.exit.while.end_crit_edge, %while.body.while.end_crit_edge
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 6
  %29 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %stream_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load)
  %tobool9.not = icmp ult i32 %bf.load, 65536
  %30 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %address, align 1
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %selected_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv)
  %cmp.i140 = icmp eq i32 %33, %conv
  br i1 %tobool9.not, label %if.then, label %if.else42

if.then:                                          ; preds = %while.end
  br i1 %cmp.i140, label %if.then.cdns3_select_ep.exit_crit_edge, label %if.end.i

if.then.cdns3_select_ep.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %35 = shl nuw i32 %conv, 24
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %ep_sel.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %37, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i, i32 %35) #12, !srcloc !239
  br label %cdns3_select_ep.exit

cdns3_select_ep.exit:                             ; preds = %if.end.i, %if.then.cdns3_select_ep.exit_crit_edge
  %start_trb.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 3
  %end_trb.i = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 4
  %finished_trb = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 8
  %num_of_trb = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 9
  %actual = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 12
  br label %while.cond10

while.cond10:                                     ; preds = %while.cond10.backedge, %cdns3_select_ep.exit
  %request_handled.1.off0 = phi i1 [ false, %cdns3_select_ep.exit ], [ %spec.select, %while.cond10.backedge ]
  %transfer_end.1.off0 = phi i1 [ false, %cdns3_select_ep.exit ], [ %transfer_end.2.off0, %while.cond10.backedge ]
  %38 = ptrtoint ptr %cdns3_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cdns3_dev.i, align 4
  %regs.i.i = getelementptr inbounds %struct.cdns3_device, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %ep_traddr.i.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %41, i32 0, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr.i.i) #12, !srcloc !236
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  %44 = ptrtoint ptr %trb_pool_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %trb_pool_dma.i.i, align 4
  %sub.i.i = sub i32 %43, %45
  %div.i.i = udiv i32 %sub.i.i, 12
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  %ep_cmd.i = getelementptr inbounds %struct.cdns3_usb_regs, ptr %47, i32 0, i32 10
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_cmd.i) #12, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %49 = and i32 %48, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp ne i32 %49, 0
  %50 = ptrtoint ptr %start_trb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %start_trb.i, align 4
  %52 = ptrtoint ptr %end_trb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end_trb.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.i141 = icmp slt i32 %51, %53
  br i1 %cmp.i141, label %if.then.i, label %while.cond10.if.end12.i_crit_edge

while.cond10.if.end12.i_crit_edge:                ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then.i:                                        ; preds = %while.cond10
  %54 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dequeue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp5.i = icmp sgt i32 %55, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %51)
  %cmp9.i = icmp slt i32 %55, %51
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %if.then.i.cdns3_trb_handled.exit.thread_crit_edge, label %if.then.i.if.end12.i_crit_edge

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then.i.cdns3_trb_handled.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_trb_handled.exit.thread

if.end12.i:                                       ; preds = %if.then.i.if.end12.i_crit_edge, %while.cond10.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp15.i = icmp sgt i32 %51, %53
  br i1 %cmp15.i, label %land.lhs.true.i, label %if.end12.i.if.end24.i_crit_edge

if.end12.i.if.end24.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %56 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dequeue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %53)
  %cmp18.i = icmp sgt i32 %57, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %51)
  %cmp22.i = icmp slt i32 %57, %51
  %or.cond116.i = select i1 %cmp18.i, i1 %cmp22.i, i1 false
  br i1 %or.cond116.i, label %land.lhs.true.i.cdns3_trb_handled.exit.thread_crit_edge, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

land.lhs.true.i.cdns3_trb_handled.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_trb_handled.exit.thread

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %if.end12.i.if.end24.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp27.i = icmp eq i32 %51, %53
  br i1 %cmp27.i, label %land.lhs.true28.i, label %if.end24.i.if.end33.i_crit_edge

if.end24.i.if.end33.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

land.lhs.true28.i:                                ; preds = %if.end24.i
  %58 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dequeue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %51)
  %cmp31.not.i = icmp eq i32 %59, %51
  br i1 %cmp31.not.i, label %land.lhs.true28.i.if.end33.i_crit_edge, label %land.lhs.true28.i.cdns3_trb_handled.exit.thread_crit_edge

land.lhs.true28.i.cdns3_trb_handled.exit.thread_crit_edge: ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_trb_handled.exit.thread

land.lhs.true28.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %land.lhs.true28.i.if.end33.i_crit_edge, %if.end24.i.if.end33.i_crit_edge
  %60 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trb_pool, align 4
  %62 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dequeue, align 4
  %control.i = getelementptr %struct.cdns3_trb, ptr %61, i32 %63, i32 2
  %64 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %control.i, align 4
  %66 = lshr i32 %65, 24
  %and35.i = and i32 %66, 1
  %67 = ptrtoint ptr %ccs.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ccs.i, align 1
  %conv.i144 = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and35.i, i32 %conv.i144)
  %cmp36.not.i = icmp ne i32 %and35.i, %conv.i144
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %63)
  %cmp44.i = icmp eq i32 %div.i.i, %63
  %or.cond117.i = select i1 %tobool.not.i, i1 %cmp44.i, i1 false
  %or.cond120.i = select i1 %cmp36.not.i, i1 true, i1 %or.cond117.i
  br i1 %or.cond120.i, label %if.end33.i.cdns3_trb_handled.exit.thread_crit_edge, label %if.end47.i

if.end33.i.cdns3_trb_handled.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_trb_handled.exit.thread

if.end47.i:                                       ; preds = %if.end33.i
  %69 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %enqueue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %63)
  %cmp49.i = icmp eq i32 %70, %63
  br i1 %cmp49.i, label %land.lhs.true51.i, label %if.end47.i.if.else.i_crit_edge

if.end47.i.if.else.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true51.i:                                ; preds = %if.end47.i
  %71 = ptrtoint ptr %free_trbs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %free_trbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp52.i = icmp eq i32 %72, 0
  br i1 %cmp52.i, label %cdns3_trb_handled.exit.thread164, label %land.lhs.true51.i.if.else.i_crit_edge

land.lhs.true51.i.if.else.i_crit_edge:            ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

cdns3_trb_handled.exit.thread164:                 ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_cdns3_request_handled(ptr noundef %spec.select.i, i32 noundef %div.i.i, i32 noundef 1) #12
  br label %while.body12

if.else.i:                                        ; preds = %land.lhs.true51.i.if.else.i_crit_edge, %if.end47.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %div.i.i)
  %cmp56.i = icmp slt i32 %63, %div.i.i
  br i1 %cmp56.i, label %cdns3_trb_handled.exit, label %if.else66.i

if.else66.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %div.i.i)
  %cmp68.i = icmp sgt i32 %63, %div.i.i
  %handled.0.i167 = zext i1 %cmp68.i to i32
  tail call fastcc void @trace_cdns3_request_handled(ptr noundef %spec.select.i, i32 noundef %div.i.i, i32 noundef %handled.0.i167) #12
  br i1 %cmp68.i, label %if.else66.i.while.body12_crit_edge, label %if.else66.i.while.end32_crit_edge

if.else66.i.while.end32_crit_edge:                ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end32

if.else66.i.while.body12_crit_edge:               ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body12

cdns3_trb_handled.exit.thread:                    ; preds = %if.end33.i.cdns3_trb_handled.exit.thread_crit_edge, %land.lhs.true28.i.cdns3_trb_handled.exit.thread_crit_edge, %land.lhs.true.i.cdns3_trb_handled.exit.thread_crit_edge, %if.then.i.cdns3_trb_handled.exit.thread_crit_edge
  tail call fastcc void @trace_cdns3_request_handled(ptr noundef %spec.select.i, i32 noundef %div.i.i, i32 noundef 0) #12
  br label %while.end32

cdns3_trb_handled.exit:                           ; preds = %if.else.i
  %73 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_trbs.i, align 4
  %sub.i = add i32 %74, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %sub.i)
  %cmp59.i = icmp ne i32 %div.i.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool63.not.i = icmp ne i32 %63, 0
  %or.cond118.i = select i1 %cmp59.i, i1 true, i1 %tobool63.not.i
  %handled.0.i = zext i1 %or.cond118.i to i32
  tail call fastcc void @trace_cdns3_request_handled(ptr noundef %spec.select.i, i32 noundef %div.i.i, i32 noundef %handled.0.i) #12
  br i1 %or.cond118.i, label %cdns3_trb_handled.exit.while.body12_crit_edge, label %cdns3_trb_handled.exit.while.end32_crit_edge

cdns3_trb_handled.exit.while.end32_crit_edge:     ; preds = %cdns3_trb_handled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end32

cdns3_trb_handled.exit.while.body12_crit_edge:    ; preds = %cdns3_trb_handled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body12

while.body12:                                     ; preds = %cdns3_trb_handled.exit.while.body12_crit_edge, %if.else66.i.while.body12_crit_edge, %cdns3_trb_handled.exit.thread164
  %75 = ptrtoint ptr %finished_trb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %finished_trb, align 4
  %inc = add i32 %76, 1
  store i32 %inc, ptr %finished_trb, align 4
  %77 = ptrtoint ptr %num_of_trb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_of_trb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %78)
  %cmp14.not = icmp sge i32 %inc, %78
  %spec.select = select i1 %cmp14.not, i1 true, i1 %request_handled.1.off0
  %79 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %trb_pool, align 4
  %81 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dequeue, align 4
  %add.ptr19 = getelementptr %struct.cdns3_trb, ptr %80, i32 %82
  tail call fastcc void @trace_cdns3_complete_trb(ptr noundef %priv_ep, ptr noundef %add.ptr19)
  br i1 %transfer_end.1.off0, label %while.body12.if.end23_crit_edge, label %if.then21

while.body12.if.end23_crit_edge:                  ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr %struct.cdns3_trb, ptr %80, i32 %82, i32 1
  %83 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length, align 4
  %85 = and i32 %84, -65280
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %actual, align 4
  %add = add i32 %86, %88
  store i32 %add, ptr %actual, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.body12.if.end23_crit_edge
  %89 = ptrtoint ptr %num_of_trb to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_of_trb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp25 = icmp sgt i32 %90, 1
  br i1 %cmp25, label %land.lhs.true, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %control27 = getelementptr %struct.cdns3_trb, ptr %80, i32 %82, i32 2
  %91 = ptrtoint ptr %control27 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %control27, align 4
  %93 = and i32 %92, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool29.not = icmp ne i32 %93, 0
  %spec.select139 = select i1 %tobool29.not, i1 true, i1 %transfer_end.1.off0
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true, %if.end23.if.end31_crit_edge
  %transfer_end.2.off0 = phi i1 [ %transfer_end.1.off0, %if.end23.if.end31_crit_edge ], [ %spec.select139, %land.lhs.true ]
  %94 = ptrtoint ptr %free_trbs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %free_trbs.i, align 4
  %inc.i148 = add i32 %95, 1
  store i32 %inc.i148, ptr %free_trbs.i, align 4
  %96 = ptrtoint ptr %num_trbs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_trbs.i, align 4
  %98 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dequeue, align 4
  %inc.i.i151 = add i32 %99, 1
  store i32 %inc.i.i151, ptr %dequeue, align 4
  %100 = add i32 %97, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %100)
  %cmp.i.i152 = icmp eq i32 %99, %100
  br i1 %cmp.i.i152, label %if.then.i.i154, label %if.end31.while.cond10.backedge_crit_edge

if.end31.while.cond10.backedge_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond10.backedge

while.cond10.backedge:                            ; preds = %if.then.i.i154, %if.end31.while.cond10.backedge_crit_edge
  br label %while.cond10

if.then.i.i154:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %dequeue, align 4
  %102 = ptrtoint ptr %ccs.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ccs.i, align 1
  %104 = xor i8 %103, 1
  store i8 %104, ptr %ccs.i, align 1
  br label %while.cond10.backedge

while.end32:                                      ; preds = %cdns3_trb_handled.exit.while.end32_crit_edge, %cdns3_trb_handled.exit.thread, %if.else66.i.while.end32_crit_edge
  br i1 %request_handled.1.off0, label %if.then34, label %while.end32.prepare_next_td_crit_edge

while.end32.prepare_next_td_crit_edge:            ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_next_td

if.then34:                                        ; preds = %while.end32
  tail call void @cdns3_gadget_giveback(ptr noundef %priv_ep, ptr noundef %spec.select.i, i32 noundef 0)
  %105 = ptrtoint ptr %pending_req_list to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %pending_req_list, align 4
  %cmp.i.not = icmp eq ptr %106, %pending_req_list
  br i1 %cmp.i.not, label %if.then34.while.end70_crit_edge, label %if.then34.while.body_crit_edge

if.then34.while.body_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then34.while.end70_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end70

if.else42:                                        ; preds = %while.end
  %conv.le = zext i8 %31 to i32
  br i1 %cmp.i140, label %if.else42.cdns3_select_ep.exit161_crit_edge, label %if.end.i160

if.else42.cdns3_select_ep.exit161_crit_edge:      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdns3_select_ep.exit161

if.end.i160:                                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %selected_ep.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv.le, ptr %selected_ep.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %108 = shl nuw i32 %conv.le, 24
  %109 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i, align 4
  %ep_sel.i159 = getelementptr inbounds %struct.cdns3_usb_regs, ptr %110, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_sel.i159, i32 %108) #12, !srcloc !239
  br label %cdns3_select_ep.exit161

cdns3_select_ep.exit161:                          ; preds = %if.end.i160, %if.else42.cdns3_select_ep.exit161_crit_edge
  %111 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %trb_pool, align 4
  tail call fastcc void @trace_cdns3_complete_trb(ptr noundef %priv_ep, ptr noundef %112)
  %trb47 = getelementptr inbounds %struct.cdns3_request, ptr %spec.select.i, i32 0, i32 2
  %113 = ptrtoint ptr %trb47 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %trb47, align 4
  %cmp48.not = icmp eq ptr %112, %114
  br i1 %cmp48.not, label %cdns3_select_ep.exit161.if.end52_crit_edge, label %do.end

cdns3_select_ep.exit161.if.end52_crit_edge:       ; preds = %cdns3_select_ep.exit161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.end:                                           ; preds = %cdns3_select_ep.exit161
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %priv_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.71, ptr noundef %114, ptr noundef %112) #15
  br label %if.end52

if.end52:                                         ; preds = %do.end, %cdns3_select_ep.exit161.if.end52_crit_edge
  %length53 = getelementptr inbounds %struct.cdns3_trb, ptr %112, i32 0, i32 1
  %117 = ptrtoint ptr %length53 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %length53, align 4
  %119 = and i32 %118, -65280
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  %actual55 = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 12
  %121 = ptrtoint ptr %actual55 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %actual55, align 4
  %add56 = add i32 %120, %122
  store i32 %add56, ptr %actual55, align 4
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 4
  %123 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool57.not = icmp eq i32 %124, 0
  br i1 %tobool57.not, label %if.end52.if.then62_crit_edge, label %lor.lhs.false

if.end52.if.then62_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.end52
  %stream_sg_idx = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 30
  %125 = ptrtoint ptr %stream_sg_idx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %stream_sg_idx, align 4
  %add59 = add i32 %126, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %add59)
  %cmp60 = icmp eq i32 %124, %add59
  br i1 %cmp60, label %lor.lhs.false.if.then62_crit_edge, label %if.else64

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %if.end52.if.then62_crit_edge
  %stream_sg_idx63 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 30
  %127 = ptrtoint ptr %stream_sg_idx63 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %stream_sg_idx63, align 4
  tail call void @cdns3_gadget_giveback(ptr noundef %priv_ep, ptr noundef %spec.select.i, i32 noundef 0)
  br label %while.end70

if.else64:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %stream_sg_idx to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add59, ptr %stream_sg_idx, align 4
  tail call fastcc void @cdns3_ep_run_stream_transfer(ptr noundef %priv_ep, ptr noundef %spec.select.i)
  br label %while.end70

while.end70:                                      ; preds = %if.else64, %if.then62, %if.then34.while.end70_crit_edge, %entry.while.end70_crit_edge
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %129 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags, align 4
  %and71 = and i32 %130, -65
  store i32 %and71, ptr %flags, align 4
  br label %prepare_next_td

prepare_next_td:                                  ; preds = %while.end70, %while.end32.prepare_next_td_crit_edge
  %flags72 = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %131 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags72, align 4
  %133 = and i32 %132, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %if.then79, label %prepare_next_td.if.end81_crit_edge

prepare_next_td.if.end81_crit_edge:               ; preds = %prepare_next_td
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then79:                                        ; preds = %prepare_next_td
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cdns3_start_all_request(ptr noundef %priv_dev, ptr noundef %priv_ep)
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %prepare_next_td.if.end81_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_epx_irq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_complete_trb(ptr noundef %priv_ep, ptr noundef %trb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_complete_trb, i32 0, i32 1), ptr blockaddress(@trace_cdns3_complete_trb, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !395
  %call42 = tail call i32 @__traceiter_cdns3_complete_trb(ptr noundef null, ptr noundef %priv_ep, ptr noundef %trb) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !396
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_complete_trb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_complete_trb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_complete_trb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_complete_trb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 435, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdns3_complete_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cdns3_request_handled(ptr noundef %priv_req, i32 noundef %current_index, i32 noundef %handled) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_request_handled, i32 0, i32 1), ptr blockaddress(@trace_cdns3_request_handled, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !397
  %call42 = tail call i32 @__traceiter_cdns3_request_handled(ptr noundef null, ptr noundef %priv_req, i32 noundef %current_index, i32 noundef %handled) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !398
  %13 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !226) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_request_handled, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdns3_request_handled, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cdns3_request_handled.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_cdns3_request_handled.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 556, ptr noundef nonnull @.str.9) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %31 = tail call i32 @llvm.read_register.i32(metadata !226) #12
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
declare dso_local i32 @__traceiter_cdns3_request_handled(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_drd_gadget_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !131, !132, !133, !134, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !178, !180, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !201, !202, !203, !205, !206, !208, !209, !211, !213, !215, !217, !218, !219, !220, !222, !224}
!llvm.named.register.sp = !{!226}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2103, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cdns3_ep_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cdns3_ep_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2136, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cdns3_ep_config.__UNIQUE_ID_ddebug354, !9, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3346, i32 15}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 270, i32 1}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 403, i32 4}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cdns3_start_all_request.__UNIQUE_ID_ddebug353, !23, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 965, i32 29}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 44, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 427, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 844, i32 28}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 459, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 92, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 250, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 255, i32 1}
!47 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 265, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 27, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3261, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__cdns3_gadget_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @__cdns3_gadget_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3141, i32 42}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3162, i32 3}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cdns3_gadget_start._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cdns3_gadget_start._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3175, i32 26}
!68 = !{ptr @cdns3_gadget_start.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3179, i32 2}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cdns3_gadget_start.__key.22, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3180, i32 2}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cdns3_gadget_start.__key.24, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3183, i32 2}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3189, i32 43}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3193, i32 3}
!81 = !{ptr @cdns3_gadget_start._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cdns3_gadget_start._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3200, i32 3}
!85 = !{ptr @cdns3_gadget_start._entry.30, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @cdns3_gadget_start._entry_ptr.32, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3214, i32 2}
!89 = !{ptr @cdns3_gadget_start.__UNIQUE_ID_ddebug362, !88, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3216, i32 2}
!92 = !{ptr @cdns3_gadget_start.__UNIQUE_ID_ddebug363, !91, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3218, i32 2}
!95 = !{ptr @cdns3_gadget_start.__UNIQUE_ID_ddebug364, !94, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3234, i32 3}
!98 = !{ptr @cdns3_gadget_start._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cdns3_gadget_start._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @cdns3_gadget_ops, !101, !"cdns3_gadget_ops", i1 false, i1 false}
!101 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2961, i32 36}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2907, i32 3}
!104 = !{ptr @cdns3_gadget_udc_start._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cdns3_gadget_udc_start._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2206, i32 3}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cdns3_gadget_match_ep._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @cdns3_gadget_match_ep._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2210, i32 2}
!113 = !{ptr @cdns3_gadget_match_ep.__UNIQUE_ID_ddebug355, !112, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3004, i32 2}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cdns3_init_eps.__UNIQUE_ID_ddebug360, !115, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3033, i32 5}
!120 = !{ptr @cdns3_init_eps._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @cdns3_init_eps._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3037, i32 51}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3038, i32 28}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3038, i32 35}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 3062, i32 3}
!130 = !{ptr @cdns3_init_eps.__UNIQUE_ID_ddebug361, !129, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!131 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @cdns3_gadget_ep_ops, !135, !"cdns3_gadget_ep_ops", i1 false, i1 false}
!135 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2756, i32 32}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2288, i32 3}
!138 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @cdns3_gadget_ep_enable.__UNIQUE_ID_ddebug356, !137, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2293, i32 3}
!142 = !{ptr @cdns3_gadget_ep_enable._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cdns3_gadget_ep_enable._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2297, i32 6}
!146 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2309, i32 3}
!149 = !{ptr @cdns3_gadget_ep_enable._entry.57, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cdns3_gadget_ep_enable._entry_ptr.59, !148, !"_entry_ptr", i1 false, i1 false}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 510, i32 1}
!153 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2416, i32 3}
!156 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @cdns3_gadget_ep_disable._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @cdns3_gadget_ep_disable._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2423, i32 6}
!161 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2450, i32 3}
!164 = !{ptr @cdns3_gadget_ep_disable._entry.63, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @cdns3_gadget_ep_disable._entry_ptr.65, !163, !"_entry_ptr", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 515, i32 1}
!168 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 2579, i32 3}
!171 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cdns3_gadget_ep_queue.__UNIQUE_ID_ddebug357, !170, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 260, i32 1}
!175 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 565, i32 28}
!178 = !{ptr @.str.69, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 583, i32 29}
!180 = !{ptr @.str.70, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 603, i32 29}
!182 = distinct !{null, !183, !"__already_done", i1 false, i1 false}
!183 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 58, i32 1}
!184 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 351, i32 1}
!187 = distinct !{null, !186, !"__warned", i1 false, i1 false}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 356, i32 1}
!190 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 113, i32 1}
!193 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 145, i32 1}
!196 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!197 = !{ptr @.str.71, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 1560, i32 5}
!199 = !{ptr @.str.72, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.73, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @cdns3_transfer_completed._entry, !198, !"_entry", i1 false, i1 false}
!202 = !{ptr @cdns3_transfer_completed._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!203 = distinct !{null, !204, !"__already_done", i1 false, i1 false}
!204 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 432, i32 1}
!205 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!206 = distinct !{null, !207, !"__already_done", i1 false, i1 false}
!207 = !{!"../drivers/usb/cdns3/cdns3-trace.h", i32 552, i32 1}
!208 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!209 = !{ptr @.str.74, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 653, i32 28}
!211 = !{ptr @.str.75, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 662, i32 27}
!213 = !{ptr @.str.76, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 665, i32 28}
!215 = !{ptr @.str.77, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 705, i32 2}
!217 = !{ptr @.str.78, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @cdns3_wa2_descmissing_packet._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @cdns3_wa2_descmissing_packet._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.79, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 625, i32 28}
!222 = !{ptr @.str.80, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 766, i32 31}
!224 = !{ptr @.str.81, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/cdns3/cdns3-gadget.c", i32 769, i32 31}
!226 = !{!"sp"}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{i64 6305645}
!237 = !{i64 2156009655}
!238 = !{i64 2156009856}
!239 = !{i64 6305227}
!240 = !{i64 2156023667}
!241 = !{i64 2156032705}
!242 = !{i64 2156034739}
!243 = !{i64 2148410162, i64 2148410167, i64 2148410180, i64 2148410224, i64 2148410258, i64 2148410279}
!244 = !{!"branch_weights", i32 2000, i32 1}
!245 = !{i64 2155751480}
!246 = !{i64 2155751691}
!247 = !{i64 2149408925}
!248 = !{i64 2149409961}
!249 = !{i64 2156111894}
!250 = !{i8 0, i8 2}
!251 = !{i64 2156091179}
!252 = !{i64 2156010547}
!253 = !{i64 2156069241}
!254 = !{i64 2156102602}
!255 = !{i64 2156106767}
!256 = !{i64 2156108098}
!257 = !{i64 2156069915}
!258 = !{i64 2156108348}
!259 = !{i64 2156109096}
!260 = !{i64 2156110122}
!261 = !{i64 2156110791}
!262 = !{i64 2156087855}
!263 = !{i64 2156088263}
!264 = !{i64 2156088842}
!265 = !{i64 2156111566}
!266 = !{i64 2156243748}
!267 = !{i64 2156124282}
!268 = !{i64 2156124608}
!269 = !{i64 2156125383}
!270 = !{i64 2155933323}
!271 = !{i64 2155933520}
!272 = !{i64 2155596095}
!273 = !{i64 2155596332}
!274 = !{i64 2156008860}
!275 = !{i64 2156009061}
!276 = !{i64 2156155964}
!277 = !{i64 2156147282}
!278 = !{i64 2156147857}
!279 = !{i64 2155682331}
!280 = !{i64 2155682538}
!281 = !{i64 2155702814}
!282 = !{i64 2155703019}
!283 = !{i64 2155735106}
!284 = !{i64 2155735307}
!285 = !{i64 2156233761}
!286 = !{i64 2155526944}
!287 = !{i64 2155527167}
!288 = !{i64 2156028564}
!289 = !{i64 2156031109}
!290 = !{i64 2156031619}
!291 = !{i64 2156235898}
!292 = !{i64 2156238350}
!293 = !{i64 2156238860}
!294 = !{i64 2156314042}
!295 = !{i64 2156314549}
!296 = !{i64 2149002498, i64 2149002521, i64 2149002553, i64 2149002585, i64 2149002623, i64 2149002653}
!297 = !{i64 2156079191}
!298 = !{i64 2156079466}
!299 = !{i64 2156080242}
!300 = !{i64 2156081950}
!301 = !{i64 2156083364}
!302 = !{i64 2156083871}
!303 = !{i64 2156085545}
!304 = !{i64 2156087334}
!305 = !{i64 2155900110}
!306 = !{i64 2155900331}
!307 = !{i64 2155543024}
!308 = !{i64 2155543229}
!309 = !{i64 2156288403}
!310 = !{i64 2156300643}
!311 = !{i64 2156303648}
!312 = !{i64 2156306581}
!313 = !{i64 2156309613}
!314 = !{i64 2156139132}
!315 = !{i64 2156139646}
!316 = !{i64 2156139867}
!317 = !{i64 2156140563}
!318 = !{i64 2156140781}
!319 = !{i64 2156141836}
!320 = !{i64 2156142058}
!321 = !{i64 2156144076}
!322 = !{i64 2156137702}
!323 = !{i64 2156145864}
!324 = !{i64 2156130548}
!325 = !{i64 2156130775}
!326 = !{i64 2156024641}
!327 = !{i64 2156025844}
!328 = !{i64 2156132762}
!329 = !{i64 2156134950}
!330 = !{i64 2156135255}
!331 = !{i64 2156128855}
!332 = !{i64 2156056970}
!333 = !{i64 2156058607}
!334 = !{i64 2156059117}
!335 = !{i64 2156059891}
!336 = !{i64 2156052494}
!337 = !{i64 2156055259}
!338 = !{i64 2156060253}
!339 = !{i64 2156060661}
!340 = !{i64 2156146771}
!341 = !{i64 2156278930}
!342 = !{i64 2156279448}
!343 = !{i64 2156243417}
!344 = !{i64 2156249740}
!345 = !{i64 2156250251}
!346 = !{i64 2156263948}
!347 = !{i64 2156264534}
!348 = !{i64 2156265117}
!349 = !{i64 2156273470}
!350 = !{i64 2156275832}
!351 = !{i64 2156276342}
!352 = !{i64 2156277237}
!353 = !{i64 2156277632}
!354 = !{i64 2156278139}
!355 = !{!"auto-init"}
!356 = !{i64 2156250940}
!357 = !{i64 2156251769}
!358 = !{i64 2156253452}
!359 = !{i64 2156254120}
!360 = !{i64 2156255728}
!361 = !{i64 2156257730}
!362 = !{i64 2156259430}
!363 = !{i64 2156260101}
!364 = !{i64 2156185789}
!365 = !{i64 2156188368}
!366 = !{i64 2156188878}
!367 = !{i64 2156190219}
!368 = !{i64 2156191491}
!369 = !{i64 2156197181}
!370 = !{i64 2156197486}
!371 = !{i64 2156199782}
!372 = !{i64 2156200292}
!373 = !{i64 2156201212}
!374 = !{i64 2156203791}
!375 = !{i64 2156204301}
!376 = !{i64 2155953620}
!377 = !{i64 2155953841}
!378 = !{i64 2155970542}
!379 = !{i64 2155970765}
!380 = !{i64 2156046872}
!381 = !{i64 2156047177}
!382 = !{i64 2155719030}
!383 = !{i64 2155719227}
!384 = !{i64 2155563031}
!385 = !{i64 2155563236}
!386 = !{i64 2155828606}
!387 = !{i64 2155828827}
!388 = !{i64 2155845824}
!389 = !{i64 2155846051}
!390 = !{i64 2155612806}
!391 = !{i64 2155613031}
!392 = !{i64 2155633561}
!393 = !{i64 2155633784}
!394 = !{i64 2156117552}
!395 = !{i64 2155917025}
!396 = !{i64 2155917248}
!397 = !{i64 2155988157}
!398 = !{i64 2155988426}
