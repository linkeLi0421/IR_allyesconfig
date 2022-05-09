; ModuleID = '/llk/IR_all_yes/drivers/dma/iop-adma.c_pt.bc'
source_filename = "../drivers/dma/iop-adma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.iop_adma_device = type { ptr, i32, i32, ptr, %struct.dma_device }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iop_adma_platform_data = type { i32, %struct.dma_cap_mask_t, i32 }
%struct.iop_adma_chan = type { i32, %struct.spinlock, ptr, %struct.list_head, ptr, %struct.dma_chan, ptr, %struct.list_head, i32, %struct.tasklet_struct }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.iop_adma_desc_slot = type { %struct.list_head, %struct.list_head, ptr, ptr, i16, i16, i16, %struct.list_head, %struct.dma_async_tx_descriptor, %union.anon.75 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%union.anon.75 = type { ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.iop3xx_desc_dma = type { i32, %union.anon.80, %union.anon.81, %union.anon.82, i32, %union.anon.83, i32 }
%union.anon.80 = type { i32 }
%union.anon.81 = type { i32 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { i32 }
%struct.iop3xx_desc_aau = type { i32, [4 x i32], i32, i32, %union.anon.78, [31 x %union.anon.79] }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_iop_adma__305_1549_iop_adma_driver_init6 = internal global ptr @iop_adma_driver_init, section ".initcall6.init", align 4
@iop_adma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iop_adma_probe, ptr @iop_adma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iop_adma_driver_exit = internal global ptr @iop_adma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [34 x i8] c"iop_adma.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [44 x i8] c"iop_adma.description=IOP ADMA Engine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [35 x i8] c"iop_adma.file=drivers/dma/iop-adma\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [21 x i8] c"iop_adma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias310 = internal constant [33 x i8] c"iop_adma.alias=platform:iop-adma\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iop-adma\00", [23 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@iop_adma_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iop_adma\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iop_adma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/iop-adma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: allocated descriptor pool virt %p phys %pad\0A\00", [47 x i8] zeroinitializer }, align 32
@iop_adma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&iop_chan->lock\00", [16 x i8] zeroinitializer }, align 32
@iop_adma_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 1, i8 90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"memcpy self test returned %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iop_adma_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 1, i8 92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xor self test returned %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iop_adma_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pq self test returned %d\0A\00", [38 x i8] zeroinitializer }, align 32
@iop_adma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1419, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Intel(R) IOP: ( %s%s%s%s%s%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iop_adma_probe._entry_ptr = internal global ptr @iop_adma_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pq \00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pq_val \00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xor \00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xor_val \00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpy \00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"intr \00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iop_adma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016IOP ADMA Channel only initialized %d descriptor slots\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iop_adma_alloc_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@iop_adma_alloc_chan_resources._entry_ptr = internal global ptr @iop_adma_alloc_chan_resources._entry, section ".printk_index", align 4
@iop_adma_alloc_chan_resources.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"allocated %d descriptor slots last_used: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@iop_adma_tx_submit.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iop_adma_tx_submit\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s cookie: %d slot: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@iop_adma_check_threshold.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iop_adma_check_threshold\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pending: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@iop_chan_start_null_memcpy.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 1, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iop_chan_start_null_memcpy\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@iop_chan_start_null_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1484, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate null descriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@iop_chan_start_null_memcpy._entry_ptr = internal global ptr @iop_chan_start_null_memcpy._entry, section ".printk_index", align 4
@iop_adma_alloc_slots.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iop_adma_alloc_slots\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"allocated slot: %d (desc %p phys: %#llx) slots_per_op %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.27, i8 0, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__iop_adma_slot_cleanup\00", [40 x i8] zeroinitializer }, align 32
@__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\09cookie: %d slot: %d busy: %d this_desc: %pad next_desc: %#llx ack: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09group++\0A\00", [22 x i8] zeroinitializer }, align 32
@__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.35, i8 0, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09group end\0A\00", [20 x i8] zeroinitializer }, align 32
@__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.36, i8 0, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09iter%d result: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.37, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\09grp_start->xor_check_result: %p\0A\00", [62 x i8] zeroinitializer }, align 32
@__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.38, i8 0, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09completed cookie %d\0A\00", [42 x i8] zeroinitializer }, align 32
@iop_adma_clean_slot.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iop_adma_clean_slot\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\09free slot: %d slots_per_op: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@iop_chan_start_null_xor.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.27, i8 1, i8 117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iop_chan_start_null_xor\00", [40 x i8] zeroinitializer }, align 32
@iop_chan_start_null_xor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.41, ptr @.str.3, i32 1537, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@iop_chan_start_null_xor._entry_ptr = internal global ptr @iop_chan_start_null_xor._entry, section ".printk_index", align 4
@iop3xx_aau_xor_slot_count.slot_count_table = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\02\02\02\02\04\04\04\04\04\04\04\04\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", [32 x i8] zeroinitializer }, align 32
@__desc_idx.desc_idx_table = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30], align 4
@iop_adma_free_chan_resources.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iop_adma_free_chan_resources\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s slots_allocated %d\0A\00", [41 x i8] zeroinitializer }, align 32
@iop_adma_free_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013IOP: Freeing %d in use descriptors!\0A\00", [57 x i8] zeroinitializer }, align 32
@iop_adma_free_chan_resources._entry_ptr = internal global ptr @iop_adma_free_chan_resources._entry, section ".printk_index", align 4
@iop_adma_prep_dma_memcpy.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iop_adma_prep_dma_memcpy\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s len: %zu\0A\00", [19 x i8] zeroinitializer }, align 32
@iop_adma_prep_dma_xor.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iop_adma_prep_dma_xor\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s src_cnt: %d len: %zu flags: %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iop_adma_prep_dma_xor_val\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s src_cnt: %d len: %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.51, i8 0, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\09%s: grp_start->xor_check_result: %p\0A\00", [58 x i8] zeroinitializer }, align 32
@iop_adma_prep_dma_pq.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.3, ptr @.str.48, i8 0, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iop_adma_prep_dma_pq\00", [43 x i8] zeroinitializer }, align 32
@iop_adma_prep_dma_pq_val.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.50, i8 0, i8 -85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iop_adma_prep_dma_pq_val\00", [39 x i8] zeroinitializer }, align 32
@iop_adma_prep_dma_interrupt.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.27, i8 0, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iop_adma_prep_dma_interrupt\00", [36 x i8] zeroinitializer }, align 32
@iop_adma_eot_handler.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.27, i8 0, i8 -63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iop_adma_eot_handler\00", [43 x i8] zeroinitializer }, align 32
@iop_adma_eoc_handler.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.27, i8 0, i8 -60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iop_adma_eoc_handler\00", [43 x i8] zeroinitializer }, align 32
@iop_adma_err_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 807, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error ( %s%s%s%s%s%s%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iop_adma_err_handler\00", [43 x i8] zeroinitializer }, align 32
@iop_adma_err_handler._entry_ptr = internal global ptr @iop_adma_err_handler._entry, section ".printk_index", align 4
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"int_mabort \00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_tabort \00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_mabort \00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"split_tx \00", [22 x i8] zeroinitializer }, align 32
@iop_adma_memcpy_self_test.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.27, i8 0, i8 -46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iop_adma_memcpy_self_test\00", [38 x i8] zeroinitializer }, align 32
@iop_adma_memcpy_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.67, ptr @.str.3, i32 881, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Self-test copy timed out, disabling\0A\00", [59 x i8] zeroinitializer }, align 32
@iop_adma_memcpy_self_test._entry_ptr = internal global ptr @iop_adma_memcpy_self_test._entry, section ".printk_index", align 4
@iop_adma_memcpy_self_test._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.3, i32 891, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Self-test copy failed compare, disabling\0A\00", [54 x i8] zeroinitializer }, align 32
@iop_adma_memcpy_self_test._entry_ptr.71 = internal global ptr @iop_adma_memcpy_self_test._entry.69, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@iop_adma_xor_val_self_test.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.27, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iop_adma_xor_val_self_test\00", [37 x i8] zeroinitializer }, align 32
@iop_adma_xor_val_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.74, ptr @.str.3, i32 981, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Self-test xor timed out, disabling\0A\00", [60 x i8] zeroinitializer }, align 32
@iop_adma_xor_val_self_test._entry_ptr = internal global ptr @iop_adma_xor_val_self_test._entry, section ".printk_index", align 4
@iop_adma_xor_val_self_test._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.3, i32 993, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Self-test xor failed compare, disabling\0A\00", [55 x i8] zeroinitializer }, align 32
@iop_adma_xor_val_self_test._entry_ptr.78 = internal global ptr @iop_adma_xor_val_self_test._entry.76, section ".printk_index", align 4
@iop_adma_xor_val_self_test._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.3, i32 1027, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Self-test zero sum timed out, disabling\0A\00", [55 x i8] zeroinitializer }, align 32
@iop_adma_xor_val_self_test._entry_ptr.81 = internal global ptr @iop_adma_xor_val_self_test._entry.79, section ".printk_index", align 4
@iop_adma_xor_val_self_test._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.74, ptr @.str.3, i32 1034, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Self-test zero sum failed compare, disabling\0A\00", [50 x i8] zeroinitializer }, align 32
@iop_adma_xor_val_self_test._entry_ptr.84 = internal global ptr @iop_adma_xor_val_self_test._entry.82, section ".printk_index", align 4
@iop_adma_xor_val_self_test._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.74, ptr @.str.3, i32 1056, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Self-test non-zero sum timed out, disabling\0A\00", [51 x i8] zeroinitializer }, align 32
@iop_adma_xor_val_self_test._entry_ptr.87 = internal global ptr @iop_adma_xor_val_self_test._entry.85, section ".printk_index", align 4
@iop_adma_xor_val_self_test._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.74, ptr @.str.3, i32 1063, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Self-test non-zero sum failed compare, disabling\0A\00", [46 x i8] zeroinitializer }, align 32
@iop_adma_xor_val_self_test._entry_ptr.90 = internal global ptr @iop_adma_xor_val_self_test._entry.88, section ".printk_index", align 4
@iop_adma_pq_zero_sum_self_test.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.3, ptr @.str.27, i8 1, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iop_adma_pq_zero_sum_self_test\00", [33 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.92, ptr @.str.3, i32 1151, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Self-test pq timed out, disabling\0A\00", [61 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry_ptr = internal global ptr @iop_adma_pq_zero_sum_self_test._entry, section ".printk_index", align 4
@iop_adma_pq_zero_sum_self_test._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.92, ptr @.str.3, i32 1160, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Self-test p failed compare, disabling\0A\00", [57 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry_ptr.96 = internal global ptr @iop_adma_pq_zero_sum_self_test._entry.94, section ".printk_index", align 4
@iop_adma_pq_zero_sum_self_test._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.92, ptr @.str.3, i32 1166, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Self-test q failed compare, disabling\0A\00", [57 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry_ptr.99 = internal global ptr @iop_adma_pq_zero_sum_self_test._entry.97, section ".printk_index", align 4
@iop_adma_pq_zero_sum_self_test._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.92, ptr @.str.3, i32 1188, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Self-test pq-zero-sum timed out, disabling\0A\00", [52 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry_ptr.102 = internal global ptr @iop_adma_pq_zero_sum_self_test._entry.100, section ".printk_index", align 4
@iop_adma_pq_zero_sum_self_test._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.92, ptr @.str.3, i32 1195, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Self-test pq-zero-sum failed to validate: %x\0A\00", [50 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry_ptr.105 = internal global ptr @iop_adma_pq_zero_sum_self_test._entry.103, section ".printk_index", align 4
@iop_adma_pq_zero_sum_self_test._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.92, ptr @.str.3, i32 1220, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Self-test !pq-zero-sum timed out, disabling\0A\00", [51 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry_ptr.108 = internal global ptr @iop_adma_pq_zero_sum_self_test._entry.106, section ".printk_index", align 4
@iop_adma_pq_zero_sum_self_test._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.92, ptr @.str.3, i32 1227, ptr @.str.29, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Self-test !pq-zero-sum failed to validate: %x\0A\00", [49 x i8] zeroinitializer }, align 32
@iop_adma_pq_zero_sum_self_test._entry_ptr.111 = internal global ptr @iop_adma_pq_zero_sum_self_test._entry.109, section ".printk_index", align 4
@switch.table.iop_adma_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 46, i32 46, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.iop_adma_device_clear_err_status = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 46, i32 46, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.iop_chan_start_null_memcpy = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 46, i32 46, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.iop_chan_start_null_xor = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 46, i32 46, i32 32], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [33 x i64] [i64 31, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32]
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"iop_adma_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1541, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1545, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1300, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1377, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1386, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1393, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1402, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1413, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 437, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 464, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 399, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 352, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1441, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1483, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 308, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 112, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 118, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 154, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 164, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 176, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 182, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 229, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 94, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1494, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1536, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"slot_count_table\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [26 x i8] c"../drivers/dma/iop-adma.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 308, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 736, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 742, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 517, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 549, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 583, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 594, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 620, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 684, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 490, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 772, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 785, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 799, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 842, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 880, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 890, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 326, i32 6 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 923, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 980, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 992, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1026, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1033, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1055, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1062, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1099, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1151, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1160, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1166, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1188, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1194, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1220, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.443 = private constant [26 x i8] c"../drivers/dma/iop-adma.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1226, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant [28 x i8] c"switch.table.iop_adma_probe\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [46 x i8] c"switch.table.iop_adma_device_clear_err_status\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [40 x i8] c"switch.table.iop_chan_start_null_memcpy\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [37 x i8] c"switch.table.iop_chan_start_null_xor\00", align 1
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_alias310, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_iop_adma_driver_exit, ptr @__initcall__kmod_iop_adma__305_1549_iop_adma_driver_init6, ptr @iop_adma_alloc_chan_resources._entry, ptr @iop_adma_alloc_chan_resources._entry_ptr, ptr @iop_adma_driver_exit, ptr @iop_adma_err_handler._entry, ptr @iop_adma_err_handler._entry_ptr, ptr @iop_adma_free_chan_resources._entry, ptr @iop_adma_free_chan_resources._entry_ptr, ptr @iop_adma_memcpy_self_test._entry, ptr @iop_adma_memcpy_self_test._entry.69, ptr @iop_adma_memcpy_self_test._entry_ptr, ptr @iop_adma_memcpy_self_test._entry_ptr.71, ptr @iop_adma_pq_zero_sum_self_test._entry, ptr @iop_adma_pq_zero_sum_self_test._entry.100, ptr @iop_adma_pq_zero_sum_self_test._entry.103, ptr @iop_adma_pq_zero_sum_self_test._entry.106, ptr @iop_adma_pq_zero_sum_self_test._entry.109, ptr @iop_adma_pq_zero_sum_self_test._entry.94, ptr @iop_adma_pq_zero_sum_self_test._entry.97, ptr @iop_adma_pq_zero_sum_self_test._entry_ptr, ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.102, ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.105, ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.108, ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.111, ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.96, ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.99, ptr @iop_adma_probe._entry, ptr @iop_adma_probe._entry_ptr, ptr @iop_adma_xor_val_self_test._entry, ptr @iop_adma_xor_val_self_test._entry.76, ptr @iop_adma_xor_val_self_test._entry.79, ptr @iop_adma_xor_val_self_test._entry.82, ptr @iop_adma_xor_val_self_test._entry.85, ptr @iop_adma_xor_val_self_test._entry.88, ptr @iop_adma_xor_val_self_test._entry_ptr, ptr @iop_adma_xor_val_self_test._entry_ptr.78, ptr @iop_adma_xor_val_self_test._entry_ptr.81, ptr @iop_adma_xor_val_self_test._entry_ptr.84, ptr @iop_adma_xor_val_self_test._entry_ptr.87, ptr @iop_adma_xor_val_self_test._entry_ptr.90, ptr @iop_chan_start_null_memcpy._entry, ptr @iop_chan_start_null_memcpy._entry_ptr, ptr @iop_chan_start_null_xor._entry, ptr @iop_chan_start_null_xor._entry_ptr, ptr @iop_adma_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @iop_adma_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @iop3xx_aau_xor_slot_count.slot_count_table, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @switch.table.iop_adma_probe, ptr @switch.table.iop_adma_device_clear_err_status, ptr @switch.table.iop_chan_start_null_memcpy, ptr @switch.table.iop_chan_start_null_xor], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_chan_start_null_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_chan_start_null_xor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop3xx_aau_xor_slot_count.slot_count_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_free_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_err_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_memcpy_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_memcpy_self_test._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_xor_val_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_xor_val_self_test._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_xor_val_self_test._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_xor_val_self_test._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_xor_val_self_test._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_xor_val_self_test._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_pq_zero_sum_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_pq_zero_sum_self_test._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_pq_zero_sum_self_test._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_pq_zero_sum_self_test._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_pq_zero_sum_self_test._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_pq_zero_sum_self_test._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop_adma_pq_zero_sum_self_test._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iop_adma_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iop_adma_device_clear_err_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iop_chan_start_null_memcpy to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iop_chan_start_null_xor to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iop_adma_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iop_adma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @iop_adma_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup217_crit_edge, label %if.end

entry.cleanup217_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup217

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %call4 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef %7) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup217_crit_edge, label %if.end7

if.end.cleanup217_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup217

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 380) #15
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup217_crit_edge, label %if.end11

if.end7.cleanup217_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup217

if.end11:                                         ; preds = %if.end7
  %common = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4
  %pool_size = getelementptr inbounds %struct.iop_adma_platform_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pool_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pool_size, align 4
  %dma_desc_pool = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %10, ptr noundef %dma_desc_pool, i32 noundef 3264, i32 noundef 4) #12
  %dma_desc_pool_virt = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %dma_desc_pool_virt, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end11.err_free_adev_crit_edge, label %do.body

if.end11.err_free_adev_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_adev

do.body:                                          ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_probe, %do.end)) #12
          to label %if.then23 [label %do.end], !srcloc !251

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_desc_pool_virt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %13, ptr noundef %dma_desc_pool) #12
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %id = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %id, align 4
  %cap_mask = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 6
  %cap_mask28 = getelementptr inbounds %struct.iop_adma_platform_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %cap_mask28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_mask28, align 4
  %19 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cap_mask, align 8
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %channels, ptr %prev.i, align 8
  %device_alloc_chan_resources = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 27
  %24 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @iop_adma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 8
  %device_free_chan_resources = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 29
  %25 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @iop_adma_free_chan_resources, ptr %device_free_chan_resources, align 8
  %device_tx_status = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 49
  %26 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @iop_adma_status, ptr %device_tx_status, align 8
  %device_issue_pending = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 50
  %27 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @iop_adma_issue_pending, ptr %device_issue_pending, align 4
  %dev31 = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 15
  %28 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev31, align 8
  %29 = load volatile i32, ptr %cap_mask, align 8
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool34.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool34.not, label %do.end.if.end36_crit_edge, label %if.then35

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_prep_dma_memcpy = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 30
  %30 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @iop_adma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.end.if.end36_crit_edge
  %31 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %cap_mask, align 8
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool39.not = icmp eq i32 %33, 0
  br i1 %tobool39.not, label %if.end36.if.end42_crit_edge, label %if.then40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %max_xor = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %max_xor to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 32, ptr %max_xor, align 8
  %device_prep_dma_xor = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 32
  %35 = ptrtoint ptr %device_prep_dma_xor to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @iop_adma_prep_dma_xor, ptr %device_prep_dma_xor, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge
  %36 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %cap_mask, align 8
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool45.not = icmp eq i32 %38, 0
  br i1 %tobool45.not, label %if.end42.if.end47_crit_edge, label %if.then46

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %device_prep_dma_xor_val = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 33
  %39 = ptrtoint ptr %device_prep_dma_xor_val to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @iop_adma_prep_dma_xor_val, ptr %device_prep_dma_xor_val, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end42.if.end47_crit_edge
  %40 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %cap_mask, align 8
  %42 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool50.not = icmp eq i32 %42, 0
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 236, 0\0A.popsection", ""() #12, !srcloc !252
  unreachable

if.end53:                                         ; preds = %if.end47
  %43 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %cap_mask, align 8
  %45 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool56.not = icmp eq i32 %45, 0
  br i1 %tobool56.not, label %if.end53.if.end58_crit_edge, label %if.then57

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %device_prep_dma_pq_val = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 35
  %46 = ptrtoint ptr %device_prep_dma_pq_val to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @iop_adma_prep_dma_pq_val, ptr %device_prep_dma_pq_val, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end53.if.end58_crit_edge
  %47 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %cap_mask, align 8
  %49 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool61.not = icmp eq i32 %49, 0
  br i1 %tobool61.not, label %if.end58.if.end63_crit_edge, label %if.then62

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %device_prep_dma_interrupt = getelementptr inbounds %struct.iop_adma_device, ptr %call7.i.i, i32 0, i32 4, i32 38
  %50 = ptrtoint ptr %device_prep_dma_interrupt to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @iop_adma_prep_dma_interrupt, ptr %device_prep_dma_interrupt, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58.if.end63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i339 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 168) #15
  %tobool65.not = icmp eq ptr %call7.i.i339, null
  br i1 %tobool65.not, label %if.end63.err_free_dma_crit_edge, label %if.end67

if.end63.err_free_dma_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_dma

if.end67:                                         ; preds = %if.end63
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 4
  %52 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %device, align 4
  %53 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call1, align 4
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end.i, align 4
  %sub.i341 = sub i32 1, %54
  %add.i342 = add i32 %sub.i341, %56
  %call71 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %54, i32 noundef %add.i342) #12
  %mmr_base = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 2
  %57 = ptrtoint ptr %mmr_base to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call71, ptr %mmr_base, align 8
  %tobool73.not = icmp eq ptr %call71, null
  br i1 %tobool73.not, label %if.end67.err_free_iop_chan_crit_edge, label %if.end75

if.end67.err_free_iop_chan_crit_edge:             ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

if.end75:                                         ; preds = %if.end67
  %irq_tasklet = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 9
  tail call void @tasklet_setup(ptr noundef %irq_tasklet, ptr noundef nonnull @iop_adma_tasklet) #12
  %58 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmr_base, align 8
  %add.ptr.i = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !253
  %61 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.iop_adma_device, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 849, 0\0A.popsection", ""() #12, !srcloc !254
  unreachable

switch.lookup:                                    ; preds = %if.end75
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.iop_adma_probe, i32 0, i32 %64
  %66 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and2.i = and i32 %switch.load, %60
  %67 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmr_base, align 8
  %add.ptr7.i = getelementptr i8, ptr %68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %and2.i) #12, !srcloc !255
  %call77 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %switch.lookup.err_free_iop_chan_crit_edge, label %if.else

switch.lookup.err_free_iop_chan_crit_edge:        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

for.cond:                                         ; preds = %if.else
  %call77.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.1)
  %cmp78.1 = icmp slt i32 %call77.1, 0
  br i1 %cmp78.1, label %for.cond.err_free_iop_chan_crit_edge, label %if.else.1

for.cond.err_free_iop_chan_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

if.else.1:                                        ; preds = %for.cond
  %69 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev, align 8
  %call.i343.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call77.1, ptr noundef nonnull @iop_adma_eoc_handler, ptr noundef null, i32 noundef 0, ptr noundef %70, ptr noundef nonnull %call7.i.i339) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343.1)
  %tobool84.not.1 = icmp eq i32 %call.i343.1, 0
  br i1 %tobool84.not.1, label %for.cond.1, label %if.else.1.err_free_iop_chan_crit_edge

if.else.1.err_free_iop_chan_crit_edge:            ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

for.cond.1:                                       ; preds = %if.else.1
  %call77.2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.2)
  %cmp78.2 = icmp slt i32 %call77.2, 0
  br i1 %cmp78.2, label %for.cond.1.err_free_iop_chan_crit_edge, label %if.else.2

for.cond.1.err_free_iop_chan_crit_edge:           ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

if.else.2:                                        ; preds = %for.cond.1
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 8
  %call.i343.2 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call77.2, ptr noundef nonnull @iop_adma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef %72, ptr noundef nonnull %call7.i.i339) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343.2)
  %tobool84.not.2 = icmp eq i32 %call.i343.2, 0
  br i1 %tobool84.not.2, label %for.cond.2, label %if.else.2.err_free_iop_chan_crit_edge

if.else.2.err_free_iop_chan_crit_edge:            ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

for.cond.2:                                       ; preds = %if.else.2
  %lock = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @iop_adma_probe.__key, i16 noundef signext 3) #12
  %chain = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 3
  %73 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %chain, ptr %chain, align 4
  %prev.i344 = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %prev.i344 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %chain, ptr %prev.i344, align 8
  %all_slots = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 7
  %75 = ptrtoint ptr %all_slots to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %all_slots, ptr %all_slots, align 4
  %prev.i345 = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %prev.i345 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %all_slots, ptr %prev.i345, align 8
  %common92 = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 5
  %77 = ptrtoint ptr %common92 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %common, ptr %common92, align 8
  %cookie.i = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 5, i32 2
  %78 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %cookie.i, align 8
  %completed_cookie.i = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 5, i32 3
  %79 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %completed_cookie.i, align 4
  %device_node = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 5, i32 8
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %81, ptr noundef %channels) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.cond.2.list_add_tail.exit_crit_edge

for.cond.2.list_add_tail.exit_crit_edge:          ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.else:                                          ; preds = %switch.lookup
  %82 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev, align 8
  %call.i343 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call77, ptr noundef nonnull @iop_adma_eot_handler, ptr noundef null, i32 noundef 0, ptr noundef %83, ptr noundef nonnull %call7.i.i339) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343)
  %tobool84.not = icmp eq i32 %call.i343, 0
  br i1 %tobool84.not, label %for.cond, label %if.else.err_free_iop_chan_crit_edge

if.else.err_free_iop_chan_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

if.end.i.i:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %device_node, ptr %prev.i, align 8
  %85 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %channels, ptr %device_node, align 8
  %prev3.i.i = getelementptr inbounds %struct.iop_adma_chan, ptr %call7.i.i339, i32 0, i32 5, i32 8, i32 1
  %86 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %81, ptr %prev3.i.i, align 4
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %device_node, ptr %81, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.cond.2.list_add_tail.exit_crit_edge
  %88 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %cap_mask, align 8
  %and1.i.i347 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i347)
  %tobool99.not = icmp eq i32 %and1.i.i347, 0
  br i1 %tobool99.not, label %list_add_tail.exit.if.end124_crit_edge, label %if.then100

list_add_tail.exit.if.end124_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then100:                                       ; preds = %list_add_tail.exit
  %call101 = tail call fastcc i32 @iop_adma_memcpy_self_test(ptr noundef nonnull %call7.i.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_probe, %do.end120)) #12
          to label %if.then116 [label %do.end120], !srcloc !251

if.then116:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call101) #12
  br label %do.end120

do.end120:                                        ; preds = %if.then116, %if.then100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool121.not = icmp eq i32 %call101, 0
  br i1 %tobool121.not, label %do.end120.if.end124_crit_edge, label %do.end120.err_free_iop_chan_crit_edge

do.end120.err_free_iop_chan_crit_edge:            ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

do.end120.if.end124_crit_edge:                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.end124:                                        ; preds = %do.end120.if.end124_crit_edge, %list_add_tail.exit.if.end124_crit_edge
  %90 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %cap_mask, align 8
  %92 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool127.not = icmp eq i32 %92, 0
  br i1 %tobool127.not, label %if.end124.if.end152_crit_edge, label %if.then128

if.end124.if.end152_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then128:                                       ; preds = %if.end124
  %call129 = tail call fastcc i32 @iop_adma_xor_val_self_test(ptr noundef nonnull %call7.i.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_probe, %do.end148)) #12
          to label %if.then144 [label %do.end148], !srcloc !251

if.then144:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call129) #12
  br label %do.end148

do.end148:                                        ; preds = %if.then144, %if.then128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool149.not = icmp eq i32 %call129, 0
  br i1 %tobool149.not, label %do.end148.if.end152_crit_edge, label %do.end148.err_free_iop_chan_crit_edge

do.end148.err_free_iop_chan_crit_edge:            ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

do.end148.if.end152_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.end152:                                        ; preds = %do.end148.if.end152_crit_edge, %if.end124.if.end152_crit_edge
  %93 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %cap_mask, align 8
  %95 = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool155.not = icmp eq i32 %95, 0
  br i1 %tobool155.not, label %if.end152.do.end186_crit_edge, label %land.lhs.true

if.end152.do.end186_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end186

land.lhs.true:                                    ; preds = %if.end152
  %96 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %cap_mask, align 8
  %98 = and i32 %97, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool158.not = icmp eq i32 %98, 0
  br i1 %tobool158.not, label %land.lhs.true.do.end186_crit_edge, label %if.then159

land.lhs.true.do.end186_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end186

if.then159:                                       ; preds = %land.lhs.true
  %call160 = tail call fastcc i32 @iop_adma_pq_zero_sum_self_test(ptr noundef nonnull %call7.i.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_probe, %do.end179)) #12
          to label %if.then175 [label %do.end179], !srcloc !251

if.then175:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call160) #12
  br label %do.end179

do.end179:                                        ; preds = %if.then175, %if.then159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool180.not = icmp eq i32 %call160, 0
  br i1 %tobool180.not, label %do.end179.do.end186_crit_edge, label %do.end179.err_free_iop_chan_crit_edge

do.end179.err_free_iop_chan_crit_edge:            ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_iop_chan

do.end179.do.end186_crit_edge:                    ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end186

