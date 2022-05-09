; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/hcd_ddma.c_pt.bc'
source_filename = "../drivers/usb/dwc2/hcd_ddma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dwc2_qh = type { ptr, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.dwc2_hs_transfer_time], i32, i16, ptr, i32, %struct.list_head, ptr, %struct.list_head, ptr, i32, i32, ptr, %struct.timer_list, %struct.hrtimer, ptr, i32, i8 }
%struct.dwc2_hs_transfer_time = type { i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dwc2_host_chan = type { i8, [3 x i8], i16, ptr, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, ptr, %struct.list_head, i32, i32, %struct.list_head }
%struct.dwc2_hcd_urb = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, %struct.dwc2_hcd_pipe_info, [0 x %struct.dwc2_hcd_iso_packet_desc] }
%struct.dwc2_hcd_pipe_info = type { i8, i8, i8, i8, i16, i16 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32, i32 }
%struct.dwc2_dma_desc = type { i32, i32 }
%struct.dwc2_qtd = type { i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i16, i16, ptr, ptr, %struct.list_head }

@dwc2_hcd_qh_init_ddma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 349, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"SPLIT Transfers are not supported in Descriptor DMA mode.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc2_hcd_qh_init_ddma\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/dwc2/hcd_ddma.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_hcd_qh_init_ddma._entry_ptr = internal global ptr @dwc2_hcd_qh_init_ddma._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dwc2_per_sched_enable.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc2_per_sched_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling Periodic schedule\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc2_per_sched_disable.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc2_per_sched_disable\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Disabling Periodic schedule\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dwc2_init_non_isoc_dma_desc\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): qh=%p dma=%08lx len=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 -67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qtd=%p\0A\00", [24 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buf=%08lx len=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 -62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set A bit in desc %d (%p)\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 -59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"desc %d (%p) buf=%08x status=%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.18, i8 0, i8 -57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"n_desc=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 -54, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set IOC/EOL/A bits in desc %d (%p)\0A\00", [60 x i8] zeroinitializer }, align 32
@dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.2, ptr @.str.20, i8 0, i8 -52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set A bit in desc 0 (%p)\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_update_frame_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013hsotg = %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc2_update_frame_list\00", [41 x i8] zeroinitializer }, align 32
@dwc2_update_frame_list._entry_ptr = internal global ptr @dwc2_update_frame_list._entry, section ".printk_index", align 4
@dwc2_update_frame_list._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qh->channel = %p\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc2_update_frame_list._entry_ptr.25 = internal global ptr @dwc2_update_frame_list._entry.23, section ".printk_index", align 4
@dwc2_update_frame_list._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hsotg->frame_list = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_update_frame_list._entry_ptr.28 = internal global ptr @dwc2_update_frame_list._entry.26, section ".printk_index", align 4
@dwc2_init_isoc_dma_desc.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc2_init_isoc_dma_desc\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"current frame number overstep last descriptor\0A\00", [49 x i8] zeroinitializer }, align 32
@dwc2_complete_isoc_xfer_ddma.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 0, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dwc2_complete_isoc_xfer_ddma\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"try to complete %d instead of %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dwc2_process_non_isoc_desc\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 1, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"qtd=%p dwc2_urb=%p desc_num=%d desc=%p n_bytes=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 1, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed=%1x xfer_done=%1x\0A\00", [38 x i8] zeroinitializer }, align 32
@dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str.2, ptr @.str.37, i8 1, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Control setup transaction done\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str.2, ptr @.str.38, i8 1, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  Control data transfer done\0A\00", [34 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dwc2_update_non_isoc_urb_state_ddma\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"remain=%d dwc2_urb=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1084, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EIO\0A\00", [27 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma._entry_ptr = internal global ptr @dwc2_update_non_isoc_urb_state_ddma._entry, section ".printk_index", align 4
@dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 1, i8 17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stall\0A\00", [25 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 1096, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Babble\0A\00", [24 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma._entry_ptr.45 = internal global ptr @dwc2_update_non_isoc_urb_state_ddma._entry.43, section ".printk_index", align 4
@dwc2_update_non_isoc_urb_state_ddma._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 1100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XactErr\0A\00", [23 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma._entry_ptr.48 = internal global ptr @dwc2_update_non_isoc_urb_state_ddma._entry.46, section ".printk_index", align 4
@dwc2_update_non_isoc_urb_state_ddma._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 1106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Unhandled descriptor error status (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma._entry_ptr.51 = internal global ptr @dwc2_update_non_isoc_urb_state_ddma._entry.49, section ".printk_index", align 4
@dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.39, ptr @.str.2, ptr @.str.52, i8 1, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Active descriptor encountered on channel %d\0A\00", [51 x i8] zeroinitializer }, align 32
@dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.39, ptr @.str.2, ptr @.str.53, i8 1, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"length=%d actual=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 348, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 326, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 199, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 220, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 748, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 759, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 767, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 775, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 787, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 797, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 808, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 817, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 237, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 242, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 247, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 604, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1022, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1162, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1175, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1184, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1196, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1202, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1081, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1084, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1092, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1096, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1100, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1104, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1113, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [31 x i8] c"../drivers/usb/dwc2/hcd_ddma.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1138, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @dwc2_hcd_qh_init_ddma._entry, ptr @dwc2_hcd_qh_init_ddma._entry_ptr, ptr @dwc2_update_frame_list._entry, ptr @dwc2_update_frame_list._entry.23, ptr @dwc2_update_frame_list._entry.26, ptr @dwc2_update_frame_list._entry_ptr, ptr @dwc2_update_frame_list._entry_ptr.25, ptr @dwc2_update_frame_list._entry_ptr.28, ptr @dwc2_update_non_isoc_urb_state_ddma._entry, ptr @dwc2_update_non_isoc_urb_state_ddma._entry.43, ptr @dwc2_update_non_isoc_urb_state_ddma._entry.46, ptr @dwc2_update_non_isoc_urb_state_ddma._entry.49, ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr, ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr.45, ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr.48, ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hcd_qh_init_ddma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_frame_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_frame_list._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_frame_list._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_non_isoc_urb_state_ddma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_non_isoc_urb_state_ddma._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_non_isoc_urb_state_ddma._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_update_non_isoc_urb_state_ddma._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_qh_init_ddma(ptr noundef %hsotg, ptr nocapture noundef %qh, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %do_split = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 8
  %0 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ep_type.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %4 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %6 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp3.i = icmp eq i8 %7, 3
  %desc_hsisoc_cache.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 69
  %desc_gen_cache62.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 68
  %desc_cache.060.in.i = select i1 %cmp3.i, ptr %desc_hsisoc_cache.i, ptr %desc_gen_cache62.i
  %phi.cast.i = select i1 %cmp3.i, i32 2048, i32 512
  br label %dwc2_max_desc_num.exit.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %desc_gen_cache.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 68
  br label %dwc2_max_desc_num.exit.i

dwc2_max_desc_num.exit.i:                         ; preds = %if.end.i, %land.lhs.true.i
  %desc_cache.059.in.i = phi ptr [ %desc_gen_cache.i, %if.end.i ], [ %desc_cache.060.in.i, %land.lhs.true.i ]
  %8 = phi i32 [ 512, %if.end.i ], [ %phi.cast.i, %land.lhs.true.i ]
  %9 = ptrtoint ptr %desc_cache.059.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %desc_cache.059.i = load ptr, ptr %desc_cache.059.in.i, align 4
  %desc_list_sz.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 28
  %10 = ptrtoint ptr %desc_list_sz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %desc_list_sz.i, align 4
  %or.i.i = or i32 %mem_flags, 257
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %desc_cache.059.i, i32 noundef %or.i.i) #7
  %desc_list.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 26
  %11 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %desc_list.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dwc2_max_desc_num.exit.i.cleanup_crit_edge, label %if.end9.i

dwc2_max_desc_num.exit.i.cleanup_crit_edge:       ; preds = %dwc2_max_desc_num.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %dwc2_max_desc_num.exit.i
  %12 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsotg, align 8
  %14 = ptrtoint ptr %desc_list_sz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_list_sz.i, align 4
  %call.i45.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i.i) #7
  br i1 %call.i45.i, label %land.rhs.i46.i, label %if.end39.i.i

land.rhs.i46.i:                                   ; preds = %if.end9.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i46.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !121

land.rhs.i46.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i46.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %13) #7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #7
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef nonnull %call.i.i, i32 noundef %15) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %call.i.i to i32
  %sub.i.i = add i32 %21, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %20, i32 %shr.i.i
  %and.i.i = and i32 %21, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %15, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i46.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i46.i.dma_map_single_attrs.exit.i_crit_edge ]
  %desc_list_dma.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 27
  %22 = ptrtoint ptr %desc_list_dma.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i, ptr %desc_list_dma.i, align 8
  %23 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i48.i = icmp eq i8 %24, 1
  br i1 %cmp.i48.i, label %land.rhs.i52.i, label %dma_map_single_attrs.exit.i.if.end7.i.i.i_crit_edge

dma_map_single_attrs.exit.i.if.end7.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i.i

land.rhs.i52.i:                                   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev_speed.i49.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %25 = ptrtoint ptr %dev_speed.i49.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dev_speed.i49.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp3.i50.i = icmp eq i8 %26, 3
  %phi.cast67.i = select i1 %cmp3.i50.i, i32 1024, i32 256
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %land.rhs.i52.i, %dma_map_single_attrs.exit.i.if.end7.i.i.i_crit_edge
  %27 = phi i32 [ 256, %dma_map_single_attrs.exit.i.if.end7.i.i.i_crit_edge ], [ %phi.cast67.i, %land.rhs.i52.i ]
  %or.i54.i = or i32 %mem_flags, 256
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef %or.i54.i) #11
  %n_bytes.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 29
  %28 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i.i, ptr %n_bytes.i, align 8
  %tobool17.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end4

if.then18.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hsotg, align 8
  %31 = ptrtoint ptr %desc_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_list_dma.i, align 8
  %33 = ptrtoint ptr %desc_list_sz.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desc_list_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 2, i32 noundef 0) #7
  %35 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_list.i, align 4
  tail call void @kmem_cache_free(ptr noundef %desc_cache.059.i, ptr noundef %36) #7
  %37 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %desc_list.i, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i.i.i
  %38 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ep_type.i, align 4
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %39, label %if.end4.if.end18_crit_edge [
    i8 1, label %if.end4.if.then10_crit_edge
    i8 3, label %if.end4.if.then10_crit_edge69
  ]

if.end4.if.then10_crit_edge69:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then10:                                        ; preds = %if.end4.if.then10_crit_edge, %if.end4.if.then10_crit_edge69
  %frame_list = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 65
  %41 = ptrtoint ptr %frame_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %frame_list, align 8
  %tobool11.not = icmp eq ptr %42, null
  br i1 %tobool11.not, label %if.end.i33, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.i33:                                       ; preds = %if.then10
  %frame_list_sz.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 67
  %43 = ptrtoint ptr %frame_list_sz.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 256, ptr %frame_list_sz.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 8) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2849, i32 noundef 256) #12
  %45 = ptrtoint ptr %frame_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i, ptr %frame_list, align 8
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %err1, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i33
  %46 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hsotg, align 8
  %48 = ptrtoint ptr %frame_list_sz.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame_list_sz.i, align 8
  %call.i.i34 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i.i) #7
  br i1 %call.i.i34, label %land.rhs.i.i, label %if.end39.i.i48

land.rhs.i.i:                                     ; preds = %if.end6.i
  %.b1.i.i35 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i35, label %land.rhs.i.i.if.end16_crit_edge, label %if.then.i.i39, !prof !121

land.rhs.i.i.if.end16_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then.i.i39:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i36 = tail call ptr @dev_driver_string(ptr noundef %47) #7
  %init_name.i.i.i37 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %init_name.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i.i37, align 8
  %tobool.not.i.i.i38 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i38, label %if.end.i.i.i40, label %if.then.i.i39.dev_name.exit.i.i42_crit_edge

if.then.i.i39.dev_name.exit.i.i42_crit_edge:      ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i42

if.end.i.i.i40:                                   ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %47, align 4
  br label %dev_name.exit.i.i42

dev_name.exit.i.i42:                              ; preds = %if.end.i.i.i40, %if.then.i.i39.dev_name.exit.i.i42_crit_edge
  %retval.0.i.i.i41 = phi ptr [ %53, %if.end.i.i.i40 ], [ %51, %if.then.i.i39.dev_name.exit.i.i42_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call16.i.i36, ptr noundef %retval.0.i.i.i41) #7
  br label %if.end16

if.end39.i.i48:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %47, ptr noundef nonnull %call7.i.i.i, i32 noundef %49) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %call7.i.i.i to i32
  %sub.i.i43 = add i32 %55, 1073741824
  %shr.i.i44 = lshr i32 %sub.i.i43, 12
  %add.ptr.i.i45 = getelementptr %struct.page, ptr %54, i32 %shr.i.i44
  %and.i.i46 = and i32 %55, 4088
  %call41.i.i47 = tail call i32 @dma_map_page_attrs(ptr noundef %47, ptr noundef %add.ptr.i.i45, i32 noundef %and.i.i46, i32 noundef %49, i32 noundef 1, i32 noundef 0) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end39.i.i48, %dev_name.exit.i.i42, %land.rhs.i.i.if.end16_crit_edge
  %retval.0.i.i49 = phi i32 [ %call41.i.i47, %if.end39.i.i48 ], [ -1, %dev_name.exit.i.i42 ], [ -1, %land.rhs.i.i.if.end16_crit_edge ]
  %frame_list_dma.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 66
  %56 = ptrtoint ptr %frame_list_dma.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i.i49, ptr %frame_list_dma.i, align 4
  tail call fastcc void @dwc2_per_sched_enable(ptr noundef %hsotg)
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.then10.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %ntd = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 20
  %57 = ptrtoint ptr %ntd to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %ntd, align 4
  br label %cleanup

err1:                                             ; preds = %if.end.i33
  %58 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i53 = icmp eq i8 %59, 1
  br i1 %cmp.i53, label %land.lhs.true.i56, label %err1.if.else.i_crit_edge

err1.if.else.i_crit_edge:                         ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i56:                                ; preds = %err1
  %dev_speed.i54 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %60 = ptrtoint ptr %dev_speed.i54 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dev_speed.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %cmp3.i55 = icmp eq i8 %61, 3
  br i1 %cmp3.i55, label %if.then.i, label %land.lhs.true.i56.if.else.i_crit_edge

land.lhs.true.i56.if.else.i_crit_edge:            ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #9
  %desc_hsisoc_cache.i57 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 69
  br label %if.end.i61

if.else.i:                                        ; preds = %land.lhs.true.i56.if.else.i_crit_edge, %err1.if.else.i_crit_edge
  %desc_gen_cache.i58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 68
  br label %if.end.i61

if.end.i61:                                       ; preds = %if.else.i, %if.then.i
  %desc_cache.0.in.i = phi ptr [ %desc_hsisoc_cache.i57, %if.then.i ], [ %desc_gen_cache.i58, %if.else.i ]
  %62 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc_list.i, align 4
  %tobool.not.i60 = icmp eq ptr %63, null
  br i1 %tobool.not.i60, label %if.end.i61.dwc2_desc_list_free.exit_crit_edge, label %if.then5.i

if.end.i61.dwc2_desc_list_free.exit_crit_edge:    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_desc_list_free.exit

if.then5.i:                                       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %desc_cache.0.in.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %desc_cache.0.i = load ptr, ptr %desc_cache.0.in.i, align 4
  %65 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hsotg, align 8
  %67 = ptrtoint ptr %desc_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %desc_list_dma.i, align 8
  %69 = ptrtoint ptr %desc_list_sz.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %desc_list_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef 2, i32 noundef 0) #7
  %71 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc_list.i, align 4
  tail call void @kmem_cache_free(ptr noundef %desc_cache.0.i, ptr noundef %72) #7
  %73 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %desc_list.i, align 4
  br label %dwc2_desc_list_free.exit

dwc2_desc_list_free.exit:                         ; preds = %if.then5.i, %if.end.i61.dwc2_desc_list_free.exit_crit_edge
  %74 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %n_bytes.i, align 8
  tail call void @kfree(ptr noundef %75) #7
  %76 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %n_bytes.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %dwc2_desc_list_free.exit, %if.end18, %if.then18.i, %dwc2_max_desc_num.exit.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %do.end ], [ -12, %dwc2_desc_list_free.exit ], [ -12, %if.then18.i ], [ -12, %dwc2_max_desc_num.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_per_sched_enable(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %retval.0.i1 = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frame_list_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 66
  %6 = ptrtoint ptr %frame_list_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_list_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %7) #7, !srcloc !125
  br label %dwc2_writel.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #7, !srcloc !125
  br label %dwc2_writel.exit

dwc2_writel.exit:                                 ; preds = %do.body1.i, %do.body.i
  %or8 = or i32 %retval.0.i1, 117440512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_per_sched_enable.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_per_sched_enable, %do.end19)) #7
          to label %if.then16 [label %do.end19], !srcloc !126

if.then16:                                        ; preds = %dwc2_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_per_sched_enable.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.9) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %dwc2_writel.exit
  %15 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %needs_byte_swap.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i7 = icmp eq i8 %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i7, label %do.body1.i13, label %do.body.i10

do.body.i10:                                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %18, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %or8) #7, !srcloc !125
  br label %cleanup

do.body1.i13:                                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or8) #7
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i12 = getelementptr i8, ptr %21, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i12, i32 %19) #7, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i13, %do.body.i10, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_free_ddma(ptr noundef %hsotg, ptr nocapture noundef %qh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_type.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %0 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %2 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp3.i = icmp eq i8 %3, 3
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %desc_hsisoc_cache.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 69
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %desc_gen_cache.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 68
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %desc_cache.0.in.i = phi ptr [ %desc_hsisoc_cache.i, %if.then.i ], [ %desc_gen_cache.i, %if.else.i ]
  %desc_list.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 26
  %4 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_list.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.dwc2_desc_list_free.exit_crit_edge, label %if.then5.i

if.end.i.dwc2_desc_list_free.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_desc_list_free.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %desc_cache.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %desc_cache.0.i = load ptr, ptr %desc_cache.0.in.i, align 4
  %7 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hsotg, align 8
  %desc_list_dma.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 27
  %9 = ptrtoint ptr %desc_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_list_dma.i, align 8
  %desc_list_sz.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 28
  %11 = ptrtoint ptr %desc_list_sz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_list_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 2, i32 noundef 0) #7
  %13 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc_list.i, align 4
  tail call void @kmem_cache_free(ptr noundef %desc_cache.0.i, ptr noundef %14) #7
  %15 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc_list.i, align 4
  br label %dwc2_desc_list_free.exit

dwc2_desc_list_free.exit:                         ; preds = %if.then5.i, %if.end.i.dwc2_desc_list_free.exit_crit_edge
  %n_bytes.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 29
  %16 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %n_bytes.i, align 8
  tail call void @kfree(ptr noundef %17) #7
  %18 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %n_bytes.i, align 8
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %channel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 24
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel, align 8
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %dwc2_desc_list_free.exit.if.end_crit_edge, label %if.then

dwc2_desc_list_free.exit.if.end_crit_edge:        ; preds = %dwc2_desc_list_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %dwc2_desc_list_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dwc2_release_channel_ddma(ptr noundef %hsotg, ptr noundef %qh)
  br label %if.end

if.end:                                           ; preds = %if.then, %dwc2_desc_list_free.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %21 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ep_type.i, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %22, label %if.end.if.end20_crit_edge [
    i8 1, label %if.end.land.lhs.true_crit_edge
    i8 3, label %if.end.land.lhs.true_crit_edge35
  ]

if.end.land.lhs.true_crit_edge35:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge35
  %uframe_sched = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %24 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %uframe_sched, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool13.not = icmp eq i8 %25, 0
  br i1 %tobool13.not, label %lor.lhs.false15, label %land.lhs.true.land.lhs.true17_crit_edge

land.lhs.true.land.lhs.true17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true17

lor.lhs.false15:                                  ; preds = %land.lhs.true
  %periodic_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 55
  %26 = ptrtoint ptr %periodic_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %periodic_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool16.not = icmp eq i32 %27, 0
  br i1 %tobool16.not, label %lor.lhs.false15.land.lhs.true17_crit_edge, label %lor.lhs.false15.if.end20_crit_edge

lor.lhs.false15.if.end20_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

lor.lhs.false15.land.lhs.true17_crit_edge:        ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %lor.lhs.false15.land.lhs.true17_crit_edge, %land.lhs.true.land.lhs.true17_crit_edge
  %frame_list = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 65
  %28 = ptrtoint ptr %frame_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %frame_list, align 8
  %tobool18.not = icmp eq ptr %29, null
  br i1 %tobool18.not, label %land.lhs.true17.if.end20_crit_edge, label %if.then19

land.lhs.true17.if.end20_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true17
  tail call fastcc void @dwc2_per_sched_disable(ptr noundef %hsotg)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %30 = ptrtoint ptr %frame_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %frame_list, align 8
  %tobool.not.i33 = icmp eq ptr %31, null
  br i1 %tobool.not.i33, label %if.then19.dwc2_frame_list_free.exit_crit_edge, label %if.end.i34

if.then19.dwc2_frame_list_free.exit_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_frame_list_free.exit

if.end.i34:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hsotg, align 8
  %frame_list_dma.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 66
  %34 = ptrtoint ptr %frame_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_list_dma.i, align 4
  %frame_list_sz.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 67
  %36 = ptrtoint ptr %frame_list_sz.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frame_list_sz.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 2, i32 noundef 0) #7
  %38 = ptrtoint ptr %frame_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %frame_list, align 8
  tail call void @kfree(ptr noundef %39) #7
  %40 = ptrtoint ptr %frame_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %frame_list, align 8
  br label %dwc2_frame_list_free.exit

dwc2_frame_list_free.exit:                        ; preds = %if.end.i34, %if.then19.dwc2_frame_list_free.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #7
  br label %if.end20

if.end20:                                         ; preds = %dwc2_frame_list_free.exit, %land.lhs.true17.if.end20_crit_edge, %lor.lhs.false15.if.end20_crit_edge, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_release_channel_ddma(ptr noundef %hsotg, ptr nocapture noundef %qh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 24
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %ep_type = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %2 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ep_type, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %3, label %if.else7 [
    i8 2, label %entry.if.then_crit_edge
    i8 0, label %entry.if.then_crit_edge51
  ]

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge51
  %uframe_sched = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %5 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %uframe_sched, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %available_host_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 57
  %7 = ptrtoint ptr %available_host_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %available_host_channels, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %available_host_channels, align 4
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %non_periodic_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 56
  %9 = ptrtoint ptr %non_periodic_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %non_periodic_channels, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %non_periodic_channels, align 8
  br label %if.end10

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dwc2_update_frame_list(ptr noundef %hsotg, ptr noundef %qh, i32 noundef 0)
  %available_host_channels8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 57
  %11 = ptrtoint ptr %available_host_channels8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %available_host_channels8, align 4
  %inc9 = add i32 %12, 1
  store i32 %inc9, ptr %available_host_channels8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.else, %if.then6
  %qh11 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %qh11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qh11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end10.if.end20_crit_edge, label %if.then13

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %if.end10
  %hc_list_entry = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hc_list_entry, align 4
  %cmp.i.not = icmp eq ptr %16, %hc_list_entry
  br i1 %cmp.i.not, label %if.then13.if.end17_crit_edge, label %if.then15

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.then13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hc_list_entry) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.list_del.exit_crit_edge

if.then15.list_del.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 25, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hc_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then15.list_del.exit_crit_edge
  %23 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %hc_list_entry, align 4
  %prev.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 25, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %list_del.exit, %if.then13.if.end17_crit_edge
  tail call void @dwc2_hc_cleanup(ptr noundef %hsotg, ptr noundef %1) #7
  %free_hc_list = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 54
  %prev.i47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 54, i32 1
  %25 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i47, align 4
  %call.i.i48 = tail call zeroext i1 @__list_add_valid(ptr noundef %hc_list_entry, ptr noundef %26, ptr noundef %free_hc_list) #7
  br i1 %call.i.i48, label %if.end.i.i49, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i49:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hc_list_entry, ptr %prev.i47, align 4
  %28 = ptrtoint ptr %hc_list_entry to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %free_hc_list, ptr %hc_list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 25, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %hc_list_entry, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i49, %if.end17.list_add_tail.exit_crit_edge
  %31 = ptrtoint ptr %qh11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %qh11, align 4
  br label %if.end20

if.end20:                                         ; preds = %list_add_tail.exit, %if.end10.if.end20_crit_edge
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %channel, align 8
  %ntd = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 20
  %33 = ptrtoint ptr %ntd to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %ntd, align 4
  %desc_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 26
  %34 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc_list, align 4
  %tobool22.not = icmp eq ptr %35, null
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  %36 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ep_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp.i50 = icmp eq i8 %37, 1
  br i1 %cmp.i50, label %land.rhs.i, label %if.then23.dwc2_max_desc_num.exit_crit_edge

if.then23.dwc2_max_desc_num.exit_crit_edge:       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_max_desc_num.exit

land.rhs.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %38 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp3.i = icmp eq i8 %39, 3
  %phi.cast = select i1 %cmp3.i, i32 2048, i32 512
  br label %dwc2_max_desc_num.exit

dwc2_max_desc_num.exit:                           ; preds = %land.rhs.i, %if.then23.dwc2_max_desc_num.exit_crit_edge
  %40 = phi i32 [ 512, %if.then23.dwc2_max_desc_num.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  %41 = call ptr @memset(ptr %35, i32 0, i32 %40)
  br label %if.end27

if.end27:                                         ; preds = %dwc2_max_desc_num.exit, %if.end20.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_per_sched_disable(ptr noundef %hsotg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %3 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_byte_swap.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %retval.0.i29 = select i1 %tobool.not.i, i32 %5, i32 %2
  %and = and i32 %retval.0.i29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %retval.0.i29, -67108865
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_per_sched_disable.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_per_sched_disable, %do.end18)) #7
          to label %if.then15 [label %do.end18], !srcloc !126

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_per_sched_disable.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.11) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %if.end
  %8 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %needs_byte_swap.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i31 = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i31, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %and7) #7, !srcloc !125
  br label %cleanup

do.body1.i:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and7) #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #7, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i, %do.body.i, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_start_xfer_ddma(ptr noundef %hsotg, ptr noundef %qh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 24
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %bf.lshr = lshr i24 %bf.load, 6
  %bf.clear = and i24 %bf.lshr, 3
  %bf.cast = zext i24 %bf.clear to i32
  %3 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %bf.cast, label %entry.unreachabledefault [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge32
    i32 3, label %sw.bb1
    i32 1, label %sw.bb2
  ]

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32
  tail call fastcc void @dwc2_init_non_isoc_dma_desc(ptr noundef %hsotg, ptr noundef %qh)
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dwc2_init_non_isoc_dma_desc(ptr noundef %hsotg, ptr noundef %qh)
  tail call fastcc void @dwc2_update_frame_list(ptr noundef %hsotg, ptr noundef %qh, i32 noundef 1)
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %ntd = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 20
  %4 = ptrtoint ptr %ntd to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ntd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %sw.bb2.if.end_crit_edge

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb2
  %tobool.not.i = icmp eq ptr %1, null
  %call.i31.i = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %hsotg) #7
  %conv.i32.i = trunc i32 %call.i31.i to i16
  %frame_number.i33.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 11
  %6 = ptrtoint ptr %frame_number.i33.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i32.i, ptr %frame_number.i33.i, align 4
  %dev_speed.i34.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %7 = ptrtoint ptr %dev_speed.i34.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dev_speed.i34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.i35.i = icmp eq i8 %8, 3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  br i1 %cmp.i35.i, label %if.then.i.i, label %if.else14.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = and i16 %conv.i32.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp6.i.i = icmp ugt i16 %9, 4
  %..i.i = select i1 %cmp6.i.i, i16 16, i16 8
  %add.i28.i.i = add i16 %..i.i, %conv.i32.i
  %frame.0.i.i = lshr i16 %add.i28.i.i, 3
  %10 = and i16 %frame.0.i.i, 2047
  br label %dwc2_calc_starting_frame.exit.i

if.else14.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i30.i.i = add i16 %conv.i32.i, 2
  %and.i31.i.i = and i16 %add.i30.i.i, 16383
  br label %dwc2_calc_starting_frame.exit.i