do.end186:                                        ; preds = %do.end179.do.end186_crit_edge, %land.lhs.true.do.end186_crit_edge, %if.end152.do.end186_crit_edge
  %99 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %cap_mask, align 8
  %101 = and i32 %100, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool190.not = icmp eq i32 %101, 0
  %cond = select i1 %tobool190.not, ptr @.str.13, ptr @.str.12
  %102 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %cap_mask, align 8
  %104 = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool193.not = icmp eq i32 %104, 0
  %cond194 = select i1 %tobool193.not, ptr @.str.13, ptr @.str.14
  %105 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %cap_mask, align 8
  %107 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool197.not = icmp eq i32 %107, 0
  %cond198 = select i1 %tobool197.not, ptr @.str.13, ptr @.str.15
  %108 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %cap_mask, align 8
  %110 = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool201.not = icmp eq i32 %110, 0
  %cond202 = select i1 %tobool201.not, ptr @.str.13, ptr @.str.16
  %111 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %cap_mask, align 8
  %and1.i.i362 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i362)
  %tobool205.not = icmp eq i32 %and1.i.i362, 0
  %cond206 = select i1 %tobool205.not, ptr @.str.13, ptr @.str.17
  %113 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %cap_mask, align 8
  %115 = and i32 %114, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool209.not = icmp eq i32 %115, 0
  %cond210 = select i1 %tobool209.not, ptr @.str.13, ptr @.str.18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond, ptr noundef nonnull %cond194, ptr noundef nonnull %cond198, ptr noundef nonnull %cond202, ptr noundef nonnull %cond206, ptr noundef nonnull %cond210) #16
  %call211 = tail call i32 @dma_async_device_register(ptr noundef %common) #12
  br label %cleanup217

err_free_iop_chan:                                ; preds = %do.end179.err_free_iop_chan_crit_edge, %do.end148.err_free_iop_chan_crit_edge, %do.end120.err_free_iop_chan_crit_edge, %if.else.err_free_iop_chan_crit_edge, %if.else.2.err_free_iop_chan_crit_edge, %for.cond.1.err_free_iop_chan_crit_edge, %if.else.1.err_free_iop_chan_crit_edge, %for.cond.err_free_iop_chan_crit_edge, %switch.lookup.err_free_iop_chan_crit_edge, %if.end67.err_free_iop_chan_crit_edge
  %ret.5 = phi i32 [ %call101, %do.end120.err_free_iop_chan_crit_edge ], [ %call129, %do.end148.err_free_iop_chan_crit_edge ], [ %call160, %do.end179.err_free_iop_chan_crit_edge ], [ -12, %if.end67.err_free_iop_chan_crit_edge ], [ %call.i343, %if.else.err_free_iop_chan_crit_edge ], [ -6, %switch.lookup.err_free_iop_chan_crit_edge ], [ -6, %for.cond.err_free_iop_chan_crit_edge ], [ %call.i343.1, %if.else.1.err_free_iop_chan_crit_edge ], [ -6, %for.cond.1.err_free_iop_chan_crit_edge ], [ %call.i343.2, %if.else.2.err_free_iop_chan_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i339) #12
  br label %err_free_dma

err_free_dma:                                     ; preds = %err_free_iop_chan, %if.end63.err_free_dma_crit_edge
  %ret.6 = phi i32 [ %ret.5, %err_free_iop_chan ], [ -12, %if.end63.err_free_dma_crit_edge ]
  %116 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call7.i.i, align 8
  %dev213 = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %pool_size to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pool_size, align 4
  %120 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dma_desc_pool_virt, align 4
  %122 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma_desc_pool, align 8
  tail call void @dma_free_attrs(ptr noundef %dev213, i32 noundef %119, ptr noundef %121, i32 noundef %123, i32 noundef 0) #12
  br label %err_free_adev

err_free_adev:                                    ; preds = %err_free_dma, %if.end11.err_free_adev_crit_edge
  %ret.7 = phi i32 [ %ret.6, %err_free_dma ], [ -12, %if.end11.err_free_adev_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup217

cleanup217:                                       ; preds = %err_free_adev, %do.end186, %if.end7.cleanup217_crit_edge, %if.end.cleanup217_crit_edge, %entry.cleanup217_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup217_crit_edge ], [ -16, %if.end.cleanup217_crit_edge ], [ -12, %if.end7.cleanup217_crit_edge ], [ %ret.7, %err_free_adev ], [ 0, %do.end186 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %common = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4
  tail call void @dma_async_device_unregister(ptr noundef %common) #12
  %pool_size = getelementptr inbounds %struct.iop_adma_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pool_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pool_size, align 4
  %dma_desc_pool_virt = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_desc_pool_virt, align 4
  %dma_desc_pool = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_desc_pool, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #12
  %channels = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 4
  %cmp.not33 = icmp eq ptr %11, %channels
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in34 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %11, %entry.for.body_crit_edge ]
  %12 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in34, align 4
  %add.ptr14 = getelementptr i8, ptr %.pn.in34, i32 -96
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr14) #12
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  %slots_allocated = getelementptr i8, ptr %chan, i32 76
  %0 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slots_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %device = getelementptr i8, ptr %chan, i32 -4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %pool_size = getelementptr inbounds %struct.iop_adma_platform_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pool_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pool_size, align 4
  %div111 = lshr i32 %9, 5
  %lock = getelementptr i8, ptr %chan, i32 -60
  %all_slots = getelementptr i8, ptr %chan, i32 68
  %prev.i114 = getelementptr i8, ptr %chan, i32 72
  br label %do.body

do.body:                                          ; preds = %list_add_tail.exit.do.body_crit_edge, %entry
  %10 = phi i32 [ %39, %list_add_tail.exit.do.body_crit_edge ], [ %1, %entry ]
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %div111)
  %cmp = icmp eq i32 %10, %div111
  br i1 %cmp, label %do.body.do.end23_crit_edge, label %if.end

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 144) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %10) #16
  br label %do.end23

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %dma_desc_pool_virt = getelementptr inbounds %struct.iop_adma_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_desc_pool_virt, align 4
  %mul = shl i32 %10, 5
  %arrayidx = getelementptr i8, ptr %15, i32 %mul
  %hw_desc10 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %hw_desc10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %hw_desc10, align 8
  %async_tx = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef %async_tx, ptr noundef %chan) #12
  %tx_submit = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @iop_adma_tx_submit, ptr %tx_submit, align 8
  %tx_list = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %tx_list, ptr %tx_list, align 8
  %prev.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tx_list, ptr %prev.i, align 4
  %chain_node = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %chain_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %chain_node, ptr %chain_node, align 8
  %prev.i112 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %chain_node, ptr %prev.i112, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i113 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %prev.i113, align 4
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %dma_desc_pool = getelementptr inbounds %struct.iop_adma_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_desc_pool, align 4
  %add = add i32 %27, %mul
  %phys = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %phys, align 8
  %conv = trunc i32 %10 to i16
  %idx15 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %idx15 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %idx15, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %30 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slots_allocated, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %slots_allocated, align 4
  %32 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i114, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %33, ptr noundef %all_slots) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %prev.i114, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %all_slots, ptr %call7.i.i, align 8
  %36 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i113, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %38 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slots_allocated, align 4
  %cmp21 = icmp slt i32 %39, %div111
  br i1 %cmp21, label %list_add_tail.exit.do.body_crit_edge, label %list_add_tail.exit.do.end23_crit_edge

list_add_tail.exit.do.end23_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end23:                                         ; preds = %list_add_tail.exit.do.end23_crit_edge, %do.end, %do.body.do.end23_crit_edge
  %40 = phi i32 [ %10, %do.end ], [ %div111, %do.body.do.end23_crit_edge ], [ %10, %list_add_tail.exit.do.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool24.not = icmp eq i32 %40, 0
  br i1 %tobool24.not, label %do.end23.do.body33_crit_edge, label %land.lhs.true

do.end23.do.body33_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

land.lhs.true:                                    ; preds = %do.end23
  %last_used = getelementptr i8, ptr %chan, i32 64
  %41 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %last_used, align 4
  %tobool25.not = icmp eq ptr %42, null
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true.do.body33_crit_edge

land.lhs.true.do.body33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %all_slots to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %all_slots, align 4
  %45 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %last_used, align 4
  br label %do.body33

do.body33:                                        ; preds = %if.then26, %land.lhs.true.do.body33_crit_edge, %do.end23.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_alloc_chan_resources.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_alloc_chan_resources, %do.end47)) #12
          to label %if.then40 [label %do.end47], !srcloc !251

if.then40:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 4
  %dev42 = getelementptr inbounds %struct.iop_adma_device, ptr %47, i32 0, i32 4, i32 15
  %48 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev42, align 4
  %50 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %slots_allocated, align 4
  %last_used44 = getelementptr i8, ptr %chan, i32 64
  %52 = ptrtoint ptr %last_used44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %last_used44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_alloc_chan_resources.__UNIQUE_ID_ddebug284, ptr noundef %49, ptr noundef nonnull @.str.21, i32 noundef %51, ptr noundef %53) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %do.body33
  br i1 %tobool.not, label %if.then49, label %do.end47.if.end70_crit_edge

do.end47.if.end70_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then49:                                        ; preds = %do.end47
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  %cap_mask = getelementptr inbounds %struct.iop_adma_device, ptr %55, i32 0, i32 4, i32 6
  %56 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %cap_mask, align 4
  %and1.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool53.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iop_chan_start_null_memcpy(ptr noundef %add.ptr)
  br label %if.end70

if.else:                                          ; preds = %if.then49
  %58 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %cap_mask, align 4
  %60 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool59.not = icmp eq i32 %60, 0
  br i1 %tobool59.not, label %do.body62, label %if.then60

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iop_chan_start_null_xor(ptr noundef %add.ptr)
  br label %if.end70

do.body62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #12, !srcloc !256
  unreachable

if.end70:                                         ; preds = %if.then60, %if.then54, %do.end47.if.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp71 = icmp sgt i32 %40, 0
  %spec.select = select i1 %cmp71, i32 %40, i32 -12
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iop_adma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  %lock.i = getelementptr i8, ptr %chan, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  tail call fastcc void @__iop_adma_slot_cleanup(ptr noundef %add.ptr) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %chain = getelementptr i8, ptr %chan, i32 -12
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %cmp.not81 = icmp eq ptr %1, %chain
  br i1 %cmp.not81, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %in_use_descs.082 = phi i32 [ %inc, %list_del.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %2, align 4
  %inc = add i32 %in_use_descs.082, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn, %chain
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %in_use_descs.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %list_del.exit.for.end_crit_edge ]
  %all_slots = getelementptr i8, ptr %chan, i32 68
  %prev = getelementptr i8, ptr %chan, i32 72
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev, align 4
  %cmp26.not83 = icmp eq ptr %13, %all_slots
  br i1 %cmp26.not83, label %for.end.for.end36_crit_edge, label %for.body28.lr.ph

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.body28.lr.ph:                                 ; preds = %for.end
  %slots_allocated = getelementptr i8, ptr %chan, i32 76
  br label %for.body28

for.body28:                                       ; preds = %list_del.exit79.for.body28_crit_edge, %for.body28.lr.ph
  %iter.184 = phi ptr [ %13, %for.body28.lr.ph ], [ %_iter.1, %list_del.exit79.for.body28_crit_edge ]
  %_iter.1.in = getelementptr inbounds %struct.list_head, ptr %iter.184, i32 0, i32 1
  %14 = ptrtoint ptr %_iter.1.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %_iter.1 = load ptr, ptr %_iter.1.in, align 4
  %call.i.i74 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.184) #12
  br i1 %call.i.i74, label %if.end.i.i77, label %for.body28.list_del.exit79_crit_edge

for.body28.list_del.exit79_crit_edge:             ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit79

if.end.i.i77:                                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %_iter.1.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_iter.1.in, align 4
  %17 = ptrtoint ptr %iter.184 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iter.184, align 4
  %prev1.i.i.i76 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i76, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit79

list_del.exit79:                                  ; preds = %if.end.i.i77, %for.body28.list_del.exit79_crit_edge
  %21 = ptrtoint ptr %iter.184 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %iter.184, align 4
  %22 = ptrtoint ptr %_iter.1.in to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %_iter.1.in, align 4
  tail call void @kfree(ptr noundef %iter.184) #12
  %23 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slots_allocated, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %slots_allocated, align 4
  %cmp26.not = icmp eq ptr %_iter.1, %all_slots
  br i1 %cmp26.not, label %list_del.exit79.for.end36_crit_edge, label %list_del.exit79.for.body28_crit_edge

list_del.exit79.for.body28_crit_edge:             ; preds = %list_del.exit79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28

list_del.exit79.for.end36_crit_edge:              ; preds = %list_del.exit79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.end36:                                        ; preds = %list_del.exit79.for.end36_crit_edge, %for.end.for.end36_crit_edge
  %last_used = getelementptr i8, ptr %chan, i32 64
  %25 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %last_used, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_free_chan_resources.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_free_chan_resources, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %chan, i32 -4
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %27, i32 0, i32 4, i32 15
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %slots_allocated42 = getelementptr i8, ptr %chan, i32 76
  %30 = ptrtoint ptr %slots_allocated42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slots_allocated42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_free_chan_resources.__UNIQUE_ID_ddebug293, ptr noundef %29, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %31) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end36
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %in_use_descs.0.lcssa)
  %cmp44 = icmp sgt i32 %in_use_descs.0.lcssa, 1
  br i1 %cmp44, label %do.end48, label %do.end.if.end51_crit_edge

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end48:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i32 %in_use_descs.0.lcssa, -1
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %sub) #16
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.end.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  %lock.i = getelementptr i8, ptr %chan, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  tail call fastcc void @__iop_adma_slot_cleanup(ptr noundef %add.ptr) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %8 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie1.i, align 4
  %10 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  br i1 %tobool.not.i, label %if.end.if.end.i18_crit_edge, label %if.then.i14

if.end.if.end.i18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i18

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %txstate, align 4
  %used2.i11 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %13 = ptrtoint ptr %used2.i11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %used2.i11, align 4
  %residue.i12 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %14 = ptrtoint ptr %residue.i12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %residue.i12, align 4
  %in_flight_bytes.i13 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %15 = ptrtoint ptr %in_flight_bytes.i13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %in_flight_bytes.i13, align 4
  br label %if.end.i18

if.end.i18:                                       ; preds = %if.then.i14, %if.end.if.end.i18_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not.i.i15 = icmp sgt i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp4.not.i.i16 = icmp sge i32 %11, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cookie)
  %cmp5.i.i17 = icmp slt i32 %9, %cookie
  br i1 %cmp.not.i.i15, label %if.else.i.i22, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %if.end.i18
  %or.cond.i.i19 = or i1 %cmp5.i.i17, %cmp4.not.i.i16
  br i1 %or.cond.i.i19, label %if.then.i.i20.cleanup_crit_edge, label %if.then.i.i20.if.end8.i.i23_crit_edge

if.then.i.i20.if.end8.i.i23_crit_edge:            ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i23

if.then.i.i20.cleanup_crit_edge:                  ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i.i22:                                    ; preds = %if.end.i18
  %or.cond16.i.i21 = and i1 %cmp5.i.i17, %cmp4.not.i.i16
  br i1 %or.cond16.i.i21, label %if.else.i.i22.cleanup_crit_edge, label %if.else.i.i22.if.end8.i.i23_crit_edge

if.else.i.i22.if.end8.i.i23_crit_edge:            ; preds = %if.else.i.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i23

if.else.i.i22.cleanup_crit_edge:                  ; preds = %if.else.i.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i23:                                    ; preds = %if.else.i.i22.if.end8.i.i23_crit_edge, %if.then.i.i20.if.end8.i.i23_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i.i23, %if.else.i.i22.cleanup_crit_edge, %if.then.i.i20.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8.i.i23 ], [ 0, %if.then.i.i20.cleanup_crit_edge ], [ 0, %if.else.i.i22.cleanup_crit_edge ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iop_adma_issue_pending(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %add.ptr, align 4
  %mmr_base.i = getelementptr i8, ptr %chan, i32 -16
  %3 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmr_base.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !253
  %or.i = or i32 %5, 2
  %6 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmr_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %or.i) #12, !srcloc !255
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iop_adma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dma_dest, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body, !prof !258

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %len)
  %cmp = icmp ugt i32 %len, 16777216
  br i1 %cmp, label %do.body11, label %do.body18, !prof !258

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #12, !srcloc !259
  unreachable

do.body18:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_prep_dma_memcpy.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_prep_dma_memcpy, %do.end32)) #12
          to label %if.then29 [label %do.end32], !srcloc !251

if.then29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_prep_dma_memcpy.__UNIQUE_ID_ddebug286, ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %len) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body18
  %lock = getelementptr i8, ptr %chan, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call34 = tail call fastcc ptr @iop_adma_alloc_slots(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end32.if.end38_crit_edge, label %if.then36

do.end32.if.end38_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then36:                                        ; preds = %do.end32
  %group_head = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call34, i32 0, i32 3
  %4 = ptrtoint ptr %group_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_head, align 4
  %hw_desc1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_desc1.i, align 4
  %and.i = shl i32 %flags, 27
  %bf.shl.i = and i32 %and.i, 134217728
  %bf.set7.i = or i32 %bf.shl.i, -503316480
  %8 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.set7.i, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %crc_addr.i = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %crc_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %crc_addr.i, align 4
  %13 = load ptr, ptr %hw_desc1.i, align 4
  %device.i = getelementptr i8, ptr %chan, i32 -4
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.iop_adma_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.body.i [
    i32 0, label %if.then36.sw.bb.i_crit_edge
    i32 1, label %if.then36.sw.bb.i_crit_edge71
    i32 2, label %sw.bb3.i
  ]

if.then36.sw.bb.i_crit_edge71:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then36.sw.bb.i_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then36.sw.bb.i_crit_edge, %if.then36.sw.bb.i_crit_edge71
  %byte_count2.i = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %13, i32 0, i32 4
  br label %iop_desc_set_byte_count.exit

sw.bb3.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %byte_count4.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %13, i32 0, i32 3
  br label %iop_desc_set_byte_count.exit

do.body.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 643, 0\0A.popsection", ""() #12, !srcloc !260
  unreachable

iop_desc_set_byte_count.exit:                     ; preds = %sw.bb3.i, %sw.bb.i
  %byte_count4.sink.i = phi ptr [ %byte_count4.i, %sw.bb3.i ], [ %byte_count2.i, %sw.bb.i ]
  %19 = ptrtoint ptr %byte_count4.sink.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %byte_count4.sink.i, align 4
  %20 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_desc1.i, align 4
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i, align 4
  %id.i66 = getelementptr inbounds %struct.iop_adma_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %id.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i66, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %25, label %do.body.i68 [
    i32 0, label %iop_desc_set_byte_count.exit.sw.bb.i67_crit_edge
    i32 1, label %iop_desc_set_byte_count.exit.sw.bb.i67_crit_edge72
    i32 2, label %sw.bb2.i
  ]

iop_desc_set_byte_count.exit.sw.bb.i67_crit_edge72: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i67

iop_desc_set_byte_count.exit.sw.bb.i67_crit_edge: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i67

sw.bb.i67:                                        ; preds = %iop_desc_set_byte_count.exit.sw.bb.i67_crit_edge, %iop_desc_set_byte_count.exit.sw.bb.i67_crit_edge72
  %27 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %21, i32 0, i32 3
  br label %iop_desc_set_dest_addr.exit

sw.bb2.i:                                         ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dest_addr.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %21, i32 0, i32 2
  br label %iop_desc_set_dest_addr.exit

do.body.i68:                                      ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 710, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

iop_desc_set_dest_addr.exit:                      ; preds = %sw.bb2.i, %sw.bb.i67
  %dest_addr.sink.i = phi ptr [ %dest_addr.i, %sw.bb2.i ], [ %27, %sw.bb.i67 ]
  %28 = ptrtoint ptr %dest_addr.sink.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dma_dest, ptr %dest_addr.sink.i, align 4
  %29 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_desc1.i, align 4
  %31 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dma_src, ptr %31, align 4
  %flags37 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call34, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %flags37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags37, align 4
  br label %if.end38

if.end38:                                         ; preds = %iop_desc_set_dest_addr.exit, %do.end32.if.end38_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %async_tx41 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call34, i32 0, i32 8
  %spec.select = select i1 %tobool35.not, ptr null, ptr %async_tx41
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end38 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iop_adma_prep_dma_xor(ptr noundef %chan, i32 noundef %dma_dest, ptr nocapture noundef readonly %dma_src, i32 noundef %src_cnt, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body, !prof !258

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %len)
  %cmp = icmp ugt i32 %len, 16777216
  br i1 %cmp, label %do.body11, label %do.body18, !prof !258

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #12, !srcloc !262
  unreachable

do.body18:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_prep_dma_xor.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_prep_dma_xor, %do.end32)) #12
          to label %if.then29 [label %do.end32], !srcloc !251

if.then29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_prep_dma_xor.__UNIQUE_ID_ddebug287, ptr noundef %3, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %src_cnt, i32 noundef %len, i32 noundef %flags) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body18
  %lock = getelementptr i8, ptr %chan, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %sub.i.i = add i32 %src_cnt, -1
  %arrayidx.i.i = getelementptr [32 x i8], ptr @iop3xx_aau_xor_slot_count.slot_count_table, i32 0, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %call34 = tail call fastcc ptr @iop_adma_alloc_slots(ptr noundef %add.ptr, i32 noundef %conv.i.i, i32 noundef %conv.i.i)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end32.if.end39_crit_edge, label %if.then36

do.end32.if.end39_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %do.end32
  %group_head = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call34, i32 0, i32 3
  %6 = ptrtoint ptr %group_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group_head, align 4
  %hw_desc.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_desc.i, align 4
  %call.i = tail call fastcc i32 @iop3xx_desc_init_xor(ptr noundef %9, i32 noundef %src_cnt, i32 noundef %flags) #12
  %10 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_desc.i, align 4
  %device.i = getelementptr i8, ptr %chan, i32 -4
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.iop_adma_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %15, label %do.body.i [
    i32 0, label %if.then36.sw.bb.i_crit_edge
    i32 1, label %if.then36.sw.bb.i_crit_edge80
    i32 2, label %sw.bb3.i
  ]

if.then36.sw.bb.i_crit_edge80:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then36.sw.bb.i_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then36.sw.bb.i_crit_edge, %if.then36.sw.bb.i_crit_edge80
  %byte_count2.i = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %11, i32 0, i32 4
  br label %iop_desc_set_byte_count.exit

sw.bb3.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %byte_count4.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %11, i32 0, i32 3
  br label %iop_desc_set_byte_count.exit

do.body.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 643, 0\0A.popsection", ""() #12, !srcloc !260
  unreachable

iop_desc_set_byte_count.exit:                     ; preds = %sw.bb3.i, %sw.bb.i
  %byte_count4.sink.i = phi ptr [ %byte_count4.i, %sw.bb3.i ], [ %byte_count2.i, %sw.bb.i ]
  %17 = ptrtoint ptr %byte_count4.sink.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %byte_count4.sink.i, align 4
  %18 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_desc.i, align 4
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  %id.i72 = getelementptr inbounds %struct.iop_adma_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %id.i72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i72, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %23, label %do.body.i74 [
    i32 0, label %iop_desc_set_byte_count.exit.sw.bb.i73_crit_edge
    i32 1, label %iop_desc_set_byte_count.exit.sw.bb.i73_crit_edge81
    i32 2, label %sw.bb2.i
  ]

iop_desc_set_byte_count.exit.sw.bb.i73_crit_edge81: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i73

iop_desc_set_byte_count.exit.sw.bb.i73_crit_edge: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i73

sw.bb.i73:                                        ; preds = %iop_desc_set_byte_count.exit.sw.bb.i73_crit_edge, %iop_desc_set_byte_count.exit.sw.bb.i73_crit_edge81
  %25 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %19, i32 0, i32 3
  br label %iop_desc_set_dest_addr.exit

sw.bb2.i:                                         ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dest_addr.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %19, i32 0, i32 2
  br label %iop_desc_set_dest_addr.exit

do.body.i74:                                      ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 710, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

iop_desc_set_dest_addr.exit:                      ; preds = %sw.bb2.i, %sw.bb.i73
  %dest_addr.sink.i = phi ptr [ %dest_addr.i, %sw.bb2.i ], [ %25, %sw.bb.i73 ]
  %26 = ptrtoint ptr %dest_addr.sink.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dma_dest, ptr %dest_addr.sink.i, align 4
  %flags37 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call34, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %flags37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %flags, ptr %flags37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_cnt)
  %tobool38.not78 = icmp eq i32 %src_cnt, 0
  br i1 %tobool38.not78, label %iop_desc_set_dest_addr.exit.if.end39_crit_edge, label %while.body.lr.ph

iop_desc_set_dest_addr.exit.if.end39_crit_edge:   ; preds = %iop_desc_set_dest_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

while.body.lr.ph:                                 ; preds = %iop_desc_set_dest_addr.exit
  %slot_cnt2.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %7, i32 0, i32 4
  %slots_per_op3.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %7, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %iop_desc_set_xor_src_addr.exit.while.body_crit_edge, %while.body.lr.ph
  %src_cnt.addr.079 = phi i32 [ %src_cnt, %while.body.lr.ph ], [ %dec, %iop_desc_set_xor_src_addr.exit.while.body_crit_edge ]
  %dec = add i32 %src_cnt.addr.079, -1
  %28 = ptrtoint ptr %slot_cnt2.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %slot_cnt2.i, align 4
  %conv.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %slots_per_op3.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %slots_per_op3.i, align 2
  %conv4.i = zext i16 %31 to i32
  %sub13.i = sub nsw i32 %conv.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13.i)
  %cmp14.i = icmp sgt i32 %sub13.i, -1
  br i1 %cmp14.i, label %for.body.lr.ph.i, label %while.body.iop_desc_set_xor_src_addr.exit_crit_edge

while.body.iop_desc_set_xor_src_addr.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_xor_src_addr.exit

for.body.lr.ph.i:                                 ; preds = %while.body
  %arrayidx = getelementptr i32, ptr %dma_src, i32 %dec
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_desc.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec)
  %cmp.i.i = icmp slt i32 %dec, 4
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @__desc_idx.desc_idx_table, i32 0, i32 %dec
  br label %for.body.i

for.body.i:                                       ; preds = %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sub17.i = phi i32 [ %sub13.i, %for.body.lr.ph.i ], [ %sub.i, %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add6.i, %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i_crit_edge ]
  %addr.addr.015.i = phi i32 [ %33, %for.body.lr.ph.i ], [ %add7.i, %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %i.016.i, 5
  %add.i = add i32 %shl.i, %36
  %37 = inttoptr i32 %add.i to ptr
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i76 = getelementptr %struct.iop3xx_desc_aau, ptr %37, i32 0, i32 1, i32 %dec
  br label %iop3xx_aau_desc_set_src_addr.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.iop3xx_desc_aau, ptr %37, i32 0, i32 5, i32 %39
  br label %iop3xx_aau_desc_set_src_addr.exit.i

iop3xx_aau_desc_set_src_addr.exit.i:              ; preds = %if.else.i.i, %if.then.i.i
  %arrayidx1.sink.i.i = phi ptr [ %arrayidx1.i.i, %if.else.i.i ], [ %arrayidx.i.i76, %if.then.i.i ]
  %40 = ptrtoint ptr %arrayidx1.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %addr.addr.015.i, ptr %arrayidx1.sink.i.i, align 4
  %add6.i = add i32 %i.016.i, %conv4.i
  %add7.i = add i32 %addr.addr.015.i, 16777216
  %sub.i = sub i32 %sub17.i, %conv4.i
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i_crit_edge, label %iop3xx_aau_desc_set_src_addr.exit.i.iop_desc_set_xor_src_addr.exit_crit_edge

iop3xx_aau_desc_set_src_addr.exit.i.iop_desc_set_xor_src_addr.exit_crit_edge: ; preds = %iop3xx_aau_desc_set_src_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_xor_src_addr.exit

iop3xx_aau_desc_set_src_addr.exit.i.for.body.i_crit_edge: ; preds = %iop3xx_aau_desc_set_src_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

iop_desc_set_xor_src_addr.exit:                   ; preds = %iop3xx_aau_desc_set_src_addr.exit.i.iop_desc_set_xor_src_addr.exit_crit_edge, %while.body.iop_desc_set_xor_src_addr.exit_crit_edge
  %tobool38.not = icmp eq i32 %dec, 0
  br i1 %tobool38.not, label %iop_desc_set_xor_src_addr.exit.if.end39_crit_edge, label %iop_desc_set_xor_src_addr.exit.while.body_crit_edge

iop_desc_set_xor_src_addr.exit.while.body_crit_edge: ; preds = %iop_desc_set_xor_src_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

iop_desc_set_xor_src_addr.exit.if.end39_crit_edge: ; preds = %iop_desc_set_xor_src_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end39:                                         ; preds = %iop_desc_set_xor_src_addr.exit.if.end39_crit_edge, %iop_desc_set_dest_addr.exit.if.end39_crit_edge, %do.end32.if.end39_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %async_tx42 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call34, i32 0, i32 8
  %spec.select = select i1 %tobool35.not, ptr null, ptr %async_tx42
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end39 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iop_adma_prep_dma_xor_val(ptr noundef %chan, ptr nocapture noundef readonly %dma_src, i32 noundef %src_cnt, i32 noundef %len, ptr noundef %result, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body, !prof !258

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_prep_dma_xor_val, %do.end)) #12
          to label %if.then14 [label %do.end], !srcloc !251

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug288, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %src_cnt, i32 noundef %len) #12
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %lock = getelementptr i8, ptr %chan, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %sub.i.i = add i32 %src_cnt, -1
  %arrayidx.i.i = getelementptr [32 x i8], ptr @iop3xx_aau_xor_slot_count.slot_count_table, i32 0, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %len)
  %cmp.i = icmp ult i32 %len, 1025
  %6 = add i32 %len, -1025
  %7 = lshr i32 %6, 10
  %8 = add nuw nsw i32 %7, 1
  %9 = mul nuw nsw i32 %8, %conv.i.i
  %add3.i = select i1 %cmp.i, i32 0, i32 %9
  %retval.0.i72 = add nuw nsw i32 %add3.i, %conv.i.i
  %call17 = tail call fastcc ptr @iop_adma_alloc_slots(ptr noundef %add.ptr, i32 noundef %retval.0.i72, i32 noundef %conv.i.i)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end.if.end41_crit_edge, label %if.then19

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then19:                                        ; preds = %do.end
  %group_head = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call17, i32 0, i32 3
  %10 = ptrtoint ptr %group_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group_head, align 4
  %slot_cnt1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %slot_cnt1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %slot_cnt1.i, align 4
  %conv.i = zext i16 %13 to i32
  %slots_per_op2.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %slots_per_op2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %slots_per_op2.i, align 2
  %conv3.i = zext i16 %15 to i32
  %sub1.i = sub nsw i32 %conv.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub1.i)
  %cmp2.i = icmp sgt i32 %sub1.i, -1
  br i1 %cmp2.i, label %for.body.lr.ph.i, label %if.then19.iop_desc_init_zero_sum.exit_crit_edge

if.then19.iop_desc_init_zero_sum.exit_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_init_zero_sum.exit

for.body.lr.ph.i:                                 ; preds = %if.then19
  %hw_desc4.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %hw_desc4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_desc4.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %bf.shl.i = shl i32 %flags, 31
  %phys.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %11, i32 0, i32 8, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sub5.i = phi i32 [ %sub1.i, %for.body.lr.ph.i ], [ %sub.i, %for.inc.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add17.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %i.03.i, 5
  %add.i = add i32 %shl.i, %18
  %19 = inttoptr i32 %add.i to ptr
  %call.i = tail call fastcc i32 @iop3xx_desc_init_xor(ptr noundef %19, i32 noundef %src_cnt, i32 noundef %flags) #12
  %bf.clear7.i = and i32 %call.i, 2147483644
  %bf.set8.i = or i32 %bf.clear7.i, %bf.shl.i
  %bf.set11.i = or i32 %bf.set8.i, 2
  %20 = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.set11.i, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03.i)
  %tobool.not.i = icmp eq i32 %i.03.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub12.i = sub i32 %i.03.i, %conv3.i
  %shl13.i = shl i32 %sub12.i, 5
  %add14.i = add i32 %shl13.i, %18
  %22 = inttoptr i32 %add14.i to ptr
  %23 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys.i, align 4
  %add16.i = add i32 %24, %shl.i
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add16.i, ptr %22, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %add17.i = add i32 %i.03.i, %conv3.i
  %sub.i = sub i32 %sub5.i, %conv3.i
  %cmp.i73 = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i73, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iop_desc_init_zero_sum.exit_crit_edge

for.inc.i.iop_desc_init_zero_sum.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_init_zero_sum.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

iop_desc_init_zero_sum.exit:                      ; preds = %for.inc.i.iop_desc_init_zero_sum.exit_crit_edge, %if.then19.iop_desc_init_zero_sum.exit_crit_edge
  %26 = ptrtoint ptr %slots_per_op2.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %slots_per_op2.i, align 2
  %conv.i74 = zext i16 %27 to i32
  %hw_desc2.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %11, i32 0, i32 2
  %28 = ptrtoint ptr %hw_desc2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_desc2.i, align 4
  br i1 %cmp.i, label %iop_desc_init_zero_sum.exit.iop_desc_set_zero_sum_byte_count.exit_crit_edge, label %do.body.preheader.i

iop_desc_init_zero_sum.exit.iop_desc_set_zero_sum_byte_count.exit_crit_edge: ; preds = %iop_desc_init_zero_sum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_zero_sum_byte_count.exit

do.body.preheader.i:                              ; preds = %iop_desc_init_zero_sum.exit
  %30 = ptrtoint ptr %29 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %len.addr.0.i = phi i32 [ %sub.i78, %do.body.i.do.body.i_crit_edge ], [ %len, %do.body.preheader.i ]
  %i.0.i = phi i32 [ %add5.i, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %shl.i76 = shl i32 %i.0.i, 5
  %add.i77 = add i32 %shl.i76, %30
  %31 = inttoptr i32 %add.i77 to ptr
  %byte_count4.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %byte_count4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1024, ptr %byte_count4.i, align 4
  %sub.i78 = add i32 %len.addr.0.i, -1024
  %add5.i = add i32 %i.0.i, %conv.i74
  %cmp6.i = icmp ugt i32 %sub.i78, 1024
  br i1 %cmp6.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl8.i = shl i32 %add5.i, 5
  %add9.i = add i32 %shl8.i, %30
  %33 = inttoptr i32 %add9.i to ptr
  br label %iop_desc_set_zero_sum_byte_count.exit

iop_desc_set_zero_sum_byte_count.exit:            ; preds = %do.end.i, %iop_desc_init_zero_sum.exit.iop_desc_set_zero_sum_byte_count.exit_crit_edge
  %.sink.i = phi ptr [ %33, %do.end.i ], [ %29, %iop_desc_init_zero_sum.exit.iop_desc_set_zero_sum_byte_count.exit_crit_edge ]
  %sub.lcssa.sink.i = phi i32 [ %sub.i78, %do.end.i ], [ %len, %iop_desc_init_zero_sum.exit.iop_desc_set_zero_sum_byte_count.exit_crit_edge ]
  %byte_count10.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %.sink.i, i32 0, i32 3
  %34 = ptrtoint ptr %byte_count10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.lcssa.sink.i, ptr %byte_count10.i, align 4
  %35 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %11, i32 0, i32 9
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %result, ptr %35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_prep_dma_xor_val, %do.end38)) #12
          to label %if.then35 [label %do.end38], !srcloc !251

if.then35:                                        ; preds = %iop_desc_set_zero_sum_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, ptr noundef %38) #12
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %iop_desc_set_zero_sum_byte_count.exit
  %flags39 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call17, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %flags39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %flags, ptr %flags39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_cnt)
  %tobool40.not89 = icmp eq i32 %src_cnt, 0
  br i1 %tobool40.not89, label %do.end38.if.end41_crit_edge, label %do.end38.while.body_crit_edge

do.end38.while.body_crit_edge:                    ; preds = %do.end38
  br label %while.body

do.end38.if.end41_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

while.body:                                       ; preds = %iop_desc_set_zero_sum_src_addr.exit.while.body_crit_edge, %do.end38.while.body_crit_edge
  %src_cnt.addr.090 = phi i32 [ %dec, %iop_desc_set_zero_sum_src_addr.exit.while.body_crit_edge ], [ %src_cnt, %do.end38.while.body_crit_edge ]
  %dec = add i32 %src_cnt.addr.090, -1
  %40 = ptrtoint ptr %slot_cnt1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %slot_cnt1.i, align 4
  %conv.i79 = zext i16 %41 to i32
  %42 = ptrtoint ptr %slots_per_op2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %slots_per_op2.i, align 2
  %conv4.i = zext i16 %43 to i32
  %sub13.i = sub nsw i32 %conv.i79, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13.i)
  %cmp14.i = icmp sgt i32 %sub13.i, -1
  br i1 %cmp14.i, label %for.body.lr.ph.i80, label %while.body.iop_desc_set_zero_sum_src_addr.exit_crit_edge

while.body.iop_desc_set_zero_sum_src_addr.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_zero_sum_src_addr.exit

for.body.lr.ph.i80:                               ; preds = %while.body
  %arrayidx = getelementptr i32, ptr %dma_src, i32 %dec
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %46 = ptrtoint ptr %hw_desc2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_desc2.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec)
  %cmp.i.i = icmp slt i32 %dec, 4
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @__desc_idx.desc_idx_table, i32 0, i32 %dec
  br label %for.body.i83

for.body.i83:                                     ; preds = %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i83_crit_edge, %for.body.lr.ph.i80
  %sub17.i = phi i32 [ %sub13.i, %for.body.lr.ph.i80 ], [ %sub.i85, %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i83_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i80 ], [ %add6.i, %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i83_crit_edge ]
  %addr.addr.015.i = phi i32 [ %45, %for.body.lr.ph.i80 ], [ %add7.i, %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i83_crit_edge ]
  %shl.i81 = shl i32 %i.016.i, 5
  %add.i82 = add i32 %shl.i81, %48
  %49 = inttoptr i32 %add.i82 to ptr
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i84 = getelementptr %struct.iop3xx_desc_aau, ptr %49, i32 0, i32 1, i32 %dec
  br label %iop3xx_aau_desc_set_src_addr.exit.i

if.else.i.i:                                      ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.iop3xx_desc_aau, ptr %49, i32 0, i32 5, i32 %51
  br label %iop3xx_aau_desc_set_src_addr.exit.i

iop3xx_aau_desc_set_src_addr.exit.i:              ; preds = %if.else.i.i, %if.then.i.i
  %arrayidx1.sink.i.i = phi ptr [ %arrayidx1.i.i, %if.else.i.i ], [ %arrayidx.i.i84, %if.then.i.i ]
  %52 = ptrtoint ptr %arrayidx1.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %addr.addr.015.i, ptr %arrayidx1.sink.i.i, align 4
  %add6.i = add i32 %i.016.i, %conv4.i
  %add7.i = add i32 %addr.addr.015.i, 1024
  %sub.i85 = sub i32 %sub17.i, %conv4.i
  %cmp.i86 = icmp sgt i32 %sub.i85, -1
  br i1 %cmp.i86, label %iop3xx_aau_desc_set_src_addr.exit.i.for.body.i83_crit_edge, label %iop3xx_aau_desc_set_src_addr.exit.i.iop_desc_set_zero_sum_src_addr.exit_crit_edge

iop3xx_aau_desc_set_src_addr.exit.i.iop_desc_set_zero_sum_src_addr.exit_crit_edge: ; preds = %iop3xx_aau_desc_set_src_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_zero_sum_src_addr.exit

iop3xx_aau_desc_set_src_addr.exit.i.for.body.i83_crit_edge: ; preds = %iop3xx_aau_desc_set_src_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i83

iop_desc_set_zero_sum_src_addr.exit:              ; preds = %iop3xx_aau_desc_set_src_addr.exit.i.iop_desc_set_zero_sum_src_addr.exit_crit_edge, %while.body.iop_desc_set_zero_sum_src_addr.exit_crit_edge
  %tobool40.not = icmp eq i32 %dec, 0
  br i1 %tobool40.not, label %iop_desc_set_zero_sum_src_addr.exit.if.end41_crit_edge, label %iop_desc_set_zero_sum_src_addr.exit.while.body_crit_edge

iop_desc_set_zero_sum_src_addr.exit.while.body_crit_edge: ; preds = %iop_desc_set_zero_sum_src_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

iop_desc_set_zero_sum_src_addr.exit.if.end41_crit_edge: ; preds = %iop_desc_set_zero_sum_src_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end41:                                         ; preds = %iop_desc_set_zero_sum_src_addr.exit.if.end41_crit_edge, %do.end38.if.end41_crit_edge, %do.end.if.end41_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %async_tx44 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call17, i32 0, i32 8
  %spec.select = select i1 %tobool18.not, ptr null, ptr %async_tx44
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end41 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iop_adma_prep_dma_pq_val(ptr noundef %chan, ptr nocapture noundef readnone %pq, ptr nocapture noundef readnone %src, i32 noundef %src_cnt, ptr nocapture noundef readnone %scf, i32 noundef %len, ptr noundef %pqres, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %cleanup, label %do.body, !prof !258

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %len)
  %cmp = icmp ugt i32 %len, 16777216
  br i1 %cmp, label %do.body11, label %do.body18, !prof !258

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 682, 0\0A.popsection", ""() #12, !srcloc !263
  unreachable

do.body18:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_prep_dma_pq_val.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_prep_dma_pq_val, %do.end32)) #12
          to label %if.then29 [label %do.end32], !srcloc !251

if.then29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_prep_dma_pq_val.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.53, i32 noundef %src_cnt, i32 noundef %len) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body18
  %lock = getelementptr i8, ptr %chan, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #12, !srcloc !264
  unreachable

cleanup:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iop_adma_prep_dma_interrupt(ptr noundef %chan, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_prep_dma_interrupt.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_prep_dma_interrupt, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_prep_dma_interrupt.__UNIQUE_ID_ddebug285, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.55) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %chan, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %device.i = getelementptr i8, ptr %chan, i32 -4
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.iop_adma_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %switch.i = icmp ult i32 %7, 3
  br i1 %switch.i, label %iop_chan_interrupt_slot_count.exit, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #12, !srcloc !265
  unreachable

iop_chan_interrupt_slot_count.exit:               ; preds = %do.end
  %call6 = tail call fastcc ptr @iop_adma_alloc_slots(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %iop_chan_interrupt_slot_count.exit.if.end10_crit_edge, label %if.then8

iop_chan_interrupt_slot_count.exit.if.end10_crit_edge: ; preds = %iop_chan_interrupt_slot_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %iop_chan_interrupt_slot_count.exit
  %group_head = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call6, i32 0, i32 3
  %8 = ptrtoint ptr %group_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group_head, align 4
  %hw_desc1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_desc1.i, align 4
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %id.i24 = getelementptr inbounds %struct.iop_adma_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id.i24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i24, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %15, label %do.body.i25 [
    i32 0, label %if.then8.sw.bb.i_crit_edge
    i32 1, label %if.then8.sw.bb.i_crit_edge27
    i32 2, label %sw.bb2.i
  ]

if.then8.sw.bb.i_crit_edge27:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then8.sw.bb.i_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then8.sw.bb.i_crit_edge, %if.then8.sw.bb.i_crit_edge27
  %17 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -369098752, ptr %17, align 4
  %crc_addr.i.i = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %11, i32 0, i32 6
  %19 = ptrtoint ptr %crc_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %crc_addr.i.i, align 4
  %20 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %11, i32 0, i32 1
  %21 = call ptr @memset(ptr %20, i32 0, i32 16)
  br label %iop_desc_init_interrupt.exit

sw.bb2.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %22 = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %11, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -2147483648, ptr %22, align 4
  %byte_count3.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %byte_count3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %byte_count3.i, align 4
  %dest_addr.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %11, i32 0, i32 2
  %25 = ptrtoint ptr %dest_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dest_addr.i, align 4
  %src.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %11, i32 0, i32 1
  %26 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %src.i, align 4
  %arrayidx5.i = getelementptr %struct.iop3xx_desc_aau, ptr %11, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx5.i, align 4
  br label %iop_desc_init_interrupt.exit

do.body.i25:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 669, 0\0A.popsection", ""() #12, !srcloc !266
  unreachable

iop_desc_init_interrupt.exit:                     ; preds = %sw.bb2.i, %sw.bb.i
  %flags9 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call6, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %flags, ptr %flags9, align 4
  br label %if.end10

if.end10:                                         ; preds = %iop_desc_init_interrupt.exit, %iop_chan_interrupt_slot_count.exit.if.end10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %async_tx13 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call6, i32 0, i32 8
  %spec.select = select i1 %tobool7.not, ptr null, ptr %async_tx13
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iop_adma_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -144
  %lock = getelementptr i8, ptr %t, i32 -140
  tail call void @_raw_spin_lock_nested(ptr noundef %lock, i32 noundef 1) #12
  tail call fastcc void @__iop_adma_slot_cleanup(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iop_adma_device_clear_err_status(ptr nocapture noundef readonly %chan) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %mmr_base = getelementptr inbounds %struct.iop_adma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmr_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !253
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.iop_adma_device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 849, 0\0A.popsection", ""() #12, !srcloc !254
  unreachable

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.iop_adma_device_clear_err_status, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and2 = and i32 %2, %switch.load
  %9 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmr_base, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %and2) #12, !srcloc !255
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_eot_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_eot_handler.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_eot_handler, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_eot_handler.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.56) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state.i = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %irq_tasklet = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #12
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end.tasklet_schedule.exit_crit_edge
  %mmr_base.i = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !253
  %and.i = and i32 %6, 512
  %7 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %and.i) #12, !srcloc !255
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_eoc_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_eoc_handler.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_eoc_handler, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_eoc_handler.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.57) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state.i = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %irq_tasklet = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #12
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end.tasklet_schedule.exit_crit_edge
  %mmr_base.i = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !253
  %and.i = and i32 %6, 256
  %7 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %and.i) #12, !srcloc !255
  ret i32 1
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_err_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %status.addr.i = alloca i32, align 4
  %mmr_base.i = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !253
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %4, i32 0, i32 4, i32 15
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.addr.i)
  %7 = ptrtoint ptr %status.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %2, ptr %status.addr.i, align 4
  %status.addr.i.0.status.addr.i.0.status.addr.0.status.addr.0..i = load volatile i32, ptr %status.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.addr.i)
  %8 = and i32 %status.addr.i.0.status.addr.i.0.status.addr.0.status.addr.0..i, 32
  %tobool9.not = icmp eq i32 %8, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.13, ptr @.str.63
  %call11 = tail call fastcc i32 @iop_is_err_pci_tabort(i32 noundef %2, ptr noundef %data)
  %tobool12.not = icmp eq i32 %call11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.13, ptr @.str.64
  %call14 = tail call fastcc i32 @iop_is_err_pci_mabort(i32 noundef %2, ptr noundef %data)
  %tobool15.not = icmp eq i32 %call14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.13, ptr @.str.65
  %call17 = tail call fastcc i32 @iop_is_err_split_tx(i32 noundef %2, ptr noundef %data)
  %tobool18.not = icmp eq i32 %call17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.13, ptr @.str.66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond10, ptr noundef nonnull %cond13, ptr noundef nonnull %cond16, ptr noundef nonnull %cond19) #16
  tail call fastcc void @iop_adma_device_clear_err_status(ptr noundef %data)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 811, 0\0A.popsection", ""() #12, !srcloc !267
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iop_adma_memcpy_self_test(ptr nocapture noundef readonly %device) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_memcpy_self_test.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_memcpy_self_test, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %device, i32 0, i32 4, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_memcpy_self_test.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2000) #15
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2000) #15
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %conv = trunc i32 %i.0109 to i8
  %arrayidx = getelementptr i8, ptr %call7.i, i32 %i.0109
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %channels = getelementptr inbounds %struct.iop_adma_device, ptr %device, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channels, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -32
  %call14 = tail call i32 @iop_adma_alloc_chan_resources(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %for.end.out_crit_edge, label %if.end18

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end18:                                         ; preds = %for.end
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %dev20 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev20, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end18
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !268

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %10) #12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %10, ptr noundef nonnull %call7.i.i, i32 noundef 2000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 2000, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i82 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %dev23 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev23, align 4
  %call.i83 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i) #12
  br i1 %call.i83, label %land.rhs.i85, label %if.end39.i98

land.rhs.i85:                                     ; preds = %dma_map_single_attrs.exit
  %.b1.i84 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i84, label %land.rhs.i85.dma_map_single_attrs.exit100_crit_edge, label %if.then.i89, !prof !268

land.rhs.i85.dma_map_single_attrs.exit100_crit_edge: ; preds = %land.rhs.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit100

if.then.i89:                                      ; preds = %land.rhs.i85
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i86 = tail call ptr @dev_driver_string(ptr noundef %20) #12
  %init_name.i.i87 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i87 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i87, align 8
  %tobool.not.i.i88 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i88, label %if.end.i.i90, label %if.then.i89.dev_name.exit.i92_crit_edge

if.then.i89.dev_name.exit.i92_crit_edge:          ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i92

if.end.i.i90:                                     ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit.i92

dev_name.exit.i92:                                ; preds = %if.end.i.i90, %if.then.i89.dev_name.exit.i92_crit_edge
  %retval.0.i.i91 = phi ptr [ %24, %if.end.i.i90 ], [ %22, %if.then.i89.dev_name.exit.i92_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i86, ptr noundef %retval.0.i.i91) #12
  br label %dma_map_single_attrs.exit100

if.end39.i98:                                     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %20, ptr noundef nonnull %call7.i, i32 noundef 2000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %call7.i to i32
  %sub.i93 = add i32 %26, 1073741824
  %shr.i94 = lshr i32 %sub.i93, 12
  %add.ptr.i95 = getelementptr %struct.page, ptr %25, i32 %shr.i94
  %and.i96 = and i32 %26, 4088
  %call41.i97 = tail call i32 @dma_map_page_attrs(ptr noundef %20, ptr noundef %add.ptr.i95, i32 noundef %and.i96, i32 noundef 2000, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit100

dma_map_single_attrs.exit100:                     ; preds = %if.end39.i98, %dev_name.exit.i92, %land.rhs.i85.dma_map_single_attrs.exit100_crit_edge
  %retval.0.i99 = phi i32 [ %call41.i97, %if.end39.i98 ], [ -1, %dev_name.exit.i92 ], [ -1, %land.rhs.i85.dma_map_single_attrs.exit100_crit_edge ]
  %call25 = tail call ptr @iop_adma_prep_dma_memcpy(ptr noundef %add.ptr, i32 noundef %retval.0.i82, i32 noundef %retval.0.i99, i32 noundef 2000, i32 noundef 3)
  %call26 = tail call i32 @iop_adma_tx_submit(ptr noundef %call25)
  %add.ptr.i101 = getelementptr i8, ptr %6, i32 -96
  %27 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %dma_map_single_attrs.exit100.iop_adma_issue_pending.exit_crit_edge, label %if.then.i102

dma_map_single_attrs.exit100.iop_adma_issue_pending.exit_crit_edge: ; preds = %dma_map_single_attrs.exit100
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_issue_pending.exit

if.then.i102:                                     ; preds = %dma_map_single_attrs.exit100
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %add.ptr.i101, align 4
  %mmr_base.i.i = getelementptr i8, ptr %6, i32 -48
  %30 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmr_base.i.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #12, !srcloc !253
  %or.i.i = or i32 %32, 2
  %33 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmr_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %or.i.i) #12, !srcloc !255
  br label %iop_adma_issue_pending.exit

iop_adma_issue_pending.exit:                      ; preds = %if.then.i102, %dma_map_single_attrs.exit100.iop_adma_issue_pending.exit_crit_edge
  tail call void @msleep(i32 noundef 1) #12
  %cookie1.i.i = getelementptr i8, ptr %6, i32 -24
  %35 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cookie1.i.i, align 4
  %completed_cookie.i.i = getelementptr i8, ptr %6, i32 -20
  %37 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %completed_cookie.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i.i.i = icmp sgt i32 %38, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call26)
  %cmp4.not.i.i.i = icmp sge i32 %38, %call26
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %call26)
  %cmp5.i.i.i = icmp slt i32 %36, %call26
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %iop_adma_issue_pending.exit
  %or.cond.i.i.i = or i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.if.end36_crit_edge, label %if.then.i.i.i.if.end.i_crit_edge

if.then.i.i.i.if.end.i_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i.i.i.if.end36_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else.i.i.i:                                    ; preds = %iop_adma_issue_pending.exit
  %or.cond16.i.i.i = and i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond16.i.i.i, label %if.else.i.i.i.if.end36_crit_edge, label %if.else.i.i.i.if.end.i_crit_edge

if.else.i.i.i.if.end.i_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.else.i.i.i.if.end36_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end.i:                                         ; preds = %if.else.i.i.i.if.end.i_crit_edge, %if.then.i.i.i.if.end.i_crit_edge
  %lock.i.i = getelementptr i8, ptr %6, i32 -92
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #12
  tail call fastcc void @__iop_adma_slot_cleanup(ptr noundef %add.ptr.i101) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #12
  %39 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cookie1.i.i, align 4
  %41 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %completed_cookie.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp.not.i.i15.i = icmp sgt i32 %42, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %call26)
  %cmp4.not.i.i16.i = icmp sge i32 %42, %call26
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %call26)
  %cmp5.i.i17.i = icmp slt i32 %40, %call26
  br i1 %cmp.not.i.i15.i, label %if.else.i.i22.i, label %if.then.i.i20.i

if.then.i.i20.i:                                  ; preds = %if.end.i
  %or.cond.i.i19.i = or i1 %cmp5.i.i17.i, %cmp4.not.i.i16.i
  br i1 %or.cond.i.i19.i, label %if.then.i.i20.i.if.end36_crit_edge, label %if.then.i.i20.i.free_resources.sink.split_crit_edge

if.then.i.i20.i.free_resources.sink.split_crit_edge: ; preds = %if.then.i.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_resources.sink.split

if.then.i.i20.i.if.end36_crit_edge:               ; preds = %if.then.i.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else.i.i22.i:                                  ; preds = %if.end.i
  %or.cond16.i.i21.i = and i1 %cmp5.i.i17.i, %cmp4.not.i.i16.i
  br i1 %or.cond16.i.i21.i, label %if.else.i.i22.i.if.end36_crit_edge, label %if.else.i.i22.i.free_resources.sink.split_crit_edge

if.else.i.i22.i.free_resources.sink.split_crit_edge: ; preds = %if.else.i.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_resources.sink.split

if.else.i.i22.i.if.end36_crit_edge:               ; preds = %if.else.i.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end36:                                         ; preds = %if.else.i.i22.i.if.end36_crit_edge, %if.then.i.i20.i.if.end36_crit_edge, %if.else.i.i.i.if.end36_crit_edge, %if.then.i.i.i.if.end36_crit_edge
  %device40 = getelementptr i8, ptr %6, i32 -36
  %43 = ptrtoint ptr %device40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device40, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev41, i32 noundef %retval.0.i82, i32 noundef 2000, i32 noundef 2) #12
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2000) %call7.i, ptr noundef nonnull dereferenceable(2000) %call7.i.i, i32 2000) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool43.not = icmp eq i32 %bcmp, 0
  br i1 %tobool43.not, label %if.end36.free_resources_crit_edge, label %if.end36.free_resources.sink.split_crit_edge

if.end36.free_resources.sink.split_crit_edge:     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_resources.sink.split

if.end36.free_resources_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_resources

free_resources.sink.split:                        ; preds = %if.end36.free_resources.sink.split_crit_edge, %if.else.i.i22.i.free_resources.sink.split_crit_edge, %if.then.i.i20.i.free_resources.sink.split_crit_edge
  %.str.70.sink = phi ptr [ @.str.68, %if.else.i.i22.i.free_resources.sink.split_crit_edge ], [ @.str.68, %if.then.i.i20.i.free_resources.sink.split_crit_edge ], [ @.str.70, %if.end36.free_resources.sink.split_crit_edge ]
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  %dev49 = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull %.str.70.sink) #16
  br label %free_resources

free_resources:                                   ; preds = %free_resources.sink.split, %if.end36.free_resources_crit_edge
  %err.0 = phi i32 [ 0, %if.end36.free_resources_crit_edge ], [ -19, %free_resources.sink.split ]
  tail call void @iop_adma_free_chan_resources(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %free_resources, %for.end.out_crit_edge
  %err.1 = phi i32 [ %err.0, %free_resources ], [ -19, %for.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end7.cleanup.sink.split_crit_edge
  %call7.i.i.sink = phi ptr [ %call7.i.i, %out ], [ %call7.i, %if.end7.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %err.1, %out ], [ -12, %if.end7.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iop_adma_xor_val_self_test(ptr nocapture noundef readonly %device) unnamed_addr #2 align 64 {
entry:
  %xor_srcs = alloca [4 x ptr], align 4
  %dma_srcs = alloca [5 x i32], align 4
  %zero_sum_result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xor_srcs) #12
  %0 = getelementptr inbounds [4 x ptr], ptr %xor_srcs, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %xor_srcs, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %xor_srcs, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %xor_srcs, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dma_srcs) #12
  %5 = getelementptr inbounds [5 x i32], ptr %dma_srcs, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i32], ptr %dma_srcs, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i32], ptr %dma_srcs, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i32], ptr %dma_srcs, i32 0, i32 4
  %9 = call ptr @memset(ptr %dma_srcs, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero_sum_result) #12
  %10 = ptrtoint ptr %zero_sum_result to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %zero_sum_result, align 4, !annotation !269
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_xor_val_self_test.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_xor_val_self_test, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %device, i32 0, i32 4, i32 15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_xor_val_self_test.__UNIQUE_ID_ddebug297, ptr noundef %12, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.74) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %13 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38.i.i.i, ptr %xor_srcs, align 4
  %tobool6.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool6.not, label %do.end.cleanup208_crit_edge, label %for.inc

do.end.cleanup208_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208