dwc2_calc_starting_frame.exit.i:                  ; preds = %if.else14.i.i, %if.then.i.i
  %skip_frames.0.i = phi i16 [ %..i.i, %if.then.i.i ], [ 1, %if.else14.i.i ]
  %frame.1.i.i = phi i16 [ %10, %if.then.i.i ], [ %and.i31.i.i, %if.else14.i.i ]
  %11 = and i16 %frame.1.i.i, 63
  %next_active_frame.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 15
  %12 = ptrtoint ptr %next_active_frame.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %next_active_frame.i, align 8
  %14 = and i16 %13, 63
  %15 = sub nuw nsw i16 64, %11
  %narrow.i = add nuw nsw i16 %15, %14
  %host_interval.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %16 = ptrtoint ptr %host_interval.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %host_interval.i.i, align 4
  %conv2.i.i = zext i16 %17 to i32
  %sub.i.i = add nuw nsw i32 %conv2.i.i, 7
  %div8.i.i = lshr i32 %sub.i.i, 3
  %cond.i.i = select i1 %cmp.i35.i, i32 %div8.i.i, i32 %conv2.i.i
  %rem.rhs.trunc.i = trunc i32 %cond.i.i to i16
  %rem49.i = urem i16 %narrow.i, %rem.rhs.trunc.i
  %18 = add nuw nsw i16 %rem49.i, %frame.1.i.i
  %extract.t30 = trunc i16 %18 to i8
  br label %dwc2_recalc_initial_desc_idx.exit

if.else.i:                                        ; preds = %if.then
  br i1 %cmp.i35.i, label %if.then.i40.i, label %if.else14.i43.i

if.then.i40.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = and i16 %conv.i32.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %19)
  %cmp6.i36.i = icmp ugt i16 %19, 4
  %..i37.i = select i1 %cmp6.i36.i, i16 16, i16 8
  %add.i28.i38.i = add i16 %..i37.i, %conv.i32.i
  %frame.0.i39.i = lshr i16 %add.i28.i38.i, 3
  %20 = and i16 %frame.0.i39.i, 2047
  br label %dwc2_calc_starting_frame.exit45.i

if.else14.i43.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i30.i41.i = add i16 %conv.i32.i, 2
  %and.i31.i42.i = and i16 %add.i30.i41.i, 16383
  br label %dwc2_calc_starting_frame.exit45.i

dwc2_calc_starting_frame.exit45.i:                ; preds = %if.else14.i43.i, %if.then.i40.i
  %skip_frames.1.i = phi i16 [ %..i37.i, %if.then.i40.i ], [ 1, %if.else14.i43.i ]
  %frame.1.i44.i = phi i16 [ %20, %if.then.i40.i ], [ %and.i31.i42.i, %if.else14.i43.i ]
  %next_active_frame13.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 15
  %21 = ptrtoint ptr %next_active_frame13.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %frame.1.i44.i, ptr %next_active_frame13.i, align 8
  %extract.t31 = trunc i16 %frame.1.i44.i to i8
  br label %dwc2_recalc_initial_desc_idx.exit

dwc2_recalc_initial_desc_idx.exit:                ; preds = %dwc2_calc_starting_frame.exit45.i, %dwc2_calc_starting_frame.exit.i
  %.sink.off0 = phi i8 [ %extract.t30, %dwc2_calc_starting_frame.exit.i ], [ %extract.t31, %dwc2_calc_starting_frame.exit45.i ]
  %skip_frames.2.i = phi i16 [ %skip_frames.0.i, %dwc2_calc_starting_frame.exit.i ], [ %skip_frames.1.i, %dwc2_calc_starting_frame.exit45.i ]
  %frame_idx.tr.i.i = and i8 %.sink.off0, 63
  %conv3.i.i = shl i8 %.sink.off0, 3
  %retval.0.i.i = select i1 %cmp.i35.i, i8 %conv3.i.i, i8 %frame_idx.tr.i.i
  %td_last.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 10
  %22 = ptrtoint ptr %td_last.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %retval.0.i.i, ptr %td_last.i, align 1
  %td_first.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 9
  %23 = ptrtoint ptr %td_first.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %retval.0.i.i, ptr %td_first.i, align 2
  br label %if.end

if.end:                                           ; preds = %dwc2_recalc_initial_desc_idx.exit, %sw.bb2.if.end_crit_edge
  %skip_frames.0 = phi i16 [ 0, %sw.bb2.if.end_crit_edge ], [ %skip_frames.2.i, %dwc2_recalc_initial_desc_idx.exit ]
  tail call fastcc void @dwc2_init_isoc_dma_desc(ptr noundef %hsotg, ptr noundef %qh, i16 noundef zeroext %skip_frames.0)
  %xfer_started = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %xfer_started to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %xfer_started, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not = icmp eq i8 %25, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then4:                                         ; preds = %if.end
  tail call fastcc void @dwc2_update_frame_list(ptr noundef %hsotg, ptr noundef %qh, i32 noundef 1)
  %ep_type.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %26 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.i = icmp eq i8 %27, 1
  br i1 %cmp.i, label %land.rhs.i, label %if.then4.dwc2_max_desc_num.exit_crit_edge

if.then4.dwc2_max_desc_num.exit_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_max_desc_num.exit

land.rhs.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %28 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp3.i = icmp eq i8 %29, 3
  %phi.cast.i = select i1 %cmp3.i, i16 256, i16 64
  br label %dwc2_max_desc_num.exit

dwc2_max_desc_num.exit:                           ; preds = %land.rhs.i, %if.then4.dwc2_max_desc_num.exit_crit_edge
  %30 = phi i16 [ 64, %if.then4.dwc2_max_desc_num.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %ntd6 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %ntd6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %ntd6, align 2
  br label %sw.epilog.sink.split

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog.sink.split:                             ; preds = %dwc2_max_desc_num.exit, %sw.bb1, %sw.bb
  tail call void @dwc2_hc_start_transfer_ddma(ptr noundef %hsotg, ptr noundef %1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_init_non_isoc_dma_desc(ptr nocapture noundef readonly %hsotg, ptr noundef %qh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 24
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  %xfer_dma = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %xfer_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xfer_dma, align 4
  %xfer_len = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xfer_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %qh, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 23
  %xfer_dma30 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 4
  %xfer_len34 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 6
  %desc_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 26
  %desc_list_dma = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 27
  %max_packet.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 2
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %n_bytes.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 29
  %ep_type.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end144.for.cond_crit_edge, %do.end
  %n_desc.0 = phi i32 [ 0, %do.end ], [ %inc116, %if.end144.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %qtd_list, %do.end ], [ %.pn, %if.end144.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %qtd.0 = getelementptr i8, ptr %.pn, i32 -36
  %cmp.not = icmp eq ptr %.pn, %qtd_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %do.body8

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body8:                                         ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %do.end26)) #7
          to label %if.then22 [label %do.end26], !srcloc !126

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug299, ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef %qtd.0) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_desc.0)
  %tobool27.not = icmp eq i32 %n_desc.0, 0
  br i1 %tobool27.not, label %do.end26.if.end56_crit_edge, label %if.then28

do.end26.if.end56_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %urb = getelementptr i8, ptr %.pn, i32 -8
  %11 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb, align 4
  %dma = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  %actual_length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual_length, align 4
  %add = add i32 %16, %14
  %17 = ptrtoint ptr %xfer_dma30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %xfer_dma30, align 4
  %18 = load ptr, ptr %urb, align 4
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %actual_length33 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %18, i32 0, i32 7
  %21 = ptrtoint ptr %actual_length33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length33, align 4
  %sub = sub i32 %20, %22
  %23 = ptrtoint ptr %xfer_len34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %xfer_len34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %if.end56)) #7
          to label %if.then49 [label %if.end56], !srcloc !126

if.then49:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hsotg, align 8
  %26 = ptrtoint ptr %xfer_dma30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xfer_dma30, align 4
  %28 = ptrtoint ptr %xfer_len34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xfer_len34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug300, ptr noundef %25, ptr noundef nonnull @.str.15, i32 noundef %27, i32 noundef %29) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.then28, %do.end26.if.end56_crit_edge
  %n_desc57 = getelementptr i8, ptr %.pn, i32 -15
  %30 = ptrtoint ptr %n_desc57 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %n_desc57, align 1
  br label %do.body58

do.body58:                                        ; preds = %do.end114.do.body58_crit_edge, %if.end56
  %n_desc.1 = phi i32 [ %n_desc.0, %if.end56 ], [ %inc116, %do.end114.do.body58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_desc.1)
  %cmp59 = icmp sgt i32 %n_desc.1, 1
  br i1 %cmp59, label %if.then60, label %do.body58.if.end88_crit_edge

do.body58.if.end88_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then60:                                        ; preds = %do.body58
  %31 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc_list, align 4
  %sub61 = add nsw i32 %n_desc.1, -1
  %arrayidx = getelementptr %struct.dwc2_dma_desc, ptr %32, i32 %sub61
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx, align 1
  %or = or i32 %34, -2147483648
  store i32 %or, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %do.end84)) #7
          to label %if.then76 [label %do.end84], !srcloc !126

if.then76:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hsotg, align 8
  %37 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc_list, align 4
  %arrayidx81 = getelementptr %struct.dwc2_dma_desc, ptr %38, i32 %sub61
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug301, ptr noundef %36, ptr noundef nonnull @.str.16, i32 noundef %sub61, ptr noundef %arrayidx81) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then76, %if.then60
  %39 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hsotg, align 8
  %41 = ptrtoint ptr %desc_list_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %desc_list_dma, align 8
  %mul = shl i32 %sub61, 3
  %add87 = add i32 %42, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %40, i32 noundef %add87, i32 noundef 8, i32 noundef 1) #7
  br label %if.end88

if.end88:                                         ; preds = %do.end84, %do.body58.if.end88_crit_edge
  %43 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc_list, align 4
  %arrayidx.i = getelementptr %struct.dwc2_dma_desc, ptr %44, i32 %n_desc.1
  %45 = ptrtoint ptr %xfer_len34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xfer_len34, align 4
  %47 = ptrtoint ptr %max_packet.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %max_packet.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 5
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %sub1.i = sub nuw nsw i32 131072, %bf.cast.i
  %48 = tail call i32 @llvm.smin.i32(i32 %46, i32 %sub1.i) #7
  %49 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 3)
  %bf.load8.i = load i24, ptr %ep_is_in.i, align 1
  %50 = and i24 %bf.load8.i, 4096
  %tobool.not.i = icmp eq i24 %50, 0
  br i1 %tobool.not.i, label %if.end88.if.end33.i_crit_edge, label %if.then11.i

if.end88.if.end33.i_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then11.i:                                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp12.i = icmp slt i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %bf.load.i)
  %tobool17.not.i = icmp ult i16 %bf.load.i, 32
  %or.cond.i = select i1 %cmp12.i, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %if.then11.i.if.end28.i_crit_edge, label %if.then18.i

if.then11.i.if.end28.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nsw i32 %bf.cast.i, -1
  %sub23.i = add nsw i32 %add.i, %48
  %div82.i = udiv i32 %sub23.i, %bf.cast.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then18.i, %if.then11.i.if.end28.i_crit_edge
  %num_packets.0.i = phi i32 [ %div82.i, %if.then18.i ], [ 1, %if.then11.i.if.end28.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %num_packets.0.i, %bf.cast.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end28.i, %if.end88.if.end33.i_crit_edge
  %len.1.i = phi i32 [ %mul.i, %if.end28.i ], [ %48, %if.end88.if.end33.i_crit_edge ]
  %and.i = and i32 %len.1.i, 131071
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %and.i, ptr %arrayidx.i, align 1
  %52 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %n_bytes.i, align 8
  %arrayidx34.i = getelementptr i32, ptr %53, i32 %n_desc.1
  %54 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %len.1.i, ptr %arrayidx34.i, align 4
  %55 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp35.i = icmp eq i8 %56, 0
  br i1 %cmp35.i, label %land.lhs.true37.i, label %if.end33.i.if.end42.i_crit_edge

if.end33.i.if.end42.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

land.lhs.true37.i:                                ; preds = %if.end33.i
  %57 = ptrtoint ptr %qtd.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qtd.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp38.i = icmp eq i32 %58, 0
  br i1 %cmp38.i, label %if.then40.i, label %land.lhs.true37.i.if.end42.i_crit_edge

land.lhs.true37.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then40.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %arrayidx.i, align 1
  %or.i = or i32 %60, 16777216
  store i32 %or.i, ptr %arrayidx.i, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %land.lhs.true37.i.if.end42.i_crit_edge, %if.end33.i.if.end42.i_crit_edge
  %61 = ptrtoint ptr %xfer_dma30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xfer_dma30, align 4
  %buf.i = getelementptr %struct.dwc2_dma_desc, ptr %44, i32 %n_desc.1, i32 1
  %63 = ptrtoint ptr %buf.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %buf.i, align 1
  %64 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hsotg, align 8
  %66 = ptrtoint ptr %desc_list_dma to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %desc_list_dma, align 8
  %mul43.i = shl i32 %n_desc.1, 3
  %add44.i = add i32 %67, %mul43.i
  tail call void @dma_sync_single_for_device(ptr noundef %65, i32 noundef %add44.i, i32 noundef 8, i32 noundef 1) #7
  %68 = ptrtoint ptr %xfer_len34 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xfer_len34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %len.1.i)
  %cmp46.i = icmp ult i32 %69, %len.1.i
  br i1 %cmp46.i, label %if.end42.i.dwc2_fill_host_dma_desc.exit_crit_edge, label %if.else50.i

if.end42.i.dwc2_fill_host_dma_desc.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_fill_host_dma_desc.exit

if.else50.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %xfer_dma30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xfer_dma30, align 4
  %add52.i = add i32 %71, %len.1.i
  store i32 %add52.i, ptr %xfer_dma30, align 4
  %sub54.i = sub i32 %69, %len.1.i
  br label %dwc2_fill_host_dma_desc.exit

dwc2_fill_host_dma_desc.exit:                     ; preds = %if.else50.i, %if.end42.i.dwc2_fill_host_dma_desc.exit_crit_edge
  %storemerge.i = phi i32 [ %sub54.i, %if.else50.i ], [ 0, %if.end42.i.dwc2_fill_host_dma_desc.exit_crit_edge ]
  %72 = ptrtoint ptr %xfer_len34 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %storemerge.i, ptr %xfer_len34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %do.end114)) #7
          to label %if.then103 [label %do.end114], !srcloc !126