while.body.1:                                     ; preds = %while.body.preheader
  %dec.1 = add nsw i32 %src_idx.1386.ph, -1
  %arrayidx9.1 = getelementptr [4 x ptr], ptr %xor_srcs, i32 0, i32 %dec.1
  %14 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @__free_pages(ptr noundef %15, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool8.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool8.not.1, label %while.body.1.cleanup208_crit_edge, label %while.body.2

while.body.1.cleanup208_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #14
  %dec.2 = add nsw i32 %src_idx.1386.ph, -2
  %arrayidx9.2 = getelementptr [4 x ptr], ptr %xor_srcs, i32 0, i32 %dec.2
  %16 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9.2, align 4
  tail call void @__free_pages(ptr noundef %17, i32 noundef 0) #12
  br label %cleanup208

for.inc:                                          ; preds = %do.end
  %call38.i.i.i.1 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call38.i.i.i.1, ptr %0, align 4
  %tobool6.not.1 = icmp eq ptr %call38.i.i.i.1, null
  br i1 %tobool6.not.1, label %for.inc.while.body.preheader_crit_edge, label %for.inc.1

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.inc.2.while.body.preheader_crit_edge, %for.inc.1.while.body.preheader_crit_edge, %for.inc.while.body.preheader_crit_edge
  %src_idx.1386.ph = phi i32 [ 0, %for.inc.while.body.preheader_crit_edge ], [ 1, %for.inc.1.while.body.preheader_crit_edge ], [ 2, %for.inc.2.while.body.preheader_crit_edge ]
  %arrayidx9 = getelementptr [4 x ptr], ptr %xor_srcs, i32 0, i32 %src_idx.1386.ph
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx9, align 4
  tail call void @__free_pages(ptr noundef %20, i32 noundef 0) #12
  br i1 %tobool6.not.1, label %while.body.preheader.cleanup208_crit_edge, label %while.body.1

while.body.preheader.cleanup208_crit_edge:        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208

for.inc.1:                                        ; preds = %for.inc
  %call38.i.i.i.2 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38.i.i.i.2, ptr %1, align 4
  %tobool6.not.2 = icmp eq ptr %call38.i.i.i.2, null
  br i1 %tobool6.not.2, label %for.inc.1.while.body.preheader_crit_edge, label %for.inc.2

for.inc.1.while.body.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %call38.i.i.i.3 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call38.i.i.i.3, ptr %2, align 4
  %tobool6.not.3 = icmp eq ptr %call38.i.i.i.3, null
  br i1 %tobool6.not.3, label %for.inc.2.while.body.preheader_crit_edge, label %for.inc.3

for.inc.2.while.body.preheader_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.3:                                        ; preds = %for.inc.2
  %call38.i.i.i300 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool12.not = icmp eq ptr %call38.i.i.i300, null
  br i1 %tobool12.not, label %while.body17.preheader, label %for.body23.preheader

for.body23.preheader:                             ; preds = %for.inc.3
  %23 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xor_srcs, align 4
  %call25 = tail call ptr @page_address(ptr noundef %24) #12
  %25 = call ptr @memset(ptr %call25, i32 1, i32 4096)
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  %call25.1 = tail call ptr @page_address(ptr noundef %27) #12
  %28 = call ptr @memset(ptr %call25.1, i32 2, i32 4096)
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call25.2 = tail call ptr @page_address(ptr noundef %30) #12
  %31 = call ptr @memset(ptr %call25.2, i32 4, i32 4096)
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %call25.3 = tail call ptr @page_address(ptr noundef %33) #12
  %34 = call ptr @memset(ptr %call25.3, i32 8, i32 4096)
  %call57 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i300) #12
  %35 = call ptr @memset(ptr %call57, i32 0, i32 4096)
  %channels = getelementptr inbounds %struct.iop_adma_device, ptr %device, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channels, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 -32
  %call60 = tail call i32 @iop_adma_alloc_chan_resources(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 1
  br i1 %cmp61, label %for.body23.preheader.out_crit_edge, label %if.end64

for.body23.preheader.out_crit_edge:               ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body17.preheader:                           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  tail call void @__free_pages(ptr noundef %39, i32 noundef 0) #12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void @__free_pages(ptr noundef %41, i32 noundef 0) #12
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  tail call void @__free_pages(ptr noundef %43, i32 noundef 0) #12
  %44 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xor_srcs, align 4
  tail call void @__free_pages(ptr noundef %45, i32 noundef 0) #12
  br label %cleanup208

if.end64:                                         ; preds = %for.body23.preheader
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %dev66 = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev66, align 4
  %call67 = tail call i32 @dma_map_page_attrs(ptr noundef %49, ptr noundef nonnull %call38.i.i.i300, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #12
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %dev73 = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev73, align 4
  %54 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xor_srcs, align 4
  %call75 = tail call i32 @dma_map_page_attrs(ptr noundef %53, ptr noundef %55, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %56 = ptrtoint ptr %dma_srcs to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call75, ptr %dma_srcs, align 4
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  %dev73.1 = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dev73.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev73.1, align 4
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %0, align 4
  %call75.1 = tail call i32 @dma_map_page_attrs(ptr noundef %60, ptr noundef %62, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call75.1, ptr %5, align 4
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  %dev73.2 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %dev73.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev73.2, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call75.2 = tail call i32 @dma_map_page_attrs(ptr noundef %67, ptr noundef %69, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call75.2, ptr %6, align 4
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 4
  %dev73.3 = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %dev73.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev73.3, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %2, align 4
  %call75.3 = tail call i32 @dma_map_page_attrs(ptr noundef %74, ptr noundef %76, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call75.3, ptr %7, align 4
  %call80 = call ptr @iop_adma_prep_dma_xor(ptr noundef %add.ptr, i32 noundef %call67, ptr noundef nonnull %dma_srcs, i32 noundef 4, i32 noundef 4096, i32 noundef 3)
  %call81 = tail call i32 @iop_adma_tx_submit(ptr noundef %call80)
  %add.ptr.i = getelementptr i8, ptr %37, i32 -96
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i, label %if.end64.iop_adma_issue_pending.exit_crit_edge, label %if.then.i

if.end64.iop_adma_issue_pending.exit_crit_edge:   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_issue_pending.exit

if.then.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %add.ptr.i, align 4
  %mmr_base.i.i = getelementptr i8, ptr %37, i32 -48
  %81 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmr_base.i.i, align 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #12, !srcloc !253
  %or.i.i = or i32 %83, 2
  %84 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmr_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %or.i.i) #12, !srcloc !255
  br label %iop_adma_issue_pending.exit

iop_adma_issue_pending.exit:                      ; preds = %if.then.i, %if.end64.iop_adma_issue_pending.exit_crit_edge
  tail call void @msleep(i32 noundef 8) #12
  %cookie1.i.i = getelementptr i8, ptr %37, i32 -24
  %86 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cookie1.i.i, align 4
  %completed_cookie.i.i = getelementptr i8, ptr %37, i32 -20
  %88 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %completed_cookie.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %87)
  %cmp.not.i.i.i = icmp sgt i32 %89, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %call81)
  %cmp4.not.i.i.i = icmp sge i32 %89, %call81
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %call81)
  %cmp5.i.i.i = icmp slt i32 %87, %call81
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %iop_adma_issue_pending.exit
  %or.cond.i.i.i = or i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.if.end91_crit_edge, label %if.then.i.i.i.if.end.i_crit_edge

if.then.i.i.i.if.end.i_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i.i.i.if.end91_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.else.i.i.i:                                    ; preds = %iop_adma_issue_pending.exit
  %or.cond16.i.i.i = and i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond16.i.i.i, label %if.else.i.i.i.if.end91_crit_edge, label %if.else.i.i.i.if.end.i_crit_edge

if.else.i.i.i.if.end.i_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.else.i.i.i.if.end91_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.end.i:                                         ; preds = %if.else.i.i.i.if.end.i_crit_edge, %if.then.i.i.i.if.end.i_crit_edge
  %lock.i.i = getelementptr i8, ptr %37, i32 -92
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #12
  tail call fastcc void @__iop_adma_slot_cleanup(ptr noundef %add.ptr.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #12
  %90 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cookie1.i.i, align 4
  %92 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %completed_cookie.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %91)
  %cmp.not.i.i15.i = icmp sgt i32 %93, %91
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %call81)
  %cmp4.not.i.i16.i = icmp sge i32 %93, %call81
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %call81)
  %cmp5.i.i17.i = icmp slt i32 %91, %call81
  br i1 %cmp.not.i.i15.i, label %if.else.i.i22.i, label %if.then.i.i20.i

if.then.i.i20.i:                                  ; preds = %if.end.i
  %or.cond.i.i19.i = or i1 %cmp5.i.i17.i, %cmp4.not.i.i16.i
  br i1 %or.cond.i.i19.i, label %if.then.i.i20.i.if.end91_crit_edge, label %if.then.i.i20.i.do.end88_crit_edge

if.then.i.i20.i.do.end88_crit_edge:               ; preds = %if.then.i.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

if.then.i.i20.i.if.end91_crit_edge:               ; preds = %if.then.i.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.else.i.i22.i:                                  ; preds = %if.end.i
  %or.cond16.i.i21.i = and i1 %cmp5.i.i17.i, %cmp4.not.i.i16.i
  br i1 %or.cond16.i.i21.i, label %if.else.i.i22.i.if.end91_crit_edge, label %if.else.i.i22.i.do.end88_crit_edge

if.else.i.i22.i.do.end88_crit_edge:               ; preds = %if.else.i.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

if.else.i.i22.i.if.end91_crit_edge:               ; preds = %if.else.i.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

do.end88:                                         ; preds = %if.else.i.i22.i.do.end88_crit_edge, %if.then.i.i20.i.do.end88_crit_edge
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr, align 4
  %dev90 = getelementptr inbounds %struct.dma_device, ptr %95, i32 0, i32 15
  %96 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev90, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.75) #16
  br label %free_resources

if.end91:                                         ; preds = %if.else.i.i22.i.if.end91_crit_edge, %if.then.i.i20.i.if.end91_crit_edge, %if.else.i.i.i.if.end91_crit_edge, %if.then.i.i.i.if.end91_crit_edge
  %device95 = getelementptr i8, ptr %37, i32 -36
  %98 = ptrtoint ptr %device95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device95, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %dev96 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev96, i32 noundef %call67, i32 noundef 4096, i32 noundef 2) #12
  br label %for.body100

for.cond97:                                       ; preds = %for.body100
  %inc114 = add nuw nsw i32 %i.2379, 1
  %exitcond.not = icmp eq i32 %inc114, 1024
  br i1 %exitcond.not, label %for.end115, label %for.cond97.for.body100_crit_edge

for.cond97.for.body100_crit_edge:                 ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body100

for.body100:                                      ; preds = %for.cond97.for.body100_crit_edge, %if.end91
  %i.2379 = phi i32 [ 0, %if.end91 ], [ %inc114, %for.cond97.for.body100_crit_edge ]
  %call102 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i300) #12
  %arrayidx103 = getelementptr i32, ptr %call102, i32 %i.2379
  %102 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252645135, i32 %103)
  %cmp104.not = icmp eq i32 %103, 252645135
  br i1 %cmp104.not, label %for.cond97, label %cleanup

cleanup:                                          ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 4
  %dev111 = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 15
  %106 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev111, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.77) #16
  br label %free_resources

for.end115:                                       ; preds = %for.cond97
  %108 = ptrtoint ptr %device95 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device95, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %dev118 = getelementptr inbounds %struct.platform_device, ptr %111, i32 0, i32 3
  tail call void @dma_sync_single_for_device(ptr noundef %dev118, i32 noundef %call67, i32 noundef 4096, i32 noundef 1) #12
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %cap_mask, align 4
  %116 = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool121.not = icmp eq i32 %116, 0
  br i1 %tobool121.not, label %for.end115.free_resources_crit_edge, label %for.body127.preheader

for.end115.free_resources_crit_edge:              ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_resources

for.body127.preheader:                            ; preds = %for.end115
  %117 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %117)
  %zero_sum_srcs.sroa.0.0.copyload = load ptr, ptr %xor_srcs, align 4
  %118 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %118)
  %zero_sum_srcs.sroa.6.0.copyload = load ptr, ptr %0, align 4
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %zero_sum_srcs.sroa.9.0.copyload = load ptr, ptr %1, align 4
  %120 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %zero_sum_srcs.sroa.12.0.copyload = load ptr, ptr %2, align 4
  %121 = ptrtoint ptr %zero_sum_result to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %zero_sum_result, align 4
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr, align 4
  %dev139 = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 15
  %124 = ptrtoint ptr %dev139 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev139, align 4
  %call141 = tail call i32 @dma_map_page_attrs(ptr noundef %125, ptr noundef %zero_sum_srcs.sroa.0.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %126 = ptrtoint ptr %dma_srcs to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call141, ptr %dma_srcs, align 4
  %127 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr, align 4
  %dev139.1 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 15
  %129 = ptrtoint ptr %dev139.1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev139.1, align 4
  %call141.1 = tail call i32 @dma_map_page_attrs(ptr noundef %130, ptr noundef %zero_sum_srcs.sroa.6.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %131 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call141.1, ptr %5, align 4
  %132 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr, align 4
  %dev139.2 = getelementptr inbounds %struct.dma_device, ptr %133, i32 0, i32 15
  %134 = ptrtoint ptr %dev139.2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev139.2, align 4
  %call141.2 = tail call i32 @dma_map_page_attrs(ptr noundef %135, ptr noundef %zero_sum_srcs.sroa.9.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %136 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call141.2, ptr %6, align 4
  %137 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr, align 4
  %dev139.3 = getelementptr inbounds %struct.dma_device, ptr %138, i32 0, i32 15
  %139 = ptrtoint ptr %dev139.3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev139.3, align 4
  %call141.3 = tail call i32 @dma_map_page_attrs(ptr noundef %140, ptr noundef %zero_sum_srcs.sroa.12.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %141 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call141.3, ptr %7, align 4
  %142 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %add.ptr, align 4
  %dev139.4 = getelementptr inbounds %struct.dma_device, ptr %143, i32 0, i32 15
  %144 = ptrtoint ptr %dev139.4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev139.4, align 4
  %call141.4 = tail call i32 @dma_map_page_attrs(ptr noundef %145, ptr noundef nonnull %call38.i.i.i300, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %146 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call141.4, ptr %8, align 4
  %call147 = call ptr @iop_adma_prep_dma_xor_val(ptr noundef %add.ptr, ptr noundef nonnull %dma_srcs, i32 noundef 5, i32 noundef 4096, ptr noundef nonnull %zero_sum_result, i32 noundef 3)
  %call148 = call i32 @iop_adma_tx_submit(ptr noundef %call147)
  %147 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i304 = icmp eq i32 %148, 0
  br i1 %tobool.not.i304, label %for.body127.preheader.iop_adma_issue_pending.exit309_crit_edge, label %if.then.i307

for.body127.preheader.iop_adma_issue_pending.exit309_crit_edge: ; preds = %for.body127.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_issue_pending.exit309

if.then.i307:                                     ; preds = %for.body127.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %add.ptr.i, align 4
  %mmr_base.i.i305 = getelementptr i8, ptr %37, i32 -48
  %150 = ptrtoint ptr %mmr_base.i.i305 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mmr_base.i.i305, align 4
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #12, !srcloc !253
  %or.i.i306 = or i32 %152, 2
  %153 = ptrtoint ptr %mmr_base.i.i305 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mmr_base.i.i305, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %or.i.i306) #12, !srcloc !255
  br label %iop_adma_issue_pending.exit309

iop_adma_issue_pending.exit309:                   ; preds = %if.then.i307, %for.body127.preheader.iop_adma_issue_pending.exit309_crit_edge
  call void @msleep(i32 noundef 8) #12
  %155 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cookie1.i.i, align 4
  %157 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %completed_cookie.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %156)
  %cmp.not.i.i.i312 = icmp sgt i32 %158, %156
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %call148)
  %cmp4.not.i.i.i313 = icmp sge i32 %158, %call148
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %call148)
  %cmp5.i.i.i314 = icmp slt i32 %156, %call148
  br i1 %cmp.not.i.i.i312, label %if.else.i.i.i318, label %if.then.i.i.i316

if.then.i.i.i316:                                 ; preds = %iop_adma_issue_pending.exit309
  %or.cond.i.i.i315 = or i1 %cmp5.i.i.i314, %cmp4.not.i.i.i313
  br i1 %or.cond.i.i.i315, label %if.then.i.i.i316.if.end158_crit_edge, label %if.then.i.i.i316.if.end.i321_crit_edge

if.then.i.i.i316.if.end.i321_crit_edge:           ; preds = %if.then.i.i.i316
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i321

if.then.i.i.i316.if.end158_crit_edge:             ; preds = %if.then.i.i.i316
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.else.i.i.i318:                                 ; preds = %iop_adma_issue_pending.exit309
  %or.cond16.i.i.i317 = and i1 %cmp5.i.i.i314, %cmp4.not.i.i.i313
  br i1 %or.cond16.i.i.i317, label %if.else.i.i.i318.if.end158_crit_edge, label %if.else.i.i.i318.if.end.i321_crit_edge

if.else.i.i.i318.if.end.i321_crit_edge:           ; preds = %if.else.i.i.i318
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i321

if.else.i.i.i318.if.end158_crit_edge:             ; preds = %if.else.i.i.i318
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.end.i321:                                      ; preds = %if.else.i.i.i318.if.end.i321_crit_edge, %if.then.i.i.i316.if.end.i321_crit_edge
  %lock.i.i320 = getelementptr i8, ptr %37, i32 -92
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i320) #12
  call fastcc void @__iop_adma_slot_cleanup(ptr noundef %add.ptr.i) #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i320) #12
  %159 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cookie1.i.i, align 4
  %161 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %completed_cookie.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %160)
  %cmp.not.i.i15.i322 = icmp sgt i32 %162, %160
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %call148)
  %cmp4.not.i.i16.i323 = icmp sge i32 %162, %call148
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %call148)
  %cmp5.i.i17.i324 = icmp slt i32 %160, %call148
  br i1 %cmp.not.i.i15.i322, label %if.else.i.i22.i328, label %if.then.i.i20.i326

if.then.i.i20.i326:                               ; preds = %if.end.i321
  %or.cond.i.i19.i325 = or i1 %cmp5.i.i17.i324, %cmp4.not.i.i16.i323
  br i1 %or.cond.i.i19.i325, label %if.then.i.i20.i326.if.end158_crit_edge, label %if.then.i.i20.i326.do.end155_crit_edge

if.then.i.i20.i326.do.end155_crit_edge:           ; preds = %if.then.i.i20.i326
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end155

if.then.i.i20.i326.if.end158_crit_edge:           ; preds = %if.then.i.i20.i326
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.else.i.i22.i328:                               ; preds = %if.end.i321
  %or.cond16.i.i21.i327 = and i1 %cmp5.i.i17.i324, %cmp4.not.i.i16.i323
  br i1 %or.cond16.i.i21.i327, label %if.else.i.i22.i328.if.end158_crit_edge, label %if.else.i.i22.i328.do.end155_crit_edge

if.else.i.i22.i328.do.end155_crit_edge:           ; preds = %if.else.i.i22.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end155

if.else.i.i22.i328.if.end158_crit_edge:           ; preds = %if.else.i.i22.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

do.end155:                                        ; preds = %if.else.i.i22.i328.do.end155_crit_edge, %if.then.i.i20.i326.do.end155_crit_edge
  %163 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr, align 4
  %dev157 = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 15
  %165 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev157, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.80) #16
  br label %free_resources

if.end158:                                        ; preds = %if.else.i.i22.i328.if.end158_crit_edge, %if.then.i.i20.i326.if.end158_crit_edge, %if.else.i.i.i318.if.end158_crit_edge, %if.then.i.i.i316.if.end158_crit_edge
  %167 = ptrtoint ptr %zero_sum_result to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %zero_sum_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp159.not = icmp eq i32 %168, 0
  br i1 %cmp159.not, label %if.end167, label %do.end164

do.end164:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr, align 4
  %dev166 = getelementptr inbounds %struct.dma_device, ptr %170, i32 0, i32 15
  %171 = ptrtoint ptr %dev166 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev166, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.83) #16
  br label %free_resources

if.end167:                                        ; preds = %if.end158
  %173 = ptrtoint ptr %zero_sum_result to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %zero_sum_result, align 4
  %174 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %add.ptr, align 4
  %dev173 = getelementptr inbounds %struct.dma_device, ptr %175, i32 0, i32 15
  %176 = ptrtoint ptr %dev173 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev173, align 4
  %call175 = call i32 @dma_map_page_attrs(ptr noundef %177, ptr noundef %zero_sum_srcs.sroa.0.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %178 = ptrtoint ptr %dma_srcs to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %call175, ptr %dma_srcs, align 4
  %179 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %add.ptr, align 4
  %dev173.1 = getelementptr inbounds %struct.dma_device, ptr %180, i32 0, i32 15
  %181 = ptrtoint ptr %dev173.1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev173.1, align 4
  %call175.1 = call i32 @dma_map_page_attrs(ptr noundef %182, ptr noundef %zero_sum_srcs.sroa.6.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %183 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call175.1, ptr %5, align 4
  %184 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %add.ptr, align 4
  %dev173.2 = getelementptr inbounds %struct.dma_device, ptr %185, i32 0, i32 15
  %186 = ptrtoint ptr %dev173.2 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev173.2, align 4
  %call175.2 = call i32 @dma_map_page_attrs(ptr noundef %187, ptr noundef %zero_sum_srcs.sroa.9.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %188 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call175.2, ptr %6, align 4
  %189 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %add.ptr, align 4
  %dev173.3 = getelementptr inbounds %struct.dma_device, ptr %190, i32 0, i32 15
  %191 = ptrtoint ptr %dev173.3 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev173.3, align 4
  %call175.3 = call i32 @dma_map_page_attrs(ptr noundef %192, ptr noundef %zero_sum_srcs.sroa.12.0.copyload, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %193 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %call175.3, ptr %7, align 4
  %194 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %add.ptr, align 4
  %dev173.4 = getelementptr inbounds %struct.dma_device, ptr %195, i32 0, i32 15
  %196 = ptrtoint ptr %dev173.4 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev173.4, align 4
  %call175.4 = call i32 @dma_map_page_attrs(ptr noundef %197, ptr noundef nonnull %call38.i.i.i300, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %198 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call175.4, ptr %8, align 4
  %call181 = call ptr @iop_adma_prep_dma_xor_val(ptr noundef %add.ptr, ptr noundef nonnull %dma_srcs, i32 noundef 5, i32 noundef 4096, ptr noundef nonnull %zero_sum_result, i32 noundef 3)
  %call182 = call i32 @iop_adma_tx_submit(ptr noundef %call181)
  %199 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i333 = icmp eq i32 %200, 0
  br i1 %tobool.not.i333, label %if.end167.iop_adma_issue_pending.exit338_crit_edge, label %if.then.i336

if.end167.iop_adma_issue_pending.exit338_crit_edge: ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_issue_pending.exit338

if.then.i336:                                     ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  %201 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %add.ptr.i, align 4
  %mmr_base.i.i334 = getelementptr i8, ptr %37, i32 -48
  %202 = ptrtoint ptr %mmr_base.i.i334 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmr_base.i.i334, align 4
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #12, !srcloc !253
  %or.i.i335 = or i32 %204, 2
  %205 = ptrtoint ptr %mmr_base.i.i334 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mmr_base.i.i334, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %or.i.i335) #12, !srcloc !255
  br label %iop_adma_issue_pending.exit338

iop_adma_issue_pending.exit338:                   ; preds = %if.then.i336, %if.end167.iop_adma_issue_pending.exit338_crit_edge
  call void @msleep(i32 noundef 8) #12
  %207 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cookie1.i.i, align 4
  %209 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %completed_cookie.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %208)
  %cmp.not.i.i.i341 = icmp sgt i32 %210, %208
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %call182)
  %cmp4.not.i.i.i342 = icmp sge i32 %210, %call182
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %call182)
  %cmp5.i.i.i343 = icmp slt i32 %208, %call182
  br i1 %cmp.not.i.i.i341, label %if.else.i.i.i347, label %if.then.i.i.i345

if.then.i.i.i345:                                 ; preds = %iop_adma_issue_pending.exit338
  %or.cond.i.i.i344 = or i1 %cmp5.i.i.i343, %cmp4.not.i.i.i342
  br i1 %or.cond.i.i.i344, label %if.then.i.i.i345.if.end192_crit_edge, label %if.then.i.i.i345.if.end.i350_crit_edge

if.then.i.i.i345.if.end.i350_crit_edge:           ; preds = %if.then.i.i.i345
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i350

if.then.i.i.i345.if.end192_crit_edge:             ; preds = %if.then.i.i.i345
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.else.i.i.i347:                                 ; preds = %iop_adma_issue_pending.exit338
  %or.cond16.i.i.i346 = and i1 %cmp5.i.i.i343, %cmp4.not.i.i.i342
  br i1 %or.cond16.i.i.i346, label %if.else.i.i.i347.if.end192_crit_edge, label %if.else.i.i.i347.if.end.i350_crit_edge

if.else.i.i.i347.if.end.i350_crit_edge:           ; preds = %if.else.i.i.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i350

if.else.i.i.i347.if.end192_crit_edge:             ; preds = %if.else.i.i.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.end.i350:                                      ; preds = %if.else.i.i.i347.if.end.i350_crit_edge, %if.then.i.i.i345.if.end.i350_crit_edge
  %lock.i.i349 = getelementptr i8, ptr %37, i32 -92
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i349) #12
  call fastcc void @__iop_adma_slot_cleanup(ptr noundef %add.ptr.i) #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i349) #12
  %211 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %cookie1.i.i, align 4
  %213 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %completed_cookie.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %212)
  %cmp.not.i.i15.i351 = icmp sgt i32 %214, %212
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %call182)
  %cmp4.not.i.i16.i352 = icmp sge i32 %214, %call182
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %call182)
  %cmp5.i.i17.i353 = icmp slt i32 %212, %call182
  br i1 %cmp.not.i.i15.i351, label %if.else.i.i22.i357, label %if.then.i.i20.i355

if.then.i.i20.i355:                               ; preds = %if.end.i350
  %or.cond.i.i19.i354 = or i1 %cmp5.i.i17.i353, %cmp4.not.i.i16.i352
  br i1 %or.cond.i.i19.i354, label %if.then.i.i20.i355.if.end192_crit_edge, label %if.then.i.i20.i355.do.end189_crit_edge

if.then.i.i20.i355.do.end189_crit_edge:           ; preds = %if.then.i.i20.i355
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end189

if.then.i.i20.i355.if.end192_crit_edge:           ; preds = %if.then.i.i20.i355
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.else.i.i22.i357:                               ; preds = %if.end.i350
  %or.cond16.i.i21.i356 = and i1 %cmp5.i.i17.i353, %cmp4.not.i.i16.i352
  br i1 %or.cond16.i.i21.i356, label %if.else.i.i22.i357.if.end192_crit_edge, label %if.else.i.i22.i357.do.end189_crit_edge

if.else.i.i22.i357.do.end189_crit_edge:           ; preds = %if.else.i.i22.i357
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end189

if.else.i.i22.i357.if.end192_crit_edge:           ; preds = %if.else.i.i22.i357
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

do.end189:                                        ; preds = %if.else.i.i22.i357.do.end189_crit_edge, %if.then.i.i20.i355.do.end189_crit_edge
  %215 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %add.ptr, align 4
  %dev191 = getelementptr inbounds %struct.dma_device, ptr %216, i32 0, i32 15
  %217 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev191, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.86) #16
  br label %free_resources

if.end192:                                        ; preds = %if.else.i.i22.i357.if.end192_crit_edge, %if.then.i.i20.i355.if.end192_crit_edge, %if.else.i.i.i347.if.end192_crit_edge, %if.then.i.i.i345.if.end192_crit_edge
  %219 = ptrtoint ptr %zero_sum_result to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %zero_sum_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp193.not = icmp eq i32 %220, 1
  br i1 %cmp193.not, label %if.end192.free_resources_crit_edge, label %do.end198

if.end192.free_resources_crit_edge:               ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_resources

do.end198:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  %221 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %add.ptr, align 4
  %dev200 = getelementptr inbounds %struct.dma_device, ptr %222, i32 0, i32 15
  %223 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev200, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.89) #16
  br label %free_resources

free_resources:                                   ; preds = %do.end198, %if.end192.free_resources_crit_edge, %do.end189, %do.end164, %do.end155, %for.end115.free_resources_crit_edge, %cleanup, %do.end88
  %err.2 = phi i32 [ -19, %do.end88 ], [ -19, %cleanup ], [ -19, %do.end155 ], [ -19, %do.end164 ], [ -19, %do.end189 ], [ -19, %do.end198 ], [ 0, %if.end192.free_resources_crit_edge ], [ 0, %for.end115.free_resources_crit_edge ]
  call void @iop_adma_free_chan_resources(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %free_resources, %for.body23.preheader.out_crit_edge
  %err.3 = phi i32 [ %err.2, %free_resources ], [ -19, %for.body23.preheader.out_crit_edge ]
  %225 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %2, align 4
  call void @__free_pages(ptr noundef %226, i32 noundef 0) #12
  %227 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %1, align 4
  call void @__free_pages(ptr noundef %228, i32 noundef 0) #12
  %229 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %0, align 4
  call void @__free_pages(ptr noundef %230, i32 noundef 0) #12
  %231 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %xor_srcs, align 4
  call void @__free_pages(ptr noundef %232, i32 noundef 0) #12
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i300, i32 noundef 0) #12
  br label %cleanup208

cleanup208:                                       ; preds = %out, %while.body17.preheader, %while.body.preheader.cleanup208_crit_edge, %while.body.2, %while.body.1.cleanup208_crit_edge, %do.end.cleanup208_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ -12, %while.body17.preheader ], [ -12, %do.end.cleanup208_crit_edge ], [ -12, %while.body.2 ], [ -12, %while.body.1.cleanup208_crit_edge ], [ -12, %while.body.preheader.cleanup208_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero_sum_result) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dma_srcs) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xor_srcs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iop_adma_pq_zero_sum_self_test(ptr nocapture noundef readonly %device) unnamed_addr #2 align 64 {
entry:
  %pq = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pq) #12
  %0 = getelementptr inbounds [8 x ptr], ptr %pq, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %pq, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %pq, i32 0, i32 3
  %3 = getelementptr inbounds [8 x ptr], ptr %pq, i32 0, i32 4
  %4 = getelementptr inbounds [8 x ptr], ptr %pq, i32 0, i32 5
  %5 = getelementptr inbounds [8 x ptr], ptr %pq, i32 0, i32 6
  %6 = getelementptr inbounds [8 x ptr], ptr %pq, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %pq, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_pq_zero_sum_self_test.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_pq_zero_sum_self_test, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev5 = getelementptr inbounds %struct.iop_adma_device, ptr %device, i32 0, i32 4, i32 15
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_pq_zero_sum_self_test.__UNIQUE_ID_ddebug298, ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.92) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %11 = ptrtoint ptr %pq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38.i.i.i, ptr %pq, align 4
  %tobool9.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %for.inc

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.1:                                     ; preds = %while.body.preheader
  %dec.1 = add nsw i32 %i.1309.ph, -1
  %arrayidx12.1 = getelementptr [8 x ptr], ptr %pq, i32 0, i32 %dec.1
  %12 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12.1, align 4
  tail call void @__free_pages(ptr noundef %13, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool11.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool11.not.1, label %while.body.1.cleanup_crit_edge, label %while.body.2

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add nsw i32 %i.1309.ph, -2
  %arrayidx12.2 = getelementptr [8 x ptr], ptr %pq, i32 0, i32 %dec.2
  %14 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12.2, align 4
  tail call void @__free_pages(ptr noundef %15, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool11.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool11.not.2, label %while.body.2.cleanup_crit_edge, label %while.body.3

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  %dec.3 = add nsw i32 %i.1309.ph, -3
  %arrayidx12.3 = getelementptr [8 x ptr], ptr %pq, i32 0, i32 %dec.3
  %16 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12.3, align 4
  tail call void @__free_pages(ptr noundef %17, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3)
  %tobool11.not.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool11.not.3, label %while.body.3.cleanup_crit_edge, label %while.body.4

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.4:                                     ; preds = %while.body.3
  %dec.4 = add nsw i32 %i.1309.ph, -4
  %arrayidx12.4 = getelementptr [8 x ptr], ptr %pq, i32 0, i32 %dec.4
  %18 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12.4, align 4
  tail call void @__free_pages(ptr noundef %19, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.4)
  %tobool11.not.4 = icmp eq i32 %dec.4, 0
  br i1 %tobool11.not.4, label %while.body.4.cleanup_crit_edge, label %while.body.5

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.5:                                     ; preds = %while.body.4
  %dec.5 = add nsw i32 %i.1309.ph, -5
  %arrayidx12.5 = getelementptr [8 x ptr], ptr %pq, i32 0, i32 %dec.5
  %20 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12.5, align 4
  tail call void @__free_pages(ptr noundef %21, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.5)
  %tobool11.not.5 = icmp eq i32 %dec.5, 0
  br i1 %tobool11.not.5, label %while.body.5.cleanup_crit_edge, label %while.body.6

while.body.5.cleanup_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #14
  %dec.6 = add nsw i32 %i.1309.ph, -6
  %arrayidx12.6 = getelementptr [8 x ptr], ptr %pq, i32 0, i32 %dec.6
  %22 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12.6, align 4
  tail call void @__free_pages(ptr noundef %23, i32 noundef 0) #12
  br label %cleanup

for.inc:                                          ; preds = %do.end
  %call38.i.i.i.1 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i.i.i.1, ptr %0, align 4
  %tobool9.not.1 = icmp eq ptr %call38.i.i.i.1, null
  br i1 %tobool9.not.1, label %for.inc.while.body.preheader_crit_edge, label %for.inc.1

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.inc.6.while.body.preheader_crit_edge, %for.inc.5.while.body.preheader_crit_edge, %for.inc.4.while.body.preheader_crit_edge, %for.inc.3.while.body.preheader_crit_edge, %for.inc.2.while.body.preheader_crit_edge, %for.inc.1.while.body.preheader_crit_edge, %for.inc.while.body.preheader_crit_edge
  %i.1309.ph = phi i32 [ 0, %for.inc.while.body.preheader_crit_edge ], [ 1, %for.inc.1.while.body.preheader_crit_edge ], [ 2, %for.inc.2.while.body.preheader_crit_edge ], [ 3, %for.inc.3.while.body.preheader_crit_edge ], [ 4, %for.inc.4.while.body.preheader_crit_edge ], [ 5, %for.inc.5.while.body.preheader_crit_edge ], [ 6, %for.inc.6.while.body.preheader_crit_edge ]
  %arrayidx12 = getelementptr [8 x ptr], ptr %pq, i32 0, i32 %i.1309.ph
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12, align 4
  tail call void @__free_pages(ptr noundef %26, i32 noundef 0) #12
  br i1 %tobool9.not.1, label %while.body.preheader.cleanup_crit_edge, label %while.body.1

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %call38.i.i.i.2 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call38.i.i.i.2, ptr %1, align 4
  %tobool9.not.2 = icmp eq ptr %call38.i.i.i.2, null
  br i1 %tobool9.not.2, label %for.inc.1.while.body.preheader_crit_edge, label %for.inc.2

for.inc.1.while.body.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %call38.i.i.i.3 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call38.i.i.i.3, ptr %2, align 4
  %tobool9.not.3 = icmp eq ptr %call38.i.i.i.3, null
  br i1 %tobool9.not.3, label %for.inc.2.while.body.preheader_crit_edge, label %for.inc.3

for.inc.2.while.body.preheader_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.3:                                        ; preds = %for.inc.2
  %call38.i.i.i.4 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call38.i.i.i.4, ptr %3, align 4
  %tobool9.not.4 = icmp eq ptr %call38.i.i.i.4, null
  br i1 %tobool9.not.4, label %for.inc.3.while.body.preheader_crit_edge, label %for.inc.4

for.inc.3.while.body.preheader_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.4:                                        ; preds = %for.inc.3
  %call38.i.i.i.5 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call38.i.i.i.5, ptr %4, align 4
  %tobool9.not.5 = icmp eq ptr %call38.i.i.i.5, null
  br i1 %tobool9.not.5, label %for.inc.4.while.body.preheader_crit_edge, label %for.inc.5

for.inc.4.while.body.preheader_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.5:                                        ; preds = %for.inc.4
  %call38.i.i.i.6 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call38.i.i.i.6, ptr %5, align 4
  %tobool9.not.6 = icmp eq ptr %call38.i.i.i.6, null
  br i1 %tobool9.not.6, label %for.inc.5.while.body.preheader_crit_edge, label %for.inc.6

for.inc.5.while.body.preheader_crit_edge:         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.6:                                        ; preds = %for.inc.5
  %call38.i.i.i.7 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call38.i.i.i.7, ptr %6, align 4
  %tobool9.not.7 = icmp eq ptr %call38.i.i.i.7, null
  br i1 %tobool9.not.7, label %for.inc.6.while.body.preheader_crit_edge, label %for.inc.7

for.inc.6.while.body.preheader_crit_edge:         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

for.inc.7:                                        ; preds = %for.inc.6
  %33 = ptrtoint ptr %pq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pq, align 4
  %call18 = tail call ptr @page_address(ptr noundef %34) #12
  %35 = call ptr @memset(ptr %call18, i32 17, i32 4096)
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %0, align 4
  %call18.1 = tail call ptr @page_address(ptr noundef %37) #12
  %38 = call ptr @memset(ptr %call18.1, i32 34, i32 4096)
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call18.2 = tail call ptr @page_address(ptr noundef %40) #12
  %41 = call ptr @memset(ptr %call18.2, i32 68, i32 4096)
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %2, align 4
  %call18.3 = tail call ptr @page_address(ptr noundef %43) #12
  %44 = call ptr @memset(ptr %call18.3, i32 136, i32 4096)
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %call25 = tail call ptr @page_address(ptr noundef %46) #12
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 4
  %call28 = tail call ptr @page_address(ptr noundef %48) #12
  %channels = getelementptr inbounds %struct.iop_adma_device, ptr %device, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %channels, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 -32
  %call33 = tail call i32 @iop_adma_alloc_chan_resources(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %while.body148.preheader, label %if.end36

while.body148.preheader:                          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %6, align 4
  tail call void @__free_pages(ptr noundef %52, i32 noundef 0) #12
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %5, align 4
  tail call void @__free_pages(ptr noundef %54, i32 noundef 0) #12
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %4, align 4
  tail call void @__free_pages(ptr noundef %56, i32 noundef 0) #12
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  tail call void @__free_pages(ptr noundef %58, i32 noundef 0) #12
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %2, align 4
  tail call void @__free_pages(ptr noundef %60, i32 noundef 0) #12
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  tail call void @__free_pages(ptr noundef %62, i32 noundef 0) #12
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %0, align 4
  tail call void @__free_pages(ptr noundef %64, i32 noundef 0) #12
  %65 = ptrtoint ptr %pq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pq, align 4
  tail call void @__free_pages(ptr noundef %66, i32 noundef 0) #12
  br label %cleanup

if.end36:                                         ; preds = %for.inc.7
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 4
  %dev38 = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev38, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 4
  %call40 = tail call ptr @page_address(ptr noundef %72) #12
  %73 = call ptr @memset(ptr %call40, i32 0, i32 4096)
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %6, align 4
  %call42 = tail call ptr @page_address(ptr noundef %75) #12
  %76 = call ptr @memset(ptr %call42, i32 0, i32 4096)
  %call44 = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %72, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #12
  %call47 = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %75, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #12
  %77 = ptrtoint ptr %pq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pq, align 4
  %call53 = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %78, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %0, align 4
  %call53.1 = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %80, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call53.2 = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %82, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %2, align 4
  %call53.3 = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %84, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_prep_dma_pq.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_pq_zero_sum_self_test, %do.end32.i)) #12
          to label %if.then29.i [label %do.end32.i], !srcloc !251

if.then29.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %device.i = getelementptr i8, ptr %50, i32 -36
  %85 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.iop_adma_device, ptr %86, i32 0, i32 4, i32 15
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_prep_dma_pq.__UNIQUE_ID_ddebug290, ptr noundef %88, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.52, i32 noundef 4, i32 noundef 4096, i32 noundef 3) #12
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then29.i, %if.end36
  %lock.i = getelementptr i8, ptr %50, i32 -92
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #12, !srcloc !270
  unreachable

cleanup:                                          ; preds = %while.body148.preheader, %while.body.preheader.cleanup_crit_edge, %while.body.6, %while.body.5.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %while.body148.preheader ], [ -12, %do.end.cleanup_crit_edge ], [ -12, %while.body.6 ], [ -12, %while.body.5.cleanup_crit_edge ], [ -12, %while.body.4.cleanup_crit_edge ], [ -12, %while.body.3.cleanup_crit_edge ], [ -12, %while.body.2.cleanup_crit_edge ], [ -12, %while.body.1.cleanup_crit_edge ], [ -12, %while.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pq) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop_adma_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -64
  %group_head = getelementptr i8, ptr %tx, i32 -20
  %2 = ptrtoint ptr %group_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group_head, align 4
  %slot_cnt4 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %slot_cnt4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %slot_cnt4, align 4
  %conv = zext i16 %5 to i32
  %lock = getelementptr i8, ptr %1, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %9, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #12
  %11 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cookie2.i, align 4
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %tx, align 4
  %prev = getelementptr i8, ptr %1, i32 -8
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev, align 4
  %tx_list = getelementptr i8, ptr %tx, i32 -8
  %15 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %16, %tx_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev2.i.i = getelementptr i8, ptr %tx, i32 -4
  %19 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %14, ptr %prev3.i.i, align 4
  store ptr %16, ptr %14, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %20, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev6.i.i, align 4
  %24 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %hw_desc1.i = getelementptr i8, ptr %14, i32 8
  %25 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_desc1.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %iop_desc_set_next_desc.exit, label %do.body4.i, !prof !268

do.body4.i:                                       ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 758, 0\0A.popsection", ""() #12, !srcloc !271
  unreachable

iop_desc_set_next_desc.exit:                      ; preds = %list_splice_init.exit
  %phys = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %3, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %26, align 4
  %32 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_desc1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %30)
  %cmp.not = icmp eq i32 %35, %30
  br i1 %cmp.not, label %do.body17, label %do.body11, !prof !268

do.body11:                                        ; preds = %iop_desc_set_next_desc.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 385, 0\0A.popsection", ""() #12, !srcloc !272
  unreachable

do.body17:                                        ; preds = %iop_desc_set_next_desc.exit
  %hw_desc1.i72 = getelementptr i8, ptr %tx, i32 -24
  %36 = ptrtoint ptr %hw_desc1.i72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_desc1.i72, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool19.not = icmp eq i32 %39, 0
  br i1 %tobool19.not, label %do.end35, label %do.body27, !prof !268

do.body27:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 388, 0\0A.popsection", ""() #12, !srcloc !273
  unreachable

do.end35:                                         ; preds = %do.body17
  %40 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr3, align 4
  %add = add i32 %41, %conv
  store i32 %add, ptr %add.ptr3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_check_threshold.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_tx_submit, %do.end.i)) #12
          to label %if.then.i73 [label %do.end.i], !srcloc !251

if.then.i73:                                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  %device.i = getelementptr i8, ptr %1, i32 -4
  %42 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.iop_adma_device, ptr %43, i32 0, i32 4, i32 15
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_check_threshold.__UNIQUE_ID_ddebug282, ptr noundef %45, ptr noundef nonnull @.str.25, i32 noundef %47) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i73, %do.end35
  %48 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp.i = icmp sgt i32 %49, 3
  br i1 %cmp.i, label %if.then5.i, label %do.end.i.iop_adma_check_threshold.exit_crit_edge

do.end.i.iop_adma_check_threshold.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_check_threshold.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %add.ptr3, align 4
  %mmr_base.i.i = getelementptr i8, ptr %1, i32 -16
  %51 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmr_base.i.i, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #12, !srcloc !253
  %or.i.i = or i32 %53, 2
  %54 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmr_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %or.i.i) #12, !srcloc !255
  br label %iop_adma_check_threshold.exit

iop_adma_check_threshold.exit:                    ; preds = %if.then5.i, %do.end.i.iop_adma_check_threshold.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_tx_submit.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_tx_submit, %do.end55)) #12
          to label %if.then49 [label %do.end55], !srcloc !251

if.then49:                                        ; preds = %iop_adma_check_threshold.exit
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr i8, ptr %1, i32 -4
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %57, i32 0, i32 4, i32 15
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %60 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx, align 4
  %idx = getelementptr i8, ptr %tx, i32 -12
  %62 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %idx, align 4
  %conv52 = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_tx_submit.__UNIQUE_ID_ddebug283, ptr noundef %59, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %61, i32 noundef %conv52) #12
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %iop_adma_check_threshold.exit
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iop_chan_start_null_memcpy(ptr noundef %iop_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_chan_start_null_memcpy.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_chan_start_null_memcpy, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_chan_start_null_memcpy.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call5 = tail call fastcc ptr @iop_adma_alloc_slots(ptr noundef %iop_chan, i32 noundef 1, i32 noundef 1)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end52, label %if.then7

if.then7:                                         ; preds = %do.end
  %group_head = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 3
  %4 = ptrtoint ptr %group_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_head, align 4
  %tx_list = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 7
  %6 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %7, %tx_list
  br i1 %cmp.i.not.i, label %if.then7.list_splice_init.exit_crit_edge, label %if.then.i

if.then7.list_splice_init.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %chain = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 3
  %8 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chain, align 4
  %prev2.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chain, ptr %prev3.i.i, align 4
  store ptr %7, ptr %chain, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %11, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev6.i.i, align 4
  %15 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.then7.list_splice_init.exit_crit_edge
  %async_tx = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8
  %flags.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %17, 2
  store i32 %or.i, ptr %flags.i, align 4
  %hw_desc1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_desc1.i, align 4
  %20 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %19, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -503316480, ptr %20, align 4
  %22 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 4
  %crc_addr.i = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %crc_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %crc_addr.i, align 4
  %25 = load ptr, ptr %hw_desc1.i, align 4
  %device.i = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.iop_adma_device, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %29, label %do.body.i [
    i32 0, label %list_splice_init.exit.sw.bb.i_crit_edge
    i32 1, label %list_splice_init.exit.sw.bb.i_crit_edge103
    i32 2, label %sw.bb3.i
  ]

list_splice_init.exit.sw.bb.i_crit_edge103:       ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

list_splice_init.exit.sw.bb.i_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %list_splice_init.exit.sw.bb.i_crit_edge, %list_splice_init.exit.sw.bb.i_crit_edge103
  %byte_count2.i = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %25, i32 0, i32 4
  br label %iop_desc_set_byte_count.exit

sw.bb3.i:                                         ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %byte_count4.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %25, i32 0, i32 3
  br label %iop_desc_set_byte_count.exit

do.body.i:                                        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 643, 0\0A.popsection", ""() #12, !srcloc !260
  unreachable

iop_desc_set_byte_count.exit:                     ; preds = %sw.bb3.i, %sw.bb.i
  %byte_count4.sink.i = phi ptr [ %byte_count4.i, %sw.bb3.i ], [ %byte_count2.i, %sw.bb.i ]
  %31 = ptrtoint ptr %byte_count4.sink.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %byte_count4.sink.i, align 4
  %32 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_desc1.i, align 4
  %34 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i, align 4
  %id.i83 = getelementptr inbounds %struct.iop_adma_device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %id.i83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i83, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %37, label %do.body.i85 [
    i32 0, label %iop_desc_set_byte_count.exit.sw.bb.i84_crit_edge
    i32 1, label %iop_desc_set_byte_count.exit.sw.bb.i84_crit_edge104
    i32 2, label %sw.bb2.i
  ]

iop_desc_set_byte_count.exit.sw.bb.i84_crit_edge104: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i84

iop_desc_set_byte_count.exit.sw.bb.i84_crit_edge: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i84

sw.bb.i84:                                        ; preds = %iop_desc_set_byte_count.exit.sw.bb.i84_crit_edge, %iop_desc_set_byte_count.exit.sw.bb.i84_crit_edge104
  %39 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %33, i32 0, i32 3
  br label %iop_desc_set_dest_addr.exit

sw.bb2.i:                                         ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dest_addr.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %33, i32 0, i32 2
  br label %iop_desc_set_dest_addr.exit

do.body.i85:                                      ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 710, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

iop_desc_set_dest_addr.exit:                      ; preds = %sw.bb2.i, %sw.bb.i84
  %dest_addr.sink.i = phi ptr [ %dest_addr.i, %sw.bb2.i ], [ %39, %sw.bb.i84 ]
  %40 = ptrtoint ptr %dest_addr.sink.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %dest_addr.sink.i, align 4
  %41 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_desc1.i, align 4
  %43 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %43, align 4
  %chan1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8, i32 3
  %45 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan1.i, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %48, 1
  %49 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #12
  %50 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cookie2.i, align 4
  %51 = ptrtoint ptr %async_tx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %async_tx, align 4
  %sub = add nsw i32 %49, -1
  %completed_cookie = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 5, i32 3
  %52 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub, ptr %completed_cookie, align 4
  %mmr_base.i = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 2
  %53 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !253
  %56 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool13.not = icmp eq i32 %56, 0
  br i1 %tobool13.not, label %do.end29, label %do.body21, !prof !268

do.body21:                                        ; preds = %iop_desc_set_dest_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1464, 0\0A.popsection", ""() #12, !srcloc !274
  unreachable

do.end29:                                         ; preds = %iop_desc_set_dest_addr.exit
  %57 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #12, !srcloc !253
  %60 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device.i, align 4
  %id.i90 = getelementptr inbounds %struct.iop_adma_device, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %id.i90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %64 = icmp ult i32 %63, 3
  br i1 %64, label %switch.lookup, label %do.body.i91

do.body.i91:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 849, 0\0A.popsection", ""() #12, !srcloc !254
  unreachable

switch.lookup:                                    ; preds = %do.end29
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.iop_chan_start_null_memcpy, i32 0, i32 %63
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and2.i = and i32 %switch.load, %59
  %66 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %and2.i) #12, !srcloc !255
  %68 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmr_base.i, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #12, !srcloc !253
  %and.i93 = and i32 %70, -2
  %71 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmr_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %and.i93) #12, !srcloc !255
  %phys = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8, i32 2
  %73 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %phys, align 4
  %75 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device.i, align 4
  %id1.i = getelementptr inbounds %struct.iop_adma_device, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id1.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %78, label %switch.lookup.iop_chan_set_next_descriptor.exit_crit_edge [
    i32 0, label %switch.lookup.sw.bb.i97_crit_edge
    i32 1, label %switch.lookup.sw.bb.i97_crit_edge105
    i32 2, label %sw.bb2.i98
  ]

switch.lookup.sw.bb.i97_crit_edge105:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i97

switch.lookup.sw.bb.i97_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i97

switch.lookup.iop_chan_set_next_descriptor.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_chan_set_next_descriptor.exit

sw.bb.i97:                                        ; preds = %switch.lookup.sw.bb.i97_crit_edge, %switch.lookup.sw.bb.i97_crit_edge105
  %80 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %74) #12, !srcloc !255
  br label %iop_chan_set_next_descriptor.exit

sw.bb2.i98:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %83, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %74) #12, !srcloc !255
  br label %iop_chan_set_next_descriptor.exit

iop_chan_set_next_descriptor.exit:                ; preds = %sw.bb2.i98, %sw.bb.i97, %switch.lookup.iop_chan_set_next_descriptor.exit_crit_edge
  %hw_desc1.i99 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 2
  %84 = ptrtoint ptr %hw_desc1.i99 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_desc1.i99, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool33.not = icmp eq i32 %87, 0
  br i1 %tobool33.not, label %do.end49, label %do.body41, !prof !268

do.body41:                                        ; preds = %iop_chan_set_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1478, 0\0A.popsection", ""() #12, !srcloc !275
  unreachable

do.end49:                                         ; preds = %iop_chan_set_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmr_base.i, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #12, !srcloc !253
  %or.i101 = or i32 %90, 1
  %91 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmr_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %or.i101) #12, !srcloc !255
  br label %if.end56

do.end52:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %device53 = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  %93 = ptrtoint ptr %device53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device53, align 4
  %dev55 = getelementptr inbounds %struct.iop_adma_device, ptr %94, i32 0, i32 4, i32 15
  %95 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.28) #16
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %do.end49
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iop_chan_start_null_xor(ptr noundef %iop_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_chan_start_null_xor.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_chan_start_null_xor, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_chan_start_null_xor.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call5 = tail call fastcc ptr @iop_adma_alloc_slots(ptr noundef %iop_chan, i32 noundef 1, i32 noundef 1)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end52, label %if.then7

if.then7:                                         ; preds = %do.end
  %group_head = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 3
  %4 = ptrtoint ptr %group_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_head, align 4
  %tx_list = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 7
  %6 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %7, %tx_list
  br i1 %cmp.i.not.i, label %if.then7.list_splice_init.exit_crit_edge, label %if.then.i

if.then7.list_splice_init.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %chain = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 3
  %8 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chain, align 4
  %prev2.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chain, ptr %prev3.i.i, align 4
  store ptr %7, ptr %chain, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %11, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev6.i.i, align 4
  %15 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.then7.list_splice_init.exit_crit_edge
  %async_tx = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8
  %flags.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %17, 2
  store i32 %or.i, ptr %flags.i, align 4
  %hw_desc1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_desc1.i, align 4
  %20 = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %22 = load ptr, ptr %hw_desc1.i, align 4
  %device.i = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.iop_adma_device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %26, label %do.body.i [
    i32 0, label %list_splice_init.exit.sw.bb.i_crit_edge
    i32 1, label %list_splice_init.exit.sw.bb.i_crit_edge125
    i32 2, label %sw.bb3.i
  ]

list_splice_init.exit.sw.bb.i_crit_edge125:       ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

list_splice_init.exit.sw.bb.i_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %list_splice_init.exit.sw.bb.i_crit_edge, %list_splice_init.exit.sw.bb.i_crit_edge125
  %byte_count2.i = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %22, i32 0, i32 4
  br label %iop_desc_set_byte_count.exit

sw.bb3.i:                                         ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %byte_count4.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %22, i32 0, i32 3
  br label %iop_desc_set_byte_count.exit

do.body.i:                                        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 643, 0\0A.popsection", ""() #12, !srcloc !260
  unreachable

iop_desc_set_byte_count.exit:                     ; preds = %sw.bb3.i, %sw.bb.i
  %byte_count4.sink.i = phi ptr [ %byte_count4.i, %sw.bb3.i ], [ %byte_count2.i, %sw.bb.i ]
  %28 = ptrtoint ptr %byte_count4.sink.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %byte_count4.sink.i, align 4
  %29 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_desc1.i, align 4
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i, align 4
  %id.i84 = getelementptr inbounds %struct.iop_adma_device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %id.i84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i84, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %34, label %do.body.i86 [
    i32 0, label %iop_desc_set_byte_count.exit.sw.bb.i85_crit_edge
    i32 1, label %iop_desc_set_byte_count.exit.sw.bb.i85_crit_edge126
    i32 2, label %sw.bb2.i
  ]

iop_desc_set_byte_count.exit.sw.bb.i85_crit_edge126: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i85

iop_desc_set_byte_count.exit.sw.bb.i85_crit_edge: ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i85

sw.bb.i85:                                        ; preds = %iop_desc_set_byte_count.exit.sw.bb.i85_crit_edge, %iop_desc_set_byte_count.exit.sw.bb.i85_crit_edge126
  %36 = getelementptr inbounds %struct.iop3xx_desc_dma, ptr %30, i32 0, i32 3
  br label %iop_desc_set_dest_addr.exit

sw.bb2.i:                                         ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dest_addr.i = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %30, i32 0, i32 2
  br label %iop_desc_set_dest_addr.exit

do.body.i86:                                      ; preds = %iop_desc_set_byte_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 710, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

iop_desc_set_dest_addr.exit:                      ; preds = %sw.bb2.i, %sw.bb.i85
  %dest_addr.sink.i = phi ptr [ %dest_addr.i, %sw.bb2.i ], [ %36, %sw.bb.i85 ]
  %37 = ptrtoint ptr %dest_addr.sink.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dest_addr.sink.i, align 4
  %slot_cnt2.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %5, i32 0, i32 4
  %38 = ptrtoint ptr %slot_cnt2.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %slot_cnt2.i, align 4
  %conv.i = zext i16 %39 to i32
  %slots_per_op3.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %5, i32 0, i32 5
  %40 = ptrtoint ptr %slots_per_op3.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %slots_per_op3.i, align 2
  %conv4.i = zext i16 %41 to i32
  %sub13.i = sub nsw i32 %conv.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13.i)
  %cmp14.i = icmp sgt i32 %sub13.i, -1
  br i1 %cmp14.i, label %for.body.lr.ph.i, label %iop_desc_set_dest_addr.exit.iop_desc_set_xor_src_addr.exit_crit_edge

iop_desc_set_dest_addr.exit.iop_desc_set_xor_src_addr.exit_crit_edge: ; preds = %iop_desc_set_dest_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_xor_src_addr.exit

for.body.lr.ph.i:                                 ; preds = %iop_desc_set_dest_addr.exit
  %42 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_desc1.i, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sub17.i = phi i32 [ %sub13.i, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add6.i, %for.body.i.for.body.i_crit_edge ]
  %addr.addr.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %i.016.i, 5
  %add.i = add i32 %shl.i, %44
  %45 = inttoptr i32 %add.i to ptr
  %arrayidx.i.i = getelementptr %struct.iop3xx_desc_aau, ptr %45, i32 0, i32 1, i32 0
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %addr.addr.015.i, ptr %arrayidx.i.i, align 4
  %add6.i = add i32 %i.016.i, %conv4.i
  %add7.i = add i32 %addr.addr.015.i, 16777216
  %sub.i = sub i32 %sub17.i, %conv4.i
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iop_desc_set_xor_src_addr.exit_crit_edge

for.body.i.iop_desc_set_xor_src_addr.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_xor_src_addr.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

iop_desc_set_xor_src_addr.exit:                   ; preds = %for.body.i.iop_desc_set_xor_src_addr.exit_crit_edge, %iop_desc_set_dest_addr.exit.iop_desc_set_xor_src_addr.exit_crit_edge
  %47 = ptrtoint ptr %slot_cnt2.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %slot_cnt2.i, align 4
  %conv.i89 = zext i16 %48 to i32
  %49 = ptrtoint ptr %slots_per_op3.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %slots_per_op3.i, align 2
  %conv4.i91 = zext i16 %50 to i32
  %sub13.i92 = sub nsw i32 %conv.i89, %conv4.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13.i92)
  %cmp14.i93 = icmp sgt i32 %sub13.i92, -1
  br i1 %cmp14.i93, label %for.body.lr.ph.i95, label %iop_desc_set_xor_src_addr.exit.iop_desc_set_xor_src_addr.exit107_crit_edge

iop_desc_set_xor_src_addr.exit.iop_desc_set_xor_src_addr.exit107_crit_edge: ; preds = %iop_desc_set_xor_src_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_xor_src_addr.exit107

for.body.lr.ph.i95:                               ; preds = %iop_desc_set_xor_src_addr.exit
  %51 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_desc1.i, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %for.body.i101

for.body.i101:                                    ; preds = %for.body.i101.for.body.i101_crit_edge, %for.body.lr.ph.i95
  %sub17.i96 = phi i32 [ %sub13.i92, %for.body.lr.ph.i95 ], [ %sub.i105, %for.body.i101.for.body.i101_crit_edge ]
  %i.016.i97 = phi i32 [ 0, %for.body.lr.ph.i95 ], [ %add6.i103, %for.body.i101.for.body.i101_crit_edge ]
  %addr.addr.015.i98 = phi i32 [ 0, %for.body.lr.ph.i95 ], [ %add7.i104, %for.body.i101.for.body.i101_crit_edge ]
  %shl.i99 = shl i32 %i.016.i97, 5
  %add.i100 = add i32 %shl.i99, %53
  %54 = inttoptr i32 %add.i100 to ptr
  %arrayidx.i.i102 = getelementptr %struct.iop3xx_desc_aau, ptr %54, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %addr.addr.015.i98, ptr %arrayidx.i.i102, align 4
  %add6.i103 = add i32 %i.016.i97, %conv4.i91
  %add7.i104 = add i32 %addr.addr.015.i98, 16777216
  %sub.i105 = sub i32 %sub17.i96, %conv4.i91
  %cmp.i106 = icmp sgt i32 %sub.i105, -1
  br i1 %cmp.i106, label %for.body.i101.for.body.i101_crit_edge, label %for.body.i101.iop_desc_set_xor_src_addr.exit107_crit_edge