if.then103:                                       ; preds = %dwc2_fill_host_dma_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hsotg, align 8
  %75 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %desc_list, align 4
  %arrayidx106 = getelementptr %struct.dwc2_dma_desc, ptr %76, i32 %n_desc.1
  %buf = getelementptr %struct.dwc2_dma_desc, ptr %76, i32 %n_desc.1, i32 1
  %77 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %buf, align 1
  %79 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %arrayidx106, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug302, ptr noundef %74, ptr noundef nonnull @.str.17, i32 noundef %n_desc.1, ptr noundef %arrayidx106, i32 noundef %78, i32 noundef %80) #7
  br label %do.end114

do.end114:                                        ; preds = %if.then103, %dwc2_fill_host_dma_desc.exit
  %81 = ptrtoint ptr %n_desc57 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %n_desc57, align 1
  %inc = add i8 %82, 1
  store i8 %inc, ptr %n_desc57, align 1
  %inc116 = add i32 %n_desc.1, 1
  %83 = ptrtoint ptr %xfer_len34 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xfer_len34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp119.not = icmp eq i32 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc116)
  %cmp120.not = icmp eq i32 %inc116, 64
  %or.cond = select i1 %cmp119.not, i1 true, i1 %cmp120.not
  br i1 %or.cond, label %do.body122, label %do.end114.do.body58_crit_edge

do.end114.do.body58_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

do.body122:                                       ; preds = %do.end114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %do.end140)) #7
          to label %if.then136 [label %do.end140], !srcloc !126

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug303, ptr noundef %86, ptr noundef nonnull @.str.18, i32 noundef %inc116) #7
  br label %do.end140

do.end140:                                        ; preds = %if.then136, %do.body122
  %in_process = getelementptr i8, ptr %.pn, i32 -32
  %87 = ptrtoint ptr %in_process to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %in_process, align 4
  %88 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp141 = icmp eq i8 %89, 0
  br i1 %cmp141, label %do.end140.for.end_crit_edge, label %if.end144

do.end140.for.end_crit_edge:                      ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end144:                                        ; preds = %do.end140
  br i1 %cmp120.not, label %if.end144.if.then155_crit_edge, label %if.end144.for.cond_crit_edge

if.end144.for.cond_crit_edge:                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.end144.if.then155_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then155

for.end:                                          ; preds = %do.end140.for.end_crit_edge, %for.cond.for.end_crit_edge
  %n_desc.2 = phi i32 [ %inc116, %do.end140.for.end_crit_edge ], [ %n_desc.0, %for.cond.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_desc.2)
  %tobool154.not = icmp eq i32 %n_desc.2, 0
  br i1 %tobool154.not, label %for.end.if.end221_crit_edge, label %for.end.if.then155_crit_edge

for.end.if.then155_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then155

for.end.if.end221_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then155:                                       ; preds = %for.end.if.then155_crit_edge, %if.end144.if.then155_crit_edge
  %n_desc.2318 = phi i32 [ %n_desc.2, %for.end.if.then155_crit_edge ], [ 64, %if.end144.if.then155_crit_edge ]
  %90 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc_list, align 4
  %sub157 = add i32 %n_desc.2318, -1
  %arrayidx158 = getelementptr %struct.dwc2_dma_desc, ptr %91, i32 %sub157
  %92 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %arrayidx158, align 1
  %or160 = or i32 %93, -2046820352
  store i32 %or160, ptr %arrayidx158, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %do.end183)) #7
          to label %if.then175 [label %do.end183], !srcloc !126

if.then175:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hsotg, align 8
  %96 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc_list, align 4
  %arrayidx180 = getelementptr %struct.dwc2_dma_desc, ptr %97, i32 %sub157
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug304, ptr noundef %95, ptr noundef nonnull @.str.19, i32 noundef %sub157, ptr noundef %arrayidx180) #7
  br label %do.end183

do.end183:                                        ; preds = %if.then175, %if.then155
  %98 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hsotg, align 8
  %100 = ptrtoint ptr %desc_list_dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %desc_list_dma, align 8
  %mul187 = shl i32 %sub157, 3
  %add188 = add i32 %101, %mul187
  tail call void @dma_sync_single_for_device(ptr noundef %99, i32 noundef %add188, i32 noundef 8, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_desc.2318)
  %cmp189 = icmp sgt i32 %n_desc.2318, 1
  br i1 %cmp189, label %if.then191, label %do.end183.if.end219_crit_edge

do.end183.if.end219_crit_edge:                    ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end219

if.then191:                                       ; preds = %do.end183
  %102 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %desc_list, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %103, align 1
  %or195 = or i32 %105, -2147483648
  store i32 %or195, ptr %103, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_non_isoc_dma_desc, %do.end216)) #7
          to label %if.then210 [label %do.end216], !srcloc !126

if.then210:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hsotg, align 8
  %108 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc_list, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug305, ptr noundef %107, ptr noundef nonnull @.str.20, ptr noundef %109) #7
  br label %do.end216

do.end216:                                        ; preds = %if.then210, %if.then191
  %110 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hsotg, align 8
  %112 = ptrtoint ptr %desc_list_dma to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %desc_list_dma, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %111, i32 noundef %113, i32 noundef 8, i32 noundef 1) #7
  br label %if.end219

if.end219:                                        ; preds = %do.end216, %do.end183.if.end219_crit_edge
  %conv220 = trunc i32 %n_desc.2318 to i16
  %ntd = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 21
  %114 = ptrtoint ptr %ntd to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv220, ptr %ntd, align 2
  br label %if.end221

if.end221:                                        ; preds = %if.end219, %for.end.if.end221_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_start_transfer_ddma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_update_frame_list(ptr noundef readonly %hsotg, ptr nocapture noundef readonly %qh, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hsotg, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 24
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef null) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %frame_list = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 65
  %4 = ptrtoint ptr %frame_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame_list, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef null) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %8 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  %host_interval.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %10 = ptrtoint ptr %host_interval.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %host_interval.i, align 4
  %conv2.i = zext i16 %11 to i32
  %sub.i = add nuw nsw i32 %conv2.i, 7
  %div8.i = lshr i32 %sub.i, 3
  %cond.i = select i1 %cmp.i, i32 %div8.i, i32 %conv2.i
  %conv5.i = trunc i32 %cond.i to i16
  %ep_type = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %12 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  br i1 %cmp, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %next_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 15
  %14 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %next_active_frame, align 8
  %16 = and i16 %15, 63
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %i.0 = phi i16 [ %16, %if.then19 ], [ 0, %if.end15.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool23.not = icmp eq i32 %enable, 0
  br label %do.body22

do.body22:                                        ; preds = %if.end34.do.body22_crit_edge, %if.end21
  %j.0 = phi i16 [ %i.0, %if.end21 ], [ %and37, %if.end34.do.body22_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 4
  %conv29 = zext i8 %18 to i32
  %shl30 = shl nuw i32 1, %conv29
  br i1 %tobool23.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %frame_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frame_list, align 8
  %idxprom = zext i16 %j.0 to i32
  %arrayidx = getelementptr i32, ptr %20, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %or = or i32 %22, %shl30
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end34

if.else27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl30, -1
  %23 = ptrtoint ptr %frame_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frame_list, align 8
  %idxprom32 = zext i16 %j.0 to i32
  %arrayidx33 = getelementptr i32, ptr %24, i32 %idxprom32
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx33, align 4
  %and = and i32 %26, %neg
  store i32 %and, ptr %arrayidx33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else27, %if.then24
  %add = add i16 %j.0, %conv5.i
  %and37 = and i16 %add, 63
  %cmp42.not = icmp eq i16 %and37, %i.0
  br i1 %cmp42.not, label %do.end44, label %if.end34.do.body22_crit_edge

if.end34.do.body22_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.end44:                                         ; preds = %if.end34
  %27 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hsotg, align 8
  %frame_list_dma = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 66
  %29 = ptrtoint ptr %frame_list_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frame_list_dma, align 4
  %frame_list_sz = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 67
  %31 = ptrtoint ptr %frame_list_sz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frame_list_sz, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef 1) #7
  br i1 %tobool23.not, label %do.end44.cleanup_crit_edge, label %if.end48

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %do.end44
  %schinfo = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 20
  %33 = ptrtoint ptr %schinfo to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %schinfo, align 1
  %speed = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %speed to i32
  call void @__asan_loadN_noabort(i32 %34, i32 3)
  %bf.load = load i24, ptr %speed, align 1
  %35 = and i24 %bf.load, 3840
  %cmp49 = icmp eq i24 %35, 768
  br i1 %cmp49, label %land.lhs.true, label %if.end48.if.else75_crit_edge

if.end48.if.else75_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else75

land.lhs.true:                                    ; preds = %if.end48
  %36 = ptrtoint ptr %host_interval.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %host_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool52.not = icmp eq i16 %37, 0
  br i1 %tobool52.not, label %land.lhs.true.if.else75_crit_edge, label %if.then53

land.lhs.true.if.else75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else75

if.then53:                                        ; preds = %land.lhs.true
  %conv51 = zext i16 %37 to i32
  %sub = add nuw nsw i32 %conv51, 7
  %div = udiv i32 %sub, %conv51
  %conv61 = and i32 %div, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv61)
  %cmp62116.not = icmp eq i32 %conv61, 0
  br i1 %cmp62116.not, label %if.then53.cleanup_crit_edge, label %if.then53.for.body_crit_edge

if.then53.for.body_crit_edge:                     ; preds = %if.then53
  br label %for.body

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then53.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.then53.for.body_crit_edge ]
  %j.1118 = phi i32 [ %shl72, %for.body.for.body_crit_edge ], [ 1, %if.then53.for.body_crit_edge ]
  %conv64 = and i32 %j.1118, 65535
  %38 = ptrtoint ptr %schinfo to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %schinfo, align 1
  %40 = trunc i32 %j.1118 to i8
  %conv68 = or i8 %39, %40
  store i8 %conv68, ptr %schinfo, align 1
  %41 = ptrtoint ptr %host_interval.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %host_interval.i, align 4
  %conv71 = zext i16 %42 to i32
  %shl72 = shl i32 %conv64, %conv71
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv61
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else75:                                        ; preds = %land.lhs.true.if.else75_crit_edge, %if.end48.if.else75_crit_edge
  %43 = ptrtoint ptr %schinfo to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %schinfo, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else75, %for.body.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %do.end44.cleanup_crit_edge, %do.end12, %do.end5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_init_isoc_dma_desc(ptr noundef %hsotg, ptr noundef %qh, i16 noundef zeroext %skip_frames) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %td_last = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 10
  %0 = ptrtoint ptr %td_last to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %td_last, align 1
  %host_interval = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %2 = ptrtoint ptr %host_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %host_interval, align 4
  %call = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %hsotg) #7
  %conv1 = trunc i32 %call to i16
  %frame_number = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 11
  %4 = ptrtoint ptr %frame_number to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv1, ptr %frame_number, align 4
  %5 = and i16 %conv1, 63
  %6 = ptrtoint ptr %td_last to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %td_last, align 1
  %conv5 = zext i8 %7 to i16
  %dev_speed = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %8 = ptrtoint ptr %dev_speed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_speed, align 2
  %add.i = add i16 %3, %conv5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  %sub.i = select i1 %cmp.i, i16 255, i16 63
  %and.i = and i16 %sub.i, %add.i
  %sub.i161 = sub i16 %conv1, %add.i
  %and.i162 = and i16 %sub.i161, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i162)
  %tobool6.not.i = icmp eq i16 %and.i162, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %and.i)
  %cmp = icmp eq i16 %5, %and.i
  %or.cond = or i1 %tobool6.not.i, %cmp
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %cmp13 = icmp ult i16 %3, 32
  %or.cond160 = select i1 %or.cond, i1 %cmp13, i1 false
  br i1 %or.cond160, label %do.body, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_init_isoc_dma_desc.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_init_isoc_dma_desc, %do.end)) #7
          to label %if.then20 [label %do.end], !srcloc !126

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_init_isoc_dma_desc.__UNIQUE_ID_ddebug297, ptr noundef %11, ptr noundef nonnull @.str.30) #7
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %12 = ptrtoint ptr %dev_speed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dev_speed, align 2
  %add.i163 = add nuw nsw i16 %5, %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i164 = icmp eq i8 %13, 3
  %sub.i165 = select i1 %cmp.i164, i16 255, i16 63
  %and.i166 = and i16 %sub.i165, %add.i163
  %conv23 = trunc i16 %and.i166 to i8
  %14 = ptrtoint ptr %td_last to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv23, ptr %td_last, align 1
  br label %if.end28

if.end28:                                         ; preds = %do.end, %entry.if.end28_crit_edge
  %idx.0.in = phi i8 [ %conv23, %do.end ], [ %1, %entry.if.end28_crit_edge ]
  %idx.0 = zext i8 %idx.0.in to i16
  %15 = ptrtoint ptr %host_interval to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %host_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool30.not = icmp eq i16 %16, 0
  br i1 %tobool30.not, label %if.end28.if.end51_crit_edge, label %if.then31

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then31:                                        ; preds = %if.end28
  %ep_type.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %17 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i167 = icmp eq i8 %18, 1
  br i1 %cmp.i167, label %land.rhs.i, label %if.then31.dwc2_max_desc_num.exit_crit_edge

if.then31.dwc2_max_desc_num.exit_crit_edge:       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_max_desc_num.exit

land.rhs.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev_speed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dev_speed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp3.i = icmp eq i8 %20, 3
  %phi.cast = select i1 %cmp3.i, i32 256, i32 64
  br label %dwc2_max_desc_num.exit

dwc2_max_desc_num.exit:                           ; preds = %land.rhs.i, %if.then31.dwc2_max_desc_num.exit_crit_edge
  %21 = phi i32 [ 64, %if.then31.dwc2_max_desc_num.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  %conv35 = zext i16 %16 to i32
  %add = add nsw i32 %conv35, -1
  %sub = add nuw nsw i32 %add, %21
  %div178 = udiv i32 %sub, %conv35
  %conv38 = trunc i32 %div178 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %skip_frames)
  %tobool40.not = icmp eq i16 %skip_frames, 0
  br i1 %tobool40.not, label %dwc2_max_desc_num.exit.if.end51_crit_edge, label %land.lhs.true

dwc2_max_desc_num.exit.if.end51_crit_edge:        ; preds = %dwc2_max_desc_num.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

land.lhs.true:                                    ; preds = %dwc2_max_desc_num.exit
  %channel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 24
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel, align 8
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %24 = udiv i16 %skip_frames, %16
  %conv49 = sub i16 %conv38, %24
  br label %if.end51

if.end51:                                         ; preds = %if.then42, %land.lhs.true.if.end51_crit_edge, %dwc2_max_desc_num.exit.if.end51_crit_edge, %if.end28.if.end51_crit_edge
  %ntd_max.0 = phi i16 [ %conv38, %land.lhs.true.if.end51_crit_edge ], [ %conv49, %if.then42 ], [ %conv38, %dwc2_max_desc_num.exit.if.end51_crit_edge ], [ 0, %if.end28.if.end51_crit_edge ]
  %25 = ptrtoint ptr %dev_speed to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dev_speed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp54 = icmp eq i8 %26, 3
  %cond = select i1 %cmp54, i32 3072, i32 1023
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 23
  %27 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn185 = load ptr, ptr %qtd_list, align 4
  %cmp58.not186 = icmp eq ptr %.pn185, %qtd_list
  br i1 %cmp58.not186, label %if.end51.for.end_crit_edge, label %for.body.lr.ph

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end51
  %ntd = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 20
  %desc_list.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 26
  %n_bytes.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 29
  %desc_list_dma.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn189 = phi ptr [ %.pn185, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %idx.1188 = phi i16 [ %idx.0, %for.body.lr.ph ], [ %idx.3, %for.inc.for.body_crit_edge ]
  %in_process = getelementptr i8, ptr %.pn189, i32 -32
  %28 = ptrtoint ptr %in_process to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %in_process, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool63.not = icmp eq i8 %29, 0
  br i1 %tobool63.not, label %for.body.if.end69_crit_edge, label %land.lhs.true64

for.body.if.end69_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true64:                                  ; preds = %for.body
  %isoc_frame_index_last = getelementptr i8, ptr %.pn189, i32 -14
  %30 = ptrtoint ptr %isoc_frame_index_last to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %isoc_frame_index_last, align 2
  %conv65 = zext i16 %31 to i32
  %urb = getelementptr i8, ptr %.pn189, i32 -8
  %32 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb, align 4
  %packet_count = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %packet_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv65)
  %cmp66 = icmp eq i32 %35, %conv65
  br i1 %cmp66, label %land.lhs.true64.for.inc_crit_edge, label %land.lhs.true64.if.end69_crit_edge

land.lhs.true64.if.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true64.for.inc_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end69:                                         ; preds = %land.lhs.true64.if.end69_crit_edge, %for.body.if.end69_crit_edge
  %isoc_td_first = getelementptr i8, ptr %.pn189, i32 -22
  %36 = ptrtoint ptr %isoc_td_first to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %idx.1188, ptr %isoc_td_first, align 2
  %isoc_frame_index_last74 = getelementptr i8, ptr %.pn189, i32 -14
  %37 = ptrtoint ptr %ntd to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ntd, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %ntd_max.0)
  %cmp72179 = icmp ult i16 %38, %ntd_max.0
  br i1 %cmp72179, label %land.rhs.lr.ph, label %if.end69.while.end_crit_edge

if.end69.while.end_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end69
  %urb76 = getelementptr i8, ptr %.pn189, i32 -8
  br label %land.rhs

land.rhs:                                         ; preds = %dwc2_fill_host_isoc_dma_desc.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %idx.2181 = phi i16 [ %idx.1188, %land.rhs.lr.ph ], [ %and.i173, %dwc2_fill_host_isoc_dma_desc.exit.land.rhs_crit_edge ]
  %39 = ptrtoint ptr %isoc_frame_index_last74 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %isoc_frame_index_last74, align 2
  %conv75 = zext i16 %40 to i32
  %41 = ptrtoint ptr %urb76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %urb76, align 4
  %packet_count77 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %packet_count77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %packet_count77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv75)
  %cmp78 = icmp ugt i32 %44, %conv75
  br i1 %cmp78, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %45 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc_list.i, align 4
  %idxprom.i = zext i16 %idx.2181 to i32
  %arrayidx.i = getelementptr %struct.dwc2_dma_desc, ptr %46, i32 %idxprom.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 0, ptr %arrayidx.i, align 1
  %48 = ptrtoint ptr %urb76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %urb76, align 4
  %50 = ptrtoint ptr %isoc_frame_index_last74 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %isoc_frame_index_last74, align 2
  %idxprom1.i = zext i16 %51 to i32
  %arrayidx2.i = getelementptr %struct.dwc2_hcd_urb, ptr %49, i32 0, i32 14, i32 %idxprom1.i
  %length.i = getelementptr %struct.dwc2_hcd_urb, ptr %49, i32 0, i32 14, i32 %idxprom1.i, i32 1
  %52 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i, align 4
  %54 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %n_bytes.i, align 8
  %arrayidx4.i = getelementptr i32, ptr %55, i32 %idxprom.i
  %56 = tail call i32 @llvm.umin.i32(i32 %53, i32 %cond) #7
  %57 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx4.i, align 4
  %58 = ptrtoint ptr %urb76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %urb76, align 4
  %dma.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma.i, align 4
  %62 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx2.i, align 4
  %add.i168 = add i32 %63, %61
  %buf.i = getelementptr %struct.dwc2_dma_desc, ptr %46, i32 %idxprom.i, i32 1
  %64 = ptrtoint ptr %buf.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %add.i168, ptr %buf.i, align 1
  %65 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %n_bytes.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %66, i32 %idxprom.i
  %67 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx12.i, align 4
  %and.i169 = and i32 %68, 4095
  %or.i = or i32 %and.i169, -2147483648
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %or.i, ptr %arrayidx.i, align 1
  %70 = ptrtoint ptr %ntd to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ntd, align 4
  %inc.i = add i16 %71, 1
  store i16 %inc.i, ptr %ntd, align 4
  %72 = ptrtoint ptr %isoc_frame_index_last74 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %isoc_frame_index_last74, align 2
  %inc15.i = add i16 %73, 1
  store i16 %inc15.i, ptr %isoc_frame_index_last74, align 2
  %conv.i = zext i16 %inc15.i to i32
  %74 = load ptr, ptr %urb76, align 4
  %packet_count.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %packet_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv.i)
  %cmp18.i = icmp eq i32 %76, %conv.i
  br i1 %cmp18.i, label %if.then20.i, label %while.body.dwc2_fill_host_isoc_dma_desc.exit_crit_edge

while.body.dwc2_fill_host_isoc_dma_desc.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_fill_host_isoc_dma_desc.exit

if.then20.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx.i, align 1
  %or22.i = or i32 %78, 33554432
  store i32 %or22.i, ptr %arrayidx.i, align 1
  br label %dwc2_fill_host_isoc_dma_desc.exit

dwc2_fill_host_isoc_dma_desc.exit:                ; preds = %if.then20.i, %while.body.dwc2_fill_host_isoc_dma_desc.exit_crit_edge
  %79 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hsotg, align 8
  %81 = ptrtoint ptr %desc_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %desc_list_dma.i, align 8
  %mul.i = shl nuw nsw i32 %idxprom.i, 3
  %add25.i = add i32 %82, %mul.i
  tail call void @dma_sync_single_for_device(ptr noundef %80, i32 noundef %add25.i, i32 noundef 8, i32 noundef 1) #7
  %83 = ptrtoint ptr %dev_speed to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dev_speed, align 2
  %add.i170 = add i16 %idx.2181, %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp.i171 = icmp eq i8 %84, 3
  %sub.i172 = select i1 %cmp.i171, i16 255, i16 63
  %and.i173 = and i16 %sub.i172, %add.i170
  %85 = ptrtoint ptr %ntd to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ntd, align 4
  %cmp72 = icmp ult i16 %86, %ntd_max.0
  br i1 %cmp72, label %dwc2_fill_host_isoc_dma_desc.exit.land.rhs_crit_edge, label %dwc2_fill_host_isoc_dma_desc.exit.while.end_crit_edge

dwc2_fill_host_isoc_dma_desc.exit.while.end_crit_edge: ; preds = %dwc2_fill_host_isoc_dma_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

dwc2_fill_host_isoc_dma_desc.exit.land.rhs_crit_edge: ; preds = %dwc2_fill_host_isoc_dma_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %dwc2_fill_host_isoc_dma_desc.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end69.while.end_crit_edge
  %idx.2.lcssa = phi i16 [ %idx.1188, %if.end69.while.end_crit_edge ], [ %and.i173, %dwc2_fill_host_isoc_dma_desc.exit.while.end_crit_edge ], [ %idx.2181, %land.rhs.while.end_crit_edge ]
  %isoc_td_last = getelementptr i8, ptr %.pn189, i32 -24
  %87 = ptrtoint ptr %isoc_td_last to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %idx.2.lcssa, ptr %isoc_td_last, align 4
  %88 = ptrtoint ptr %in_process to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %in_process, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end, %land.lhs.true64.for.inc_crit_edge
  %idx.3 = phi i16 [ %idx.1188, %land.lhs.true64.for.inc_crit_edge ], [ %idx.2.lcssa, %while.end ]
  %89 = ptrtoint ptr %.pn189 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn = load ptr, ptr %.pn189, align 4
  %cmp58.not = icmp eq ptr %.pn, %qtd_list
  br i1 %cmp58.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end51.for.end_crit_edge
  %idx.1.lcssa = phi i16 [ %idx.0, %if.end51.for.end_crit_edge ], [ %idx.3, %for.inc.for.end_crit_edge ]
  %conv89 = trunc i16 %idx.1.lcssa to i8
  %90 = ptrtoint ptr %td_last to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv89, ptr %td_last, align 1
  %ntd91 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 20
  %91 = ptrtoint ptr %ntd91 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %ntd91, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %ntd_max.0)
  %cmp94 = icmp eq i16 %92, %ntd_max.0
  br i1 %cmp94, label %if.then96, label %for.end.if.end104_crit_edge

for.end.if.end104_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv98 = and i16 %idx.1.lcssa, 255
  %93 = ptrtoint ptr %dev_speed to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dev_speed, align 2
  %sub.i174 = sub i16 %conv98, %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %cmp.i175 = icmp eq i8 %94, 3
  %sub4.i = select i1 %cmp.i175, i16 255, i16 63
  %and.i176 = and i16 %sub4.i, %sub.i174
  %desc_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 26
  %95 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %desc_list, align 4
  %idxprom = zext i16 %and.i176 to i32
  %arrayidx = getelementptr %struct.dwc2_dma_desc, ptr %96, i32 %idxprom
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx, align 1
  %or = or i32 %98, 33554432
  store i32 %or, ptr %arrayidx, align 1
  %99 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hsotg, align 8
  %desc_list_dma = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 27
  %101 = ptrtoint ptr %desc_list_dma to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %desc_list_dma, align 8
  %mul = shl nuw nsw i32 %idxprom, 3
  %add103 = add i32 %102, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %100, i32 noundef %add103, i32 noundef 8, i32 noundef 1) #7
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %for.end.if.end104_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_complete_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, i32 noundef %halt_status) local_unnamed_addr #0 align 64 {
entry:
  %xfer_done.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qh1 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %0 = ptrtoint ptr %qh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qh1, align 4
  %ep_type = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %ep_type to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %ep_type, align 1
  %3 = and i24 %bf.load, 192
  %cmp = icmp eq i24 %3, 64
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  tail call fastcc void @dwc2_complete_isoc_xfer_ddma(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %halt_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %halt_status)
  %cmp2.not = icmp eq i32 %halt_status, 1
  br i1 %cmp2.not, label %lor.lhs.false, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %5, %qtd_list
  br i1 %cmp.i.not, label %lor.lhs.false.if.then3_crit_edge, label %if.else

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %qtd_list4 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %qtd_list4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qtd_list4, align 8
  %cmp11.not97 = icmp eq ptr %7, %qtd_list4
  br i1 %cmp11.not97, label %if.then3.for.end_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %dwc2_hcd_qtd_unlink_and_free.exit.for.body_crit_edge, %if.then3.for.body_crit_edge
  %.pn.in98 = phi ptr [ %.pn, %dwc2_hcd_qtd_unlink_and_free.exit.for.body_crit_edge ], [ %7, %if.then3.for.body_crit_edge ]
  %qtd.0 = getelementptr i8, ptr %.pn.in98, i32 -36
  %8 = ptrtoint ptr %.pn.in98 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in98, align 4
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd.0, i32 noundef -104) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in98) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge

for.body.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_hcd_qtd_unlink_and_free.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %.pn.in98, i32 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in98 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in98, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %dwc2_hcd_qtd_unlink_and_free.exit

dwc2_hcd_qtd_unlink_and_free.exit:                ; preds = %if.end.i.i.i, %for.body.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in98 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in98, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in98, i32 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %qtd.0) #7
  %cmp11.not = icmp eq ptr %.pn, %qtd_list4
  br i1 %cmp11.not, label %dwc2_hcd_qtd_unlink_and_free.exit.for.end_crit_edge, label %dwc2_hcd_qtd_unlink_and_free.exit.for.body_crit_edge

dwc2_hcd_qtd_unlink_and_free.exit.for.body_crit_edge: ; preds = %dwc2_hcd_qtd_unlink_and_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

dwc2_hcd_qtd_unlink_and_free.exit.for.end_crit_edge: ; preds = %dwc2_hcd_qtd_unlink_and_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %dwc2_hcd_qtd_unlink_and_free.exit.for.end_crit_edge, %if.then3.for.end_crit_edge
  br i1 %cmp2.not, label %if.then18, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_hc_halt(ptr noundef %hsotg, ptr noundef %chan, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then18, %for.end.if.end_crit_edge
  tail call fastcc void @dwc2_release_channel_ddma(ptr noundef %hsotg, ptr noundef %1)
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %hsotg, ptr noundef %1) #7
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %qh_list_entry = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25
  %periodic_sched_assigned = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i88 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  %17 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i88, align 4
  %19 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 42, i32 1
  %23 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i89 = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry, ptr noundef %24, ptr noundef %periodic_sched_assigned) #7
  br i1 %call.i.i.i89, label %if.end.i.i.i90, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i90:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %qh_list_entry, ptr %prev.i2.i, align 4
  %26 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %periodic_sched_assigned, ptr %qh_list_entry, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %qh_list_entry, ptr %24, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i90, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %halt_status19 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 22
  %29 = ptrtoint ptr %halt_status19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %halt_status19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not = icmp ne i32 %30, 0
  br label %if.end31