for.body.i101.iop_desc_set_xor_src_addr.exit107_crit_edge: ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_desc_set_xor_src_addr.exit107

for.body.i101.for.body.i101_crit_edge:            ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i101

iop_desc_set_xor_src_addr.exit107:                ; preds = %for.body.i101.iop_desc_set_xor_src_addr.exit107_crit_edge, %iop_desc_set_xor_src_addr.exit.iop_desc_set_xor_src_addr.exit107_crit_edge
  %chan1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8, i32 3
  %56 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chan1.i, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cookie2.i, align 4
  %add.i108 = add i32 %59, 1
  %60 = tail call i32 @llvm.smax.i32(i32 %add.i108, i32 1) #12
  %61 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %cookie2.i, align 4
  %62 = ptrtoint ptr %async_tx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %async_tx, align 4
  %sub = add nsw i32 %60, -1
  %completed_cookie = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 5, i32 3
  %63 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub, ptr %completed_cookie, align 4
  %mmr_base.i = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 2
  %64 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !253
  %67 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool13.not = icmp eq i32 %67, 0
  br i1 %tobool13.not, label %do.end29, label %do.body21, !prof !268

do.body21:                                        ; preds = %iop_desc_set_xor_src_addr.exit107
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1517, 0\0A.popsection", ""() #12, !srcloc !276
  unreachable

do.end29:                                         ; preds = %iop_desc_set_xor_src_addr.exit107
  %68 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #12, !srcloc !253
  %71 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device.i, align 4
  %id.i112 = getelementptr inbounds %struct.iop_adma_device, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %id.i112 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %75 = icmp ult i32 %74, 3
  br i1 %75, label %switch.lookup, label %do.body.i113

do.body.i113:                                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 849, 0\0A.popsection", ""() #12, !srcloc !254
  unreachable

switch.lookup:                                    ; preds = %do.end29
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.iop_chan_start_null_xor, i32 0, i32 %74
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and2.i = and i32 %switch.load, %70
  %77 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %78, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %and2.i) #12, !srcloc !255
  %79 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmr_base.i, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #12, !srcloc !253
  %and.i115 = and i32 %81, -2
  %82 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmr_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %and.i115) #12, !srcloc !255
  %phys = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 8, i32 2
  %84 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %phys, align 4
  %86 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device.i, align 4
  %id1.i = getelementptr inbounds %struct.iop_adma_device, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id1.i, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %89, label %switch.lookup.iop_chan_set_next_descriptor.exit_crit_edge [
    i32 0, label %switch.lookup.sw.bb.i119_crit_edge
    i32 1, label %switch.lookup.sw.bb.i119_crit_edge127
    i32 2, label %sw.bb2.i120
  ]

switch.lookup.sw.bb.i119_crit_edge127:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i119

switch.lookup.sw.bb.i119_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i119

switch.lookup.iop_chan_set_next_descriptor.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_chan_set_next_descriptor.exit

sw.bb.i119:                                       ; preds = %switch.lookup.sw.bb.i119_crit_edge, %switch.lookup.sw.bb.i119_crit_edge127
  %91 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %92, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %85) #12, !srcloc !255
  br label %iop_chan_set_next_descriptor.exit

sw.bb2.i120:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %94, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %85) #12, !srcloc !255
  br label %iop_chan_set_next_descriptor.exit

iop_chan_set_next_descriptor.exit:                ; preds = %sw.bb2.i120, %sw.bb.i119, %switch.lookup.iop_chan_set_next_descriptor.exit_crit_edge
  %hw_desc1.i121 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %call5, i32 0, i32 2
  %95 = ptrtoint ptr %hw_desc1.i121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw_desc1.i121, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool33.not = icmp eq i32 %98, 0
  br i1 %tobool33.not, label %do.end49, label %do.body41, !prof !268

do.body41:                                        ; preds = %iop_chan_set_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1531, 0\0A.popsection", ""() #12, !srcloc !277
  unreachable

do.end49:                                         ; preds = %iop_chan_set_next_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmr_base.i, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #12, !srcloc !253
  %or.i123 = or i32 %101, 1
  %102 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmr_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %or.i123) #12, !srcloc !255
  br label %if.end56

do.end52:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %device53 = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  %104 = ptrtoint ptr %device53 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device53, align 4
  %dev55 = getelementptr inbounds %struct.iop_adma_device, ptr %105, i32 0, i32 4, i32 15
  %106 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.28) #16
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %do.end49
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iop_adma_alloc_slots(ptr noundef %iop_chan, i32 noundef %num_slots, i32 noundef %slots_per_op) unnamed_addr #2 align 64 {
if.end:
  %chain = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chain) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %chain, i32 0, i32 1
  %1 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %chain, ptr %chain, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chain, ptr %0, align 4
  %all_slots12 = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 7
  %last_used = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 6
  %sub.i = add i32 %slots_per_op, 65535
  %3 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %last_used, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp13.not135 = icmp eq ptr %6, %all_slots12
  br i1 %cmp13.not135, label %if.end.if.end.1_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1

for.body:                                         ; preds = %for.inc66.for.body_crit_edge, %if.end.for.body_crit_edge
  %iter.1138 = phi ptr [ %_iter.0139, %for.inc66.for.body_crit_edge ], [ %6, %if.end.for.body_crit_edge ]
  %alloc_start.1137 = phi ptr [ %alloc_start.3, %for.inc66.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %slots_found.0136 = phi i32 [ %slots_found.1, %for.inc66.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %iter.1138 to i32
  call void @__asan_load4_noabort(i32 %7)
  %_iter.0139 = load ptr, ptr %iter.1138, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %_iter.0139) #12, !srcloc !278
  %async_tx = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %_iter.0139, i32 0, i32 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %async_tx) #12, !srcloc !278
  %slots_per_op14 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.1138, i32 0, i32 5
  %8 = ptrtoint ptr %slots_per_op14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %slots_per_op14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end19, label %for.body.for.inc66_crit_edge

for.body.for.inc66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc66

if.end19:                                         ; preds = %for.body
  %inc = add i32 %slots_found.0136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots_found.0136)
  %tobool20.not = icmp eq i32 %slots_found.0136, 0
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  %idx.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.1138, i32 0, i32 6
  %10 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idx.i, align 4
  %conv.i = zext i16 %11 to i32
  %and.i = and i32 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then21.if.end26_crit_edge, label %if.then21.for.inc66_crit_edge

if.then21.for.inc66_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc66

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %alloc_start.2 = phi ptr [ %alloc_start.1137, %if.end19.if.end26_crit_edge ], [ %iter.1138, %if.then21.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_slots)
  %cmp27 = icmp eq i32 %inc, %num_slots
  br i1 %cmp27, label %if.end26.while.cond.preheader_crit_edge, label %if.end26.for.inc66_crit_edge

if.end26.for.inc66_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc66

if.end26.while.cond.preheader_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end26.1.while.cond.preheader_crit_edge, %if.end26.while.cond.preheader_crit_edge
  %alloc_start.2.lcssa = phi ptr [ %alloc_start.2.1, %if.end26.1.while.cond.preheader_crit_edge ], [ %alloc_start.2, %if.end26.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_slots)
  %tobool30.not145 = icmp eq i32 %num_slots, 0
  br i1 %tobool30.not145, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots_per_op)
  %cmp50140 = icmp sgt i32 %slots_per_op, 0
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %num_slots.addr.0149 = phi i32 [ %num_slots, %while.body.lr.ph ], [ %sub61, %for.end.while.body_crit_edge ]
  %iter.2147 = phi ptr [ %alloc_start.2.lcssa, %while.body.lr.ph ], [ %iter.3.lcssa, %for.end.while.body_crit_edge ]
  %last_used29.0146 = phi ptr [ null, %while.body.lr.ph ], [ %last_used29.1.lcssa, %for.end.while.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_alloc_slots.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iop_adma_alloc_slots, %do.end)) #12
          to label %if.then38 [label %do.end], !srcloc !251

if.then38:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %13, i32 0, i32 4, i32 15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %idx = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 6
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idx, align 4
  %conv = zext i16 %17 to i32
  %hw_desc = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 2
  %18 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_desc, align 4
  %phys = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys, align 4
  %conv40 = zext i32 %21 to i64
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_alloc_slots.__UNIQUE_ID_ddebug281, ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef %conv, ptr noundef %19, i64 noundef %conv40, i32 noundef %slots_per_op) #12
  br label %do.end

do.end:                                           ; preds = %if.then38, %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %num_slots.addr.0149, i32 %slots_per_op)
  %cmp42.not = icmp eq i32 %num_slots.addr.0149, %slots_per_op
  br i1 %cmp42.not, label %do.end.if.end46_crit_edge, label %if.then44

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %23, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.end.if.end46_crit_edge
  %chain_node = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %chain_node, ptr noundef %25, ptr noundef nonnull %chain) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_add_tail.exit_crit_edge

if.end46.list_add_tail.exit_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %chain_node, ptr %0, align 4
  %27 = ptrtoint ptr %chain_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %chain, ptr %chain_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %chain_node, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end46.list_add_tail.exit_crit_edge
  %async_tx47 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 8
  %30 = ptrtoint ptr %async_tx47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %async_tx47, align 4
  %conv48 = trunc i32 %num_slots.addr.0149 to i16
  %slot_cnt = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 4
  %31 = ptrtoint ptr %slot_cnt to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv48, ptr %slot_cnt, align 4
  %32 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.2147, i32 0, i32 9
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %32, align 4
  br i1 %cmp50140, label %list_add_tail.exit.for.body52_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

list_add_tail.exit.for.body52_crit_edge:          ; preds = %list_add_tail.exit
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %list_add_tail.exit.for.body52_crit_edge
  %iter.3142 = phi ptr [ %36, %for.body52.for.body52_crit_edge ], [ %iter.2147, %list_add_tail.exit.for.body52_crit_edge ]
  %i.0141 = phi i32 [ %inc60, %for.body52.for.body52_crit_edge ], [ 0, %list_add_tail.exit.for.body52_crit_edge ]
  %sub = sub i32 %slots_per_op, %i.0141
  %conv53 = trunc i32 %sub to i16
  %slots_per_op54 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.3142, i32 0, i32 5
  %34 = ptrtoint ptr %slots_per_op54 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv53, ptr %slots_per_op54, align 2
  %35 = ptrtoint ptr %iter.3142 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iter.3142, align 4
  %inc60 = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc60, %slots_per_op
  br i1 %exitcond.not, label %for.body52.for.end_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body52

for.body52.for.end_crit_edge:                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body52.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  %last_used29.1.lcssa = phi ptr [ %last_used29.0146, %list_add_tail.exit.for.end_crit_edge ], [ %iter.3142, %for.body52.for.end_crit_edge ]
  %iter.3.lcssa = phi ptr [ %iter.2147, %list_add_tail.exit.for.end_crit_edge ], [ %36, %for.body52.for.end_crit_edge ]
  %sub61 = sub i32 %num_slots.addr.0149, %slots_per_op
  %tobool30.not = icmp eq i32 %sub61, 0
  br i1 %tobool30.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %alloc_tail.0.lcssa = phi ptr [ null, %while.cond.preheader.while.end_crit_edge ], [ %iter.2147, %for.end.while.end_crit_edge ]
  %last_used29.0.lcssa = phi ptr [ null, %while.cond.preheader.while.end_crit_edge ], [ %last_used29.1.lcssa, %for.end.while.end_crit_edge ]
  %group_head = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %alloc_tail.0.lcssa, i32 0, i32 3
  %37 = ptrtoint ptr %group_head to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %alloc_start.2.lcssa, ptr %group_head, align 4
  %async_tx62 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %alloc_tail.0.lcssa, i32 0, i32 8
  %38 = ptrtoint ptr %async_tx62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -16, ptr %async_tx62, align 4
  %39 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %chain, align 4
  %cmp.i.not.i = icmp eq ptr %40, %chain
  br i1 %cmp.i.not.i, label %while.end.list_splice.exit_crit_edge, label %if.then.i

while.end.list_splice.exit_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_list = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %alloc_tail.0.lcssa, i32 0, i32 7
  %41 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_list, align 4
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %0, align 4
  %prev3.i.i127 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i127 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tx_list, ptr %prev3.i.i127, align 4
  store ptr %40, ptr %tx_list, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %42, ptr %44, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %while.end.list_splice.exit_crit_edge
  %48 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %last_used29.0.lcssa, ptr %last_used, align 4
  %hw_desc1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %alloc_start.2.lcssa, i32 0, i32 2
  %49 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_desc1.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %50, align 4
  %hw_desc1.i128 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %alloc_tail.0.lcssa, i32 0, i32 2
  %52 = ptrtoint ptr %hw_desc1.i128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_desc1.i128, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %53, align 4
  br label %cleanup

for.inc66:                                        ; preds = %if.end26.for.inc66_crit_edge, %if.then21.for.inc66_crit_edge, %for.body.for.inc66_crit_edge
  %slots_found.1 = phi i32 [ %inc, %if.end26.for.inc66_crit_edge ], [ 0, %if.then21.for.inc66_crit_edge ], [ 0, %for.body.for.inc66_crit_edge ]
  %alloc_start.3 = phi ptr [ %alloc_start.2, %if.end26.for.inc66_crit_edge ], [ %alloc_start.1137, %if.then21.for.inc66_crit_edge ], [ %alloc_start.1137, %for.body.for.inc66_crit_edge ]
  %cmp13.not = icmp eq ptr %_iter.0139, %all_slots12
  br i1 %cmp13.not, label %for.inc66.if.end.1_crit_edge, label %for.inc66.for.body_crit_edge

for.inc66.for.body_crit_edge:                     ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc66.if.end.1_crit_edge:                     ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1

if.end.1:                                         ; preds = %for.inc66.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %alloc_start.1.lcssa = phi ptr [ null, %if.end.if.end.1_crit_edge ], [ %alloc_start.3, %for.inc66.if.end.1_crit_edge ]
  %55 = ptrtoint ptr %all_slots12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %all_slots12, align 4
  %cmp13.not135.1 = icmp eq ptr %56, %all_slots12
  br i1 %cmp13.not135.1, label %if.end.1.if.end76_crit_edge, label %if.end.1.for.body.1_crit_edge

if.end.1.for.body.1_crit_edge:                    ; preds = %if.end.1
  br label %for.body.1

if.end.1.if.end76_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

for.body.1:                                       ; preds = %for.inc66.1.for.body.1_crit_edge, %if.end.1.for.body.1_crit_edge
  %iter.1138.1 = phi ptr [ %_iter.0139.1, %for.inc66.1.for.body.1_crit_edge ], [ %56, %if.end.1.for.body.1_crit_edge ]
  %alloc_start.1137.1 = phi ptr [ %alloc_start.3.1, %for.inc66.1.for.body.1_crit_edge ], [ %alloc_start.1.lcssa, %if.end.1.for.body.1_crit_edge ]
  %slots_found.0136.1 = phi i32 [ %slots_found.1.1, %for.inc66.1.for.body.1_crit_edge ], [ 0, %if.end.1.for.body.1_crit_edge ]
  %57 = ptrtoint ptr %iter.1138.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %_iter.0139.1 = load ptr, ptr %iter.1138.1, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %_iter.0139.1) #12, !srcloc !278
  %async_tx.1 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %_iter.0139.1, i32 0, i32 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %async_tx.1) #12, !srcloc !278
  %slots_per_op14.1 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.1138.1, i32 0, i32 5
  %58 = ptrtoint ptr %slots_per_op14.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %slots_per_op14.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.1 = icmp eq i16 %59, 0
  br i1 %tobool.not.1, label %if.end19.1, label %for.body.1.if.end76_crit_edge

for.body.1.if.end76_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end19.1:                                       ; preds = %for.body.1
  %inc.1 = add i32 %slots_found.0136.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots_found.0136.1)
  %tobool20.not.1 = icmp eq i32 %slots_found.0136.1, 0
  br i1 %tobool20.not.1, label %if.then21.1, label %if.end19.1.if.end26.1_crit_edge

if.end19.1.if.end26.1_crit_edge:                  ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.1

if.then21.1:                                      ; preds = %if.end19.1
  %idx.i.1 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.1138.1, i32 0, i32 6
  %60 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %idx.i.1, align 4
  %conv.i.1 = zext i16 %61 to i32
  %and.i.1 = and i32 %sub.i, %conv.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.not.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.not.1, label %if.then21.1.if.end26.1_crit_edge, label %if.then21.1.for.inc66.1_crit_edge

if.then21.1.for.inc66.1_crit_edge:                ; preds = %if.then21.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc66.1

if.then21.1.if.end26.1_crit_edge:                 ; preds = %if.then21.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.1

if.end26.1:                                       ; preds = %if.then21.1.if.end26.1_crit_edge, %if.end19.1.if.end26.1_crit_edge
  %alloc_start.2.1 = phi ptr [ %alloc_start.1137.1, %if.end19.1.if.end26.1_crit_edge ], [ %iter.1138.1, %if.then21.1.if.end26.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.1, i32 %num_slots)
  %cmp27.1 = icmp eq i32 %inc.1, %num_slots
  br i1 %cmp27.1, label %if.end26.1.while.cond.preheader_crit_edge, label %if.end26.1.for.inc66.1_crit_edge

if.end26.1.for.inc66.1_crit_edge:                 ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc66.1

if.end26.1.while.cond.preheader_crit_edge:        ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

for.inc66.1:                                      ; preds = %if.end26.1.for.inc66.1_crit_edge, %if.then21.1.for.inc66.1_crit_edge
  %slots_found.1.1 = phi i32 [ %inc.1, %if.end26.1.for.inc66.1_crit_edge ], [ 0, %if.then21.1.for.inc66.1_crit_edge ]
  %alloc_start.3.1 = phi ptr [ %alloc_start.2.1, %if.end26.1.for.inc66.1_crit_edge ], [ %alloc_start.1137.1, %if.then21.1.for.inc66.1_crit_edge ]
  %cmp13.not.1 = icmp eq ptr %_iter.0139.1, %all_slots12
  br i1 %cmp13.not.1, label %for.inc66.1.if.end76_crit_edge, label %for.inc66.1.for.body.1_crit_edge

for.inc66.1.for.body.1_crit_edge:                 ; preds = %for.inc66.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.1

for.inc66.1.if.end76_crit_edge:                   ; preds = %for.inc66.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end76:                                         ; preds = %for.inc66.1.if.end76_crit_edge, %for.body.1.if.end76_crit_edge, %if.end.1.if.end76_crit_edge
  call fastcc void @__iop_adma_slot_cleanup(ptr noundef %iop_chan)
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %list_splice.exit
  %retval.0 = phi ptr [ null, %if.end76 ], [ %alloc_tail.0.lcssa, %list_splice.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chain) #12
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__iop_adma_slot_cleanup(ptr noundef %iop_chan) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i.i.i406 = alloca %struct.dmaengine_result, align 8
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 4
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %id1.i = getelementptr inbounds %struct.iop_adma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %3, label %do.body.i [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge611
    i32 2, label %sw.bb2.i
  ]

entry.sw.bb.i_crit_edge611:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge611
  %mmr_base.i = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 2
  %5 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !253
  br label %iop_chan_get_current_descriptor.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mmr_base3.i = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 2
  %8 = ptrtoint ptr %mmr_base3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmr_base3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !253
  br label %iop_chan_get_current_descriptor.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #12, !srcloc !279
  unreachable

iop_chan_get_current_descriptor.exit:             ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i387 = phi i32 [ %10, %sw.bb2.i ], [ %7, %sw.bb.i ]
  %mmr_base.i388 = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 2
  %11 = ptrtoint ptr %mmr_base.i388 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmr_base.i388, align 4
  %add.ptr.i389 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i389) #12, !srcloc !253
  %and.i = lshr i32 %13, 10
  %and.lobit.i = and i32 %and.i, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !251

if.then:                                          ; preds = %iop_chan_get_current_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %dev = getelementptr inbounds %struct.iop_adma_device, ptr %15, i32 0, i32 4, i32 15
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug274, ptr noundef %17, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %iop_chan_get_current_descriptor.exit
  %chain = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 3
  %18 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chain, align 4
  %cmp.not527 = icmp eq ptr %19, %chain
  br i1 %cmp.not527, label %do.end.if.end295_crit_edge, label %do.body15.lr.ph

do.end.if.end295_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

do.body15.lr.ph:                                  ; preds = %do.end
  %add.ptr = getelementptr i8, ptr %19, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i)
  %tobool67.not = icmp eq i32 %and.lobit.i, 0
  br label %do.body15

do.body15:                                        ; preds = %for.inc266.do.body15_crit_edge, %do.body15.lr.ph
  %.pn538.in = phi ptr [ %19, %do.body15.lr.ph ], [ %.pn538, %for.inc266.do.body15_crit_edge ]
  %iter.0536 = phi ptr [ %add.ptr, %do.body15.lr.ph ], [ %_iter.0539, %for.inc266.do.body15_crit_edge ]
  %grp_start.0534 = phi ptr [ null, %do.body15.lr.ph ], [ %grp_start.3, %for.inc266.do.body15_crit_edge ]
  %cookie.0531 = phi i32 [ 0, %do.body15.lr.ph ], [ %cookie.3, %for.inc266.do.body15_crit_edge ]
  %seen_current.0530 = phi i32 [ 0, %do.body15.lr.ph ], [ %seen_current.1, %for.inc266.do.body15_crit_edge ]
  %slot_cnt.0529 = phi i32 [ 0, %do.body15.lr.ph ], [ %slot_cnt.6, %for.inc266.do.body15_crit_edge ]
  %slots_per_op.0528 = phi i32 [ 0, %do.body15.lr.ph ], [ %slots_per_op.2, %for.inc266.do.body15_crit_edge ]
  %20 = ptrtoint ptr %.pn538.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn538 = load ptr, ptr %.pn538.in, align 4
  %_iter.0539 = getelementptr i8, ptr %.pn538, i32 -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end39)) #12
          to label %if.then29 [label %do.end39], !srcloc !251

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %async_tx = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8
  %21 = ptrtoint ptr %async_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %async_tx, align 4
  %idx = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 6
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idx, align 4
  %conv = zext i16 %24 to i32
  %phys = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 2
  %hw_desc1.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 2
  %25 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_desc1.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %conv33 = zext i32 %28 to i64
  %flags.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i390 = lshr i32 %30, 1
  %and.i390.lobit = and i32 %and.i390, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.33, i32 noundef %22, i32 noundef %conv, i32 noundef %and.lobit.i, ptr noundef %phys, i64 noundef %conv33, i32 noundef %and.i390.lobit) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then29, %do.body15
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %_iter.0539) #12, !srcloc !278
  %async_tx40 = getelementptr i8, ptr %.pn538, i32 32
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %async_tx40) #12, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seen_current.0530)
  %tobool41.not = icmp eq i32 %seen_current.0530, 0
  br i1 %tobool41.not, label %if.end43, label %do.end39.for.end272_crit_edge

do.end39.for.end272_crit_edge:                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end272

if.end43:                                         ; preds = %do.end39
  %async_tx44 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8
  %phys45 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %phys45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %retval.0.i387)
  %cmp46 = icmp eq i32 %32, %retval.0.i387
  br i1 %cmp46, label %do.end66, label %if.end43.if.end72_crit_edge

if.end43.if.end72_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.end66:                                         ; preds = %if.end43
  br i1 %tobool67.not, label %lor.lhs.false, label %do.end66.for.end272_crit_edge

do.end66.for.end272_crit_edge:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end272

lor.lhs.false:                                    ; preds = %do.end66
  %hw_desc1.i391 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 2
  %33 = ptrtoint ptr %hw_desc1.i391 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_desc1.i391, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool69.not = icmp eq i32 %36, 0
  br i1 %tobool69.not, label %lor.lhs.false.if.end72_crit_edge, label %lor.lhs.false.for.end272_crit_edge

lor.lhs.false.for.end272_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end272

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %lor.lhs.false.if.end72_crit_edge, %if.end43.if.end72_crit_edge
  %seen_current.1 = phi i32 [ 1, %lor.lhs.false.if.end72_crit_edge ], [ 0, %if.end43.if.end72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_cnt.0529)
  %tobool73.not = icmp eq i32 %slot_cnt.0529, 0
  br i1 %tobool73.not, label %land.lhs.true, label %if.end72.do.body87_crit_edge

if.end72.do.body87_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body87

land.lhs.true:                                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots_per_op.0528)
  %tobool74.not = icmp eq i32 %slots_per_op.0528, 0
  br i1 %tobool74.not, label %if.then75, label %land.lhs.true.if.end108_crit_edge

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

if.then75:                                        ; preds = %land.lhs.true
  %slot_cnt76 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 4
  %37 = ptrtoint ptr %slot_cnt76 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %slot_cnt76, align 4
  %slots_per_op78 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 5
  %39 = ptrtoint ptr %slots_per_op78 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %slots_per_op78, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp80.not = icmp ugt i16 %38, %40
  br i1 %cmp80.not, label %if.end84, label %if.then75.if.end252_crit_edge

if.then75.if.end252_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.end84:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %conv79 = zext i16 %40 to i32
  %conv77 = zext i16 %38 to i32
  br label %do.body87

do.body87:                                        ; preds = %if.end84, %if.end72.do.body87_crit_edge
  %slot_cnt.1476 = phi i32 [ %conv77, %if.end84 ], [ %slot_cnt.0529, %if.end72.do.body87_crit_edge ]
  %slots_per_op.1475 = phi i32 [ %conv79, %if.end84 ], [ %slots_per_op.0528, %if.end72.do.body87_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end104)) #12
          to label %if.then101 [label %do.end104], !srcloc !251

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.34) #12
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %do.body87
  %tobool105.not = icmp eq ptr %grp_start.0534, null
  %spec.select368 = select i1 %tobool105.not, ptr %iter.0536, ptr %grp_start.0534
  %sub = sub i32 %slot_cnt.1476, %slots_per_op.1475
  br label %if.end108

if.end108:                                        ; preds = %do.end104, %land.lhs.true.if.end108_crit_edge
  %slots_per_op.1470 = phi i32 [ %slots_per_op.1475, %do.end104 ], [ %slots_per_op.0528, %land.lhs.true.if.end108_crit_edge ]
  %slot_cnt.2 = phi i32 [ %sub, %do.end104 ], [ 0, %land.lhs.true.if.end108_crit_edge ]
  %grp_start.2 = phi ptr [ %spec.select368, %do.end104 ], [ %grp_start.0534, %land.lhs.true.if.end108_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots_per_op.1470)
  %cmp109.not = icmp eq i32 %slots_per_op.1470, 0
  %cmp109.not.not = xor i1 %cmp109.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_cnt.2)
  %cmp112 = icmp eq i32 %slot_cnt.2, 0
  %or.cond = select i1 %cmp109.not.not, i1 %cmp112, i1 false
  br i1 %or.cond, label %if.then114, label %if.else248

if.then114:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end132)) #12
          to label %if.then129 [label %do.end132], !srcloc !251

if.then129:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.35) #12
  br label %do.end132

do.end132:                                        ; preds = %if.then129, %if.then114
  %41 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_start.2, i32 0, i32 9
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool133.not = icmp eq ptr %43, null
  br i1 %tobool133.not, label %do.end132.if.end194_crit_edge, label %if.then134

do.end132.if.end194_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then134:                                       ; preds = %do.end132
  %chain_node138517 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_start.2, i32 0, i32 1
  %cmp140.not518 = icmp eq ptr %chain_node138517, %chain
  br i1 %cmp140.not518, label %if.then134.do.body176_crit_edge, label %for.body144.preheader

if.then134.do.body176_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body176

for.body144.preheader:                            ; preds = %if.then134
  %slot_cnt135 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_start.2, i32 0, i32 4
  %44 = ptrtoint ptr %slot_cnt135 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %slot_cnt135, align 4
  %conv136 = zext i16 %45 to i32
  br label %for.body144

for.body144:                                      ; preds = %for.inc.for.body144_crit_edge, %for.body144.preheader
  %chain_node138522 = phi ptr [ %54, %for.inc.for.body144_crit_edge ], [ %chain_node138517, %for.body144.preheader ]
  %slot_cnt.3521 = phi i32 [ %sub166, %for.inc.for.body144_crit_edge ], [ %conv136, %for.body144.preheader ]
  %grp_iter.0520 = phi ptr [ %add.ptr175, %for.inc.for.body144_crit_edge ], [ %grp_start.2, %for.body144.preheader ]
  %zero_sum_result.0519 = phi i32 [ %or, %for.inc.for.body144_crit_edge ], [ 0, %for.body144.preheader ]
  %hw_desc1.i392 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.0520, i32 0, i32 2
  %46 = ptrtoint ptr %hw_desc1.i392 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_desc1.i392, align 4
  %48 = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %47, i32 0, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %desc_ctrl.sroa.0.0.copyload.i = load i32, ptr %48, align 4
  %50 = and i32 %desc_ctrl.sroa.0.0.copyload.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %50)
  %.not.i = icmp eq i32 %50, 10
  br i1 %.not.i, label %iop_desc_get_zero_result.exit, label %do.body9.i, !prof !268

do.body9.i:                                       ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 789, 0\0A.popsection", ""() #12, !srcloc !280
  unreachable