if.else24:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xfer_done.i) #7
  %halt_status2.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 22
  %31 = ptrtoint ptr %halt_status2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %halt_status2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %32)
  %cmp.i91 = icmp eq i32 %32, 13
  %qtd_list.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  br i1 %cmp.i91, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else24
  %33 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn94.i = load ptr, ptr %qtd_list.i, align 4
  %cmp4.not95.i = icmp eq ptr %.pn94.i, %qtd_list.i
  br i1 %cmp4.not95.i, label %if.then.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_complete_non_isoc_xfer_ddma.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn96.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn94.i, %if.then.i.for.body.i_crit_edge ]
  %in_process.i = getelementptr i8, ptr %.pn96.i, i32 -32
  %34 = ptrtoint ptr %in_process.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %in_process.i, align 4
  %35 = ptrtoint ptr %.pn96.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn96.i, align 4
  %cmp4.not.i = icmp eq ptr %.pn.i, %qtd_list.i
  br i1 %cmp4.not.i, label %for.body.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_complete_non_isoc_xfer_ddma.exit

if.end.i:                                         ; preds = %if.else24
  %36 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qtd_list.i, align 8
  %cmp.i.not90.i = icmp eq ptr %37, %qtd_list.i
  br i1 %cmp.i.not90.i, label %if.end.i.stop_scan.i_crit_edge, label %if.end.i.for.body16.i_crit_edge

if.end.i.for.body16.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body16.i

if.end.i.stop_scan.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_scan.i

for.cond13.loopexit.i:                            ; preds = %if.end27.i.for.cond13.loopexit.i_crit_edge, %for.body16.i.for.cond13.loopexit.i_crit_edge
  %desc_num.1.lcssa.i = phi i32 [ %desc_num.091.i, %for.body16.i.for.cond13.loopexit.i_crit_edge ], [ %42, %if.end27.i.for.cond13.loopexit.i_crit_edge ]
  %cmp.i.not.i = icmp eq ptr %qtd_tmp.093.i, %qtd_list.i
  br i1 %cmp.i.not.i, label %for.cond13.loopexit.i.stop_scan.i_crit_edge, label %for.cond13.loopexit.i.for.body16.i_crit_edge

for.cond13.loopexit.i.for.body16.i_crit_edge:     ; preds = %for.cond13.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16.i

for.cond13.loopexit.i.stop_scan.i_crit_edge:      ; preds = %for.cond13.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_scan.i

for.body16.i:                                     ; preds = %for.cond13.loopexit.i.for.body16.i_crit_edge, %if.end.i.for.body16.i_crit_edge
  %qtd_item.092.i = phi ptr [ %qtd_tmp.093.i, %for.cond13.loopexit.i.for.body16.i_crit_edge ], [ %37, %if.end.i.for.body16.i_crit_edge ]
  %desc_num.091.i = phi i32 [ %desc_num.1.lcssa.i, %for.cond13.loopexit.i.for.body16.i_crit_edge ], [ 0, %if.end.i.for.body16.i_crit_edge ]
  %38 = ptrtoint ptr %qtd_item.092.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %qtd_tmp.093.i = load ptr, ptr %qtd_item.092.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %qtd_item.092.i, i32 -36
  %39 = ptrtoint ptr %xfer_done.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %xfer_done.i, align 4
  %n_desc.i = getelementptr i8, ptr %qtd_item.092.i, i32 -15
  %40 = ptrtoint ptr %n_desc.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %n_desc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp2186.not.i = icmp eq i8 %41, 0
  br i1 %cmp2186.not.i, label %for.body16.i.for.cond13.loopexit.i_crit_edge, label %for.body23.preheader.i

for.body16.i.for.cond13.loopexit.i_crit_edge:     ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond13.loopexit.i

for.body23.preheader.i:                           ; preds = %for.body16.i
  %conv.i92 = zext i8 %41 to i32
  %42 = add i32 %desc_num.091.i, %conv.i92
  br label %for.body23.i

for.body23.i:                                     ; preds = %if.end27.i.for.body23.i_crit_edge, %for.body23.preheader.i
  %desc_num.187.i = phi i32 [ %inc.i, %if.end27.i.for.body23.i_crit_edge ], [ %desc_num.091.i, %for.body23.preheader.i ]
  %call24.i = call fastcc i32 @dwc2_process_non_isoc_desc(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %add.ptr19.i, i32 noundef %desc_num.187.i, i32 noundef %halt_status, ptr noundef nonnull %xfer_done.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %for.body23.i.stop_scan.i_crit_edge

for.body23.i.stop_scan.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_scan.i

if.end27.i:                                       ; preds = %for.body23.i
  %inc.i = add i32 %desc_num.187.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %42
  br i1 %exitcond.not.i, label %if.end27.i.for.cond13.loopexit.i_crit_edge, label %if.end27.i.for.body23.i_crit_edge

if.end27.i.for.body23.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23.i

if.end27.i.for.cond13.loopexit.i_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond13.loopexit.i

stop_scan.i:                                      ; preds = %for.body23.i.stop_scan.i_crit_edge, %for.cond13.loopexit.i.stop_scan.i_crit_edge, %if.end.i.stop_scan.i_crit_edge
  %ep_type.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %ep_type.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ep_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp36.not.i = icmp eq i8 %44, 0
  br i1 %cmp36.not.i, label %stop_scan.i.if.end43.i_crit_edge, label %if.then38.i

stop_scan.i.if.end43.i_crit_edge:                 ; preds = %stop_scan.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then38.i:                                      ; preds = %stop_scan.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %halt_status)
  %cmp39.i = icmp eq i32 %halt_status, 6
  br i1 %cmp39.i, label %if.end43.thread.i, label %if.else.i

if.end43.thread.i:                                ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_toggle.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %data_toggle.i, align 1
  br label %dwc2_complete_non_isoc_xfer_ddma.exit

if.else.i:                                        ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef null) #7
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %stop_scan.i.if.end43.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %halt_status)
  %cmp44.i = icmp eq i32 %halt_status, 1
  br i1 %cmp44.i, label %if.then46.i, label %if.end43.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge

if.end43.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_complete_non_isoc_xfer_ddma.exit

if.then46.i:                                      ; preds = %if.end43.i
  %hcint.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 23
  %46 = ptrtoint ptr %hcint.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hcint.i, align 4
  %and.i = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool47.not.i, label %if.then46.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge, label %if.then48.i

if.then46.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_complete_non_isoc_xfer_ddma.exit

if.then48.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  %ping_state.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %ping_state.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %ping_state.i, align 4
  br label %dwc2_complete_non_isoc_xfer_ddma.exit

dwc2_complete_non_isoc_xfer_ddma.exit:            ; preds = %if.then48.i, %if.then46.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge, %if.end43.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge, %if.end43.thread.i, %for.body.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge, %if.then.i.dwc2_complete_non_isoc_xfer_ddma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xfer_done.i) #7
  tail call fastcc void @dwc2_release_channel_ddma(ptr noundef %hsotg, ptr noundef %1)
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %hsotg, ptr noundef %1) #7
  %49 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %qtd_list.i, align 4
  %cmp.i93.not = icmp eq ptr %50, %qtd_list.i
  br i1 %cmp.i93.not, label %dwc2_complete_non_isoc_xfer_ddma.exit.if.end31_crit_edge, label %if.then28

dwc2_complete_non_isoc_xfer_ddma.exit.if.end31_crit_edge: ; preds = %dwc2_complete_non_isoc_xfer_ddma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then28:                                        ; preds = %dwc2_complete_non_isoc_xfer_ddma.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @dwc2_hcd_qh_add(ptr noundef %hsotg, ptr noundef %1) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %dwc2_complete_non_isoc_xfer_ddma.exit.if.end31_crit_edge, %list_move_tail.exit, %if.end
  %tobool35.not = phi i1 [ true, %dwc2_complete_non_isoc_xfer_ddma.exit.if.end31_crit_edge ], [ true, %if.then28 ], [ true, %if.end ], [ %tobool20.not, %list_move_tail.exit ]
  %call32 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %hsotg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  %51 = select i1 %cmp33.not, i1 %tobool35.not, i1 false
  br i1 %51, label %if.end31.if.end47_crit_edge, label %if.then36

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %brmerge95 = select i1 %tobool35.not, i1 true, i1 %cmp33.not
  %call32.mux = select i1 %tobool35.not, i32 %call32, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call32)
  %cmp42 = icmp eq i32 %call32, 2
  %spec.store.select = select i1 %cmp42, i32 3, i32 %call32
  %tr_type.0 = select i1 %brmerge95, i32 %call32.mux, i32 %spec.store.select
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %hsotg, i32 noundef %tr_type.0) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %if.end31.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_complete_isoc_xfer_ddma(ptr noundef %hsotg, ptr nocapture noundef readonly %chan, i32 noundef %halt_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qh1 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %0 = ptrtoint ptr %qh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qh1, align 4
  %td_first = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %td_first to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %td_first, align 2
  %conv = zext i8 %3 to i16
  %halt_status2 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 22
  %4 = ptrtoint ptr %halt_status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %halt_status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %5)
  %cmp = icmp eq i32 %5, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn207264 = load ptr, ptr %qtd_list, align 4
  %cmp5.not265 = icmp eq ptr %.pn207264, %qtd_list
  br i1 %cmp5.not265, label %if.then.cleanup143_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup143_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn207266 = phi ptr [ %.pn207, %for.body.for.body_crit_edge ], [ %.pn207264, %if.then.for.body_crit_edge ]
  %in_process = getelementptr i8, ptr %.pn207266, i32 -32
  %7 = ptrtoint ptr %in_process to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %in_process, align 4
  %8 = ptrtoint ptr %.pn207266 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn207 = load ptr, ptr %.pn207266, align 4
  %cmp5.not = icmp eq ptr %.pn207, %qtd_list
  br i1 %cmp5.not, label %for.body.cleanup143_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup143_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

if.end:                                           ; preds = %entry
  %9 = zext i32 %halt_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %halt_status, label %if.end54 [
    i32 11, label %if.end.if.then16_crit_edge
    i32 9, label %if.then16.fold.split
  ]

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16.fold.split:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %if.then16.fold.split, %if.end.if.then16_crit_edge
  %cond = phi i32 [ -5, %if.end.if.then16_crit_edge ], [ -75, %if.then16.fold.split ]
  %qtd_list20 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %qtd_list20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qtd_list20, align 8
  %cmp32.not251 = icmp eq ptr %11, %qtd_list20
  br i1 %cmp32.not251, label %if.then16.cleanup143_crit_edge, label %if.then16.for.body35_crit_edge

if.then16.for.body35_crit_edge:                   ; preds = %if.then16
  br label %for.body35

if.then16.cleanup143_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

for.body35:                                       ; preds = %dwc2_hcd_qtd_unlink_and_free.exit.for.body35_crit_edge, %if.then16.for.body35_crit_edge
  %.pn206.in252 = phi ptr [ %.pn206255, %dwc2_hcd_qtd_unlink_and_free.exit.for.body35_crit_edge ], [ %11, %if.then16.for.body35_crit_edge ]
  %qtd.1254 = getelementptr i8, ptr %.pn206.in252, i32 -36
  %12 = ptrtoint ptr %.pn206.in252 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn206255 = load ptr, ptr %.pn206.in252, align 4
  %urb = getelementptr i8, ptr %.pn206.in252, i32 -8
  %13 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %urb, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.body35.if.end46_crit_edge, label %for.cond37.preheader

for.body35.if.end46_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

for.cond37.preheader:                             ; preds = %for.body35
  %15 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb, align 4
  %packet_count245 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %packet_count245 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %packet_count245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp40246.not = icmp eq i32 %18, 0
  br i1 %cmp40246.not, label %for.cond37.preheader.for.end45_crit_edge, label %for.cond37.preheader.for.body42_crit_edge

for.cond37.preheader.for.body42_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body42

for.cond37.preheader.for.end45_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.cond37.preheader.for.body42_crit_edge
  %19 = phi ptr [ %22, %for.body42.for.body42_crit_edge ], [ %16, %for.cond37.preheader.for.body42_crit_edge ]
  %conv38248 = phi i32 [ %conv38, %for.body42.for.body42_crit_edge ], [ 0, %for.cond37.preheader.for.body42_crit_edge ]
  %idx.0247 = phi i16 [ %inc, %for.body42.for.body42_crit_edge ], [ 0, %for.cond37.preheader.for.body42_crit_edge ]
  %status = getelementptr %struct.dwc2_hcd_urb, ptr %19, i32 0, i32 14, i32 %conv38248, i32 3
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %status, align 4
  %inc = add i16 %idx.0247, 1
  %conv38 = zext i16 %inc to i32
  %21 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %urb, align 4
  %packet_count = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %packet_count, align 4
  %cmp40 = icmp ugt i32 %24, %conv38
  br i1 %cmp40, label %for.body42.for.body42_crit_edge, label %for.body42.for.end45_crit_edge

for.body42.for.end45_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.end45:                                        ; preds = %for.body42.for.end45_crit_edge, %for.cond37.preheader.for.end45_crit_edge
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd.1254, i32 noundef %cond) #7
  br label %if.end46

if.end46:                                         ; preds = %for.end45, %for.body35.if.end46_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn206.in252) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end46.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge

if.end46.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_hcd_qtd_unlink_and_free.exit

if.end.i.i.i:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %.pn206.in252, i32 4
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %.pn206.in252 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn206.in252, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %dwc2_hcd_qtd_unlink_and_free.exit

dwc2_hcd_qtd_unlink_and_free.exit:                ; preds = %if.end.i.i.i, %if.end46.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge
  %31 = ptrtoint ptr %.pn206.in252 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn206.in252, align 4
  %prev.i.i = getelementptr i8, ptr %.pn206.in252, i32 4
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %qtd.1254) #7
  %cmp32.not = icmp eq ptr %.pn206255, %qtd_list20
  br i1 %cmp32.not, label %dwc2_hcd_qtd_unlink_and_free.exit.cleanup143_crit_edge, label %dwc2_hcd_qtd_unlink_and_free.exit.for.body35_crit_edge

dwc2_hcd_qtd_unlink_and_free.exit.for.body35_crit_edge: ; preds = %dwc2_hcd_qtd_unlink_and_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35

dwc2_hcd_qtd_unlink_and_free.exit.cleanup143_crit_edge: ; preds = %dwc2_hcd_qtd_unlink_and_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

if.end54:                                         ; preds = %if.end
  %qtd_list56 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %33 = ptrtoint ptr %qtd_list56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qtd_list56, align 8
  %cmp68.not258 = icmp eq ptr %34, %qtd_list56
  br i1 %cmp68.not258, label %if.end54.stop_scan_crit_edge, label %for.body71.lr.ph

if.end54.stop_scan_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_scan

for.body71.lr.ph:                                 ; preds = %if.end54
  %desc_list_dma.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  %desc_list.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %.pn73.in.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 29
  %ntd.i = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 20
  %host_interval = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %frame_number = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 11
  br label %for.body71

for.body71:                                       ; preds = %for.inc134.for.body71_crit_edge, %for.body71.lr.ph
  %.pn.in260 = phi ptr [ %34, %for.body71.lr.ph ], [ %.pn262, %for.inc134.for.body71_crit_edge ]
  %idx.1259 = phi i16 [ %conv, %for.body71.lr.ph ], [ %and.i214, %for.inc134.for.body71_crit_edge ]
  %qtd.2261 = getelementptr i8, ptr %.pn.in260, i32 -36
  %35 = ptrtoint ptr %.pn.in260 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn262 = load ptr, ptr %.pn.in260, align 4
  %in_process72 = getelementptr i8, ptr %.pn.in260, i32 -32
  %36 = ptrtoint ptr %in_process72 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %in_process72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool73.not = icmp eq i8 %37, 0
  br i1 %tobool73.not, label %stop_scan.loopexit.split.loop.exit282, label %if.end75

if.end75:                                         ; preds = %for.body71
  %conv76 = zext i16 %idx.1259 to i32
  %isoc_td_first = getelementptr i8, ptr %.pn.in260, i32 -22
  %38 = ptrtoint ptr %isoc_td_first to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %isoc_td_first, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %idx.1259, i16 %39)
  %cmp78.not = icmp eq i16 %idx.1259, %39
  br i1 %cmp78.not, label %if.end75.if.end93_crit_edge, label %do.body

if.end75.if.end93_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.body:                                          ; preds = %if.end75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_complete_isoc_xfer_ddma.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_complete_isoc_xfer_ddma, %do.end)) #7
          to label %if.then87 [label %do.end], !srcloc !126

if.then87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hsotg, align 8
  %42 = ptrtoint ptr %isoc_td_first to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %isoc_td_first, align 2
  %conv90 = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_complete_isoc_xfer_ddma.__UNIQUE_ID_ddebug306, ptr noundef %41, ptr noundef nonnull @.str.32, i32 noundef %conv76, i32 noundef %conv90) #7
  br label %do.end

do.end:                                           ; preds = %if.then87, %do.body
  %44 = ptrtoint ptr %isoc_td_first to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %isoc_td_first, align 2
  br label %if.end93

if.end93:                                         ; preds = %do.end, %if.end75.if.end93_crit_edge
  %idx.2 = phi i16 [ %45, %do.end ], [ %idx.1259, %if.end75.if.end93_crit_edge ]
  %urb.i = getelementptr i8, ptr %.pn.in260, i32 -8
  %isoc_frame_index_last.i = getelementptr i8, ptr %.pn.in260, i32 -14
  %isoc_frame_index.i = getelementptr i8, ptr %.pn.in260, i32 -28
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in260, i32 4
  br label %do.body94

do.body94:                                        ; preds = %do.cond127.do.body94_crit_edge, %if.end93
  %idx.3 = phi i16 [ %idx.2, %if.end93 ], [ %and.i214, %do.cond127.do.body94_crit_edge ]
  %46 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %urb.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %do.body94.cleanup143_crit_edge, label %if.end.i

do.body94.cleanup143_crit_edge:                   ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

if.end.i:                                         ; preds = %do.body94
  %48 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hsotg, align 8
  %50 = ptrtoint ptr %desc_list_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %desc_list_dma.i, align 8
  %conv.i = zext i16 %idx.3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %add.i = add i32 %51, %mul.i
  tail call void @dma_sync_single_for_cpu(ptr noundef %49, i32 noundef %add.i, i32 noundef 8, i32 noundef 2) #7
  %52 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc_list.i, align 4
  %arrayidx.i = getelementptr %struct.dwc2_dma_desc, ptr %53, i32 %conv.i
  %54 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %urb.i, align 4
  %56 = ptrtoint ptr %isoc_frame_index_last.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %isoc_frame_index_last.i, align 2
  %idxprom2.i = zext i16 %57 to i32
  %arrayidx3.i = getelementptr %struct.dwc2_hcd_urb, ptr %55, i32 0, i32 14, i32 %idxprom2.i
  %dma.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %55, i32 0, i32 3
  %58 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma.i, align 4
  %60 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx3.i, align 4
  %add5.i = add i32 %61, %59
  %buf.i = getelementptr %struct.dwc2_dma_desc, ptr %53, i32 %conv.i, i32 1
  %62 = ptrtoint ptr %buf.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %add5.i, ptr %buf.i, align 1
  %63 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 3)
  %bf.load.i = load i24, ptr %ep_is_in.i, align 1
  %64 = and i24 %bf.load.i, 4096
  %tobool6.not.i = icmp eq i24 %64, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %arrayidx.i, align 1
  %and.i = and i32 %66, 4095
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %remain.0.i = phi i32 [ %and.i, %if.then7.i ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %arrayidx.i, align 1
  %and11.i = and i32 %68, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and11.i)
  %cmp.i = icmp eq i32 %and11.i, 268435456
  br i1 %cmp.i, label %if.then13.i, label %if.end9.i.if.end26.i_crit_edge

if.end9.i.if.end26.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %urb.i, align 4
  %error_count.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %error_count.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %error_count.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then13.i, %if.end9.i.if.end26.i_crit_edge
  %.sink.i = phi i32 [ -71, %if.then13.i ], [ 0, %if.end9.i.if.end26.i_crit_edge ]
  %73 = ptrtoint ptr %.pn73.in.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn73.i = load ptr, ptr %.pn73.in.i, align 8
  %.pn.in.i = getelementptr i32, ptr %.pn73.i, i32 %conv.i
  %74 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %sub23.sink.i = sub i32 %.pn.i, %remain.0.i
  %75 = getelementptr %struct.dwc2_hcd_urb, ptr %55, i32 0, i32 14, i32 %idxprom2.i, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub23.sink.i, ptr %75, align 4
  %77 = getelementptr %struct.dwc2_hcd_urb, ptr %55, i32 0, i32 14, i32 %idxprom2.i, i32 3
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink.i, ptr %77, align 4
  %79 = ptrtoint ptr %isoc_frame_index.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %isoc_frame_index.i, align 4
  %inc27.i = add i16 %80, 1
  store i16 %inc27.i, ptr %isoc_frame_index.i, align 4
  %conv28.i = zext i16 %inc27.i to i32
  %81 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %urb.i, align 4
  %packet_count.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %packet_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %conv28.i)
  %cmp30.i = icmp eq i32 %84, %conv28.i
  br i1 %cmp30.i, label %if.then32.i, label %if.end26.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge

if.end26.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_cmpl_host_isoc_dma_desc.exit

if.then32.i:                                      ; preds = %if.end26.i
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd.2261, i32 noundef 0) #7
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in260) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then32.i.dwc2_hcd_qtd_unlink_and_free.exit.i_crit_edge

if.then32.i.dwc2_hcd_qtd_unlink_and_free.exit.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_hcd_qtd_unlink_and_free.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i.i, align 4
  %87 = ptrtoint ptr %.pn.in260 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %.pn.in260, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %dwc2_hcd_qtd_unlink_and_free.exit.i

dwc2_hcd_qtd_unlink_and_free.exit.i:              ; preds = %if.end.i.i.i.i, %if.then32.i.dwc2_hcd_qtd_unlink_and_free.exit.i_crit_edge
  %91 = ptrtoint ptr %.pn.in260 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in260, align 4
  %92 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %qtd.2261) #7
  %93 = ptrtoint ptr %halt_status2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %halt_status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %94)
  %cmp33.i = icmp eq i32 %94, 13
  br i1 %cmp33.i, label %dwc2_hcd_qtd_unlink_and_free.exit.i.cleanup143_crit_edge, label %dwc2_hcd_qtd_unlink_and_free.exit.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge

dwc2_hcd_qtd_unlink_and_free.exit.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge: ; preds = %dwc2_hcd_qtd_unlink_and_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_cmpl_host_isoc_dma_desc.exit

dwc2_hcd_qtd_unlink_and_free.exit.i.cleanup143_crit_edge: ; preds = %dwc2_hcd_qtd_unlink_and_free.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup143

dwc2_cmpl_host_isoc_dma_desc.exit:                ; preds = %dwc2_hcd_qtd_unlink_and_free.exit.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge, %if.end26.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge
  %rc.0.i = phi i32 [ 0, %if.end26.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge ], [ 1, %dwc2_hcd_qtd_unlink_and_free.exit.i.dwc2_cmpl_host_isoc_dma_desc.exit_crit_edge ]
  %95 = ptrtoint ptr %ntd.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %ntd.i, align 4
  %dec.i = add i16 %96, -1
  store i16 %dec.i, ptr %ntd.i, align 4
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx.i, align 1
  %and39.i = and i32 %98, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %spec.select.i = select i1 %tobool40.not.i, i32 %rc.0.i, i32 2
  %99 = ptrtoint ptr %host_interval to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %host_interval, align 4
  %101 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 3)
  %bf.load = load i24, ptr %ep_is_in.i, align 1
  %add.i212 = add i16 %100, %idx.3
  %102 = and i24 %bf.load, 3840
  %cmp.i213 = icmp eq i24 %102, 768
  %sub.i = select i1 %cmp.i213, i16 255, i16 63
  %and.i214 = and i16 %sub.i, %add.i212
  %103 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %spec.select.i, label %if.end108 [
    i32 0, label %do.cond127
    i32 1, label %dwc2_cmpl_host_isoc_dma_desc.exit.for.inc134.loopexit_crit_edge
  ]

dwc2_cmpl_host_isoc_dma_desc.exit.for.inc134.loopexit_crit_edge: ; preds = %dwc2_cmpl_host_isoc_dma_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc134.loopexit

if.end108:                                        ; preds = %dwc2_cmpl_host_isoc_dma_desc.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %100)
  %cmp111 = icmp ugt i16 %100, 31
  %.pre274 = trunc i16 %and.i214 to i8
  br i1 %cmp111, label %stop_scan.loopexit.split.loop.exit309, label %if.end114

if.end114:                                        ; preds = %if.end108
  %104 = ptrtoint ptr %td_first to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %.pre274, ptr %td_first, align 2
  %105 = ptrtoint ptr %frame_number to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %frame_number, align 4
  %107 = and i16 %106, 63
  %108 = ptrtoint ptr %qtd_list56 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %qtd_list56, align 8
  %isoc_td_last = getelementptr i8, ptr %109, i32 -24
  %110 = ptrtoint ptr %isoc_td_last to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %isoc_td_last, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %111)
  %tobool.not.i215 = icmp ne i16 %107, %111
  %sub.i216 = sub i16 %106, %111
  %and.i217 = and i16 %sub.i216, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i217)
  %tobool6.not.i218 = icmp eq i16 %and.i217, 0
  %112 = and i1 %tobool.not.i215, %tobool6.not.i218
  br i1 %112, label %if.end114.for.inc134_crit_edge, label %stop_scan.loopexit.split.loop.exit

if.end114.for.inc134_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc134

do.cond127:                                       ; preds = %dwc2_cmpl_host_isoc_dma_desc.exit
  %113 = ptrtoint ptr %td_first to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %td_first, align 2
  %115 = zext i8 %114 to i16
  %cmp131.not = icmp eq i16 %and.i214, %115
  br i1 %cmp131.not, label %do.cond127.for.inc134.loopexit_crit_edge, label %do.cond127.do.body94_crit_edge

do.cond127.do.body94_crit_edge:                   ; preds = %do.cond127
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body94

do.cond127.for.inc134.loopexit_crit_edge:         ; preds = %do.cond127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc134.loopexit

for.inc134.loopexit:                              ; preds = %do.cond127.for.inc134.loopexit_crit_edge, %dwc2_cmpl_host_isoc_dma_desc.exit.for.inc134.loopexit_crit_edge
  %.pre = trunc i16 %and.i214 to i8
  br label %for.inc134

for.inc134:                                       ; preds = %for.inc134.loopexit, %if.end114.for.inc134_crit_edge
  %extract.t268.pre-phi = phi i8 [ %.pre, %for.inc134.loopexit ], [ %.pre274, %if.end114.for.inc134_crit_edge ]
  %cmp68.not = icmp eq ptr %.pn262, %qtd_list56
  br i1 %cmp68.not, label %for.inc134.stop_scan_crit_edge, label %for.inc134.for.body71_crit_edge

for.inc134.for.body71_crit_edge:                  ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body71

for.inc134.stop_scan_crit_edge:                   ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_scan

stop_scan.loopexit.split.loop.exit:               ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %conv115.le = trunc i16 %and.i214 to i8
  br label %stop_scan

stop_scan.loopexit.split.loop.exit282:            ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t267.le = trunc i16 %idx.1259 to i8
  br label %stop_scan

stop_scan.loopexit.split.loop.exit309:            ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %.pre274.le = trunc i16 %and.i214 to i8
  br label %stop_scan

stop_scan:                                        ; preds = %stop_scan.loopexit.split.loop.exit309, %stop_scan.loopexit.split.loop.exit282, %stop_scan.loopexit.split.loop.exit, %for.inc134.stop_scan_crit_edge, %if.end54.stop_scan_crit_edge
  %idx.5.off0 = phi i8 [ %3, %if.end54.stop_scan_crit_edge ], [ %conv115.le, %stop_scan.loopexit.split.loop.exit ], [ %extract.t267.le, %stop_scan.loopexit.split.loop.exit282 ], [ %.pre274.le, %stop_scan.loopexit.split.loop.exit309 ], [ %extract.t268.pre-phi, %for.inc134.stop_scan_crit_edge ]
  %116 = ptrtoint ptr %td_first to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %idx.5.off0, ptr %td_first, align 2
  br label %cleanup143