iop_desc_get_zero_result.exit:                    ; preds = %for.body144
  %bf.lshr16.i = lshr i32 %desc_ctrl.sroa.0.0.copyload.i, 2
  %bf.clear17.i = and i32 %bf.lshr16.i, 1
  %or = or i32 %bf.clear17.i, %zero_sum_result.0519
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end165)) #12
          to label %if.then160 [label %do.end165], !srcloc !251

if.then160:                                       ; preds = %iop_desc_get_zero_result.exit
  call void @__sanitizer_cov_trace_pc() #14
  %idx161 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.0520, i32 0, i32 6
  %51 = ptrtoint ptr %idx161 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %idx161, align 4
  %conv162 = zext i16 %52 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.36, i32 noundef %conv162, i32 noundef %or) #12
  br label %do.end165

do.end165:                                        ; preds = %if.then160, %iop_desc_get_zero_result.exit
  %sub166 = sub i32 %slot_cnt.3521, %slots_per_op.1470
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub166)
  %cmp167 = icmp eq i32 %sub166, 0
  br i1 %cmp167, label %do.end165.do.body176_crit_edge, label %for.inc

do.end165.do.body176_crit_edge:                   ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body176

for.inc:                                          ; preds = %do.end165
  %53 = ptrtoint ptr %chain_node138522 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chain_node138522, align 4
  %add.ptr175 = getelementptr i8, ptr %54, i32 -8
  %cmp140.not = icmp eq ptr %54, %chain
  br i1 %cmp140.not, label %for.inc.do.body176_crit_edge, label %for.inc.for.body144_crit_edge

for.inc.for.body144_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body144

for.inc.do.body176_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body176

do.body176:                                       ; preds = %for.inc.do.body176_crit_edge, %do.end165.do.body176_crit_edge, %if.then134.do.body176_crit_edge
  %zero_sum_result.1 = phi i32 [ 0, %if.then134.do.body176_crit_edge ], [ %or, %for.inc.do.body176_crit_edge ], [ %or, %do.end165.do.body176_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end193)) #12
          to label %if.then190 [label %do.end193], !srcloc !251

if.then190:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.37, ptr noundef %56) #12
  br label %do.end193

do.end193:                                        ; preds = %if.then190, %do.body176
  %57 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %41, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %zero_sum_result.1, ptr %58, align 4
  br label %if.end194

if.end194:                                        ; preds = %do.end193, %do.end132.if.end194_crit_edge
  %slot_cnt195 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_start.2, i32 0, i32 4
  %60 = ptrtoint ptr %slot_cnt195 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %slot_cnt195, align 4
  %conv196 = zext i16 %61 to i32
  br label %for.cond202

for.cond202:                                      ; preds = %iop_adma_clean_slot.exit.for.cond202_crit_edge, %if.end194
  %grp_iter.1 = phi ptr [ %grp_start.2, %if.end194 ], [ %_grp_iter.0, %iop_adma_clean_slot.exit.for.cond202_crit_edge ]
  %slot_cnt.4 = phi i32 [ %conv196, %if.end194 ], [ %sub211, %iop_adma_clean_slot.exit.for.cond202_crit_edge ]
  %cookie.1 = phi i32 [ %cookie.0531, %if.end194 ], [ %cookie.addr.0.i, %iop_adma_clean_slot.exit.for.cond202_crit_edge ]
  %.pn366.in = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 1
  %62 = ptrtoint ptr %.pn366.in to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn366 = load ptr, ptr %.pn366.in, align 4
  %_grp_iter.0 = getelementptr i8, ptr %.pn366, i32 -8
  %cmp205.not = icmp eq ptr %.pn366.in, %chain
  br i1 %cmp205.not, label %do.body226, label %for.body209

for.body209:                                      ; preds = %for.cond202
  %async_tx.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 8
  %63 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %async_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i393 = icmp slt i32 %64, 0
  br i1 %cmp.i393, label %do.body3.i, label %do.end8.i, !prof !258

do.body3.i:                                       ; preds = %for.body209
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #12, !srcloc !281
  unreachable

do.end8.i:                                        ; preds = %for.body209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp10.not.i = icmp eq i32 %64, 0
  br i1 %cmp10.not.i, label %do.end8.i.iop_adma_run_tx_complete_actions.exit_crit_edge, label %if.then11.i

do.end8.i.iop_adma_run_tx_complete_actions.exit_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_run_tx_complete_actions.exit

if.then11.i:                                      ; preds = %do.end8.i
  %65 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %async_tx.i, align 4
  %callback.i.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 8, i32 6
  %66 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 8, i32 7
  %68 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 8, i32 8
  %70 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %callback_param.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #12
  %72 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %69(ptr noundef %71, ptr noundef nonnull %dummy_result.i.i.i) #12
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.else.i.i.i:                                    ; preds = %if.then11.i
  %tobool4.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %67(ptr noundef %71) #12
  br label %dmaengine_desc_get_callback_invoke.exit.i

dmaengine_desc_get_callback_invoke.exit.i:        ; preds = %if.then5.i.i.i, %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #12
  %unmap.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 8, i32 9
  %73 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %unmap.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %dmaengine_desc_get_callback_invoke.exit.i.dma_descriptor_unmap.exit.i_crit_edge, label %if.end.i.i

dmaengine_desc_get_callback_invoke.exit.i.dma_descriptor_unmap.exit.i_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_descriptor_unmap.exit.i

if.end.i.i:                                       ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dmaengine_unmap_put(ptr noundef nonnull %74) #12
  %75 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %unmap.i.i, align 4
  br label %dma_descriptor_unmap.exit.i

dma_descriptor_unmap.exit.i:                      ; preds = %if.end.i.i, %dmaengine_desc_get_callback_invoke.exit.i.dma_descriptor_unmap.exit.i_crit_edge
  %group_head.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 3
  %76 = ptrtoint ptr %group_head.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %group_head.i, align 4
  %tobool14.not.i = icmp eq ptr %77, null
  br i1 %tobool14.not.i, label %dma_descriptor_unmap.exit.i.iop_adma_run_tx_complete_actions.exit_crit_edge, label %if.then15.i

dma_descriptor_unmap.exit.i.iop_adma_run_tx_complete_actions.exit_crit_edge: ; preds = %dma_descriptor_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_run_tx_complete_actions.exit

if.then15.i:                                      ; preds = %dma_descriptor_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %group_head.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %group_head.i, align 4
  br label %iop_adma_run_tx_complete_actions.exit

iop_adma_run_tx_complete_actions.exit:            ; preds = %if.then15.i, %dma_descriptor_unmap.exit.i.iop_adma_run_tx_complete_actions.exit_crit_edge, %do.end8.i.iop_adma_run_tx_complete_actions.exit_crit_edge
  %cookie.addr.0.i = phi i32 [ %64, %if.then15.i ], [ %64, %dma_descriptor_unmap.exit.i.iop_adma_run_tx_complete_actions.exit_crit_edge ], [ %cookie.1, %do.end8.i.iop_adma_run_tx_complete_actions.exit_crit_edge ]
  call void @dma_run_dependencies(ptr noundef %async_tx.i) #12
  %sub211 = sub i32 %slot_cnt.4, %slots_per_op.1470
  %flags.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %iop_adma_run_tx_complete_actions.exit.iop_adma_clean_slot.exit_crit_edge, label %if.end.i

iop_adma_run_tx_complete_actions.exit.iop_adma_clean_slot.exit_crit_edge: ; preds = %iop_adma_run_tx_complete_actions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_clean_slot.exit

if.end.i:                                         ; preds = %iop_adma_run_tx_complete_actions.exit
  %81 = ptrtoint ptr %.pn366.in to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %.pn366.in, align 4
  %cmp.i394 = icmp eq ptr %82, %chain
  br i1 %cmp.i394, label %iop_adma_clean_slot.exit.thread, label %do.body.i395

do.body.i395:                                     ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_clean_slot.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end.i)) #12
          to label %if.then7.i [label %do.end.i], !srcloc !251

if.then7.i:                                       ; preds = %do.body.i395
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.iop_adma_device, ptr %84, i32 0, i32 4, i32 15
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %idx.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 6
  %87 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %idx.i, align 4
  %conv.i = zext i16 %88 to i32
  %slots_per_op.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 5
  %89 = ptrtoint ptr %slots_per_op.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %slots_per_op.i, align 2
  %conv8.i = zext i16 %90 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_clean_slot.__UNIQUE_ID_ddebug273, ptr noundef %86, ptr noundef nonnull @.str.40, i32 noundef %conv.i, i32 noundef %conv8.i) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i395
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn366.in) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_del.exit.i_crit_edge

do.end.i.list_del.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i.i, align 4
  %93 = ptrtoint ptr %.pn366.in to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %.pn366.in, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.list_del.exit.i_crit_edge
  %97 = ptrtoint ptr %.pn366.in to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn366.in, align 4
  %prev.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %slots_per_op.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %grp_iter.1, i32 0, i32 5
  %99 = ptrtoint ptr %slots_per_op.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %slots_per_op.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not4.i.i = icmp eq i16 %100, 0
  br i1 %tobool.not4.i.i, label %list_del.exit.i.iop_adma_clean_slot.exit_crit_edge, label %while.body.preheader.i.i

list_del.exit.i.iop_adma_clean_slot.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_clean_slot.exit

while.body.preheader.i.i:                         ; preds = %list_del.exit.i
  %conv.i.i = zext i16 %100 to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %slot.addr.06.i.i = phi ptr [ %103, %while.body.i.i.while.body.i.i_crit_edge ], [ %grp_iter.1, %while.body.preheader.i.i ]
  %stride.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %stride.05.i.i, -1
  %slots_per_op1.i.i = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %slot.addr.06.i.i, i32 0, i32 5
  %101 = ptrtoint ptr %slots_per_op1.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %slots_per_op1.i.i, align 2
  %102 = ptrtoint ptr %slot.addr.06.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %slot.addr.06.i.i, align 4
  %tobool.not.i.i397 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i397, label %while.body.i.i.iop_adma_clean_slot.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body.i.i.iop_adma_clean_slot.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_clean_slot.exit

iop_adma_clean_slot.exit:                         ; preds = %while.body.i.i.iop_adma_clean_slot.exit_crit_edge, %list_del.exit.i.iop_adma_clean_slot.exit_crit_edge, %iop_adma_run_tx_complete_actions.exit.iop_adma_clean_slot.exit_crit_edge
  %cmp213 = icmp eq i32 %sub211, 0
  br i1 %cmp213, label %iop_adma_clean_slot.exit.for.inc266_crit_edge, label %iop_adma_clean_slot.exit.for.cond202_crit_edge

iop_adma_clean_slot.exit.for.cond202_crit_edge:   ; preds = %iop_adma_clean_slot.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond202

iop_adma_clean_slot.exit.for.inc266_crit_edge:    ; preds = %iop_adma_clean_slot.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc266

iop_adma_clean_slot.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub211)
  %cmp213482 = icmp eq i32 %sub211, 0
  br i1 %cmp213482, label %iop_adma_clean_slot.exit.thread.for.end272_crit_edge, label %iop_adma_clean_slot.exit.thread.do.body235_crit_edge

iop_adma_clean_slot.exit.thread.do.body235_crit_edge: ; preds = %iop_adma_clean_slot.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body235

iop_adma_clean_slot.exit.thread.for.end272_crit_edge: ; preds = %iop_adma_clean_slot.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end272

do.body226:                                       ; preds = %for.cond202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot_cnt.4)
  %tobool227.not = icmp eq i32 %slot_cnt.4, 0
  br i1 %tobool227.not, label %do.body226.for.inc266_crit_edge, label %do.body226.do.body235_crit_edge, !prof !268

do.body226.do.body235_crit_edge:                  ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body235

do.body226.for.inc266_crit_edge:                  ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc266

do.body235:                                       ; preds = %do.body226.do.body235_crit_edge, %iop_adma_clean_slot.exit.thread.do.body235_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #12, !srcloc !282
  unreachable

if.else248:                                       ; preds = %if.end108
  br i1 %cmp109.not, label %if.else248.if.end252_crit_edge, label %if.else248.for.inc266_crit_edge

if.else248.for.inc266_crit_edge:                  ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc266

if.else248.if.end252_crit_edge:                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.end252:                                        ; preds = %if.else248.if.end252_crit_edge, %if.then75.if.end252_crit_edge
  %slot_cnt.2563573 = phi i32 [ %slot_cnt.2, %if.else248.if.end252_crit_edge ], [ 0, %if.then75.if.end252_crit_edge ]
  %grp_start.2566572 = phi ptr [ %grp_start.2, %if.else248.if.end252_crit_edge ], [ %grp_start.0534, %if.then75.if.end252_crit_edge ]
  %104 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 9
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %tobool253.not = icmp eq ptr %106, null
  br i1 %tobool253.not, label %if.end252.if.end260_crit_edge, label %land.lhs.true254

if.end252.if.end260_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end260

land.lhs.true254:                                 ; preds = %if.end252
  %107 = ptrtoint ptr %async_tx44 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %async_tx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool257.not = icmp eq i32 %108, 0
  br i1 %tobool257.not, label %land.lhs.true254.iop_adma_run_tx_complete_actions.exit430_crit_edge, label %if.then258

land.lhs.true254.iop_adma_run_tx_complete_actions.exit430_crit_edge: ; preds = %land.lhs.true254
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_run_tx_complete_actions.exit430

if.then258:                                       ; preds = %land.lhs.true254
  %hw_desc1.i399 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 2
  %109 = ptrtoint ptr %hw_desc1.i399 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw_desc1.i399, align 4
  %111 = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %110, i32 0, i32 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %desc_ctrl.sroa.0.0.copyload.i400 = load i32, ptr %111, align 4
  %113 = and i32 %desc_ctrl.sroa.0.0.copyload.i400, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %113)
  %.not.i401 = icmp eq i32 %113, 10
  br i1 %.not.i401, label %iop_desc_get_zero_result.exit405, label %do.body9.i402, !prof !268

do.body9.i402:                                    ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 789, 0\0A.popsection", ""() #12, !srcloc !280
  unreachable

iop_desc_get_zero_result.exit405:                 ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr16.i403 = lshr i32 %desc_ctrl.sroa.0.0.copyload.i400, 2
  %bf.clear17.i404 = and i32 %bf.lshr16.i403, 1
  %114 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %bf.clear17.i404, ptr %106, align 4
  br label %if.end260

if.end260:                                        ; preds = %iop_desc_get_zero_result.exit405, %if.end252.if.end260_crit_edge
  %115 = ptrtoint ptr %async_tx44 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr = load i32, ptr %async_tx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i408 = icmp slt i32 %.pr, 0
  br i1 %cmp.i408, label %do.body3.i409, label %do.end8.i411, !prof !258

do.body3.i409:                                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/iop-adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #12, !srcloc !281
  unreachable

do.end8.i411:                                     ; preds = %if.end260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp10.not.i410 = icmp eq i32 %.pr, 0
  br i1 %cmp10.not.i410, label %do.end8.i411.iop_adma_run_tx_complete_actions.exit430_crit_edge, label %if.then11.i416

do.end8.i411.iop_adma_run_tx_complete_actions.exit430_crit_edge: ; preds = %do.end8.i411
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_run_tx_complete_actions.exit430

if.then11.i416:                                   ; preds = %do.end8.i411
  %116 = ptrtoint ptr %async_tx44 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %async_tx44, align 4
  %callback.i.i.i412 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 6
  %117 = ptrtoint ptr %callback.i.i.i412 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %callback.i.i.i412, align 4
  %callback_result.i.i.i413 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 7
  %119 = ptrtoint ptr %callback_result.i.i.i413 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %callback_result.i.i.i413, align 4
  %callback_param.i.i.i414 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 8
  %121 = ptrtoint ptr %callback_param.i.i.i414 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %callback_param.i.i.i414, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i406) #12
  %123 = ptrtoint ptr %dummy_result.i.i.i406 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 0, ptr %dummy_result.i.i.i406, align 8
  %tobool.not.i.i.i415 = icmp eq ptr %120, null
  br i1 %tobool.not.i.i.i415, label %if.else.i.i.i419, label %if.then.i.i.i417

if.then.i.i.i417:                                 ; preds = %if.then11.i416
  call void @__sanitizer_cov_trace_pc() #14
  call void %120(ptr noundef %122, ptr noundef nonnull %dummy_result.i.i.i406) #12
  br label %dmaengine_desc_get_callback_invoke.exit.i423

if.else.i.i.i419:                                 ; preds = %if.then11.i416
  %tobool4.not.i.i.i418 = icmp eq ptr %118, null
  br i1 %tobool4.not.i.i.i418, label %if.else.i.i.i419.dmaengine_desc_get_callback_invoke.exit.i423_crit_edge, label %if.then5.i.i.i420

if.else.i.i.i419.dmaengine_desc_get_callback_invoke.exit.i423_crit_edge: ; preds = %if.else.i.i.i419
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_desc_get_callback_invoke.exit.i423

if.then5.i.i.i420:                                ; preds = %if.else.i.i.i419
  call void @__sanitizer_cov_trace_pc() #14
  call void %118(ptr noundef %122) #12
  br label %dmaengine_desc_get_callback_invoke.exit.i423

dmaengine_desc_get_callback_invoke.exit.i423:     ; preds = %if.then5.i.i.i420, %if.else.i.i.i419.dmaengine_desc_get_callback_invoke.exit.i423_crit_edge, %if.then.i.i.i417
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i406) #12
  %unmap.i.i421 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 9
  %124 = ptrtoint ptr %unmap.i.i421 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %unmap.i.i421, align 4
  %tobool.not.i.i422 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i422, label %dmaengine_desc_get_callback_invoke.exit.i423.dma_descriptor_unmap.exit.i427_crit_edge, label %if.end.i.i424

dmaengine_desc_get_callback_invoke.exit.i423.dma_descriptor_unmap.exit.i427_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit.i423
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_descriptor_unmap.exit.i427

if.end.i.i424:                                    ; preds = %dmaengine_desc_get_callback_invoke.exit.i423
  call void @__sanitizer_cov_trace_pc() #14
  call void @dmaengine_unmap_put(ptr noundef nonnull %125) #12
  %126 = ptrtoint ptr %unmap.i.i421 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %unmap.i.i421, align 4
  br label %dma_descriptor_unmap.exit.i427

dma_descriptor_unmap.exit.i427:                   ; preds = %if.end.i.i424, %dmaengine_desc_get_callback_invoke.exit.i423.dma_descriptor_unmap.exit.i427_crit_edge
  %group_head.i425 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 3
  %127 = ptrtoint ptr %group_head.i425 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %group_head.i425, align 4
  %tobool14.not.i426 = icmp eq ptr %128, null
  br i1 %tobool14.not.i426, label %dma_descriptor_unmap.exit.i427.iop_adma_run_tx_complete_actions.exit430_crit_edge, label %if.then15.i428

dma_descriptor_unmap.exit.i427.iop_adma_run_tx_complete_actions.exit430_crit_edge: ; preds = %dma_descriptor_unmap.exit.i427
  call void @__sanitizer_cov_trace_pc() #14
  br label %iop_adma_run_tx_complete_actions.exit430

if.then15.i428:                                   ; preds = %dma_descriptor_unmap.exit.i427
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %group_head.i425 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %group_head.i425, align 4
  br label %iop_adma_run_tx_complete_actions.exit430

iop_adma_run_tx_complete_actions.exit430:         ; preds = %if.then15.i428, %dma_descriptor_unmap.exit.i427.iop_adma_run_tx_complete_actions.exit430_crit_edge, %do.end8.i411.iop_adma_run_tx_complete_actions.exit430_crit_edge, %land.lhs.true254.iop_adma_run_tx_complete_actions.exit430_crit_edge
  %cookie.addr.0.i429 = phi i32 [ %.pr, %if.then15.i428 ], [ %.pr, %dma_descriptor_unmap.exit.i427.iop_adma_run_tx_complete_actions.exit430_crit_edge ], [ %cookie.0531, %do.end8.i411.iop_adma_run_tx_complete_actions.exit430_crit_edge ], [ %cookie.0531, %land.lhs.true254.iop_adma_run_tx_complete_actions.exit430_crit_edge ]
  call void @dma_run_dependencies(ptr noundef %async_tx44) #12
  %flags.i.i431 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 8, i32 1
  %130 = ptrtoint ptr %flags.i.i431 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags.i.i431, align 4
  %and.i.i432 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i432)
  %cmp.i.not.i433 = icmp eq i32 %and.i.i432, 0
  br i1 %cmp.i.not.i433, label %iop_adma_run_tx_complete_actions.exit430.for.inc266_crit_edge, label %if.end.i437

iop_adma_run_tx_complete_actions.exit430.for.inc266_crit_edge: ; preds = %iop_adma_run_tx_complete_actions.exit430
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc266

if.end.i437:                                      ; preds = %iop_adma_run_tx_complete_actions.exit430
  %132 = ptrtoint ptr %.pn538.in to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %.pn538.in, align 4
  %cmp.i436 = icmp eq ptr %133, %chain
  br i1 %cmp.i436, label %if.end.i437.for.end272_crit_edge, label %do.body.i438

if.end.i437.for.end272_crit_edge:                 ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end272

do.body.i438:                                     ; preds = %if.end.i437
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iop_adma_clean_slot.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %do.end.i447)) #12
          to label %if.then7.i445 [label %do.end.i447], !srcloc !251

if.then7.i445:                                    ; preds = %do.body.i438
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %device.i, align 4
  %dev.i440 = getelementptr inbounds %struct.iop_adma_device, ptr %135, i32 0, i32 4, i32 15
  %136 = ptrtoint ptr %dev.i440 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i440, align 4
  %idx.i441 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 6
  %138 = ptrtoint ptr %idx.i441 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %idx.i441, align 4
  %conv.i442 = zext i16 %139 to i32
  %slots_per_op.i443 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 5
  %140 = ptrtoint ptr %slots_per_op.i443 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %slots_per_op.i443, align 2
  %conv8.i444 = zext i16 %141 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iop_adma_clean_slot.__UNIQUE_ID_ddebug273, ptr noundef %137, ptr noundef nonnull @.str.40, i32 noundef %conv.i442, i32 noundef %conv8.i444) #12
  br label %do.end.i447

do.end.i447:                                      ; preds = %if.then7.i445, %do.body.i438
  %call.i.i.i446 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn538.in) #12
  br i1 %call.i.i.i446, label %if.end.i.i.i450, label %do.end.i447.list_del.exit.i454_crit_edge

do.end.i447.list_del.exit.i454_crit_edge:         ; preds = %do.end.i447
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i454

if.end.i.i.i450:                                  ; preds = %do.end.i447
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i448 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 1, i32 1
  %142 = ptrtoint ptr %prev.i.i.i448 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i.i448, align 4
  %144 = ptrtoint ptr %.pn538.in to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %.pn538.in, align 4
  %prev1.i.i.i.i449 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i.i449 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i.i449, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del.exit.i454

list_del.exit.i454:                               ; preds = %if.end.i.i.i450, %do.end.i447.list_del.exit.i454_crit_edge
  %148 = ptrtoint ptr %.pn538.in to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn538.in, align 4
  %prev.i.i451 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 1, i32 1
  %149 = ptrtoint ptr %prev.i.i451 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i451, align 4
  %slots_per_op.i.i452 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %iter.0536, i32 0, i32 5
  %150 = ptrtoint ptr %slots_per_op.i.i452 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %slots_per_op.i.i452, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool.not4.i.i453 = icmp eq i16 %151, 0
  br i1 %tobool.not4.i.i453, label %list_del.exit.i454.for.inc266_crit_edge, label %while.body.preheader.i.i456

list_del.exit.i454.for.inc266_crit_edge:          ; preds = %list_del.exit.i454
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc266

while.body.preheader.i.i456:                      ; preds = %list_del.exit.i454
  %conv.i.i455 = zext i16 %151 to i32
  br label %while.body.i.i462

while.body.i.i462:                                ; preds = %while.body.i.i462.while.body.i.i462_crit_edge, %while.body.preheader.i.i456
  %slot.addr.06.i.i457 = phi ptr [ %154, %while.body.i.i462.while.body.i.i462_crit_edge ], [ %iter.0536, %while.body.preheader.i.i456 ]
  %stride.05.i.i458 = phi i32 [ %dec.i.i459, %while.body.i.i462.while.body.i.i462_crit_edge ], [ %conv.i.i455, %while.body.preheader.i.i456 ]
  %dec.i.i459 = add nsw i32 %stride.05.i.i458, -1
  %slots_per_op1.i.i460 = getelementptr inbounds %struct.iop_adma_desc_slot, ptr %slot.addr.06.i.i457, i32 0, i32 5
  %152 = ptrtoint ptr %slots_per_op1.i.i460 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %slots_per_op1.i.i460, align 2
  %153 = ptrtoint ptr %slot.addr.06.i.i457 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %slot.addr.06.i.i457, align 4
  %tobool.not.i.i461 = icmp eq i32 %dec.i.i459, 0
  br i1 %tobool.not.i.i461, label %while.body.i.i462.for.inc266_crit_edge, label %while.body.i.i462.while.body.i.i462_crit_edge

while.body.i.i462.while.body.i.i462_crit_edge:    ; preds = %while.body.i.i462
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i462

while.body.i.i462.for.inc266_crit_edge:           ; preds = %while.body.i.i462
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc266

for.inc266:                                       ; preds = %while.body.i.i462.for.inc266_crit_edge, %list_del.exit.i454.for.inc266_crit_edge, %iop_adma_run_tx_complete_actions.exit430.for.inc266_crit_edge, %if.else248.for.inc266_crit_edge, %do.body226.for.inc266_crit_edge, %iop_adma_clean_slot.exit.for.inc266_crit_edge
  %slots_per_op.2 = phi i32 [ %slots_per_op.1470, %if.else248.for.inc266_crit_edge ], [ 0, %do.body226.for.inc266_crit_edge ], [ 0, %iop_adma_run_tx_complete_actions.exit430.for.inc266_crit_edge ], [ 0, %list_del.exit.i454.for.inc266_crit_edge ], [ 0, %iop_adma_clean_slot.exit.for.inc266_crit_edge ], [ 0, %while.body.i.i462.for.inc266_crit_edge ]
  %slot_cnt.6 = phi i32 [ %slot_cnt.2, %if.else248.for.inc266_crit_edge ], [ 0, %do.body226.for.inc266_crit_edge ], [ %slot_cnt.2563573, %iop_adma_run_tx_complete_actions.exit430.for.inc266_crit_edge ], [ %slot_cnt.2563573, %list_del.exit.i454.for.inc266_crit_edge ], [ 0, %iop_adma_clean_slot.exit.for.inc266_crit_edge ], [ %slot_cnt.2563573, %while.body.i.i462.for.inc266_crit_edge ]
  %cookie.3 = phi i32 [ %cookie.0531, %if.else248.for.inc266_crit_edge ], [ %cookie.1, %do.body226.for.inc266_crit_edge ], [ %cookie.addr.0.i429, %iop_adma_run_tx_complete_actions.exit430.for.inc266_crit_edge ], [ %cookie.addr.0.i429, %list_del.exit.i454.for.inc266_crit_edge ], [ %cookie.addr.0.i, %iop_adma_clean_slot.exit.for.inc266_crit_edge ], [ %cookie.addr.0.i429, %while.body.i.i462.for.inc266_crit_edge ]
  %grp_start.3 = phi ptr [ %grp_start.2, %if.else248.for.inc266_crit_edge ], [ null, %do.body226.for.inc266_crit_edge ], [ %grp_start.2566572, %iop_adma_run_tx_complete_actions.exit430.for.inc266_crit_edge ], [ %grp_start.2566572, %list_del.exit.i454.for.inc266_crit_edge ], [ null, %iop_adma_clean_slot.exit.for.inc266_crit_edge ], [ %grp_start.2566572, %while.body.i.i462.for.inc266_crit_edge ]
  %cmp.not = icmp eq ptr %.pn538, %chain
  br i1 %cmp.not, label %for.inc266.for.end272_crit_edge, label %for.inc266.do.body15_crit_edge

for.inc266.do.body15_crit_edge:                   ; preds = %for.inc266
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

for.inc266.for.end272_crit_edge:                  ; preds = %for.inc266
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end272

for.end272:                                       ; preds = %for.inc266.for.end272_crit_edge, %if.end.i437.for.end272_crit_edge, %iop_adma_clean_slot.exit.thread.for.end272_crit_edge, %lor.lhs.false.for.end272_crit_edge, %do.end66.for.end272_crit_edge, %do.end39.for.end272_crit_edge
  %cookie.4 = phi i32 [ %cookie.addr.0.i, %iop_adma_clean_slot.exit.thread.for.end272_crit_edge ], [ %cookie.3, %for.inc266.for.end272_crit_edge ], [ %cookie.0531, %do.end39.for.end272_crit_edge ], [ %cookie.0531, %lor.lhs.false.for.end272_crit_edge ], [ %cookie.0531, %do.end66.for.end272_crit_edge ], [ %cookie.addr.0.i429, %if.end.i437.for.end272_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cookie.4)
  %cmp273 = icmp sgt i32 %cookie.4, 0
  br i1 %cmp273, label %if.then275, label %for.end272.if.end295_crit_edge

for.end272.if.end295_crit_edge:                   ; preds = %for.end272
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

if.then275:                                       ; preds = %for.end272
  call void @__sanitizer_cov_trace_pc() #14
  %completed_cookie = getelementptr inbounds %struct.iop_adma_chan, ptr %iop_chan, i32 0, i32 5, i32 3
  %155 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %cookie.4, ptr %completed_cookie, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__iop_adma_slot_cleanup, %if.end295)) #12
          to label %if.then291 [label %if.end295], !srcloc !251

if.then291:                                       ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.38, i32 noundef %cookie.4) #12
  br label %if.end295