cleanup143:                                       ; preds = %stop_scan, %dwc2_hcd_qtd_unlink_and_free.exit.i.cleanup143_crit_edge, %do.body94.cleanup143_crit_edge, %dwc2_hcd_qtd_unlink_and_free.exit.cleanup143_crit_edge, %if.then16.cleanup143_crit_edge, %for.body.cleanup143_crit_edge, %if.then.cleanup143_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_halt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_qh_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_select_transactions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_queue_transactions(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_get_frame_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_process_non_isoc_desc(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd, i32 noundef %desc_num, i32 noundef %halt_status, ptr nocapture noundef %xfer_done) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qh1 = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 24
  %0 = ptrtoint ptr %qh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qh1, align 4
  %urb2 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %2 = ptrtoint ptr %urb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_process_non_isoc_desc, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug311, ptr noundef %5, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  %desc_list_dma = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %desc_list_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_list_dma, align 8
  %mul = shl i32 %desc_num, 3
  %add = add i32 %9, %mul
  tail call void @dma_sync_single_for_cpu(ptr noundef %7, i32 noundef %add, i32 noundef 8, i32 noundef 2) #7
  %desc_list = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_list, align 4
  %arrayidx = getelementptr %struct.dwc2_dma_desc, ptr %11, i32 %desc_num
  %n_bytes10 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %n_bytes10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %n_bytes10, align 8
  %arrayidx11 = getelementptr i32, ptr %13, i32 %desc_num
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_process_non_isoc_desc, %do.end30)) #7
          to label %if.then26 [label %do.end30], !srcloc !126

if.then26:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug312, ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef %qtd, ptr noundef nonnull %3, i32 noundef %desc_num, ptr noundef %arrayidx, i32 noundef %15) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %if.end8
  %call31 = tail call fastcc i32 @dwc2_update_non_isoc_urb_state_ddma(ptr noundef %hsotg, ptr noundef %chan, ptr noundef %qtd, ptr noundef %arrayidx, i32 noundef %halt_status, i32 noundef %15, ptr noundef %xfer_done)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %do.end30.if.then34_crit_edge

do.end30.if.then34_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false:                                    ; preds = %do.end30
  %18 = ptrtoint ptr %xfer_done to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xfer_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool33.not = icmp eq i32 %19, 0
  br i1 %tobool33.not, label %lor.lhs.false.if.end55_crit_edge, label %land.lhs.true

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true:                                    ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %21)
  %cmp.not = icmp eq i32 %21, -115
  br i1 %cmp.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.if.then34_crit_edge

land.lhs.true.if.then34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then34:                                        ; preds = %land.lhs.true.if.then34_crit_edge, %do.end30.if.then34_crit_edge
  %status35 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %status35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status35, align 4
  tail call void @dwc2_host_complete(ptr noundef %hsotg, ptr noundef %qtd, i32 noundef %23) #7
  %qtd_list_entry.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qtd_list_entry.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then34.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge

if.then34.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwc2_hcd_qtd_unlink_and_free.exit

if.end.i.i.i:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 16, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %qtd_list_entry.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qtd_list_entry.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %dwc2_hcd_qtd_unlink_and_free.exit

dwc2_hcd_qtd_unlink_and_free.exit:                ; preds = %if.end.i.i.i, %if.then34.dwc2_hcd_qtd_unlink_and_free.exit_crit_edge
  %30 = ptrtoint ptr %qtd_list_entry.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %qtd_list_entry.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %qtd) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_process_non_isoc_desc, %cleanup)) #7
          to label %if.then50 [label %cleanup], !srcloc !126

if.then50:                                        ; preds = %dwc2_hcd_qtd_unlink_and_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hsotg, align 8
  %34 = ptrtoint ptr %xfer_done to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xfer_done, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug313, ptr noundef %33, ptr noundef nonnull @.str.36, i32 noundef %call31, i32 noundef %35) #7
  br label %cleanup

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  %ep_type = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ep_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp56 = icmp eq i8 %37, 0
  br i1 %cmp56, label %if.then58, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %if.end55
  %38 = ptrtoint ptr %qtd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qtd, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %39, label %if.then58.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb84
  ]

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp59.not = icmp eq i32 %42, 0
  %. = select i1 %cmp59.not, i32 2, i32 1
  %43 = ptrtoint ptr %qtd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %., ptr %qtd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_process_non_isoc_desc, %cleanup)) #7
          to label %if.then79 [label %cleanup], !srcloc !126

if.then79:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug314, ptr noundef %45, ptr noundef nonnull @.str.37) #7
  br label %cleanup

sw.bb84:                                          ; preds = %if.then58
  br i1 %tobool33.not, label %if.else107, label %if.then86

if.then86:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %qtd to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %qtd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_process_non_isoc_desc, %cleanup)) #7
          to label %if.then102 [label %cleanup], !srcloc !126

if.then102:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug315, ptr noundef %48, ptr noundef nonnull @.str.38) #7
  br label %cleanup

if.else107:                                       ; preds = %sw.bb84
  %add108 = add i32 %desc_num, 1
  %n_desc = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 11
  %49 = ptrtoint ptr %n_desc to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %n_desc, align 1
  %conv109 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add108, i32 %conv109)
  %cmp110 = icmp eq i32 %add108, %conv109
  br i1 %cmp110, label %if.then112, label %if.else107.cleanup_crit_edge

if.else107.cleanup_crit_edge:                     ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then112:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %hsotg, ptr noundef %chan, i32 noundef %chnum, ptr noundef %qtd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %if.else107.cleanup_crit_edge, %if.then102, %if.then86, %if.then79, %sw.bb, %if.then58.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then50, %dwc2_hcd_qtd_unlink_and_free.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call31, %if.then50 ], [ 0, %if.then79 ], [ 0, %if.else107.cleanup_crit_edge ], [ 0, %if.then112 ], [ 0, %if.then102 ], [ 0, %if.then58.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ %call31, %dwc2_hcd_qtd_unlink_and_free.exit ], [ 0, %sw.bb ], [ 0, %if.then86 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_save_data_toggle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_update_non_isoc_urb_state_ddma(ptr nocapture noundef readonly %hsotg, ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %qtd, ptr nocapture noundef readonly %dma_desc, i32 noundef %halt_status, i32 noundef %n_bytes, ptr nocapture noundef writeonly %xfer_done) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb1, align 4
  %ep_is_in = getelementptr inbounds %struct.dwc2_host_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %ep_is_in, align 1
  %3 = and i24 %bf.load, 4096
  %tobool.not = icmp eq i24 %3, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dma_desc to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dma_desc, align 1
  %phi.cast = and i32 %5, 65535
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %remain.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_non_isoc_urb_state_ddma, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !126

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug307, ptr noundef %7, ptr noundef nonnull @.str.40, i32 noundef %remain.0, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %halt_status)
  %cmp = icmp eq i32 %halt_status, 11
  br i1 %cmp, label %do.end13, label %if.end16

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41) #10
  %status15 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %status15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -5, ptr %status15, align 4
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %11 = ptrtoint ptr %dma_desc to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %dma_desc, align 1
  %and18 = and i32 %12, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 268435456
  br i1 %cmp19, label %if.then21, label %if.end58

if.then21:                                        ; preds = %if.end16
  %13 = zext i32 %halt_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %halt_status, label %do.end56 [
    i32 6, label %do.body22
    i32 9, label %do.end45
    i32 7, label %do.end51
  ]

do.body22:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_non_isoc_urb_state_ddma, %do.end40)) #7
          to label %if.then36 [label %do.end40], !srcloc !126

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug308, ptr noundef %15, ptr noundef nonnull @.str.42) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body22
  %status41 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %status41 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -32, ptr %status41, align 4
  br label %cleanup

do.end45:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.44) #10
  %status47 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %status47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -75, ptr %status47, align 4
  br label %cleanup

do.end51:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.47) #10
  %status53 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %status53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -71, ptr %status53, align 4
  br label %cleanup

do.end56:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39, i32 noundef %halt_status) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool61.not = icmp sgt i32 %12, -1
  br i1 %tobool61.not, label %if.end83, label %do.body63

do.body63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_non_isoc_urb_state_ddma, %cleanup)) #7
          to label %if.then77 [label %cleanup], !srcloc !126

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsotg, align 8
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %chan, align 4
  %conv79 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug309, ptr noundef %26, ptr noundef nonnull @.str.52, i32 noundef %conv79) #7
  br label %cleanup

if.end83:                                         ; preds = %if.end58
  %29 = ptrtoint ptr %ep_is_in to i32
  call void @__asan_loadN_noabort(i32 %29, i32 3)
  %bf.load84 = load i24, ptr %ep_is_in, align 1
  %30 = and i24 %bf.load84, 192
  %cmp88 = icmp eq i24 %30, 0
  br i1 %cmp88, label %if.then90, label %if.else109

if.then90:                                        ; preds = %if.end83
  %31 = ptrtoint ptr %qtd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qtd, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %32, label %if.then90.cleanup_crit_edge [
    i32 1, label %if.then93
    i32 2, label %if.then105
  ]

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93:                                        ; preds = %if.then90
  %sub = sub i32 %n_bytes, %remain.0
  %actual_length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual_length, align 4
  %add = add i32 %35, %sub
  store i32 %add, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0)
  %tobool96.not = icmp eq i32 %remain.0, 0
  br i1 %tobool96.not, label %lor.lhs.false, label %if.then93.if.then100_crit_edge

if.then93.if.then100_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100

lor.lhs.false:                                    ; preds = %if.then93
  %length = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %37)
  %cmp98.not = icmp ult i32 %add, %37
  br i1 %cmp98.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then100_crit_edge

lor.lhs.false.if.then100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then100:                                       ; preds = %lor.lhs.false.if.then100_crit_edge, %if.then93.if.then100_crit_edge
  %38 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %xfer_done, align 4
  br label %cleanup

if.then105:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %status106 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %status106 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %status106, align 4
  %40 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %xfer_done, align 4
  br label %cleanup

if.else109:                                       ; preds = %if.end83
  %sub111 = sub i32 %n_bytes, %remain.0
  %actual_length112 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %actual_length112 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %actual_length112, align 4
  %add113 = add i32 %sub111, %42
  store i32 %add113, ptr %actual_length112, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_update_non_isoc_urb_state_ddma, %do.end134)) #7
          to label %if.then128 [label %do.end134], !srcloc !126

if.then128:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hsotg, align 8
  %length130 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %length130 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length130, align 4
  %47 = ptrtoint ptr %actual_length112 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual_length112, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug310, ptr noundef %44, ptr noundef nonnull @.str.53, i32 noundef %46, i32 noundef %48) #7
  br label %do.end134

do.end134:                                        ; preds = %if.then128, %if.else109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0)
  %tobool136.not = icmp eq i32 %remain.0, 0
  br i1 %tobool136.not, label %lor.lhs.false137, label %do.end134.if.then142_crit_edge

do.end134.if.then142_crit_edge:                   ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false137:                                 ; preds = %do.end134
  %49 = ptrtoint ptr %actual_length112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %actual_length112, align 4
  %length139 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %length139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length139, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp140.not = icmp ult i32 %50, %52
  br i1 %cmp140.not, label %lor.lhs.false137.cleanup_crit_edge, label %lor.lhs.false137.if.then142_crit_edge

lor.lhs.false137.if.then142_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then142

lor.lhs.false137.cleanup_crit_edge:               ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then142:                                       ; preds = %lor.lhs.false137.if.then142_crit_edge, %do.end134.if.then142_crit_edge
  %status143 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %status143 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %status143, align 4
  %54 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %xfer_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then142, %lor.lhs.false137.cleanup_crit_edge, %if.then105, %if.then100, %lor.lhs.false.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.then77, %do.body63, %do.end56, %do.end51, %do.end45, %do.end40, %do.end13
  %retval.0 = phi i32 [ 1, %do.end13 ], [ 1, %do.end56 ], [ 1, %do.end51 ], [ 1, %do.end45 ], [ 1, %do.end40 ], [ 0, %if.then77 ], [ 0, %if.then90.cleanup_crit_edge ], [ 0, %lor.lhs.false137.cleanup_crit_edge ], [ 0, %if.then142 ], [ 0, %if.then100 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then105 ], [ 0, %do.body63 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 348, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dwc2_hcd_qh_init_ddma._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dwc2_hcd_qh_init_ddma._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 199, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dwc2_per_sched_enable.__UNIQUE_ID_ddebug295, !13, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 220, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dwc2_per_sched_disable.__UNIQUE_ID_ddebug296, !18, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 748, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug298, !22, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 759, i32 3}
!27 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug299, !26, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 767, i32 4}
!30 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug300, !29, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 775, i32 5}
!33 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug301, !32, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 787, i32 4}
!36 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug302, !35, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 797, i32 3}
!39 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug303, !38, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 808, i32 3}
!42 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug304, !41, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 817, i32 4}
!45 = !{ptr @dwc2_init_non_isoc_dma_desc.__UNIQUE_ID_ddebug305, !44, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 237, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dwc2_update_frame_list._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dwc2_update_frame_list._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 242, i32 3}
!53 = !{ptr @dwc2_update_frame_list._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @dwc2_update_frame_list._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 247, i32 3}
!57 = !{ptr @dwc2_update_frame_list._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @dwc2_update_frame_list._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 604, i32 4}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dwc2_init_isoc_dma_desc.__UNIQUE_ID_ddebug297, !60, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1022, i32 4}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dwc2_complete_isoc_xfer_ddma.__UNIQUE_ID_ddebug306, !64, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1162, i32 2}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug311, !68, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1175, i32 2}
!73 = !{ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug312, !72, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1184, i32 3}
!76 = !{ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug313, !75, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1196, i32 4}
!79 = !{ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug314, !78, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1202, i32 5}
!82 = !{ptr @dwc2_process_non_isoc_desc.__UNIQUE_ID_ddebug315, !81, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1081, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug307, !84, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1084, i32 3}
!89 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1092, i32 4}
!93 = !{ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug308, !92, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1096, i32 4}
!96 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1100, i32 4}
!100 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1104, i32 4}
!104 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dwc2_update_non_isoc_urb_state_ddma._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1113, i32 3}
!108 = !{ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug309, !107, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/dwc2/hcd_ddma.c", i32 1138, i32 3}
!111 = !{ptr @dwc2_update_non_isoc_urb_state_ddma.__UNIQUE_ID_ddebug310, !110, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 4653043}
!123 = !{i64 2155958639}
!124 = !{i8 0, i8 2}
!125 = !{i64 4652625}
!126 = !{i64 2148728248, i64 2148728253, i64 2148728266, i64 2148728310, i64 2148728344, i64 2148728365}