if.end295:                                        ; preds = %if.then291, %if.then275, %for.end272.if.end295_crit_edge, %do.end.if.end295_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc i32 @iop3xx_desc_init_xor(ptr nocapture noundef writeonly %hw_desc, i32 noundef %src_cnt, i32 noundef %flags) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = zext i32 %src_cnt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %src_cnt, label %entry.sw.epilog_crit_edge [
    i32 25, label %entry.for.body.preheader_crit_edge
    i32 26, label %entry.for.body.preheader_crit_edge137
    i32 27, label %entry.for.body.preheader_crit_edge138
    i32 28, label %entry.for.body.preheader_crit_edge139
    i32 29, label %entry.for.body.preheader_crit_edge140
    i32 30, label %entry.for.body.preheader_crit_edge141
    i32 31, label %entry.for.body.preheader_crit_edge142
    i32 32, label %entry.for.body.preheader_crit_edge143
    i32 17, label %entry.for.body11.preheader_crit_edge
    i32 18, label %entry.for.body11.preheader_crit_edge144
    i32 19, label %entry.for.body11.preheader_crit_edge145
    i32 20, label %entry.for.body11.preheader_crit_edge146
    i32 21, label %entry.for.body11.preheader_crit_edge147
    i32 22, label %entry.for.body11.preheader_crit_edge148
    i32 23, label %entry.for.body11.preheader_crit_edge149
    i32 24, label %entry.for.body11.preheader_crit_edge150
    i32 9, label %entry.for.body32.preheader_crit_edge
    i32 10, label %entry.for.body32.preheader_crit_edge151
    i32 11, label %entry.for.body32.preheader_crit_edge152
    i32 12, label %entry.for.body32.preheader_crit_edge153
    i32 13, label %entry.for.body32.preheader_crit_edge154
    i32 14, label %entry.for.body32.preheader_crit_edge155
    i32 15, label %entry.for.body32.preheader_crit_edge156
    i32 16, label %entry.for.body32.preheader_crit_edge157
    i32 2, label %entry.for.body44.preheader_crit_edge
    i32 3, label %entry.for.body44.preheader_crit_edge158
    i32 4, label %entry.for.body44.preheader_crit_edge159
    i32 5, label %entry.for.body44.preheader_crit_edge160
    i32 6, label %entry.for.body44.preheader_crit_edge161
    i32 7, label %entry.for.body44.preheader_crit_edge162
    i32 8, label %entry.for.body44.preheader_crit_edge163
  ]

entry.for.body44.preheader_crit_edge163:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.preheader

entry.for.body44.preheader_crit_edge162:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.preheader

entry.for.body44.preheader_crit_edge161:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.preheader

entry.for.body44.preheader_crit_edge160:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.preheader

entry.for.body44.preheader_crit_edge159:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.preheader

entry.for.body44.preheader_crit_edge158:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.preheader

entry.for.body44.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.preheader

entry.for.body32.preheader_crit_edge157:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body32.preheader_crit_edge156:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body32.preheader_crit_edge155:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body32.preheader_crit_edge154:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body32.preheader_crit_edge153:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body32.preheader_crit_edge152:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body32.preheader_crit_edge151:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body32.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.preheader

entry.for.body11.preheader_crit_edge150:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body11.preheader_crit_edge149:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body11.preheader_crit_edge148:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body11.preheader_crit_edge147:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body11.preheader_crit_edge146:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body11.preheader_crit_edge145:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body11.preheader_crit_edge144:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body11.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

entry.for.body.preheader_crit_edge143:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge142:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge141:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge140:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge139:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge138:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge137:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge137, %entry.for.body.preheader_crit_edge138, %entry.for.body.preheader_crit_edge139, %entry.for.body.preheader_crit_edge140, %entry.for.body.preheader_crit_edge141, %entry.for.body.preheader_crit_edge142, %entry.for.body.preheader_crit_edge143
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %edcr.0118 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %shift.0117 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %i.0116 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 24, %for.body.preheader ]
  %shl = shl nuw i32 1, %shift.0117
  %or = or i32 %edcr.0118, %shl
  %add = add i32 %shift.0117, 3
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %src_cnt
  br i1 %exitcond.not, label %for.body.for.body11.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.body11.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.body.for.body11.preheader_crit_edge, %entry.for.body11.preheader_crit_edge, %entry.for.body11.preheader_crit_edge144, %entry.for.body11.preheader_crit_edge145, %entry.for.body11.preheader_crit_edge146, %entry.for.body11.preheader_crit_edge147, %entry.for.body11.preheader_crit_edge148, %entry.for.body11.preheader_crit_edge149, %entry.for.body11.preheader_crit_edge150
  %.sink = phi i32 [ 0, %entry.for.body11.preheader_crit_edge ], [ 0, %entry.for.body11.preheader_crit_edge144 ], [ 0, %entry.for.body11.preheader_crit_edge145 ], [ 0, %entry.for.body11.preheader_crit_edge146 ], [ 0, %entry.for.body11.preheader_crit_edge147 ], [ 0, %entry.for.body11.preheader_crit_edge148 ], [ 0, %entry.for.body11.preheader_crit_edge149 ], [ 0, %entry.for.body11.preheader_crit_edge150 ], [ %or, %for.body.for.body11.preheader_crit_edge ]
  %src_cnt.addr.0113 = phi i32 [ %src_cnt, %entry.for.body11.preheader_crit_edge ], [ %src_cnt, %entry.for.body11.preheader_crit_edge144 ], [ %src_cnt, %entry.for.body11.preheader_crit_edge145 ], [ %src_cnt, %entry.for.body11.preheader_crit_edge146 ], [ %src_cnt, %entry.for.body11.preheader_crit_edge147 ], [ %src_cnt, %entry.for.body11.preheader_crit_edge148 ], [ %src_cnt, %entry.for.body11.preheader_crit_edge149 ], [ %src_cnt, %entry.for.body11.preheader_crit_edge150 ], [ 24, %for.body.for.body11.preheader_crit_edge ]
  %arrayidx5 = getelementptr %struct.iop3xx_desc_aau, ptr %hw_desc, i32 0, i32 5, i32 26
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %arrayidx5, align 4
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.preheader
  %edcr.1122 = phi i32 [ %or13, %for.body11.for.body11_crit_edge ], [ 0, %for.body11.preheader ]
  %shift.1121 = phi i32 [ %add14, %for.body11.for.body11_crit_edge ], [ 1, %for.body11.preheader ]
  %i.1120 = phi i32 [ %inc16, %for.body11.for.body11_crit_edge ], [ 16, %for.body11.preheader ]
  %shl12 = shl nuw i32 1, %shift.1121
  %or13 = or i32 %edcr.1122, %shl12
  %add14 = add i32 %shift.1121, 3
  %inc16 = add nuw nsw i32 %i.1120, 1
  %exitcond134.not = icmp eq i32 %inc16, %src_cnt.addr.0113
  br i1 %exitcond134.not, label %for.end17, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

for.end17:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19 = getelementptr %struct.iop3xx_desc_aau, ptr %hw_desc, i32 0, i32 5, i32 17
  %2 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or13, ptr %arrayidx19, align 4
  br label %for.body32.preheader

for.body32.preheader:                             ; preds = %for.end17, %entry.for.body32.preheader_crit_edge, %entry.for.body32.preheader_crit_edge151, %entry.for.body32.preheader_crit_edge152, %entry.for.body32.preheader_crit_edge153, %entry.for.body32.preheader_crit_edge154, %entry.for.body32.preheader_crit_edge155, %entry.for.body32.preheader_crit_edge156, %entry.for.body32.preheader_crit_edge157
  %src_cnt.addr.1 = phi i32 [ %src_cnt, %entry.for.body32.preheader_crit_edge ], [ %src_cnt, %entry.for.body32.preheader_crit_edge151 ], [ %src_cnt, %entry.for.body32.preheader_crit_edge152 ], [ %src_cnt, %entry.for.body32.preheader_crit_edge153 ], [ %src_cnt, %entry.for.body32.preheader_crit_edge154 ], [ %src_cnt, %entry.for.body32.preheader_crit_edge155 ], [ %src_cnt, %entry.for.body32.preheader_crit_edge156 ], [ %src_cnt, %entry.for.body32.preheader_crit_edge157 ], [ 16, %for.end17 ]
  %tobool24.not = phi i32 [ 64, %entry.for.body32.preheader_crit_edge ], [ 64, %entry.for.body32.preheader_crit_edge151 ], [ 64, %entry.for.body32.preheader_crit_edge152 ], [ 64, %entry.for.body32.preheader_crit_edge153 ], [ 64, %entry.for.body32.preheader_crit_edge154 ], [ 64, %entry.for.body32.preheader_crit_edge155 ], [ 64, %entry.for.body32.preheader_crit_edge156 ], [ 64, %entry.for.body32.preheader_crit_edge157 ], [ 96, %for.end17 ]
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.body32.preheader
  %edcr.2127 = phi i32 [ %or34, %for.body32.for.body32_crit_edge ], [ 0, %for.body32.preheader ]
  %shift.2126 = phi i32 [ %add35, %for.body32.for.body32_crit_edge ], [ 1, %for.body32.preheader ]
  %i.2125 = phi i32 [ %inc37, %for.body32.for.body32_crit_edge ], [ 8, %for.body32.preheader ]
  %shl33 = shl nuw i32 1, %shift.2126
  %or34 = or i32 %edcr.2127, %shl33
  %add35 = add i32 %shift.2126, 3
  %inc37 = add nuw nsw i32 %i.2125, 1
  %exitcond135.not = icmp eq i32 %inc37, %src_cnt.addr.1
  br i1 %exitcond135.not, label %for.end38, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32

for.end38:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx40 = getelementptr %struct.iop3xx_desc_aau, ptr %hw_desc, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or34, ptr %arrayidx40, align 4
  br label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.end38, %entry.for.body44.preheader_crit_edge, %entry.for.body44.preheader_crit_edge158, %entry.for.body44.preheader_crit_edge159, %entry.for.body44.preheader_crit_edge160, %entry.for.body44.preheader_crit_edge161, %entry.for.body44.preheader_crit_edge162, %entry.for.body44.preheader_crit_edge163
  %src_cnt.addr.2 = phi i32 [ %src_cnt, %entry.for.body44.preheader_crit_edge ], [ %src_cnt, %entry.for.body44.preheader_crit_edge158 ], [ %src_cnt, %entry.for.body44.preheader_crit_edge159 ], [ %src_cnt, %entry.for.body44.preheader_crit_edge160 ], [ %src_cnt, %entry.for.body44.preheader_crit_edge161 ], [ %src_cnt, %entry.for.body44.preheader_crit_edge162 ], [ %src_cnt, %entry.for.body44.preheader_crit_edge163 ], [ 8, %for.end38 ]
  %u_desc_ctrl.sroa.0.4 = phi i32 [ 0, %entry.for.body44.preheader_crit_edge ], [ 0, %entry.for.body44.preheader_crit_edge158 ], [ 0, %entry.for.body44.preheader_crit_edge159 ], [ 0, %entry.for.body44.preheader_crit_edge160 ], [ 0, %entry.for.body44.preheader_crit_edge161 ], [ 0, %entry.for.body44.preheader_crit_edge162 ], [ 0, %entry.for.body44.preheader_crit_edge163 ], [ %tobool24.not, %for.end38 ]
  br label %for.body44

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.preheader
  %u_desc_ctrl.sroa.0.5132 = phi i32 [ %or46, %for.body44.for.body44_crit_edge ], [ %u_desc_ctrl.sroa.0.4, %for.body44.preheader ]
  %shift.3131 = phi i32 [ %add47, %for.body44.for.body44_crit_edge ], [ 1, %for.body44.preheader ]
  %i.3130 = phi i32 [ %inc49, %for.body44.for.body44_crit_edge ], [ 0, %for.body44.preheader ]
  %shl45 = shl nuw i32 1, %shift.3131
  %or46 = or i32 %u_desc_ctrl.sroa.0.5132, %shl45
  %add47 = add i32 %shift.3131, 3
  %inc49 = add nuw nsw i32 %i.3130, 1
  %exitcond136.not = icmp eq i32 %inc49, %src_cnt.addr.2
  br i1 %exitcond136.not, label %for.end50, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44

for.end50:                                        ; preds = %for.body44
  %4 = and i32 %or46, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool54.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %src_cnt.addr.2)
  %cmp55 = icmp sgt i32 %src_cnt.addr.2, 4
  %or.cond = and i1 %cmp55, %tobool54.not
  br i1 %or.cond, label %if.then56, label %for.end50.sw.epilog_crit_edge

for.end50.sw.epilog_crit_edge:                    ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then56:                                        ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear58 = and i32 %or46, -97
  %bf.set59 = or i32 %bf.clear58, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then56, %for.end50.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %u_desc_ctrl.sroa.0.6 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %or46, %for.end50.sw.epilog_crit_edge ], [ %bf.set59, %if.then56 ]
  %bf.shl = shl i32 %flags, 31
  %bf.set66 = and i32 %u_desc_ctrl.sroa.0.6, 268435454
  %bf.clear68 = or i32 %bf.set66, %bf.shl
  %bf.set69 = or i32 %bf.clear68, 1879048193
  %5 = getelementptr inbounds %struct.iop3xx_desc_aau, ptr %hw_desc, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bf.set69, ptr %5, align 4
  ret i32 %bf.set69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @iop_is_err_pci_tabort(i32 noundef %status, ptr nocapture noundef readonly %chan) unnamed_addr #9 align 64 {
entry:
  %status.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %status.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %status.addr, align 4
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %chan, i32 0, i32 4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.iop_adma_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %status.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %status.addr.0.status.addr.0. = load volatile i32, ptr %status.addr, align 4
  %shr.i = lshr i32 %status.addr.0.status.addr.0., 2
  %and1.i = and i32 %shr.i, 1
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and1.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @iop_is_err_pci_mabort(i32 noundef %status, ptr nocapture noundef readonly %chan) unnamed_addr #9 align 64 {
entry:
  %status.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %status.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %status.addr, align 4
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %chan, i32 0, i32 4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.iop_adma_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %status.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %status.addr.0.status.addr.0. = load volatile i32, ptr %status.addr, align 4
  %shr.i = lshr i32 %status.addr.0.status.addr.0., 3
  %and1.i = and i32 %shr.i, 1
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and1.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @iop_is_err_split_tx(i32 noundef %status, ptr nocapture noundef readonly %chan) unnamed_addr #9 align 64 {
entry:
  %status.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %status.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %status.addr, align 4
  %device = getelementptr inbounds %struct.iop_adma_chan, ptr %chan, i32 0, i32 4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.iop_adma_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %status.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %status.addr.0.status.addr.0. = load volatile i32, ptr %status.addr, align 4
  %shr.i = lshr i32 %status.addr.0.status.addr.0., 1
  %and1.i = and i32 %shr.i, 1
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and1.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240}
!llvm.named.register.sp = !{!241}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @__initcall__kmod_iop_adma__305_1549_iop_adma_driver_init6, !1, !"__initcall__kmod_iop_adma__305_1549_iop_adma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/iop-adma.c", i32 1549, i32 1}
!2 = !{ptr @__exitcall_iop_adma_driver_exit, !1, !"__exitcall_iop_adma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/dma/iop-adma.c", i32 1551, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/dma/iop-adma.c", i32 1552, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/dma/iop-adma.c", i32 1553, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias310, !11, !"__UNIQUE_ID_alias310", i1 false, i1 false}
!11 = !{!"../drivers/dma/iop-adma.c", i32 1554, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/iop-adma.c", i32 1545, i32 11}
!14 = !{ptr @iop_adma_driver, !15, !"iop_adma_driver", i1 false, i1 false}
!15 = !{!"../drivers/dma/iop-adma.c", i32 1541, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/iop-adma.c", i32 1300, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iop_adma_probe.__UNIQUE_ID_ddebug299, !17, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!22 = distinct !{null, !23, !"handler", i1 false, i1 false}
!23 = !{!"../drivers/dma/iop-adma.c", i32 1360, i32 30}
!24 = !{ptr @iop_adma_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/dma/iop-adma.c", i32 1377, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/iop-adma.c", i32 1386, i32 3}
!29 = !{ptr @iop_adma_probe.__UNIQUE_ID_ddebug300, !28, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/iop-adma.c", i32 1393, i32 3}
!32 = !{ptr @iop_adma_probe.__UNIQUE_ID_ddebug301, !31, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/iop-adma.c", i32 1402, i32 3}
!35 = !{ptr @iop_adma_probe.__UNIQUE_ID_ddebug302, !34, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/iop-adma.c", i32 1413, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @iop_adma_probe._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @iop_adma_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/iop-adma.c", i32 437, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @iop_adma_alloc_chan_resources._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @iop_adma_alloc_chan_resources._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/iop-adma.c", i32 464, i32 2}
!56 = !{ptr @iop_adma_alloc_chan_resources.__UNIQUE_ID_ddebug284, !55, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/iop-adma.c", i32 399, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @iop_adma_tx_submit.__UNIQUE_ID_ddebug283, !58, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/iop-adma.c", i32 352, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @iop_adma_check_threshold.__UNIQUE_ID_ddebug282, !62, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/iop-adma.c", i32 1441, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @iop_chan_start_null_memcpy.__UNIQUE_ID_ddebug303, !66, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/iop-adma.c", i32 1483, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @iop_chan_start_null_memcpy._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @iop_chan_start_null_memcpy._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/iop-adma.c", i32 308, i32 5}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @iop_adma_alloc_slots.__UNIQUE_ID_ddebug281, !75, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/iop-adma.c", i32 112, i32 2}
!80 = !{ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug274, !79, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/iop-adma.c", i32 118, i32 3}
!83 = !{ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug275, !82, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/iop-adma.c", i32 154, i32 4}
!86 = !{ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug276, !85, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/iop-adma.c", i32 164, i32 4}
!89 = !{ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug277, !88, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/iop-adma.c", i32 176, i32 6}
!92 = !{ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug278, !91, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/iop-adma.c", i32 182, i32 5}
!95 = !{ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug279, !94, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/iop-adma.c", i32 229, i32 3}
!98 = !{ptr @__iop_adma_slot_cleanup.__UNIQUE_ID_ddebug280, !97, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/iop-adma.c", i32 94, i32 2}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @iop_adma_clean_slot.__UNIQUE_ID_ddebug273, !100, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/iop-adma.c", i32 1494, i32 2}
!105 = !{ptr @iop_chan_start_null_xor.__UNIQUE_ID_ddebug304, !104, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!106 = !{ptr @iop_chan_start_null_xor._entry, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/dma/iop-adma.c", i32 1536, i32 3}
!108 = !{ptr @iop_chan_start_null_xor._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @iop3xx_aau_xor_slot_count.slot_count_table, !110, !"slot_count_table", i1 false, i1 false}
!110 = !{!"../drivers/dma/iop-adma.h", i32 308, i32 20}
!111 = !{ptr @__desc_idx.desc_idx_table, !112, !"desc_idx_table", i1 false, i1 false}
!112 = !{!"../drivers/dma/iop-adma.h", i32 398, i32 19}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/dma/iop-adma.c", i32 736, i32 2}
!115 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @iop_adma_free_chan_resources.__UNIQUE_ID_ddebug293, !114, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/iop-adma.c", i32 742, i32 3}
!119 = !{ptr @iop_adma_free_chan_resources._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @iop_adma_free_chan_resources._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/iop-adma.c", i32 517, i32 2}
!123 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @iop_adma_prep_dma_memcpy.__UNIQUE_ID_ddebug286, !122, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/iop-adma.c", i32 549, i32 2}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @iop_adma_prep_dma_xor.__UNIQUE_ID_ddebug287, !126, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/iop-adma.c", i32 583, i32 2}
!131 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug288, !130, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/iop-adma.c", i32 594, i32 3}
!135 = !{ptr @iop_adma_prep_dma_xor_val.__UNIQUE_ID_ddebug289, !134, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/iop-adma.c", i32 620, i32 2}
!138 = !{ptr @iop_adma_prep_dma_pq.__UNIQUE_ID_ddebug290, !137, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/dma/iop-adma.c", i32 684, i32 2}
!141 = !{ptr @iop_adma_prep_dma_pq_val.__UNIQUE_ID_ddebug291, !140, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/iop-adma.c", i32 700, i32 3}
!144 = distinct !{null, !143, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/dma/iop-adma.c", i32 490, i32 2}
!147 = !{ptr @iop_adma_prep_dma_interrupt.__UNIQUE_ID_ddebug285, !146, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/iop-adma.c", i32 772, i32 2}
!150 = !{ptr @iop_adma_eot_handler.__UNIQUE_ID_ddebug294, !149, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/iop-adma.c", i32 785, i32 2}
!153 = !{ptr @iop_adma_eoc_handler.__UNIQUE_ID_ddebug295, !152, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/dma/iop-adma.c", i32 799, i32 2}
!156 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @iop_adma_err_handler._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @iop_adma_err_handler._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!160 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!161 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/dma/iop-adma.c", i32 842, i32 2}
!168 = !{ptr @iop_adma_memcpy_self_test.__UNIQUE_ID_ddebug296, !167, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/dma/iop-adma.c", i32 880, i32 3}
!171 = !{ptr @iop_adma_memcpy_self_test._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @iop_adma_memcpy_self_test._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/dma/iop-adma.c", i32 890, i32 3}
!175 = !{ptr @iop_adma_memcpy_self_test._entry.69, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @iop_adma_memcpy_self_test._entry_ptr.71, !174, !"_entry_ptr", i1 false, i1 false}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!179 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/dma/iop-adma.c", i32 923, i32 2}
!183 = !{ptr @iop_adma_xor_val_self_test.__UNIQUE_ID_ddebug297, !182, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!184 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/dma/iop-adma.c", i32 980, i32 3}
!186 = !{ptr @iop_adma_xor_val_self_test._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @iop_adma_xor_val_self_test._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.77, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/dma/iop-adma.c", i32 992, i32 4}
!190 = !{ptr @iop_adma_xor_val_self_test._entry.76, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @iop_adma_xor_val_self_test._entry_ptr.78, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/dma/iop-adma.c", i32 1026, i32 3}
!194 = !{ptr @iop_adma_xor_val_self_test._entry.79, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @iop_adma_xor_val_self_test._entry_ptr.81, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/dma/iop-adma.c", i32 1033, i32 3}
!198 = !{ptr @iop_adma_xor_val_self_test._entry.82, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @iop_adma_xor_val_self_test._entry_ptr.84, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/dma/iop-adma.c", i32 1055, i32 3}
!202 = !{ptr @iop_adma_xor_val_self_test._entry.85, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @iop_adma_xor_val_self_test._entry_ptr.87, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/dma/iop-adma.c", i32 1062, i32 3}
!206 = !{ptr @iop_adma_xor_val_self_test._entry.88, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @iop_adma_xor_val_self_test._entry_ptr.90, !205, !"_entry_ptr", i1 false, i1 false}
!208 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/dma/iop-adma.c", i32 1099, i32 2}
!212 = !{ptr @iop_adma_pq_zero_sum_self_test.__UNIQUE_ID_ddebug298, !211, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/dma/iop-adma.c", i32 1151, i32 3}
!215 = !{ptr @iop_adma_pq_zero_sum_self_test._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @iop_adma_pq_zero_sum_self_test._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/dma/iop-adma.c", i32 1160, i32 3}
!219 = !{ptr @iop_adma_pq_zero_sum_self_test._entry.94, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.96, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/dma/iop-adma.c", i32 1166, i32 3}
!223 = !{ptr @iop_adma_pq_zero_sum_self_test._entry.97, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.99, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/dma/iop-adma.c", i32 1188, i32 3}
!227 = !{ptr @iop_adma_pq_zero_sum_self_test._entry.100, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.102, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/dma/iop-adma.c", i32 1194, i32 3}
!231 = !{ptr @iop_adma_pq_zero_sum_self_test._entry.103, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.105, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/dma/iop-adma.c", i32 1220, i32 3}
!235 = !{ptr @iop_adma_pq_zero_sum_self_test._entry.106, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.108, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/dma/iop-adma.c", i32 1226, i32 3}
!239 = !{ptr @iop_adma_pq_zero_sum_self_test._entry.109, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @iop_adma_pq_zero_sum_self_test._entry_ptr.111, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{!"sp"}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{i64 2148995408, i64 2148995413, i64 2148995426, i64 2148995470, i64 2148995504, i64 2148995525}
!252 = !{i64 2154621706, i64 2154622193, i64 2154621743, i64 2154621799, i64 2154621833, i64 2154621857, i64 2154621898, i64 2154621919, i64 2154621947, i64 2154621981}
!253 = !{i64 6266833}
!254 = !{i64 2154649245, i64 2154649732, i64 2154649282, i64 2154649338, i64 2154649372, i64 2154649396, i64 2154649437, i64 2154649458, i64 2154649486, i64 2154649520}
!255 = !{i64 6266415}
!256 = !{i64 2154768712, i64 2154769199, i64 2154768749, i64 2154768805, i64 2154768839, i64 2154768863, i64 2154768904, i64 2154768925, i64 2154768953, i64 2154768987}
!257 = !{i64 2154659498}
!258 = !{!"branch_weights", i32 1, i32 2000}
!259 = !{i64 2154775106, i64 2154775593, i64 2154775143, i64 2154775199, i64 2154775233, i64 2154775257, i64 2154775298, i64 2154775319, i64 2154775347, i64 2154775381}
!260 = !{i64 2154637471, i64 2154637958, i64 2154637508, i64 2154637564, i64 2154637598, i64 2154637622, i64 2154637663, i64 2154637684, i64 2154637712, i64 2154637746}
!261 = !{i64 2154641124, i64 2154641611, i64 2154641161, i64 2154641217, i64 2154641251, i64 2154641275, i64 2154641316, i64 2154641337, i64 2154641365, i64 2154641399}
!262 = !{i64 2154784405, i64 2154784892, i64 2154784442, i64 2154784498, i64 2154784532, i64 2154784556, i64 2154784597, i64 2154784618, i64 2154784646, i64 2154784680}
!263 = !{i64 2154801690, i64 2154802177, i64 2154801727, i64 2154801783, i64 2154801817, i64 2154801841, i64 2154801882, i64 2154801903, i64 2154801931, i64 2154801965}
!264 = !{i64 2154614913, i64 2154615400, i64 2154614950, i64 2154615006, i64 2154615040, i64 2154615064, i64 2154615105, i64 2154615126, i64 2154615154, i64 2154615188}
!265 = !{i64 2154630324, i64 2154630811, i64 2154630361, i64 2154630417, i64 2154630451, i64 2154630475, i64 2154630516, i64 2154630537, i64 2154630565, i64 2154630599}
!266 = !{i64 2154639133, i64 2154639620, i64 2154639170, i64 2154639226, i64 2154639260, i64 2154639284, i64 2154639325, i64 2154639346, i64 2154639374, i64 2154639408}
!267 = !{i64 2154831867, i64 2154832354, i64 2154831904, i64 2154831960, i64 2154831994, i64 2154832018, i64 2154832059, i64 2154832080, i64 2154832108, i64 2154832142}
!268 = !{!"branch_weights", i32 2000, i32 1}
!269 = !{!"auto-init"}
!270 = !{i64 2154608289, i64 2154608776, i64 2154608326, i64 2154608382, i64 2154608416, i64 2154608440, i64 2154608481, i64 2154608502, i64 2154608530, i64 2154608564}
!271 = !{i64 2154643638, i64 2154644125, i64 2154643675, i64 2154643731, i64 2154643765, i64 2154643789, i64 2154643830, i64 2154643851, i64 2154643879, i64 2154643913}
!272 = !{i64 2154755453, i64 2154755940, i64 2154755490, i64 2154755546, i64 2154755580, i64 2154755604, i64 2154755645, i64 2154755666, i64 2154755694, i64 2154755728}
!273 = !{i64 2154757160, i64 2154757647, i64 2154757197, i64 2154757253, i64 2154757287, i64 2154757311, i64 2154757352, i64 2154757373, i64 2154757401, i64 2154757435}
!274 = !{i64 2154906424, i64 2154906912, i64 2154906461, i64 2154906517, i64 2154906551, i64 2154906575, i64 2154906616, i64 2154906637, i64 2154906665, i64 2154906699}
!275 = !{i64 2154908054, i64 2154908542, i64 2154908091, i64 2154908147, i64 2154908181, i64 2154908205, i64 2154908246, i64 2154908267, i64 2154908295, i64 2154908329}
!276 = !{i64 2154913605, i64 2154914093, i64 2154913642, i64 2154913698, i64 2154913732, i64 2154913756, i64 2154913797, i64 2154913818, i64 2154913846, i64 2154913880}
!277 = !{i64 2154915235, i64 2154915723, i64 2154915272, i64 2154915328, i64 2154915362, i64 2154915386, i64 2154915427, i64 2154915448, i64 2154915476, i64 2154915510}
!278 = !{i64 892803}
!279 = !{i64 2154623448, i64 2154623935, i64 2154623485, i64 2154623541, i64 2154623575, i64 2154623599, i64 2154623640, i64 2154623661, i64 2154623689, i64 2154623723}
!280 = !{i64 2154646084, i64 2154646571, i64 2154646121, i64 2154646177, i64 2154646211, i64 2154646235, i64 2154646276, i64 2154646297, i64 2154646325, i64 2154646359}
!281 = !{i64 2154696938, i64 2154697424, i64 2154696975, i64 2154697031, i64 2154697065, i64 2154697089, i64 2154697130, i64 2154697151, i64 2154697179, i64 2154697213}
!282 = !{i64 2154732208, i64 2154732695, i64 2154732245, i64 2154732301, i64 2154732335, i64 2154732359, i64 2154732400, i64 2154732421, i64 2154732449, i64 2154732483}
