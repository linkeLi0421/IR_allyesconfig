; ModuleID = '/llk/IR_all_yes/drivers/dma/bcm-sba-raid.c_pt.bc'
source_filename = "../drivers/dma/bcm-sba-raid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.sba_device = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mbox_client, ptr, ptr, %struct.dma_device, %struct.dma_chan, ptr, i32, ptr, i32, %struct.spinlock, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.sba_request = type { %struct.list_head, ptr, i32, ptr, %struct.list_head, %struct.atomic_t, %struct.brcm_message, %struct.dma_async_tx_descriptor, [0 x %struct.brcm_sba_command] }
%struct.brcm_message = type { i32, %union.anon.75, ptr, i32 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.brcm_sba_command = type { i64, ptr, i32, i64, i32, i32, i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dmaengine_result = type { i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_bcm_sba_raid__269_1775_sba_driver_init6 = internal global ptr @sba_driver_init, section ".initcall6.init", align 4
@sba_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sba_probe, ptr @sba_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sba_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sba_driver_exit = internal global ptr @sba_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description270 = internal constant [50 x i8] c"bcm_sba_raid.description=Broadcom SBA RAID driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author271 = internal constant [57 x i8] c"bcm_sba_raid.author=Anup Patel <anup.patel@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [43 x i8] c"bcm_sba_raid.file=drivers/dma/bcm-sba-raid\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [28 x i8] c"bcm_sba_raid.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm-sba-raid\00", [19 x i8] zeroinitializer }, align 32
@sba_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-sba\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-sba-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,iproc-sba\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,iproc-sba-v2\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@sba_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1733, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s using SBAv%d mailbox channel from %s\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sba_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/dma/bcm-sba-raid.c\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sba_probe._entry_ptr = internal global ptr @sba_probe._entry, section ".printk_index", align 4
@sba_receive_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 1451, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s got message with error %d\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sba_receive_message\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sba_receive_message._entry_ptr = internal global ptr @sba_receive_message._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@sba_send_mbox_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.8, i32 370, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"send message failed with error %d\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sba_send_mbox_request\00", [42 x i8] zeroinitializer }, align 32
@sba_send_mbox_request._entry_ptr = internal global ptr @sba_send_mbox_request._entry, section ".printk_index", align 4
@sba_send_mbox_request._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.8, i32 377, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"message error %d\00", [47 x i8] zeroinitializer }, align 32
@sba_send_mbox_request._entry_ptr.18 = internal global ptr @sba_send_mbox_request._entry.16, section ".printk_index", align 4
@sba_prealloc_channel_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sba->reqs_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maximum requests   = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"free requests      = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"alloced requests   = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pending requests   = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active requests    = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aborted requests   = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sba_async_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.8, i32 1607, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"async device register error %d\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sba_async_register\00", [45 x i8] zeroinitializer }, align 32
@sba_async_register._entry_ptr = internal global ptr @sba_async_register._entry, section ".printk_index", align 4
@sba_async_register._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.8, i32 1616, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s capabilities: %s%s%s%s\0A\00", [37 x i8] zeroinitializer }, align 32
@sba_async_register._entry_ptr.30 = internal global ptr @sba_async_register._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupt \00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"memcpy \00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xor \00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pq \00", [28 x i8] zeroinitializer }, align 32
@raid6_gflog = external dso_local local_unnamed_addr constant [256 x i8], align 256
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"sba_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1767, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1771, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"sba_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1760, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1638, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1638, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1643, i32 49 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1646, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1720, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1731, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1450, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 370, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 377, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1490, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 484, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 485, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 486, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 487, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 488, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 489, i32 19 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1607, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [30 x i8] c"../drivers/dma/bcm-sba-raid.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1611, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_sba_driver_exit, ptr @__initcall__kmod_bcm_sba_raid__269_1775_sba_driver_init6, ptr @sba_async_register._entry, ptr @sba_async_register._entry.28, ptr @sba_async_register._entry_ptr, ptr @sba_async_register._entry_ptr.30, ptr @sba_driver_exit, ptr @sba_probe._entry, ptr @sba_probe._entry_ptr, ptr @sba_receive_message._entry, ptr @sba_receive_message._entry_ptr, ptr @sba_send_mbox_request._entry, ptr @sba_send_mbox_request._entry.16, ptr @sba_send_mbox_request._entry_ptr, ptr @sba_send_mbox_request._entry_ptr.18, ptr @sba_driver, ptr @.str, ptr @sba_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @sba_prealloc_channel_resources.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_receive_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_send_mbox_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_send_mbox_request._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_prealloc_channel_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_async_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sba_async_register._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sba_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sba_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sba_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sba_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sba_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 616, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call4 = tail call i32 @of_count_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp slt i32 %call4, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %of_node8 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node8, align 8
  %call9 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.end6.if.end20_crit_edge

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.else:                                          ; preds = %if.end6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %of_node13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node13, align 8
  %call14 = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %spec.select163 = phi i32 [ 12, %if.else.if.end20_crit_edge ], [ 6, %if.end6.if.end20_crit_edge ]
  %spec.select = phi i32 [ 30, %if.else.if.end20_crit_edge ], [ 6, %if.end6.if.end20_crit_edge ]
  %.sink = phi i32 [ 1, %if.else.if.end20_crit_edge ], [ 0, %if.end6.if.end20_crit_edge ]
  %ver17 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %ver17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %ver17, align 4
  %ver21 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 1
  %hw_buf_size23 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %hw_buf_size23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %hw_buf_size23, align 4
  %hw_resp_size24 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %hw_resp_size24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %hw_resp_size24, align 4
  %max_pq_coefs25 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %max_pq_coefs25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %max_pq_coefs25, align 4
  %max_pq_srcs26 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %max_pq_srcs26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select163, ptr %max_pq_srcs26, align 4
  %max_req = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %max_req to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8192, ptr %max_req, align 4
  %add = add nuw nsw i32 %spec.select163, 3
  %max_cmd_per_req = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %max_cmd_per_req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %max_cmd_per_req, align 4
  %sub = add nuw nsw i32 %spec.select163, 2
  %max_xor_srcs = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %max_xor_srcs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %max_xor_srcs, align 4
  %hw_resp_size30 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %hw_resp_size30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_resp_size30, align 4
  %mul = shl i32 %22, 13
  %max_resp_pool_size = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %max_resp_pool_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %max_resp_pool_size, align 4
  %mul33 = shl nuw nsw i32 %add, 16
  %max_cmds_pool_size = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %max_cmds_pool_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul33, ptr %max_cmds_pool_size, align 4
  %client = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %client, align 4
  %rx_callback = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 11, i32 4
  %26 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sba_receive_message, ptr %rx_callback, align 4
  %tx_block = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %knows_txdone, align 4
  %tx_tout = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %tx_tout to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tx_tout, align 4
  %call42 = tail call ptr @mbox_request_channel(ptr noundef %client, i32 noundef 0) #7
  %mchan = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 12
  %30 = ptrtoint ptr %mchan to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call42, ptr %mchan, align 4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call42 to i32
  br label %fail_free_mchan

if.end48:                                         ; preds = %if.end20
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i147 = call i32 @__of_parse_phandle_with_args(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool52.not = icmp eq i32 %call.i147, 0
  br i1 %tobool52.not, label %if.end54, label %if.end48.fail_free_mchan_crit_edge

if.end48.fail_free_mchan_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free_mchan

if.end54:                                         ; preds = %if.end48
  %34 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %args, align 4
  %call55 = call ptr @of_find_device_by_node(ptr noundef %35) #7
  %36 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %37) #7
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %if.end54.fail_free_mchan_crit_edge, label %if.end59

if.end54.fail_free_mchan_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free_mchan

if.end59:                                         ; preds = %if.end54
  %dev60 = getelementptr inbounds %struct.platform_device, ptr %call55, i32 0, i32 3
  %mbox_dev = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 13
  %38 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev60, ptr %mbox_dev, align 4
  %39 = ptrtoint ptr %max_resp_pool_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_resp_pool_size, align 4
  %resp_dma_base.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 17
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev60, i32 noundef %40, ptr noundef %resp_dma_base.i, i32 noundef 3264, i32 noundef 0) #7
  %resp_base.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %resp_base.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i.i, ptr %resp_base.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end59.fail_free_mchan_crit_edge, label %if.end.i

if.end59.fail_free_mchan_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free_mchan

if.end.i:                                         ; preds = %if.end59
  %42 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mbox_dev, align 4
  %44 = ptrtoint ptr %max_cmds_pool_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_cmds_pool_size, align 4
  %cmds_dma_base.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 19
  %call.i120.i = call ptr @dma_alloc_attrs(ptr noundef %43, i32 noundef %45, ptr noundef %cmds_dma_base.i, i32 noundef 3264, i32 noundef 0) #7
  %cmds_base.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 18
  %46 = ptrtoint ptr %cmds_base.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i120.i, ptr %cmds_base.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i120.i, null
  br i1 %tobool5.not.i, label %if.end.i.fail_free_resp_pool.i_crit_edge, label %do.body.i

if.end.i.fail_free_resp_pool.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free_resp_pool.i

do.body.i:                                        ; preds = %if.end.i
  %reqs_lock.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 20
  call void @__raw_spin_lock_init(ptr noundef %reqs_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @sba_prealloc_channel_resources.__key, i16 noundef signext 3) #7
  %reqs_fence.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 21
  %47 = ptrtoint ptr %reqs_fence.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %reqs_fence.i, align 4
  %reqs_alloc_list.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 22
  %48 = ptrtoint ptr %reqs_alloc_list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %reqs_alloc_list.i, ptr %reqs_alloc_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 22, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %reqs_alloc_list.i, ptr %prev.i.i, align 4
  %reqs_pending_list.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 23
  %50 = ptrtoint ptr %reqs_pending_list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %reqs_pending_list.i, ptr %reqs_pending_list.i, align 4
  %prev.i121.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 23, i32 1
  %51 = ptrtoint ptr %prev.i121.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reqs_pending_list.i, ptr %prev.i121.i, align 4
  %reqs_active_list.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 24
  %52 = ptrtoint ptr %reqs_active_list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %reqs_active_list.i, ptr %reqs_active_list.i, align 4
  %prev.i122.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 24, i32 1
  %53 = ptrtoint ptr %prev.i122.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %reqs_active_list.i, ptr %prev.i122.i, align 4
  %reqs_aborted_list.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 25
  %54 = ptrtoint ptr %reqs_aborted_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %reqs_aborted_list.i, ptr %reqs_aborted_list.i, align 4
  %prev.i123.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 25, i32 1
  %55 = ptrtoint ptr %prev.i123.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %reqs_aborted_list.i, ptr %prev.i123.i, align 4
  %reqs_free_list.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 26
  %56 = ptrtoint ptr %reqs_free_list.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %reqs_free_list.i, ptr %reqs_free_list.i, align 4
  %prev.i124.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 26, i32 1
  %57 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %reqs_free_list.i, ptr %prev.i124.i, align 4
  %58 = ptrtoint ptr %max_req to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp132.not.i = icmp eq i32 %59, 0
  br i1 %cmp132.not.i, label %do.body.i.if.end64_crit_edge, label %for.body.lr.ph.i

do.body.i.if.end64_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

for.body.lr.ph.i:                                 ; preds = %do.body.i
  %dma_chan.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0133.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc44.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %62 = ptrtoint ptr %max_cmd_per_req to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_cmd_per_req, align 4
  %64 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 40) #7
  %65 = extractvalue { i32, i1 } %64, 1
  %66 = extractvalue { i32, i1 } %64, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %66, i32 160) #7
  %retval.0.i.i = select i1 %65, i32 -1, i32 %spec.select.i.i
  %call.i125.i = call noalias ptr @devm_kmalloc(ptr noundef %61, i32 noundef %retval.0.i.i, i32 noundef 3520) #7
  %tobool11.not.i = icmp eq ptr %call.i125.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mbox_dev, align 4
  %69 = ptrtoint ptr %max_cmds_pool_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_cmds_pool_size, align 4
  %71 = ptrtoint ptr %cmds_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cmds_base.i, align 4
  %73 = ptrtoint ptr %cmds_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cmds_dma_base.i, align 4
  call void @dma_free_attrs(ptr noundef %68, i32 noundef %70, ptr noundef %72, i32 noundef %74, i32 noundef 0) #7
  br label %fail_free_resp_pool.i

if.end13.i:                                       ; preds = %for.body.i
  %75 = ptrtoint ptr %call.i125.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call.i125.i, ptr %call.i125.i, align 4
  %prev.i126.i = getelementptr inbounds %struct.list_head, ptr %call.i125.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i126.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i125.i, ptr %prev.i126.i, align 4
  %sba14.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 1
  %77 = ptrtoint ptr %sba14.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %sba14.i, align 8
  %flags.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 2
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %flags.i, align 4
  %next.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 4
  %79 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %next.i, ptr %next.i, align 4
  %prev.i127.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %prev.i127.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %next.i, ptr %prev.i127.i, align 4
  %next_pending_count.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count.i, i32 noundef 4) #7
  %81 = ptrtoint ptr %next_pending_count.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 0, ptr %next_pending_count.i, align 4
  %82 = ptrtoint ptr %max_cmd_per_req to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_cmd_per_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp17130.not.i = icmp eq i32 %83, 0
  br i1 %cmp17130.not.i, label %if.end13.i.for.end.i_crit_edge, label %for.body18.lr.ph.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body18.lr.ph.i:                               ; preds = %if.end13.i
  %84 = ptrtoint ptr %cmds_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmds_base.i, align 4
  %mul.i = mul i32 %83, %i.0133.i
  %86 = ptrtoint ptr %cmds_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cmds_dma_base.i, align 4
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %j.0131.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %for.body18.i.for.body18.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sba_request, ptr %call.i125.i, i32 0, i32 8, i32 %j.0131.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %arrayidx.i, align 8
  %add.i = add i32 %j.0131.i, %mul.i
  %mul21.i = shl i32 %add.i, 3
  %add.ptr.i = getelementptr i8, ptr %85, i32 %mul21.i
  %cmd_dma.i = getelementptr %struct.sba_request, ptr %call.i125.i, i32 0, i32 8, i32 %j.0131.i, i32 1
  %89 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr.i, ptr %cmd_dma.i, align 8
  %add29.i = add i32 %mul21.i, %87
  %cmd_dma_addr.i = getelementptr %struct.sba_request, ptr %call.i125.i, i32 0, i32 8, i32 %j.0131.i, i32 2
  %90 = ptrtoint ptr %cmd_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add29.i, ptr %cmd_dma_addr.i, align 4
  %flags34.i = getelementptr %struct.sba_request, ptr %call.i125.i, i32 0, i32 8, i32 %j.0131.i, i32 3
  %91 = ptrtoint ptr %flags34.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %flags34.i, align 8
  %inc.i = add nuw i32 %j.0131.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %83
  br i1 %exitcond.not.i, label %for.body18.i.for.end.i_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.body18.i.for.end.i_crit_edge:                 ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body18.i.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge
  %msg.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 6
  %92 = call ptr @memset(ptr %msg.i, i32 0, i32 24)
  %tx.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 7
  call void @dma_async_tx_descriptor_init(ptr noundef %tx.i, ptr noundef %dma_chan.i) #7
  %flags.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %94, 2
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 7, i32 4
  %95 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @sba_tx_submit, ptr %tx_submit.i, align 8
  %96 = ptrtoint ptr %resp_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %resp_dma_base.i, align 4
  %98 = ptrtoint ptr %hw_resp_size30 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hw_resp_size30, align 4
  %mul38.i = mul i32 %99, %i.0133.i
  %add39.i = add i32 %mul38.i, %97
  %phys.i = getelementptr inbounds %struct.sba_request, ptr %call.i125.i, i32 0, i32 7, i32 2
  %100 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add39.i, ptr %phys.i, align 8
  %101 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i124.i, align 4
  %call.i.i129.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i125.i, ptr noundef %102, ptr noundef %reqs_free_list.i) #7
  br i1 %call.i.i129.i, label %if.end.i.i.i, label %for.end.i.list_add_tail.exit.i_crit_edge

for.end.i.list_add_tail.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i125.i, ptr %prev.i124.i, align 4
  %104 = ptrtoint ptr %call.i125.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %reqs_free_list.i, ptr %call.i125.i, align 4
  %105 = ptrtoint ptr %prev.i126.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev.i126.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %call.i125.i, ptr %102, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.end.i.list_add_tail.exit.i_crit_edge
  %inc44.i = add nuw i32 %i.0133.i, 1
  %107 = ptrtoint ptr %max_req to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_req, align 4
  %cmp.i148 = icmp ult i32 %inc44.i, %108
  br i1 %cmp.i148, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.if.end64_crit_edge

list_add_tail.exit.i.if.end64_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

fail_free_resp_pool.i:                            ; preds = %if.then12.i, %if.end.i.fail_free_resp_pool.i_crit_edge
  %109 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mbox_dev, align 4
  %111 = ptrtoint ptr %max_resp_pool_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_resp_pool_size, align 4
  %113 = ptrtoint ptr %resp_base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %resp_base.i, align 4
  %115 = ptrtoint ptr %resp_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %resp_dma_base.i, align 4
  call void @dma_free_attrs(ptr noundef %110, i32 noundef %112, ptr noundef %114, i32 noundef %116, i32 noundef 0) #7
  br label %fail_free_mchan

if.end64:                                         ; preds = %list_add_tail.exit.i.if.end64_crit_edge, %do.body.i.if.end64_crit_edge
  %call65 = call zeroext i1 @debugfs_initialized() #7
  br i1 %call65, label %if.end67, label %if.end64.skip_debugfs_crit_edge

if.end64.skip_debugfs_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_debugfs

if.end67:                                         ; preds = %if.end64
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i149 = icmp eq ptr %120, null
  br i1 %tobool.not.i149, label %if.end.i150, label %if.end67.dev_name.exit_crit_edge

if.end67.dev_name.exit_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i150:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %118, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i150, %if.end67.dev_name.exit_crit_edge
  %retval.0.i151 = phi ptr [ %122, %if.end.i150 ], [ %120, %if.end67.dev_name.exit_crit_edge ]
  %call70 = call ptr @debugfs_create_dir(ptr noundef %retval.0.i151, ptr noundef null) #7
  %root = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 27
  %123 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call70, ptr %root, align 4
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i, align 4
  call void @debugfs_create_devm_seqfile(ptr noundef %125, ptr noundef nonnull @.str.5, ptr noundef %call70, ptr noundef nonnull @sba_debugfs_stats_show) #7
  br label %skip_debugfs

skip_debugfs:                                     ; preds = %dev_name.exit, %if.end64.skip_debugfs_crit_edge
  %call73 = call fastcc i32 @sba_async_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.end, label %fail_free_resources

do.end:                                           ; preds = %skip_debugfs
  %126 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 15, i32 5
  %128 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %129, i32 0, i32 1, i32 3
  %130 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %131, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %129, i32 0, i32 1
  %132 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i152 = phi ptr [ %133, %if.end.i.i ], [ %131, %do.end.dma_chan_name.exit_crit_edge ]
  %134 = ptrtoint ptr %ver21 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ver21, align 4
  %add80 = add i32 %135, 1
  %136 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mbox_dev, align 4
  %init_name.i153 = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %init_name.i153 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %init_name.i153, align 8
  %tobool.not.i154 = icmp eq ptr %139, null
  br i1 %tobool.not.i154, label %if.end.i155, label %dma_chan_name.exit.dev_name.exit157_crit_edge

dma_chan_name.exit.dev_name.exit157_crit_edge:    ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit157

if.end.i155:                                      ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %137, align 4
  br label %dev_name.exit157

dev_name.exit157:                                 ; preds = %if.end.i155, %dma_chan_name.exit.dev_name.exit157_crit_edge
  %retval.0.i156 = phi ptr [ %141, %if.end.i155 ], [ %139, %dma_chan_name.exit.dev_name.exit157_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %127, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i152, i32 noundef %add80, ptr noundef %retval.0.i156) #10
  br label %cleanup

fail_free_resources:                              ; preds = %skip_debugfs
  call void @__sanitizer_cov_trace_pc() #9
  %root83 = getelementptr inbounds %struct.sba_device, ptr %call.i, i32 0, i32 27
  %142 = ptrtoint ptr %root83 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %root83, align 4
  call void @debugfs_remove(ptr noundef %143) #7
  call fastcc void @sba_freeup_channel_resources(ptr noundef nonnull %call.i)
  br label %fail_free_mchan

fail_free_mchan:                                  ; preds = %fail_free_resources, %fail_free_resp_pool.i, %if.end59.fail_free_mchan_crit_edge, %if.end54.fail_free_mchan_crit_edge, %if.end48.fail_free_mchan_crit_edge, %if.then45
  %ret.0 = phi i32 [ %31, %if.then45 ], [ %call.i147, %if.end48.fail_free_mchan_crit_edge ], [ %call73, %fail_free_resources ], [ -19, %if.end54.fail_free_mchan_crit_edge ], [ -12, %fail_free_resp_pool.i ], [ -12, %if.end59.fail_free_mchan_crit_edge ]
  %144 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mchan, align 4
  call void @mbox_free_channel(ptr noundef %145) #7
  br label %cleanup

cleanup:                                          ; preds = %fail_free_mchan, %dev_name.exit157, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_free_mchan ], [ 0, %dev_name.exit157 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sba_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_dev = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 14
  tail call void @dma_async_device_unregister(ptr noundef %dma_dev) #7
  %root = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %dma_chan.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_chan.i, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.sba_freeup_channel_resources.exit_crit_edge, label %if.then.i.i

entry.sba_freeup_channel_resources.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_freeup_channel_resources.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 %7(ptr noundef %dma_chan.i) #7
  br label %sba_freeup_channel_resources.exit

sba_freeup_channel_resources.exit:                ; preds = %if.then.i.i, %entry.sba_freeup_channel_resources.exit_crit_edge
  %mbox_dev.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %mbox_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_dev.i, align 4
  %max_cmds_pool_size.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %max_cmds_pool_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_cmds_pool_size.i, align 4
  %cmds_base.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %cmds_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmds_base.i, align 4
  %cmds_dma_base.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %cmds_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmds_dma_base.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #7
  %16 = ptrtoint ptr %mbox_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbox_dev.i, align 4
  %max_resp_pool_size.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %max_resp_pool_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_resp_pool_size.i, align 4
  %resp_base.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %resp_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resp_base.i, align 4
  %resp_dma_base.i = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %resp_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp_dma_base.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #7
  %24 = ptrtoint ptr %resp_base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %resp_base.i, align 4
  %25 = ptrtoint ptr %resp_dma_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %resp_dma_base.i, align 4
  %mchan = getelementptr inbounds %struct.sba_device, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mchan, align 4
  tail call void @mbox_free_channel(ptr noundef %27) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sba_receive_message(ptr nocapture noundef readnone %cl, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.brcm_message, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %sba1 = getelementptr inbounds %struct.sba_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sba1, align 8
  %error = getelementptr inbounds %struct.brcm_message, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 15, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %do.end.dma_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i, i32 noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %dma_chan_name.exit, %entry.if.end_crit_edge
  %first1.i = getelementptr inbounds %struct.sba_request, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %first1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %first1.i, align 8
  %next_pending_count.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %next_pending_count.i, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_pending_count.i, ptr %next_pending_count.i, i32 1, ptr elementtype(i32) %next_pending_count.i) #7, !srcloc !88
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.sba_process_received_request.exit_crit_edge

if.end.sba_process_received_request.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_process_received_request.exit

if.then.i:                                        ; preds = %if.end
  %tx2.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %tx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp slt i32 %18, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !90

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 426, i32 noundef 9, ptr noundef null) #7
  %19 = ptrtoint ptr %tx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i = load i32, ptr %tx2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %20 = phi i32 [ %.pr.i, %do.end.i ], [ %18, %if.then.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp24.i = icmp sgt i32 %20, 0
  br i1 %cmp24.i, label %do.body27.i, label %if.end.i.if.end37.i_crit_edge

if.end.i.if.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

do.body27.i:                                      ; preds = %if.end.i
  %reqs_lock.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 20
  %call31.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i) #7
  %21 = ptrtoint ptr %tx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.i = icmp slt i32 %22, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !90

do.body2.i.i:                                     ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !91
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %do.body27.i
  %chan.i.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %completed_cookie.i.i, align 4
  %26 = ptrtoint ptr %tx2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tx2.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i, i32 noundef %call31.i) #7
  %callback.i.i.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 7, i32 6
  %27 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 7, i32 7
  %29 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 7, i32 8
  %31 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %callback_param.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  %33 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %30(ptr noundef %32, ptr noundef nonnull %dummy_result.i.i.i) #7
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.else.i.i.i:                                    ; preds = %dma_cookie_complete.exit.i
  %tobool4.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %28(ptr noundef %32) #7
  br label %dmaengine_desc_get_callback_invoke.exit.i

dmaengine_desc_get_callback_invoke.exit.i:        ; preds = %if.then5.i.i.i, %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  %unmap.i.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 7, i32 9
  %34 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unmap.i.i, align 4
  %tobool.not.i.i8 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i8, label %dmaengine_desc_get_callback_invoke.exit.i.dma_descriptor_unmap.exit.i_crit_edge, label %if.end.i.i9

dmaengine_desc_get_callback_invoke.exit.i.dma_descriptor_unmap.exit.i_crit_edge: ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_descriptor_unmap.exit.i

if.end.i.i9:                                      ; preds = %dmaengine_desc_get_callback_invoke.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dmaengine_unmap_put(ptr noundef nonnull %35) #7
  %36 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %unmap.i.i, align 4
  br label %dma_descriptor_unmap.exit.i

dma_descriptor_unmap.exit.i:                      ; preds = %if.end.i.i9, %dmaengine_desc_get_callback_invoke.exit.i.dma_descriptor_unmap.exit.i_crit_edge
  %37 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %callback.i.i.i, align 4
  %38 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %callback_result.i.i.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %dma_descriptor_unmap.exit.i, %if.end.i.if.end37.i_crit_edge
  call void @dma_run_dependencies(ptr noundef %tx2.i) #7
  %reqs_lock45.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 20
  %call47.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock45.i) #7
  %next.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 4
  %39 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn90.i = load ptr, ptr %next.i, align 4
  %cmp56.not91.i = icmp eq ptr %.pn90.i, %next.i
  br i1 %cmp56.not91.i, label %if.end37.i.for.end.i_crit_edge, label %if.end37.i.for.body.i_crit_edge

if.end37.i.for.body.i_crit_edge:                  ; preds = %if.end37.i
  br label %for.body.i

if.end37.i.for.end.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end37.i.for.body.i_crit_edge
  %.pn92.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn90.i, %if.end37.i.for.body.i_crit_edge ]
  %nreq.0.i = getelementptr i8, ptr %.pn92.i, i32 -20
  call fastcc void @_sba_free_request(ptr noundef %3, ptr noundef %nreq.0.i) #7
  %40 = ptrtoint ptr %.pn92.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn92.i, align 4
  %cmp56.not.i = icmp eq ptr %.pn.i, %next.i
  br i1 %cmp56.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end37.i.for.end.i_crit_edge
  %41 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %next.i, ptr %next.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sba_request, ptr %15, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %next.i, ptr %prev.i.i, align 4
  call fastcc void @_sba_free_request(ptr noundef %3, ptr noundef %15) #7
  call fastcc void @_sba_process_pending_requests(ptr noundef %3) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock45.i, i32 noundef %call47.i) #7
  br label %sba_process_received_request.exit

sba_process_received_request.exit:                ; preds = %for.end.i, %if.end.sba_process_received_request.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sba_debugfs_stats_show(ptr noundef %file, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %reqs_lock.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i) #7
  %reqs_free_list.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %reqs_free_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %req.0124.i = load ptr, ptr %reqs_free_list.i, align 4
  %cmp7.not125.i = icmp eq ptr %req.0124.i, %reqs_free_list.i
  br i1 %cmp7.not125.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %req.0127.i = phi ptr [ %req.0.i, %for.body.i.for.body.i_crit_edge ], [ %req.0124.i, %entry.for.body.i_crit_edge ]
  %free_count.0126.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.sba_request, ptr %req.0127.i, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = lshr i32 %6, 1
  %and.i.lobit.i = and i32 %and.i.i, 1
  %spec.select.i = add i32 %and.i.lobit.i, %free_count.0126.i
  %7 = ptrtoint ptr %req.0127.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %req.0.i = load ptr, ptr %req.0127.i, align 4
  %cmp7.not.i = icmp eq ptr %req.0.i, %reqs_free_list.i
  br i1 %cmp7.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %free_count.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  %reqs_alloc_list.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 22
  br label %for.cond19.i

for.cond19.i:                                     ; preds = %for.cond19.i.for.cond19.i_crit_edge, %for.end.i
  %alloced_count.0.i = phi i32 [ 0, %for.end.i ], [ %inc26.i, %for.cond19.i.for.cond19.i_crit_edge ]
  %req.1.in.i = phi ptr [ %reqs_alloc_list.i, %for.end.i ], [ %req.1.i, %for.cond19.i.for.cond19.i_crit_edge ]
  %8 = ptrtoint ptr %req.1.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %req.1.i = load ptr, ptr %req.1.in.i, align 4
  %cmp22.not.i = icmp eq ptr %req.1.i, %reqs_alloc_list.i
  %inc26.i = add i32 %alloced_count.0.i, 1
  br i1 %cmp22.not.i, label %for.end33.i, label %for.cond19.i.for.cond19.i_crit_edge

for.cond19.i.for.cond19.i_crit_edge:              ; preds = %for.cond19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.i

for.end33.i:                                      ; preds = %for.cond19.i
  %reqs_pending_list.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 23
  br label %for.cond38.i

for.cond38.i:                                     ; preds = %for.cond38.i.for.cond38.i_crit_edge, %for.end33.i
  %pending_count.0.i = phi i32 [ 0, %for.end33.i ], [ %inc45.i, %for.cond38.i.for.cond38.i_crit_edge ]
  %req.2.in.i = phi ptr [ %reqs_pending_list.i, %for.end33.i ], [ %req.2.i, %for.cond38.i.for.cond38.i_crit_edge ]
  %9 = ptrtoint ptr %req.2.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %req.2.i = load ptr, ptr %req.2.in.i, align 4
  %cmp41.not.i = icmp eq ptr %req.2.i, %reqs_pending_list.i
  %inc45.i = add i32 %pending_count.0.i, 1
  br i1 %cmp41.not.i, label %for.end52.i, label %for.cond38.i.for.cond38.i_crit_edge

for.cond38.i.for.cond38.i_crit_edge:              ; preds = %for.cond38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond38.i

for.end52.i:                                      ; preds = %for.cond38.i
  %reqs_active_list.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 24
  br label %for.cond57.i

for.cond57.i:                                     ; preds = %for.cond57.i.for.cond57.i_crit_edge, %for.end52.i
  %active_count.0.i = phi i32 [ 0, %for.end52.i ], [ %inc64.i, %for.cond57.i.for.cond57.i_crit_edge ]
  %req.3.in.i = phi ptr [ %reqs_active_list.i, %for.end52.i ], [ %req.3.i, %for.cond57.i.for.cond57.i_crit_edge ]
  %10 = ptrtoint ptr %req.3.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %req.3.i = load ptr, ptr %req.3.in.i, align 4
  %cmp60.not.i = icmp eq ptr %req.3.i, %reqs_active_list.i
  %inc64.i = add i32 %active_count.0.i, 1
  br i1 %cmp60.not.i, label %for.end71.i, label %for.cond57.i.for.cond57.i_crit_edge

for.cond57.i.for.cond57.i_crit_edge:              ; preds = %for.cond57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond57.i

for.end71.i:                                      ; preds = %for.cond57.i
  %reqs_aborted_list.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 25
  br label %for.cond76.i

for.cond76.i:                                     ; preds = %for.cond76.i.for.cond76.i_crit_edge, %for.end71.i
  %aborted_count.0.i = phi i32 [ 0, %for.end71.i ], [ %inc83.i, %for.cond76.i.for.cond76.i_crit_edge ]
  %req.4.in.i = phi ptr [ %reqs_aborted_list.i, %for.end71.i ], [ %req.4.i, %for.cond76.i.for.cond76.i_crit_edge ]
  %11 = ptrtoint ptr %req.4.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %req.4.i = load ptr, ptr %req.4.in.i, align 4
  %cmp79.not.i = icmp eq ptr %req.4.i, %reqs_aborted_list.i
  %inc83.i = add i32 %aborted_count.0.i, 1
  br i1 %cmp79.not.i, label %sba_write_stats_in_seqfile.exit, label %for.cond76.i.for.cond76.i_crit_edge

for.cond76.i.for.cond76.i_crit_edge:              ; preds = %for.cond76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond76.i

sba_write_stats_in_seqfile.exit:                  ; preds = %for.cond76.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i, i32 noundef %call2.i) #7
  %max_req.i = getelementptr inbounds %struct.sba_device, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %max_req.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_req.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.20, i32 noundef %13) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.21, i32 noundef %free_count.0.lcssa.i) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.22, i32 noundef %alloced_count.0.i) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.23, i32 noundef %pending_count.0.i) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.24, i32 noundef %active_count.0.i) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i32 noundef %aborted_count.0.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sba_async_register(ptr noundef %sba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_dev1 = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14
  %dma_chan = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15
  %0 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dma_dev1, ptr %dma_chan, align 4
  %cookie.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15, i32 2
  %1 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %completed_cookie.i, align 4
  %cap_mask = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 6
  %3 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 8, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cap_mask) #7
  %mbox_dev = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 13
  %4 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox_dev, align 4
  %dev = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 29
  %7 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sba_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_terminate_all = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 47
  %8 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sba_device_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 50
  %9 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sba_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 49
  %10 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sba_tx_status, ptr %device_tx_status, align 4
  %11 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cap_mask, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device_prep_dma_interrupt = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 38
  %14 = ptrtoint ptr %device_prep_dma_interrupt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sba_prep_dma_interrupt, ptr %device_prep_dma_interrupt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %cap_mask, align 4
  %and1.i.i90 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i90)
  %tobool10.not = icmp eq i32 %and1.i.i90, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %device_prep_dma_memcpy = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 30
  %17 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sba_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %18 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %cap_mask, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %device_prep_dma_xor = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 32
  %21 = ptrtoint ptr %device_prep_dma_xor to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sba_prep_dma_xor, ptr %device_prep_dma_xor, align 4
  %max_xor_srcs = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 8
  %22 = ptrtoint ptr %max_xor_srcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_xor_srcs, align 4
  %conv = trunc i32 %23 to i16
  %max_xor = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 8
  %24 = ptrtoint ptr %max_xor to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %max_xor, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %25 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %cap_mask, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool20.not = icmp eq i32 %27, 0
  br i1 %tobool20.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %device_prep_dma_pq = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 34
  %28 = ptrtoint ptr %device_prep_dma_pq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sba_prep_dma_pq, ptr %device_prep_dma_pq, align 4
  %max_pq_srcs = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 6
  %29 = ptrtoint ptr %max_pq_srcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_pq_srcs, align 4
  %conv.i = trunc i32 %30 to i16
  %max_pq.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 9
  %31 = ptrtoint ptr %max_pq.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %max_pq.i, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %channels = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 3
  %32 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 14, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %channels, ptr %prev.i, align 4
  %device_node = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15, i32 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %channels, ptr noundef %channels) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_add_tail.exit_crit_edge

if.end22.list_add_tail.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %device_node, ptr %prev.i, align 4
  %35 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15, i32 8, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %channels, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %device_node, ptr %channels, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end22.list_add_tail.exit_crit_edge
  %call25 = tail call i32 @dma_async_device_register(ptr noundef %dma_dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %38 = ptrtoint ptr %sba to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sba, align 4
  br i1 %tobool26.not, label %do.end32, label %do.end

do.end:                                           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.26, i32 noundef %call25) #10
  br label %cleanup

do.end32:                                         ; preds = %list_add_tail.exit
  %dev.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15, i32 5
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i96, label %do.end32.dma_chan_name.exit_crit_edge

do.end32.dma_chan_name.exit_crit_edge:            ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_chan_name.exit

if.end.i.i96:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i96, %do.end32.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %45, %if.end.i.i96 ], [ %43, %do.end32.dma_chan_name.exit_crit_edge ]
  %46 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %cap_mask, align 4
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool38.not = icmp eq i32 %48, 0
  %cond = select i1 %tobool38.not, ptr @.str.32, ptr @.str.31
  %49 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %cap_mask, align 4
  %and1.i.i99 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i99)
  %tobool41.not = icmp eq i32 %and1.i.i99, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.32, ptr @.str.33
  %51 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %cap_mask, align 4
  %53 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool45.not = icmp eq i32 %53, 0
  %cond46 = select i1 %tobool45.not, ptr @.str.32, ptr @.str.34
  %54 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %cap_mask, align 4
  %56 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool49.not = icmp eq i32 %56, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.32, ptr @.str.35
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i.i, ptr noundef nonnull %cond, ptr noundef nonnull %cond42, ptr noundef nonnull %cond46, ptr noundef nonnull %cond50) #10
  br label %cleanup

cleanup:                                          ; preds = %dma_chan_name.exit, %do.end
  ret i32 %call25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sba_freeup_channel_resources(ptr noundef %sba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15
  %0 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

entry.dmaengine_terminate_all.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %dma_chan) #7
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %entry.dmaengine_terminate_all.exit_crit_edge
  %mbox_dev = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 13
  %4 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox_dev, align 4
  %max_cmds_pool_size = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 10
  %6 = ptrtoint ptr %max_cmds_pool_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_cmds_pool_size, align 4
  %cmds_base = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 18
  %8 = ptrtoint ptr %cmds_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmds_base, align 4
  %cmds_dma_base = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 19
  %10 = ptrtoint ptr %cmds_dma_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmds_dma_base, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #7
  %12 = ptrtoint ptr %mbox_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbox_dev, align 4
  %max_resp_pool_size = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 9
  %14 = ptrtoint ptr %max_resp_pool_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_resp_pool_size, align 4
  %resp_base = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 16
  %16 = ptrtoint ptr %resp_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resp_base, align 4
  %resp_dma_base = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 17
  %18 = ptrtoint ptr %resp_dma_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resp_dma_base, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #7
  %20 = ptrtoint ptr %resp_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %resp_base, align 4
  %21 = ptrtoint ptr %resp_dma_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %resp_dma_base, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_sba_free_request(ptr noundef %sba, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 20, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !90

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 286, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.sba_request, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, -256
  %or = or i32 %and, 1
  store i32 %or, ptr %flags, align 4
  %reqs_free_list = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %10, ptr noundef %reqs_free_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req, ptr %prev.i2.i, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reqs_free_list, ptr %req, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %req, ptr %10, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %reqs_active_list = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 24
  %15 = ptrtoint ptr %reqs_active_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %reqs_active_list, align 4
  %cmp.i.not = icmp eq ptr %16, %reqs_active_list
  br i1 %cmp.i.not, label %if.then27, label %list_move_tail.exit.if.end28_crit_edge

list_move_tail.exit.if.end28_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %reqs_fence = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 21
  %17 = ptrtoint ptr %reqs_fence to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reqs_fence, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %list_move_tail.exit.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_sba_process_pending_requests(ptr noundef %sba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reqs_pending_list = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 23
  %0 = ptrtoint ptr %reqs_pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %reqs_pending_list, align 4
  %cmp.i26 = icmp eq ptr %1, %reqs_pending_list
  br i1 %cmp.i26, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 20, i32 0, i32 0, i32 4
  %reqs_active_list.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 24
  %reqs_fence.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 21
  %prev.i2.i.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 24, i32 1
  %mchan.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %39, %if.end6.while.body_crit_edge ]
  %count.027 = phi i32 [ 8, %while.body.lr.ph ], [ %dec, %if.end6.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %while.body.if.end.i_crit_edge, label %land.rhs.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %while.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !90

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 257, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %while.body.if.end.i_crit_edge
  %4 = ptrtoint ptr %reqs_active_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %reqs_active_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %reqs_active_list.i
  br i1 %cmp.i.not.i, label %if.end27.i.thread, label %if.end27.i

if.end27.i.thread:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %reqs_fence.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reqs_fence.i, align 4
  br label %if.end31.i

if.end27.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %reqs_fence.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %reqs_fence.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool29.not.i = icmp eq i8 %.pr, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end31.i_crit_edge, label %if.end27.i.while.end_crit_edge

if.end27.i.while.end_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end27.i.if.end31.i_crit_edge, %if.end27.i.thread
  %flags.i = getelementptr inbounds %struct.sba_request, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, -256
  %or.i = or i32 %and.i, 8
  store i32 %or.i, ptr %flags.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end31.i.__list_del_entry.exit.i.i_crit_edge

if.end31.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end31.i.__list_del_entry.exit.i.i_crit_edge
  %16 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %17, ptr noundef %reqs_active_list.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %2, ptr %prev.i2.i.i, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reqs_active_list.i, ptr %2, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %2, ptr %17, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and35.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %list_move_tail.exit.i.if.end_crit_edge, label %if.then37.i

list_move_tail.exit.i.if.end_crit_edge:           ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then37.i:                                      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %reqs_fence.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %reqs_fence.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then37.i, %list_move_tail.exit.i.if.end_crit_edge
  %msg.i = getelementptr inbounds %struct.sba_request, ptr %2, i32 0, i32 6
  %error.i = getelementptr inbounds %struct.sba_request, ptr %2, i32 0, i32 6, i32 3
  %25 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %error.i, align 4
  %26 = ptrtoint ptr %mchan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mchan.i, align 4
  %call.i = tail call i32 @mbox_send_message(ptr noundef %27, ptr noundef %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i14 = icmp slt i32 %call.i, 0
  br i1 %cmp.i14, label %sba_send_mbox_request.exit.thread, label %if.end.i16

sba_send_mbox_request.exit.thread:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %sba to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sba, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14, i32 noundef %call.i) #10
  br label %if.then5

if.end.i16:                                       ; preds = %if.end
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.i = icmp slt i32 %31, 0
  br i1 %cmp4.i, label %sba_send_mbox_request.exit.thread19, label %if.end6

sba_send_mbox_request.exit.thread19:              ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %sba to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sba, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.17, i32 noundef %31) #10
  %34 = ptrtoint ptr %mchan.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mchan.i, align 4
  tail call void @mbox_client_txdone(ptr noundef %35, i32 noundef %31) #7
  br label %if.then5

if.then5:                                         ; preds = %sba_send_mbox_request.exit.thread19, %sba_send_mbox_request.exit.thread
  tail call fastcc void @_sba_pending_request(ptr noundef %sba, ptr noundef %2)
  br label %while.end

if.end6:                                          ; preds = %if.end.i16
  %36 = ptrtoint ptr %mchan.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mchan.i, align 4
  tail call void @mbox_client_txdone(ptr noundef %37, i32 noundef %31) #7
  %dec = add nsw i32 %count.027, -1
  %38 = ptrtoint ptr %reqs_pending_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %reqs_pending_list, align 4
  %cmp.i = icmp eq ptr %39, %reqs_pending_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %if.then5, %if.end27.i.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_sba_pending_request(ptr noundef %sba, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 20, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !90

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 245, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.sba_request, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, -256
  %or = or i32 %and, 4
  store i32 %or, ptr %flags, align 4
  %reqs_pending_list = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %10, ptr noundef %reqs_pending_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req, ptr %prev.i2.i, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reqs_pending_list, ptr %req, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %req, ptr %10, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %reqs_active_list = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 24
  %15 = ptrtoint ptr %reqs_active_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %reqs_active_list, align 4
  %cmp.i.not = icmp eq ptr %16, %reqs_active_list
  br i1 %cmp.i.not, label %if.then27, label %list_move_tail.exit.if.end28_crit_edge

list_move_tail.exit.if.end28_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %reqs_fence = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 21
  %17 = ptrtoint ptr %reqs_fence to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reqs_fence, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %list_move_tail.exit.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sba_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !90

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -444
  %add.ptr6 = getelementptr i8, ptr %tx, i32 -56
  %reqs_lock = getelementptr i8, ptr %1, i32 80
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock) #7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #7
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  tail call fastcc void @_sba_pending_request(ptr noundef %add.ptr, ptr noundef %add.ptr6)
  %next = getelementptr i8, ptr %tx, i32 -36
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn43 = load ptr, ptr %next, align 4
  %cmp19.not44 = icmp eq ptr %.pn43, %next
  br i1 %cmp19.not44, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn43, %if.end.for.body_crit_edge ]
  %nreq.0 = getelementptr i8, ptr %.pn45, i32 -20
  tail call fastcc void @_sba_pending_request(ptr noundef %add.ptr, ptr noundef %nreq.0)
  %10 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp19.not = icmp eq ptr %.pn, %next
  br i1 %cmp19.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock, i32 noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sba_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -444
  %reqs_lock.i = getelementptr i8, ptr %dchan, i32 80
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i) #7
  %reqs_alloc_list.i = getelementptr i8, ptr %dchan, i32 128
  %0 = ptrtoint ptr %reqs_alloc_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reqs_alloc_list.i, align 4
  %cmp12.not58.i = icmp eq ptr %1, %reqs_alloc_list.i
  br i1 %cmp12.not58.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %req.059.i = phi ptr [ %req1.0.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %req.059.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %req1.0.i = load ptr, ptr %req.059.i, align 8
  tail call fastcc void @_sba_free_request(ptr noundef %add.ptr, ptr noundef %req.059.i) #7
  %cmp12.not.i = icmp eq ptr %req1.0.i, %reqs_alloc_list.i
  br i1 %cmp12.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %reqs_active_list.i = getelementptr i8, ptr %dchan, i32 144
  %3 = ptrtoint ptr %reqs_active_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reqs_active_list.i, align 4
  %cmp31.not60.i = icmp eq ptr %4, %reqs_active_list.i
  br i1 %cmp31.not60.i, label %for.end.i.sba_cleanup_nonpending_requests.exit_crit_edge, label %for.body34.lr.ph.i

for.end.i.sba_cleanup_nonpending_requests.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_cleanup_nonpending_requests.exit

for.body34.lr.ph.i:                               ; preds = %for.end.i
  %dep_map.i.i = getelementptr i8, ptr %dchan, i32 96
  %reqs_aborted_list.i.i = getelementptr i8, ptr %dchan, i32 152
  %prev.i2.i.i.i = getelementptr i8, ptr %dchan, i32 156
  %reqs_fence.i.i = getelementptr i8, ptr %dchan, i32 124
  br label %for.body34.i

for.body34.i:                                     ; preds = %_sba_abort_request.exit.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %req.161.i = phi ptr [ %4, %for.body34.lr.ph.i ], [ %req1.1.i, %_sba_abort_request.exit.i.for.body34.i_crit_edge ]
  %5 = ptrtoint ptr %req.161.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %req1.1.i = load ptr, ptr %req.161.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %for.body34.i.if.end.i.i_crit_edge, label %land.rhs.i.i

for.body34.i.if.end.i.i_crit_edge:                ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %for.body34.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !90

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 274, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %for.body34.i.if.end.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.sba_request, ptr %req.161.i, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, -256
  %or.i.i = or i32 %and.i.i, 16
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.161.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.161.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i, align 4
  %11 = ptrtoint ptr %req.161.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req.161.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %15 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req.161.i, ptr noundef %16, ptr noundef %reqs_aborted_list.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_move_tail.exit.i.i_crit_edge

__list_del_entry.exit.i.i.i.list_move_tail.exit.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %req.161.i, ptr %prev.i2.i.i.i, align 4
  %18 = ptrtoint ptr %req.161.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %reqs_aborted_list.i.i, ptr %req.161.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.161.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %req.161.i, ptr %16, align 4
  br label %list_move_tail.exit.i.i

list_move_tail.exit.i.i:                          ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_move_tail.exit.i.i_crit_edge
  %21 = ptrtoint ptr %reqs_active_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %reqs_active_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %22, %reqs_active_list.i
  br i1 %cmp.i.not.i.i, label %if.then27.i.i, label %list_move_tail.exit.i.i._sba_abort_request.exit.i_crit_edge

list_move_tail.exit.i.i._sba_abort_request.exit.i_crit_edge: ; preds = %list_move_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_sba_abort_request.exit.i

if.then27.i.i:                                    ; preds = %list_move_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %reqs_fence.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %reqs_fence.i.i, align 4
  br label %_sba_abort_request.exit.i

_sba_abort_request.exit.i:                        ; preds = %if.then27.i.i, %list_move_tail.exit.i.i._sba_abort_request.exit.i_crit_edge
  %cmp31.not.i = icmp eq ptr %req1.1.i, %reqs_active_list.i
  br i1 %cmp31.not.i, label %_sba_abort_request.exit.i.sba_cleanup_nonpending_requests.exit_crit_edge, label %_sba_abort_request.exit.i.for.body34.i_crit_edge

_sba_abort_request.exit.i.for.body34.i_crit_edge: ; preds = %_sba_abort_request.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34.i

_sba_abort_request.exit.i.sba_cleanup_nonpending_requests.exit_crit_edge: ; preds = %_sba_abort_request.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_cleanup_nonpending_requests.exit

sba_cleanup_nonpending_requests.exit:             ; preds = %_sba_abort_request.exit.i.sba_cleanup_nonpending_requests.exit_crit_edge, %for.end.i.sba_cleanup_nonpending_requests.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i, i32 noundef %call2.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sba_device_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -444
  %reqs_lock.i = getelementptr i8, ptr %dchan, i32 80
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i) #7
  %reqs_pending_list.i = getelementptr i8, ptr %dchan, i32 136
  %0 = ptrtoint ptr %reqs_pending_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reqs_pending_list.i, align 4
  %cmp12.not27.i = icmp eq ptr %1, %reqs_pending_list.i
  br i1 %cmp12.not27.i, label %entry.sba_cleanup_pending_requests.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sba_cleanup_pending_requests.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_cleanup_pending_requests.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %req.028.i = phi ptr [ %req1.0.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %req.028.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %req1.0.i = load ptr, ptr %req.028.i, align 8
  tail call fastcc void @_sba_free_request(ptr noundef %add.ptr, ptr noundef %req.028.i) #7
  %cmp12.not.i = icmp eq ptr %req1.0.i, %reqs_pending_list.i
  br i1 %cmp12.not.i, label %for.body.i.sba_cleanup_pending_requests.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.sba_cleanup_pending_requests.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_cleanup_pending_requests.exit

sba_cleanup_pending_requests.exit:                ; preds = %for.body.i.sba_cleanup_pending_requests.exit_crit_edge, %entry.sba_cleanup_pending_requests.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i, i32 noundef %call2.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sba_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -444
  %reqs_lock = getelementptr i8, ptr %dchan, i32 80
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock) #7
  tail call fastcc void @_sba_process_pending_requests(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sba_tx_status(ptr nocapture noundef readonly %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !92
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %mchan = getelementptr i8, ptr %dchan, i32 -372
  %8 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mchan, align 4
  %call1 = tail call zeroext i1 @mbox_client_peek_data(ptr noundef %9) #7
  %10 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie1.i, align 4
  %12 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !92
  br i1 %tobool.not.i, label %if.end.if.end.i19_crit_edge, label %if.then.i15

if.end.if.end.i19_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i19

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %txstate, align 4
  %used2.i12 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %15 = ptrtoint ptr %used2.i12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %used2.i12, align 4
  %residue.i13 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %16 = ptrtoint ptr %residue.i13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %residue.i13, align 4
  %in_flight_bytes.i14 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %17 = ptrtoint ptr %in_flight_bytes.i14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %in_flight_bytes.i14, align 4
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.then.i15, %if.end.if.end.i19_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i16 = icmp sgt i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp4.not.i.i17 = icmp sge i32 %13, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp5.i.i18 = icmp slt i32 %11, %cookie
  br i1 %cmp.not.i.i16, label %if.else.i.i23, label %if.then.i.i21

if.then.i.i21:                                    ; preds = %if.end.i19
  %or.cond.i.i20 = or i1 %cmp5.i.i18, %cmp4.not.i.i17
  br i1 %or.cond.i.i20, label %if.then.i.i21.cleanup_crit_edge, label %if.then.i.i21.if.end8.i.i24_crit_edge

if.then.i.i21.if.end8.i.i24_crit_edge:            ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i24

if.then.i.i21.cleanup_crit_edge:                  ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.i23:                                    ; preds = %if.end.i19
  %or.cond16.i.i22 = and i1 %cmp5.i.i18, %cmp4.not.i.i17
  br i1 %or.cond16.i.i22, label %if.else.i.i23.cleanup_crit_edge, label %if.else.i.i23.if.end8.i.i24_crit_edge

if.else.i.i23.if.end8.i.i24_crit_edge:            ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i24

if.else.i.i23.cleanup_crit_edge:                  ; preds = %if.else.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i24:                                    ; preds = %if.else.i.i23.if.end8.i.i24_crit_edge, %if.then.i.i21.if.end8.i.i24_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i.i24, %if.else.i.i23.cleanup_crit_edge, %if.then.i.i21.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8.i.i24 ], [ 0, %if.then.i.i21.cleanup_crit_edge ], [ 0, %if.else.i.i23.cleanup_crit_edge ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sba_prep_dma_interrupt(ptr noundef %dchan, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -444
  %call = tail call fastcc ptr @sba_alloc_request(ptr noundef %add.ptr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %or = or i32 %1, 256
  store i32 %or, ptr %flags1, align 4
  %cmds = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 8
  %msg = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6
  %phys.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys.i, align 8
  %sba.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %sba.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sba.i, align 8
  %hw_resp_size.i = getelementptr inbounds %struct.sba_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hw_resp_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_resp_size.i, align 4
  %and1.i.i = and i32 %7, 65535
  %conv2.i.i = zext i32 %and1.i.i to i64
  %shl4.i.i = shl nuw nsw i64 %conv2.i.i, 32
  %or.i78.i = or i64 %shl4.i.i, 562949953421321
  %8 = ptrtoint ptr %cmds to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or.i78.i, ptr %cmds, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %or.i78.i) #7
  %cmd_dma.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 1
  %10 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_dma.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %11, align 8
  %flags.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 2, ptr %flags.i, align 8
  %data.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 6
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %data.i, align 8
  %15 = ptrtoint ptr %sba.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sba.i, align 8
  %hw_resp_size7.i = getelementptr inbounds %struct.sba_device, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %hw_resp_size7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_resp_size7.i, align 4
  %data_len.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 6, i32 1
  %19 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %data_len.i, align 4
  %incdec.ptr.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 6, i32 1, i32 0, i32 1
  %20 = load i32, ptr %hw_resp_size7.i, align 4
  %and1.i79.i = and i32 %20, 65535
  %conv2.i80.i = zext i32 %and1.i79.i to i64
  %shl4.i81.i = shl nuw nsw i64 %conv2.i80.i, 32
  %or.i86.i = or i64 %shl4.i81.i, 65548
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or.i86.i, ptr %incdec.ptr.i, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %or.i86.i) #7
  %cmd_dma18.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 6, i32 2
  %23 = ptrtoint ptr %cmd_dma18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_dma18.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %22, ptr %24, align 8
  %flags19.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 7
  %26 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1, ptr %flags19.i, align 8
  %27 = ptrtoint ptr %sba.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sba.i, align 8
  %hw_resp_size21.i = getelementptr inbounds %struct.sba_device, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %hw_resp_size21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_resp_size21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end.sba_fillup_interrupt_msg.exit_crit_edge, label %if.then.i

if.end.sba_fillup_interrupt_msg.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_fillup_interrupt_msg.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 9, ptr %flags19.i, align 8
  %resp.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 7, i32 2
  %32 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %3, ptr %resp.i, align 8
  %33 = ptrtoint ptr %hw_resp_size21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_resp_size21.i, align 4
  %resp_len.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 7, i32 3
  %35 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %resp_len.i, align 4
  br label %sba_fillup_interrupt_msg.exit

sba_fillup_interrupt_msg.exit:                    ; preds = %if.then.i, %if.end.sba_fillup_interrupt_msg.exit_crit_edge
  %36 = ptrtoint ptr %flags19.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %flags19.i, align 8
  %or26.i = or i64 %37, 16
  store i64 %or26.i, ptr %flags19.i, align 8
  %data27.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 7, i32 4
  %38 = ptrtoint ptr %data27.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %3, ptr %data27.i, align 8
  %39 = ptrtoint ptr %sba.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sba.i, align 8
  %hw_resp_size29.i = getelementptr inbounds %struct.sba_device, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %hw_resp_size29.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_resp_size29.i, align 4
  %data_len30.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 7, i32 5
  %43 = ptrtoint ptr %data_len30.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data_len30.i, align 4
  %44 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %msg, align 4
  %45 = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cmds, ptr %45, align 4
  %cmds_count.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %cmds_count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %cmds_count.i, align 4
  %ctx.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call, ptr %ctx.i, align 4
  %error.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 3
  %49 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %error.i, align 4
  %tx = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 7
  %flags2 = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %flags, ptr %flags2, align 4
  %51 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -16, ptr %tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %sba_fillup_interrupt_msg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %tx, %sba_fillup_interrupt_msg.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sba_prep_dma_memcpy(ptr noundef %dchan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -444
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not38 = icmp eq i32 %len, 0
  br i1 %tobool.not38, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %hw_buf_size = getelementptr i8, ptr %dchan, i32 -432
  %and.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %first.041 = phi ptr [ null, %while.body.lr.ph ], [ %first.1, %if.end8.while.body_crit_edge ]
  %len.addr.040 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end8.while.body_crit_edge ]
  %off.039 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end8.while.body_crit_edge ]
  %0 = ptrtoint ptr %hw_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_buf_size, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %len.addr.040, i32 %1)
  %call.i = tail call fastcc ptr @sba_alloc_request(ptr noundef %add.ptr) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %while.body
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags3.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags3.i, align 4
  %or.i = or i32 %4, 256
  store i32 %or.i, ptr %flags3.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %cmds.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 8
  %msg.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6
  %phys.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys.i.i, align 8
  %and1.i.i.i = and i32 %2, 65535
  %conv2.i.i.i = zext i32 %and1.i.i.i to i64
  %shl4.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 32
  %or.i69.i.i = or i64 %shl4.i.i.i, 562949953421321
  %7 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or.i69.i.i, ptr %cmds.i, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %or.i69.i.i) #7
  %cmd_dma.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 1
  %9 = ptrtoint ptr %cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_dma.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %8, ptr %10, align 8
  %flags.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2, ptr %flags.i.i, align 8
  %add.i.i = add i32 %off.039, %src
  %data.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 6
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i.i, ptr %data.i.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 1
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %2, ptr %data_len.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 1, i32 0, i32 1
  %or.i77.i.i = or i64 %shl4.i.i.i, 65548
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or.i77.i.i, ptr %incdec.ptr.i.i, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %or.i77.i.i) #7
  %cmd_dma14.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 2
  %17 = ptrtoint ptr %cmd_dma14.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd_dma14.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %16, ptr %18, align 8
  %flags15.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 7
  %20 = ptrtoint ptr %flags15.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1, ptr %flags15.i.i, align 8
  %sba.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %sba.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sba.i.i, align 8
  %hw_resp_size.i.i = getelementptr inbounds %struct.sba_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %hw_resp_size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_resp_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.end4.i.if.end5_crit_edge, label %if.then.i.i

if.end4.i.if.end5_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %flags15.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 9, ptr %flags15.i.i, align 8
  %resp.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 7, i32 2
  %26 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %6, ptr %resp.i.i, align 8
  %27 = ptrtoint ptr %hw_resp_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_resp_size.i.i, align 4
  %resp_len.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 7, i32 3
  %29 = ptrtoint ptr %resp_len.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %resp_len.i.i, align 4
  br label %if.end5

if.then:                                          ; preds = %while.body
  %tobool3.not = icmp eq ptr %first.041, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.then
  %sba1.i = getelementptr inbounds %struct.sba_request, ptr %first.041, i32 0, i32 1
  %30 = ptrtoint ptr %sba1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sba1.i, align 8
  %reqs_lock.i = getelementptr inbounds %struct.sba_device, ptr %31, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i) #7
  tail call fastcc void @_sba_free_request(ptr noundef %31, ptr noundef nonnull %first.041) #7
  %next.i = getelementptr inbounds %struct.sba_request, ptr %first.041, i32 0, i32 4
  %32 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn26.i = load ptr, ptr %next.i, align 4
  %cmp10.not27.i = icmp eq ptr %.pn26.i, %next.i
  br i1 %cmp10.not27.i, label %if.then4.sba_free_chained_requests.exit_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.sba_free_chained_requests.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_free_chained_requests.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn26.i, %if.then4.for.body.i_crit_edge ]
  %nreq.0.i = getelementptr i8, ptr %.pn28.i, i32 -20
  tail call fastcc void @_sba_free_request(ptr noundef %31, ptr noundef %nreq.0.i) #7
  %33 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i, %next.i
  br i1 %cmp10.not.i, label %for.body.i.sba_free_chained_requests.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.sba_free_chained_requests.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_free_chained_requests.exit

sba_free_chained_requests.exit:                   ; preds = %for.body.i.sba_free_chained_requests.exit_crit_edge, %if.then4.sba_free_chained_requests.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i, i32 noundef %call3.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.then.i.i, %if.end4.i.if.end5_crit_edge
  %34 = ptrtoint ptr %flags15.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %flags15.i.i, align 8
  %or20.i.i = or i64 %35, 16
  store i64 %or20.i.i, ptr %flags15.i.i, align 8
  %add21.i.i = add i32 %off.039, %dst
  %data22.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 7, i32 4
  %36 = ptrtoint ptr %data22.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add21.i.i, ptr %data22.i.i, align 8
  %data_len23.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 7, i32 5
  %37 = ptrtoint ptr %data_len23.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %2, ptr %data_len23.i.i, align 4
  %38 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %msg.i, align 4
  %39 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cmds.i, ptr %39, align 4
  %cmds_count.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %cmds_count.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %cmds_count.i.i, align 4
  %ctx.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 2
  %42 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %ctx.i.i, align 4
  %error.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %error.i.i, align 4
  %tx.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7
  %flags5.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %flags, ptr %flags5.i, align 4
  %45 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -16, ptr %tx.i, align 8
  %tobool6.not = icmp eq ptr %first.041, null
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  %46 = ptrtoint ptr %sba.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sba.i.i, align 8
  %reqs_lock.i34 = getelementptr inbounds %struct.sba_device, ptr %47, i32 0, i32 20
  %call3.i35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i34) #7
  %next.i36 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 4
  %next6.i = getelementptr inbounds %struct.sba_request, ptr %first.041, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.sba_request, ptr %first.041, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next.i36, ptr noundef %49, ptr noundef %next6.i) #7
  br i1 %call.i.i14.i, label %if.end.i.i.i, label %if.then7.sba_chain_request.exit_crit_edge

if.then7.sba_chain_request.exit_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_chain_request.exit

if.end.i.i.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %next.i36, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %next.i36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %next6.i, ptr %next.i36, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %next.i36, ptr %49, align 4
  br label %sba_chain_request.exit

sba_chain_request.exit:                           ; preds = %if.end.i.i.i, %if.then7.sba_chain_request.exit_crit_edge
  %first7.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 3
  %54 = ptrtoint ptr %first7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %first.041, ptr %first7.i, align 8
  %next_pending_count.i = getelementptr inbounds %struct.sba_request, ptr %first.041, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %next_pending_count.i, i32 1, i32 3, i32 1) #7
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_pending_count.i, ptr %next_pending_count.i, i32 1, ptr elementtype(i32) %next_pending_count.i) #7, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i34, i32 noundef %call3.i35) #7
  br label %if.end8

if.end8:                                          ; preds = %sba_chain_request.exit, %if.end5.if.end8_crit_edge
  %first.1 = phi ptr [ %first.041, %sba_chain_request.exit ], [ %call.i, %if.end5.if.end8_crit_edge ]
  %add = add i32 %2, %off.039
  %sub = sub i32 %len.addr.040, %2
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end8.while.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %entry.while.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %first.1, %if.end8.while.end_crit_edge ]
  %tobool9.not = icmp eq ptr %first.0.lcssa, null
  %tx = getelementptr inbounds %struct.sba_request, ptr %first.0.lcssa, i32 0, i32 7
  %spec.select = select i1 %tobool9.not, ptr null, ptr %tx
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sba_free_chained_requests.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %while.end ], [ null, %sba_free_chained_requests.exit ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sba_prep_dma_xor(ptr noundef %dchan, i32 noundef %dst, ptr nocapture noundef readonly %src, i32 noundef %src_cnt, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -444
  %max_xor_srcs = getelementptr i8, ptr %dchan, i32 -412
  %0 = ptrtoint ptr %max_xor_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_xor_srcs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %src_cnt)
  %cmp = icmp ult i32 %1, %src_cnt
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader, !prof !90

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not45 = icmp eq i32 %len, 0
  br i1 %tobool2.not45, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %hw_buf_size = getelementptr i8, ptr %dchan, i32 -432
  %and.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %src_cnt)
  %cmp116.i.i = icmp ugt i32 %src_cnt, 1
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %first.049 = phi ptr [ null, %while.body.lr.ph ], [ %first.1, %if.end13.while.body_crit_edge ]
  %len.addr.048 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end13.while.body_crit_edge ]
  %off.046 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end13.while.body_crit_edge ]
  %2 = ptrtoint ptr %hw_buf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_buf_size, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %len.addr.048, i32 %3)
  %call.i = tail call fastcc ptr @sba_alloc_request(ptr noundef %add.ptr) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then6, label %if.end.i

if.end.i:                                         ; preds = %while.body
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags3.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags3.i, align 4
  %or.i = or i32 %6, 256
  store i32 %or.i, ptr %flags3.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %cmds.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 8
  %msg.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6
  %phys.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phys.i.i, align 8
  %and1.i.i.i = and i32 %4, 65535
  %conv2.i.i.i = zext i32 %and1.i.i.i to i64
  %shl4.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 32
  %or.i101.i.i = or i64 %shl4.i.i.i, 562949953421321
  %9 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or.i101.i.i, ptr %cmds.i, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %or.i101.i.i) #7
  %cmd_dma.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 1
  %11 = ptrtoint ptr %cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_dma.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %12, align 8
  %flags.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 3
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 2, ptr %flags.i.i, align 8
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src, align 4
  %add.i.i = add i32 %16, %off.046
  %data.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 6
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i.i, ptr %data.i.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 1
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %4, ptr %data_len.i.i, align 4
  %cmdsp.0115.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 1, i32 0, i32 1
  br i1 %cmp116.i.i, label %for.body.lr.ph.i.i, label %if.end4.i.for.end.i.i_crit_edge

if.end4.i.for.end.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end4.i
  %or.i106.i.i = or i64 %shl4.i.i.i, 562949953421322
  %19 = tail call i64 @llvm.bswap.i64(i64 %or.i106.i.i) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cmdsp.0119.i.i = phi ptr [ %cmdsp.0115.i.i, %for.body.lr.ph.i.i ], [ %cmdsp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %cmds.pn118.i.i = phi ptr [ %cmds.i, %for.body.lr.ph.i.i ], [ %cmdsp.0119.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.0117.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %cmdsp.0119.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or.i106.i.i, ptr %cmdsp.0119.i.i, align 8
  %cmd_dma13.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn118.i.i, i32 1, i32 1
  %21 = ptrtoint ptr %cmd_dma13.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_dma13.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %19, ptr %22, align 8
  %flags14.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn118.i.i, i32 1, i32 3
  %24 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 2, ptr %flags14.i.i, align 8
  %arrayidx15.i.i = getelementptr i32, ptr %src, i32 %i.0117.i.i
  %25 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15.i.i, align 4
  %add16.i.i = add i32 %26, %off.046
  %data17.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn118.i.i, i32 1, i32 6
  %27 = ptrtoint ptr %data17.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add16.i.i, ptr %data17.i.i, align 8
  %data_len18.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn118.i.i, i32 1, i32 7
  %28 = ptrtoint ptr %data_len18.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %4, ptr %data_len18.i.i, align 4
  %inc.i.i = add nuw i32 %i.0117.i.i, 1
  %cmdsp.0.i.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.0119.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %src_cnt
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end4.i.for.end.i.i_crit_edge
  %cmds.pn.lcssa.i.i = phi ptr [ %cmds.i, %if.end4.i.for.end.i.i_crit_edge ], [ %cmdsp.0119.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %cmdsp.0.lcssa.i.i = phi ptr [ %cmdsp.0115.i.i, %if.end4.i.for.end.i.i_crit_edge ], [ %cmdsp.0.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %or.i114.i.i = or i64 %shl4.i.i.i, 65548
  %29 = ptrtoint ptr %cmdsp.0.lcssa.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.i114.i.i, ptr %cmdsp.0.lcssa.i.i, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %or.i114.i.i) #7
  %cmd_dma28.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn.lcssa.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %cmd_dma28.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd_dma28.i.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %32, align 8
  %flags29.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn.lcssa.i.i, i32 1, i32 3
  %34 = ptrtoint ptr %flags29.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1, ptr %flags29.i.i, align 8
  %sba.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %sba.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sba.i.i, align 8
  %hw_resp_size.i.i = getelementptr inbounds %struct.sba_device, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %hw_resp_size.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_resp_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end10_crit_edge, label %if.then.i.i

for.end.i.i.if.end10_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %flags29.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 9, ptr %flags29.i.i, align 8
  %resp.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn.lcssa.i.i, i32 1, i32 4
  %40 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %8, ptr %resp.i.i, align 8
  %41 = ptrtoint ptr %sba.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sba.i.i, align 8
  %hw_resp_size32.i.i = getelementptr inbounds %struct.sba_device, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %hw_resp_size32.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_resp_size32.i.i, align 4
  %resp_len.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn.lcssa.i.i, i32 1, i32 5
  %45 = ptrtoint ptr %resp_len.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %resp_len.i.i, align 4
  br label %if.end10

if.then6:                                         ; preds = %while.body
  %tobool7.not = icmp eq ptr %first.049, null
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.then8

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  %sba1.i = getelementptr inbounds %struct.sba_request, ptr %first.049, i32 0, i32 1
  %46 = ptrtoint ptr %sba1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sba1.i, align 8
  %reqs_lock.i = getelementptr inbounds %struct.sba_device, ptr %47, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i) #7
  tail call fastcc void @_sba_free_request(ptr noundef %47, ptr noundef nonnull %first.049) #7
  %next.i = getelementptr inbounds %struct.sba_request, ptr %first.049, i32 0, i32 4
  %48 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn26.i = load ptr, ptr %next.i, align 4
  %cmp10.not27.i = icmp eq ptr %.pn26.i, %next.i
  br i1 %cmp10.not27.i, label %if.then8.sba_free_chained_requests.exit_crit_edge, label %if.then8.for.body.i_crit_edge

if.then8.for.body.i_crit_edge:                    ; preds = %if.then8
  br label %for.body.i

if.then8.sba_free_chained_requests.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_free_chained_requests.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then8.for.body.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn26.i, %if.then8.for.body.i_crit_edge ]
  %nreq.0.i = getelementptr i8, ptr %.pn28.i, i32 -20
  tail call fastcc void @_sba_free_request(ptr noundef %47, ptr noundef %nreq.0.i) #7
  %49 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i, %next.i
  br i1 %cmp10.not.i, label %for.body.i.sba_free_chained_requests.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.sba_free_chained_requests.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_free_chained_requests.exit

sba_free_chained_requests.exit:                   ; preds = %for.body.i.sba_free_chained_requests.exit_crit_edge, %if.then8.sba_free_chained_requests.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i, i32 noundef %call3.i) #7
  br label %cleanup

if.end10:                                         ; preds = %if.then.i.i, %for.end.i.i.if.end10_crit_edge
  %50 = ptrtoint ptr %flags29.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %flags29.i.i, align 8
  %or34.i.i = or i64 %51, 16
  store i64 %or34.i.i, ptr %flags29.i.i, align 8
  %add35.i.i = add i32 %off.046, %dst
  %data36.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn.lcssa.i.i, i32 1, i32 6
  %52 = ptrtoint ptr %data36.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add35.i.i, ptr %data36.i.i, align 8
  %data_len37.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn.lcssa.i.i, i32 1, i32 7
  %53 = ptrtoint ptr %data_len37.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %4, ptr %data_len37.i.i, align 4
  %incdec.ptr38.i.i = getelementptr %struct.brcm_sba_command, ptr %cmds.pn.lcssa.i.i, i32 2
  %54 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %msg.i, align 4
  %55 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cmds.i, ptr %55, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr38.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %cmds.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 40
  %cmds_count.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %cmds_count.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.ptr.div.i.i, ptr %cmds_count.i.i, align 4
  %ctx.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 2
  %58 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %ctx.i.i, align 4
  %error.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 3
  %59 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %error.i.i, align 4
  %tx.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7
  %flags5.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %flags, ptr %flags5.i, align 4
  %61 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -16, ptr %tx.i, align 8
  %tobool11.not = icmp eq ptr %first.049, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  %62 = ptrtoint ptr %sba.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sba.i.i, align 8
  %reqs_lock.i41 = getelementptr inbounds %struct.sba_device, ptr %63, i32 0, i32 20
  %call3.i42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i41) #7
  %next.i43 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 4
  %next6.i = getelementptr inbounds %struct.sba_request, ptr %first.049, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.sba_request, ptr %first.049, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next.i43, ptr noundef %65, ptr noundef %next6.i) #7
  br i1 %call.i.i14.i, label %if.end.i.i.i, label %if.then12.sba_chain_request.exit_crit_edge

if.then12.sba_chain_request.exit_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_chain_request.exit

if.end.i.i.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %next.i43, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %next.i43 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %next6.i, ptr %next.i43, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %next.i43, ptr %65, align 4
  br label %sba_chain_request.exit

sba_chain_request.exit:                           ; preds = %if.end.i.i.i, %if.then12.sba_chain_request.exit_crit_edge
  %first7.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 3
  %70 = ptrtoint ptr %first7.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %first.049, ptr %first7.i, align 8
  %next_pending_count.i = getelementptr inbounds %struct.sba_request, ptr %first.049, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %next_pending_count.i, i32 1, i32 3, i32 1) #7
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_pending_count.i, ptr %next_pending_count.i, i32 1, ptr elementtype(i32) %next_pending_count.i) #7, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i41, i32 noundef %call3.i42) #7
  br label %if.end13

if.end13:                                         ; preds = %sba_chain_request.exit, %if.end10.if.end13_crit_edge
  %first.1 = phi ptr [ %first.049, %sba_chain_request.exit ], [ %call.i, %if.end10.if.end13_crit_edge ]
  %add = add i32 %4, %off.046
  %sub = sub i32 %len.addr.048, %4
  %tobool2.not = icmp eq i32 %sub, 0
  br i1 %tobool2.not, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %while.cond.preheader.while.end_crit_edge ], [ %first.1, %if.end13.while.end_crit_edge ]
  %tobool14.not = icmp eq ptr %first.0.lcssa, null
  %tx = getelementptr inbounds %struct.sba_request, ptr %first.0.lcssa, i32 0, i32 7
  %spec.select = select i1 %tobool14.not, ptr null, ptr %tx
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sba_free_chained_requests.exit, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %while.end ], [ null, %entry.cleanup_crit_edge ], [ null, %sba_free_chained_requests.exit ], [ null, %if.then6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sba_prep_dma_pq(ptr noundef %dchan, ptr noundef %dst, ptr nocapture noundef readonly %src, i32 noundef %src_cnt, ptr nocapture noundef readonly %scf, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -444
  %max_pq_srcs = getelementptr i8, ptr %dchan, i32 -420
  %0 = ptrtoint ptr %max_pq_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_pq_srcs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %src_cnt)
  %cmp = icmp ult i32 %1, %src_cnt
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader, !prof !90

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_cnt)
  %cmp2216.not = icmp eq i32 %src_cnt, 0
  br i1 %cmp2216.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_pq_coefs = getelementptr i8, ptr %dchan, i32 -424
  %2 = ptrtoint ptr %max_pq_coefs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_pq_coefs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %slow.0.off0218 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %scf, i32 %i.0217
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx3 = getelementptr [256 x i8], ptr @raid6_gflog, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4.not = icmp ule i32 %3, %conv
  %spec.select = select i1 %cmp4.not, i1 true, i1 %slow.0.off0218
  %inc = add nuw i32 %i.0217, 1
  %exitcond.not = icmp eq i32 %inc, %src_cnt
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %slow.0.off0.lcssa = phi i1 [ false, %for.cond.preheader.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %spec.select175 = select i1 %tobool8.not, ptr %dst, ptr null
  %and12 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %arrayidx15 = getelementptr i32, ptr %dst, i32 1
  %dst_q.0 = select i1 %tobool13.not, ptr %arrayidx15, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool17.not228 = icmp eq i32 %len, 0
  br i1 %tobool17.not228, label %for.end.while.end_crit_edge, label %while.body.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %hw_buf_size = getelementptr i8, ptr %dchan, i32 -432
  %tobool1.not.i.i = icmp eq ptr %spec.select175, null
  %tobool8.not.i.i = icmp eq ptr %dst_q.0, null
  %brmerge = or i1 %tobool8.not.i.i, %cmp2216.not
  br label %while.body

while.body:                                       ; preds = %if.end83.while.body_crit_edge, %while.body.lr.ph
  %first.0234 = phi ptr [ null, %while.body.lr.ph ], [ %first.6, %if.end83.while.body_crit_edge ]
  %len.addr.0233 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end83.while.body_crit_edge ]
  %off.0230 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end83.while.body_crit_edge ]
  %flags.addr.0229 = phi i32 [ %flags, %while.body.lr.ph ], [ %flags.addr.4, %if.end83.while.body_crit_edge ]
  %8 = ptrtoint ptr %hw_buf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_buf_size, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %len.addr.0233, i32 %9)
  br i1 %slow.0.off0.lcssa, label %if.then22, label %if.else74

if.then22:                                        ; preds = %while.body
  br i1 %brmerge, label %if.then22.if.end50_crit_edge, label %for.body28.lr.ph

if.then22.if.end50_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

for.body28.lr.ph:                                 ; preds = %if.then22
  %11 = ptrtoint ptr %dst_q.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_q.0, align 4
  br label %for.body28

for.body28:                                       ; preds = %for.inc34.for.body28_crit_edge, %for.body28.lr.ph
  %i.1220 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc35, %for.inc34.for.body28_crit_edge ]
  %arrayidx29 = getelementptr i32, ptr %src, i32 %i.1220
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp30 = icmp eq i32 %12, %14
  br i1 %cmp30, label %if.end37, label %for.inc34

for.inc34:                                        ; preds = %for.body28
  %inc35 = add nuw i32 %i.1220, 1
  %exitcond243.not = icmp eq i32 %inc35, %src_cnt
  br i1 %exitcond243.not, label %for.inc34.if.end50_crit_edge, label %for.inc34.for.body28_crit_edge

for.inc34.for.body28_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.inc34.if.end50_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end37:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1220, i32 %src_cnt)
  %cmp38 = icmp ult i32 %i.1220, %src_cnt
  br i1 %cmp38, label %if.then40, label %if.end37.if.end50_crit_edge

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then40:                                        ; preds = %if.end37
  %arrayidx29.le = getelementptr i32, ptr %src, i32 %i.1220
  %15 = ptrtoint ptr %arrayidx29.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx29.le, align 4
  %arrayidx42 = getelementptr i8, ptr %scf, i32 %i.1220
  %17 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx42, align 1
  %or = or i32 %flags.addr.0229, 32
  %call = tail call fastcc ptr @sba_prep_dma_pq_single_req(ptr noundef %add.ptr, i32 noundef %off.0230, ptr noundef %spec.select175, ptr noundef nonnull %dst_q.0, i32 noundef %16, i8 noundef zeroext %18, i32 noundef %10, i32 noundef %or)
  %tobool43.not = icmp eq ptr %call, null
  br i1 %tobool43.not, label %if.then40.fail_crit_edge, label %if.end45

if.then40.fail_crit_edge:                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end45:                                         ; preds = %if.then40
  %tobool46.not = icmp eq ptr %first.0234, null
  br i1 %tobool46.not, label %if.end45.if.end48_crit_edge, label %if.then47

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  %sba1.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %sba1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sba1.i, align 8
  %reqs_lock.i = getelementptr inbounds %struct.sba_device, ptr %20, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i) #7
  %next.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 4
  %next6.i = getelementptr inbounds %struct.sba_request, ptr %first.0234, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.sba_request, ptr %first.0234, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next.i, ptr noundef %22, ptr noundef %next6.i) #7
  br i1 %call.i.i14.i, label %if.end.i.i.i, label %if.then47.sba_chain_request.exit_crit_edge

if.then47.sba_chain_request.exit_crit_edge:       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_chain_request.exit

if.end.i.i.i:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %next.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %next6.i, ptr %next.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %next.i, ptr %22, align 4
  br label %sba_chain_request.exit

sba_chain_request.exit:                           ; preds = %if.end.i.i.i, %if.then47.sba_chain_request.exit_crit_edge
  %first7.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 3
  %27 = ptrtoint ptr %first7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %first.0234, ptr %first7.i, align 8
  %next_pending_count.i = getelementptr inbounds %struct.sba_request, ptr %first.0234, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %next_pending_count.i, i32 1, i32 3, i32 1) #7
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_pending_count.i, ptr %next_pending_count.i, i32 1, ptr elementtype(i32) %next_pending_count.i) #7, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i, i32 noundef %call3.i) #7
  br label %if.end48

if.end48:                                         ; preds = %sba_chain_request.exit, %if.end45.if.end48_crit_edge
  %first.1 = phi ptr [ %first.0234, %sba_chain_request.exit ], [ %call, %if.end45.if.end48_crit_edge ]
  %or49 = or i32 %flags.addr.0229, 16
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end37.if.end50_crit_edge, %for.inc34.if.end50_crit_edge, %if.then22.if.end50_crit_edge
  %dst_q_index.0209 = phi i32 [ %i.1220, %if.end48 ], [ %i.1220, %if.end37.if.end50_crit_edge ], [ %src_cnt, %if.then22.if.end50_crit_edge ], [ %src_cnt, %for.inc34.if.end50_crit_edge ]
  %flags.addr.1 = phi i32 [ %or49, %if.end48 ], [ %flags.addr.0229, %if.end37.if.end50_crit_edge ], [ %flags.addr.0229, %if.then22.if.end50_crit_edge ], [ %flags.addr.0229, %for.inc34.if.end50_crit_edge ]
  %first.2 = phi ptr [ %first.1, %if.end48 ], [ %first.0234, %if.end37.if.end50_crit_edge ], [ %first.0234, %if.then22.if.end50_crit_edge ], [ %first.0234, %for.inc34.if.end50_crit_edge ]
  br i1 %cmp2216.not, label %if.end50.if.end83_crit_edge, label %if.end50.for.body54_crit_edge

if.end50.for.body54_crit_edge:                    ; preds = %if.end50
  br label %for.body54

if.end50.if.end83_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

for.body54:                                       ; preds = %for.inc71.for.body54_crit_edge, %if.end50.for.body54_crit_edge
  %first.3225 = phi ptr [ %first.5, %for.inc71.for.body54_crit_edge ], [ %first.2, %if.end50.for.body54_crit_edge ]
  %i.2223 = phi i32 [ %inc72, %for.inc71.for.body54_crit_edge ], [ 0, %if.end50.for.body54_crit_edge ]
  %flags.addr.2222 = phi i32 [ %flags.addr.3, %for.inc71.for.body54_crit_edge ], [ %flags.addr.1, %if.end50.for.body54_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_q_index.0209, i32 %i.2223)
  %cmp55 = icmp eq i32 %dst_q_index.0209, %i.2223
  br i1 %cmp55, label %for.body54.for.inc71_crit_edge, label %if.end58

for.body54.for.inc71_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

if.end58:                                         ; preds = %for.body54
  %arrayidx59 = getelementptr i32, ptr %src, i32 %i.2223
  %29 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx59, align 4
  %arrayidx60 = getelementptr i8, ptr %scf, i32 %i.2223
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx60, align 1
  %or61 = or i32 %flags.addr.2222, 32
  %call62 = tail call fastcc ptr @sba_prep_dma_pq_single_req(ptr noundef %add.ptr, i32 noundef %off.0230, ptr noundef %spec.select175, ptr noundef %dst_q.0, i32 noundef %30, i8 noundef zeroext %32, i32 noundef %10, i32 noundef %or61)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end58.fail_crit_edge, label %if.end65

if.end58.fail_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end65:                                         ; preds = %if.end58
  %tobool66.not = icmp eq ptr %first.3225, null
  br i1 %tobool66.not, label %if.end65.if.end69_crit_edge, label %if.then67

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  %sba1.i177 = getelementptr inbounds %struct.sba_request, ptr %call62, i32 0, i32 1
  %33 = ptrtoint ptr %sba1.i177 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sba1.i177, align 8
  %reqs_lock.i178 = getelementptr inbounds %struct.sba_device, ptr %34, i32 0, i32 20
  %call3.i179 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i178) #7
  %next.i180 = getelementptr inbounds %struct.sba_request, ptr %call62, i32 0, i32 4
  %next6.i181 = getelementptr inbounds %struct.sba_request, ptr %first.3225, i32 0, i32 4
  %prev.i.i182 = getelementptr inbounds %struct.sba_request, ptr %first.3225, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev.i.i182 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i182, align 4
  %call.i.i14.i183 = tail call zeroext i1 @__list_add_valid(ptr noundef %next.i180, ptr noundef %36, ptr noundef %next6.i181) #7
  br i1 %call.i.i14.i183, label %if.end.i.i.i185, label %if.then67.sba_chain_request.exit189_crit_edge

if.then67.sba_chain_request.exit189_crit_edge:    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_chain_request.exit189

if.end.i.i.i185:                                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %prev.i.i182 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %next.i180, ptr %prev.i.i182, align 4
  %38 = ptrtoint ptr %next.i180 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %next6.i181, ptr %next.i180, align 4
  %prev3.i.i.i184 = getelementptr inbounds %struct.sba_request, ptr %call62, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i184, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %next.i180, ptr %36, align 4
  br label %sba_chain_request.exit189

sba_chain_request.exit189:                        ; preds = %if.end.i.i.i185, %if.then67.sba_chain_request.exit189_crit_edge
  %first7.i186 = getelementptr inbounds %struct.sba_request, ptr %call62, i32 0, i32 3
  %41 = ptrtoint ptr %first7.i186 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %first.3225, ptr %first7.i186, align 8
  %next_pending_count.i187 = getelementptr inbounds %struct.sba_request, ptr %first.3225, i32 0, i32 5
  %call.i.i.i188 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count.i187, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %next_pending_count.i187, i32 1, i32 3, i32 1) #7
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_pending_count.i187, ptr %next_pending_count.i187, i32 1, ptr elementtype(i32) %next_pending_count.i187) #7, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i178, i32 noundef %call3.i179) #7
  br label %if.end69

if.end69:                                         ; preds = %sba_chain_request.exit189, %if.end65.if.end69_crit_edge
  %first.4 = phi ptr [ %first.3225, %sba_chain_request.exit189 ], [ %call62, %if.end65.if.end69_crit_edge ]
  %or70 = or i32 %flags.addr.2222, 16
  br label %for.inc71

for.inc71:                                        ; preds = %if.end69, %for.body54.for.inc71_crit_edge
  %flags.addr.3 = phi i32 [ %flags.addr.2222, %for.body54.for.inc71_crit_edge ], [ %or70, %if.end69 ]
  %first.5 = phi ptr [ %first.3225, %for.body54.for.inc71_crit_edge ], [ %first.4, %if.end69 ]
  %inc72 = add nuw i32 %i.2223, 1
  %exitcond244.not = icmp eq i32 %inc72, %src_cnt
  br i1 %exitcond244.not, label %for.inc71.if.end83_crit_edge, label %for.inc71.for.body54_crit_edge

for.inc71.for.body54_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54

for.inc71.if.end83_crit_edge:                     ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.else74:                                        ; preds = %while.body
  %call.i = tail call fastcc ptr @sba_alloc_request(ptr noundef %add.ptr) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else74.fail_crit_edge, label %if.end.i

if.else74.fail_crit_edge:                         ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end.i:                                         ; preds = %if.else74
  %and.i = and i32 %flags.addr.0229, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags3.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags3.i, align 4
  %or.i = or i32 %44, 256
  store i32 %or.i, ptr %flags3.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %and.i.i = and i32 %flags.addr.0229, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %cmds.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 8
  %msg.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6
  %phys.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys.i.i, align 8
  br i1 %cmp.i.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i.i = and i32 %10, 65535
  %conv2.i.i.i = zext i32 %and1.i.i.i to i64
  %shl4.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 32
  %or.i221.i.i = or i64 %shl4.i.i.i, 562949953421321
  %47 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %or.i221.i.i, ptr %cmds.i, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %or.i221.i.i) #7
  %cmd_dma.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 1
  %49 = ptrtoint ptr %cmd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd_dma.i.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %48, ptr %50, align 8
  %flags.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 3
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 2, ptr %flags.i.i, align 8
  %53 = ptrtoint ptr %spec.select175 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %spec.select175, align 4
  %add.i.i = add i32 %54, %off.0230
  %data.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 6
  %55 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i.i, ptr %data.i.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 1
  %56 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %10, ptr %data_len.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 1, i32 0, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %cmdsp.0.i.i = phi ptr [ %incdec.ptr.i.i, %if.then2.i.i ], [ %cmds.i, %if.then.i.i.if.end.i.i_crit_edge ]
  br i1 %tobool8.not.i.i, label %if.end.i.i.if.end31.i.i_crit_edge, label %if.then9.i.i

if.end.i.i.if.end31.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i222.i.i = and i32 %10, 65535
  %conv2.i223.i.i = zext i32 %and1.i222.i.i to i64
  %shl4.i224.i.i = shl nuw nsw i64 %conv2.i223.i.i, 32
  %or.i229.i.i = or i64 %shl4.i224.i.i, 562949953421577
  %57 = ptrtoint ptr %cmdsp.0.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %or.i229.i.i, ptr %cmdsp.0.i.i, align 8
  %58 = tail call i64 @llvm.bswap.i64(i64 %or.i229.i.i) #7
  %cmd_dma17.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.0.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %cmd_dma17.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cmd_dma17.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %58, ptr %60, align 8
  %flags18.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.0.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %flags18.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 2, ptr %flags18.i.i, align 8
  %63 = ptrtoint ptr %dst_q.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dst_q.0, align 4
  %add19.i.i = add i32 %64, %off.0230
  %data20.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.0.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %data20.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add19.i.i, ptr %data20.i.i, align 8
  %data_len21.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.0.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %data_len21.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %10, ptr %data_len21.i.i, align 4
  %incdec.ptr22.i.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.0.i.i, i32 1
  br label %if.end31.i.i

if.else.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i230.i.i = and i32 %10, 65535
  %conv2.i231.i.i = zext i32 %and1.i230.i.i to i64
  %shl4.i232.i.i = shl nuw nsw i64 %conv2.i231.i.i, 32
  %or.i233.i.i = or i64 %shl4.i232.i.i, 8
  %67 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or.i233.i.i, ptr %cmds.i, align 8
  %68 = tail call i64 @llvm.bswap.i64(i64 %or.i233.i.i) #7
  %cmd_dma28.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 1
  %69 = ptrtoint ptr %cmd_dma28.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cmd_dma28.i.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %68, ptr %70, align 8
  %flags29.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 1, i32 3
  %72 = ptrtoint ptr %flags29.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1, ptr %flags29.i.i, align 8
  %incdec.ptr30.i.i = getelementptr %struct.sba_request, ptr %call.i, i32 1, i32 6, i32 1, i32 0, i32 1
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else.i.i, %if.then9.i.i, %if.end.i.i.if.end31.i.i_crit_edge
  %cmdsp.1.i.i = phi ptr [ %incdec.ptr22.i.i, %if.then9.i.i ], [ %cmdsp.0.i.i, %if.end.i.i.if.end31.i.i_crit_edge ], [ %incdec.ptr30.i.i, %if.else.i.i ]
  br i1 %cmp2216.not, label %if.end31.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end31.i.i.for.end.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end31.i.i
  %and1.i234.i.i = and i32 %10, 65535
  %conv2.i235.i.i = zext i32 %and1.i234.i.i to i64
  %shl4.i236.i.i = shl nuw nsw i64 %conv2.i235.i.i, 32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cmdsp.2265.i.i = phi ptr [ %cmdsp.1.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr48.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.0264.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %scf, i32 %i.0264.i.i
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom.i.i = zext i8 %74 to i32
  %arrayidx34.i.i = getelementptr [256 x i8], ptr @raid6_gflog, i32 0, i32 %idxprom.i.i
  %75 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx34.i.i, align 1
  %conv.i.i = zext i8 %76 to i32
  %and2.i.i.i = shl nuw nsw i32 %conv.i.i, 13
  %shl3.i.i.i = and i32 %and2.i.i.i, 57344
  %or.i238.i.i = or i32 %shl3.i.i.i, 1024
  %shl4.i240.i.i = zext i32 %or.i238.i.i to i64
  %or.i237.i.i = or i64 %shl4.i236.i.i, %shl4.i240.i.i
  %77 = shl nuw nsw i32 %conv.i.i, 15
  %78 = and i32 %77, 786432
  %shl4.i243.i.i = zext i32 %78 to i64
  %or.i241.i.i = or i64 %or.i237.i.i, %shl4.i243.i.i
  %or.i246.i.i = or i64 %or.i241.i.i, 562949953421323
  %79 = ptrtoint ptr %cmdsp.2265.i.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %or.i246.i.i, ptr %cmdsp.2265.i.i, align 8
  %80 = tail call i64 @llvm.bswap.i64(i64 %or.i246.i.i) #7
  %cmd_dma42.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2265.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %cmd_dma42.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd_dma42.i.i, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %80, ptr %82, align 8
  %flags43.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2265.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %flags43.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 2, ptr %flags43.i.i, align 8
  %arrayidx44.i.i = getelementptr i32, ptr %src, i32 %i.0264.i.i
  %85 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx44.i.i, align 4
  %add45.i.i = add i32 %86, %off.0230
  %data46.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2265.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %data46.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add45.i.i, ptr %data46.i.i, align 8
  %data_len47.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2265.i.i, i32 0, i32 7
  %88 = ptrtoint ptr %data_len47.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %10, ptr %data_len47.i.i, align 4
  %incdec.ptr48.i.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.2265.i.i, i32 1
  %inc.i.i = add nuw i32 %i.0264.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %src_cnt
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end31.i.i.for.end.i.i_crit_edge
  %cmdsp.2.lcssa.i.i = phi ptr [ %cmdsp.1.i.i, %if.end31.i.i.for.end.i.i_crit_edge ], [ %incdec.ptr48.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  br i1 %tobool1.not.i.i, label %for.end.i.i.if.end73.i.i_crit_edge, label %if.then50.i.i

for.end.i.i.if.end73.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i.i

if.then50.i.i:                                    ; preds = %for.end.i.i
  %and1.i247.i.i = and i32 %10, 65535
  %conv2.i248.i.i = zext i32 %and1.i247.i.i to i64
  %shl4.i249.i.i = shl nuw nsw i64 %conv2.i248.i.i, 32
  %or.i254.i.i = or i64 %shl4.i249.i.i, 65548
  %89 = ptrtoint ptr %cmdsp.2.lcssa.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %or.i254.i.i, ptr %cmdsp.2.lcssa.i.i, align 8
  %90 = tail call i64 @llvm.bswap.i64(i64 %or.i254.i.i) #7
  %cmd_dma59.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2.lcssa.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %cmd_dma59.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cmd_dma59.i.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %90, ptr %92, align 8
  %flags60.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2.lcssa.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %flags60.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 1, ptr %flags60.i.i, align 8
  %sba.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 1
  %95 = ptrtoint ptr %sba.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sba.i.i, align 8
  %hw_resp_size.i.i = getelementptr inbounds %struct.sba_device, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %hw_resp_size.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hw_resp_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool61.not.i.i = icmp eq i32 %98, 0
  br i1 %tobool61.not.i.i, label %if.then50.i.i.if.end66.i.i_crit_edge, label %if.then62.i.i

if.then50.i.i.if.end66.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i.i

if.then62.i.i:                                    ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %flags60.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 9, ptr %flags60.i.i, align 8
  %resp.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2.lcssa.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %46, ptr %resp.i.i, align 8
  %101 = ptrtoint ptr %sba.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sba.i.i, align 8
  %hw_resp_size65.i.i = getelementptr inbounds %struct.sba_device, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %hw_resp_size65.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hw_resp_size65.i.i, align 4
  %resp_len.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2.lcssa.i.i, i32 0, i32 5
  %105 = ptrtoint ptr %resp_len.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %resp_len.i.i, align 4
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.then62.i.i, %if.then50.i.i.if.end66.i.i_crit_edge
  %106 = ptrtoint ptr %flags60.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %flags60.i.i, align 8
  %or68.i.i = or i64 %107, 16
  store i64 %or68.i.i, ptr %flags60.i.i, align 8
  %108 = ptrtoint ptr %spec.select175 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %spec.select175, align 4
  %add69.i.i = add i32 %109, %off.0230
  %data70.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2.lcssa.i.i, i32 0, i32 6
  %110 = ptrtoint ptr %data70.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add69.i.i, ptr %data70.i.i, align 8
  %data_len71.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2.lcssa.i.i, i32 0, i32 7
  %111 = ptrtoint ptr %data_len71.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %10, ptr %data_len71.i.i, align 4
  %incdec.ptr72.i.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.2.lcssa.i.i, i32 1
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.end66.i.i, %for.end.i.i.if.end73.i.i_crit_edge
  %cmdsp.3.i.i = phi ptr [ %incdec.ptr72.i.i, %if.end66.i.i ], [ %cmdsp.2.lcssa.i.i, %for.end.i.i.if.end73.i.i_crit_edge ]
  br i1 %tobool8.not.i.i, label %if.end73.i.i.if.end78_crit_edge, label %if.then75.i.i

if.end73.i.i.if.end78_crit_edge:                  ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then75.i.i:                                    ; preds = %if.end73.i.i
  %and1.i255.i.i = and i32 %10, 65535
  %conv2.i256.i.i = zext i32 %and1.i255.i.i to i64
  %shl4.i257.i.i = shl nuw nsw i64 %conv2.i256.i.i, 32
  %or.i262.i.i = or i64 %shl4.i257.i.i, 65804
  %112 = ptrtoint ptr %cmdsp.3.i.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %or.i262.i.i, ptr %cmdsp.3.i.i, align 8
  %113 = tail call i64 @llvm.bswap.i64(i64 %or.i262.i.i) #7
  %cmd_dma84.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %cmd_dma84.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cmd_dma84.i.i, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %113, ptr %115, align 8
  %flags85.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %flags85.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 1, ptr %flags85.i.i, align 8
  %sba86.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 1
  %118 = ptrtoint ptr %sba86.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sba86.i.i, align 8
  %hw_resp_size87.i.i = getelementptr inbounds %struct.sba_device, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %hw_resp_size87.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hw_resp_size87.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool88.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool88.not.i.i, label %if.then75.i.i.if.end96.i.i_crit_edge, label %if.then89.i.i

if.then75.i.i.if.end96.i.i_crit_edge:             ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i.i

if.then89.i.i:                                    ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %flags85.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 9, ptr %flags85.i.i, align 8
  %resp92.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i.i, i32 0, i32 4
  %123 = ptrtoint ptr %resp92.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %46, ptr %resp92.i.i, align 8
  %124 = ptrtoint ptr %sba86.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sba86.i.i, align 8
  %hw_resp_size94.i.i = getelementptr inbounds %struct.sba_device, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %hw_resp_size94.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hw_resp_size94.i.i, align 4
  %resp_len95.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i.i, i32 0, i32 5
  %128 = ptrtoint ptr %resp_len95.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %resp_len95.i.i, align 4
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %if.then89.i.i, %if.then75.i.i.if.end96.i.i_crit_edge
  %129 = ptrtoint ptr %flags85.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %flags85.i.i, align 8
  %or98.i.i = or i64 %130, 16
  store i64 %or98.i.i, ptr %flags85.i.i, align 8
  %131 = ptrtoint ptr %dst_q.0 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dst_q.0, align 4
  %add99.i.i = add i32 %132, %off.0230
  %data100.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i.i, i32 0, i32 6
  %133 = ptrtoint ptr %data100.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add99.i.i, ptr %data100.i.i, align 8
  %data_len101.i.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i.i, i32 0, i32 7
  %134 = ptrtoint ptr %data_len101.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %10, ptr %data_len101.i.i, align 4
  %incdec.ptr102.i.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.3.i.i, i32 1
  br label %if.end78

if.end78:                                         ; preds = %if.end96.i.i, %if.end73.i.i.if.end78_crit_edge
  %cmdsp.4.i.i = phi ptr [ %incdec.ptr102.i.i, %if.end96.i.i ], [ %cmdsp.3.i.i, %if.end73.i.i.if.end78_crit_edge ]
  %135 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 3, ptr %msg.i, align 4
  %136 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %cmds.i, ptr %136, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %cmdsp.4.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %cmds.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 40
  %cmds_count.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %cmds_count.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub.ptr.div.i.i, ptr %cmds_count.i.i, align 4
  %ctx.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 2
  %139 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i, ptr %ctx.i.i, align 4
  %error.i.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 6, i32 3
  %140 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %error.i.i, align 4
  %tx.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7
  %flags6.i = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 7, i32 1
  %141 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %flags.addr.0229, ptr %flags6.i, align 4
  %142 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -16, ptr %tx.i, align 8
  %tobool79.not = icmp eq ptr %first.0234, null
  br i1 %tobool79.not, label %if.end78.if.end83_crit_edge, label %if.then80

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then80:                                        ; preds = %if.end78
  %sba1.i190 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 1
  %143 = ptrtoint ptr %sba1.i190 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sba1.i190, align 8
  %reqs_lock.i191 = getelementptr inbounds %struct.sba_device, ptr %144, i32 0, i32 20
  %call3.i192 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i191) #7
  %next.i193 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 4
  %next6.i194 = getelementptr inbounds %struct.sba_request, ptr %first.0234, i32 0, i32 4
  %prev.i.i195 = getelementptr inbounds %struct.sba_request, ptr %first.0234, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %prev.i.i195 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i195, align 4
  %call.i.i14.i196 = tail call zeroext i1 @__list_add_valid(ptr noundef %next.i193, ptr noundef %146, ptr noundef %next6.i194) #7
  br i1 %call.i.i14.i196, label %if.end.i.i.i198, label %if.then80.sba_chain_request.exit202_crit_edge

if.then80.sba_chain_request.exit202_crit_edge:    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_chain_request.exit202

if.end.i.i.i198:                                  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %prev.i.i195 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %next.i193, ptr %prev.i.i195, align 4
  %148 = ptrtoint ptr %next.i193 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %next6.i194, ptr %next.i193, align 4
  %prev3.i.i.i197 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %prev3.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev3.i.i.i197, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %next.i193, ptr %146, align 4
  br label %sba_chain_request.exit202

sba_chain_request.exit202:                        ; preds = %if.end.i.i.i198, %if.then80.sba_chain_request.exit202_crit_edge
  %first7.i199 = getelementptr inbounds %struct.sba_request, ptr %call.i, i32 0, i32 3
  %151 = ptrtoint ptr %first7.i199 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %first.0234, ptr %first7.i199, align 8
  %next_pending_count.i200 = getelementptr inbounds %struct.sba_request, ptr %first.0234, i32 0, i32 5
  %call.i.i.i201 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count.i200, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %next_pending_count.i200, i32 1, i32 3, i32 1) #7
  %152 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_pending_count.i200, ptr %next_pending_count.i200, i32 1, ptr elementtype(i32) %next_pending_count.i200) #7, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i191, i32 noundef %call3.i192) #7
  br label %if.end83

if.end83:                                         ; preds = %sba_chain_request.exit202, %if.end78.if.end83_crit_edge, %for.inc71.if.end83_crit_edge, %if.end50.if.end83_crit_edge
  %flags.addr.4 = phi i32 [ %flags.addr.0229, %sba_chain_request.exit202 ], [ %flags.addr.0229, %if.end78.if.end83_crit_edge ], [ %flags.addr.1, %if.end50.if.end83_crit_edge ], [ %flags.addr.3, %for.inc71.if.end83_crit_edge ]
  %first.6 = phi ptr [ %first.0234, %sba_chain_request.exit202 ], [ %call.i, %if.end78.if.end83_crit_edge ], [ %first.2, %if.end50.if.end83_crit_edge ], [ %first.5, %for.inc71.if.end83_crit_edge ]
  %add = add i32 %10, %off.0230
  %sub = sub i32 %len.addr.0233, %10
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %if.end83.while.end_crit_edge, label %if.end83.while.body_crit_edge

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end83.while.end_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end83.while.end_crit_edge, %for.end.while.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %for.end.while.end_crit_edge ], [ %first.6, %if.end83.while.end_crit_edge ]
  %tobool84.not = icmp eq ptr %first.0.lcssa, null
  %tx = getelementptr inbounds %struct.sba_request, ptr %first.0.lcssa, i32 0, i32 7
  %spec.select176 = select i1 %tobool84.not, ptr null, ptr %tx
  br label %cleanup

fail:                                             ; preds = %if.else74.fail_crit_edge, %if.end58.fail_crit_edge, %if.then40.fail_crit_edge
  %first.7 = phi ptr [ %first.3225, %if.end58.fail_crit_edge ], [ %first.0234, %if.then40.fail_crit_edge ], [ %first.0234, %if.else74.fail_crit_edge ]
  %tobool89.not = icmp eq ptr %first.7, null
  br i1 %tobool89.not, label %fail.cleanup_crit_edge, label %if.then90

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90:                                        ; preds = %fail
  %sba1.i203 = getelementptr inbounds %struct.sba_request, ptr %first.7, i32 0, i32 1
  %153 = ptrtoint ptr %sba1.i203 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sba1.i203, align 8
  %reqs_lock.i204 = getelementptr inbounds %struct.sba_device, ptr %154, i32 0, i32 20
  %call3.i205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock.i204) #7
  tail call fastcc void @_sba_free_request(ptr noundef %154, ptr noundef nonnull %first.7) #7
  %next.i206 = getelementptr inbounds %struct.sba_request, ptr %first.7, i32 0, i32 4
  %155 = ptrtoint ptr %next.i206 to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pn26.i = load ptr, ptr %next.i206, align 4
  %cmp10.not27.i = icmp eq ptr %.pn26.i, %next.i206
  br i1 %cmp10.not27.i, label %if.then90.sba_free_chained_requests.exit_crit_edge, label %if.then90.for.body.i_crit_edge

if.then90.for.body.i_crit_edge:                   ; preds = %if.then90
  br label %for.body.i

if.then90.sba_free_chained_requests.exit_crit_edge: ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_free_chained_requests.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then90.for.body.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn26.i, %if.then90.for.body.i_crit_edge ]
  %nreq.0.i = getelementptr i8, ptr %.pn28.i, i32 -20
  tail call fastcc void @_sba_free_request(ptr noundef %154, ptr noundef %nreq.0.i) #7
  %156 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i, %next.i206
  br i1 %cmp10.not.i, label %for.body.i.sba_free_chained_requests.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.sba_free_chained_requests.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_free_chained_requests.exit

sba_free_chained_requests.exit:                   ; preds = %for.body.i.sba_free_chained_requests.exit_crit_edge, %if.then90.sba_free_chained_requests.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock.i204, i32 noundef %call3.i205) #7
  br label %cleanup

cleanup:                                          ; preds = %sba_free_chained_requests.exit, %fail.cleanup_crit_edge, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select176, %while.end ], [ null, %entry.cleanup_crit_edge ], [ null, %sba_free_chained_requests.exit ], [ null, %fail.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mbox_client_peek_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sba_alloc_request(ptr noundef %sba) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reqs_lock = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reqs_lock) #7
  %reqs_free_list = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 26
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %req.0.in = phi ptr [ %reqs_free_list, %entry ], [ %req.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %req.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %req.0 = load ptr, ptr %req.0.in, align 4
  %cmp7.not = icmp eq ptr %req.0, %reqs_free_list
  br i1 %cmp7.not, label %if.then17.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %flags.i = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 2
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %for.body.for.cond_crit_edge, label %if.then

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  %flags.i.le = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 7, i32 1
  %tx.le = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 7
  %reqs_alloc_list = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 22
  %call.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.0) #7
  br i1 %call.i.i43, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 22, i32 1
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req.0, ptr noundef %10, ptr noundef %reqs_alloc_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req.0, ptr %prev.i2.i, align 4
  %12 = ptrtoint ptr %req.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reqs_alloc_list, ptr %req.0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.0, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %req.0, ptr %10, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock, i32 noundef %call2) #7
  %flags20 = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 2
  %15 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %flags20, align 4
  %first = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 3
  %16 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %req.0, ptr %first, align 8
  %next21 = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 4
  %17 = ptrtoint ptr %next21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %next21, ptr %next21, align 4
  %prev.i = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %next21, ptr %prev.i, align 4
  %next_pending_count = getelementptr inbounds %struct.sba_request, ptr %req.0, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_pending_count, i32 noundef 4) #7
  %19 = ptrtoint ptr %next_pending_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %next_pending_count, align 4
  %dma_chan = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 15
  tail call void @dma_async_tx_descriptor_init(ptr noundef %tx.le, ptr noundef %dma_chan) #7
  %20 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.le, align 4
  %or.i = or i32 %21, 2
  store i32 %or.i, ptr %flags.i.le, align 4
  br label %cleanup

if.then17.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reqs_lock, i32 noundef %call2) #7
  %mchan = getelementptr inbounds %struct.sba_device, ptr %sba, i32 0, i32 12
  %22 = ptrtoint ptr %mchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mchan, align 4
  %call18 = tail call zeroext i1 @mbox_client_peek_data(ptr noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17.critedge, %list_move_tail.exit
  %retval.0 = phi ptr [ %req.0, %list_move_tail.exit ], [ null, %if.then17.critedge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sba_prep_dma_pq_single_req(ptr noundef %sba, i32 noundef %off, ptr noundef readonly %dst_p, ptr noundef readonly %dst_q, i32 noundef %src, i8 noundef zeroext %scf, i32 noundef %len, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sba_alloc_request(ptr noundef %sba)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags3 = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags3, align 4
  %or = or i32 %1, 256
  store i32 %or, ptr %flags3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %and.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  %cmds = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 8
  %msg = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6
  %idxprom.i = zext i8 %scf to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @raid6_gflog, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %phys.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys.i, align 8
  %tobool.not.i = icmp eq ptr %dst_p, null
  br i1 %tobool.not.i, label %if.end4.skip_p.i_crit_edge, label %if.end.i

if.end4.skip_p.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_p.i

if.end.i:                                         ; preds = %if.end4
  %and1.i.i = and i32 %len, 65535
  %conv2.i.i = zext i32 %and1.i.i to i64
  %shl4.i.i = shl nuw nsw i64 %conv2.i.i, 32
  %or.i347.i = or i64 %shl4.i.i, 562949953421321
  %6 = ptrtoint ptr %cmds to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %or.i347.i, ptr %cmds, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %or.i347.i) #7
  %cmd_dma.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 1
  %8 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_dma.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %7, ptr %9, align 8
  %flags.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 2, ptr %flags.i, align 8
  br i1 %cmp.i.not, label %if.end.i.if.end34.i_crit_edge, label %if.then2.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dst_p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_p, align 4
  %add.i = add i32 %13, %off
  %data.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 6
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %data.i, align 8
  %data_len.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 1, i32 6, i32 1
  %15 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len, ptr %data_len.i, align 4
  %incdec.ptr.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 6, i32 1, i32 0, i32 1
  %or.i352.i = or i64 %shl4.i.i, 562949953421322
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i352.i, ptr %incdec.ptr.i, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %or.i352.i) #7
  %cmd_dma15.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 6, i32 2
  %18 = ptrtoint ptr %cmd_dma15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_dma15.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %17, ptr %19, align 8
  %flags16.i = getelementptr %struct.sba_request, ptr %call, i32 1, i32 7
  %21 = ptrtoint ptr %flags16.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 2, ptr %flags16.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then2.i, %if.end.i.if.end34.i_crit_edge
  %.sink414.i = phi i32 [ 1, %if.then2.i ], [ 0, %if.end.i.if.end34.i_crit_edge ]
  %incdec.ptr.pn.i = phi ptr [ %incdec.ptr.i, %if.then2.i ], [ %cmds, %if.end.i.if.end34.i_crit_edge ]
  %add30.i = add i32 %src, %off
  %data31.i = getelementptr %struct.brcm_sba_command, ptr %cmds, i32 %.sink414.i, i32 6
  %22 = ptrtoint ptr %data31.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add30.i, ptr %data31.i, align 8
  %data_len32.i = getelementptr %struct.brcm_sba_command, ptr %cmds, i32 %.sink414.i, i32 7
  %23 = ptrtoint ptr %data_len32.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %len, ptr %data_len32.i, align 4
  %cmdsp.0.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 1
  %or.i368.i = or i64 %shl4.i.i, 65548
  %24 = ptrtoint ptr %cmdsp.0.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or.i368.i, ptr %cmdsp.0.i, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %or.i368.i) #7
  %cmd_dma43.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 1, i32 1
  %26 = ptrtoint ptr %cmd_dma43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_dma43.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %25, ptr %27, align 8
  %flags44.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 1, i32 3
  %29 = ptrtoint ptr %flags44.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1, ptr %flags44.i, align 8
  %sba.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 1
  %30 = ptrtoint ptr %sba.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sba.i, align 8
  %hw_resp_size.i = getelementptr inbounds %struct.sba_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %hw_resp_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_resp_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool45.not.i = icmp eq i32 %33, 0
  br i1 %tobool45.not.i, label %if.end34.i.if.end50.i_crit_edge, label %if.then46.i

if.end34.i.if.end50.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %flags44.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 9, ptr %flags44.i, align 8
  %resp.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 1, i32 4
  %35 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %5, ptr %resp.i, align 8
  %36 = ptrtoint ptr %sba.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sba.i, align 8
  %hw_resp_size49.i = getelementptr inbounds %struct.sba_device, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %hw_resp_size49.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_resp_size49.i, align 4
  %resp_len.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 1, i32 5
  %40 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %resp_len.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %if.end34.i.if.end50.i_crit_edge
  %41 = ptrtoint ptr %flags44.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %flags44.i, align 8
  %or52.i = or i64 %42, 16
  store i64 %or52.i, ptr %flags44.i, align 8
  %43 = ptrtoint ptr %dst_p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dst_p, align 4
  %add53.i = add i32 %44, %off
  %data54.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 1, i32 6
  %45 = ptrtoint ptr %data54.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add53.i, ptr %data54.i, align 8
  %data_len55.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 1, i32 7
  %46 = ptrtoint ptr %data_len55.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %len, ptr %data_len55.i, align 4
  %incdec.ptr56.i = getelementptr %struct.brcm_sba_command, ptr %incdec.ptr.pn.i, i32 2
  br label %skip_p.i

skip_p.i:                                         ; preds = %if.end50.i, %if.end4.skip_p.i_crit_edge
  %cmdsp.1.i = phi ptr [ %incdec.ptr56.i, %if.end50.i ], [ %cmds, %if.end4.skip_p.i_crit_edge ]
  %tobool57.not.i = icmp eq ptr %dst_q, null
  br i1 %tobool57.not.i, label %skip_p.i.sba_fillup_pq_single_msg.exit_crit_edge, label %if.end59.i

skip_p.i.sba_fillup_pq_single_msg.exit_crit_edge: ; preds = %skip_p.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sba_fillup_pq_single_msg.exit

if.end59.i:                                       ; preds = %skip_p.i
  %and1.i369.i = and i32 %len, 65535
  %conv2.i370.i = zext i32 %and1.i369.i to i64
  %shl4.i371.i = shl nuw nsw i64 %conv2.i370.i, 32
  %or.i372.i = or i64 %shl4.i371.i, 8
  %47 = ptrtoint ptr %cmdsp.1.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %or.i372.i, ptr %cmdsp.1.i, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %or.i372.i) #7
  %cmd_dma64.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 0, i32 1
  %49 = ptrtoint ptr %cmd_dma64.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd_dma64.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %48, ptr %50, align 8
  %flags65.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 0, i32 3
  %52 = ptrtoint ptr %flags65.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1, ptr %flags65.i, align 8
  %incdec.ptr66.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i17 = icmp eq i8 %3, -1
  br i1 %cmp.i17, label %if.end59.i.skip_q_computation.i_crit_edge, label %if.end69.i

if.end59.i.skip_q_computation.i_crit_edge:        ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_q_computation.i

if.end69.i:                                       ; preds = %if.end59.i
  %conv.i = zext i8 %3 to i32
  %sba71.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 1
  %53 = ptrtoint ptr %sba71.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sba71.i, align 8
  %max_pq_coefs.i = getelementptr inbounds %struct.sba_device, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %max_pq_coefs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_pq_coefs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv.i)
  %cmp72.i = icmp ugt i32 %56, %conv.i
  %sub.i = add i32 %56, -1
  %cond.i = select i1 %cmp72.i, i32 %conv.i, i32 %sub.i
  %and82.i = shl i32 %cond.i, 13
  %57 = and i32 %and82.i, 57344
  %shl4.i378.i = zext i32 %57 to i64
  %58 = shl i32 %cond.i, 15
  %59 = and i32 %58, 786432
  %shl4.i381.i = zext i32 %59 to i64
  %or.i376.i = or i64 %shl4.i371.i, %shl4.i378.i
  %or.i379.i = or i64 %or.i376.i, %shl4.i381.i
  %or.i384.i = or i64 %or.i379.i, 562949953421326
  %60 = ptrtoint ptr %incdec.ptr66.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %or.i384.i, ptr %incdec.ptr66.i, align 8
  %61 = tail call i64 @llvm.bswap.i64(i64 %or.i384.i) #7
  %cmd_dma88.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 1, i32 1
  %62 = ptrtoint ptr %cmd_dma88.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd_dma88.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %61, ptr %63, align 8
  %flags89.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 1, i32 3
  %65 = ptrtoint ptr %flags89.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 2, ptr %flags89.i, align 8
  %add90.i = add i32 %src, %off
  %data91.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 1, i32 6
  %66 = ptrtoint ptr %data91.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add90.i, ptr %data91.i, align 8
  %data_len92.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 1, i32 7
  %67 = ptrtoint ptr %data_len92.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %len, ptr %data_len92.i, align 4
  %incdec.ptr93.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.1.i, i32 2
  %68 = trunc i32 %cond.i to i8
  %conv97.i = sub i8 %3, %68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv97.i)
  %tobool98.not411.i = icmp eq i8 %conv97.i, 0
  br i1 %tobool98.not411.i, label %if.end69.i.skip_q_computation.i_crit_edge, label %if.end69.i.while.body.i_crit_edge

if.end69.i.while.body.i_crit_edge:                ; preds = %if.end69.i
  br label %while.body.i

if.end69.i.skip_q_computation.i_crit_edge:        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_q_computation.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end69.i.while.body.i_crit_edge
  %cmdsp.2413.i = phi ptr [ %incdec.ptr126.i, %while.body.i.while.body.i_crit_edge ], [ %incdec.ptr93.i, %if.end69.i.while.body.i_crit_edge ]
  %dpos.0412.i = phi i8 [ %conv130.i, %while.body.i.while.body.i_crit_edge ], [ %conv97.i, %if.end69.i.while.body.i_crit_edge ]
  %conv99.i = zext i8 %dpos.0412.i to i32
  %69 = ptrtoint ptr %sba71.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sba71.i, align 8
  %max_pq_coefs101.i = getelementptr inbounds %struct.sba_device, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %max_pq_coefs101.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_pq_coefs101.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv99.i)
  %cmp102.i = icmp ugt i32 %72, %conv99.i
  %sub109.i = add i32 %72, -1
  %cond111.i = select i1 %cmp102.i, i32 %conv99.i, i32 %sub109.i
  %conv115.i = shl i32 %cond111.i, 15
  %shl3.i389.i = shl i32 %cond111.i, 13
  %or4.i.i = and i32 %shl3.i389.i, 57344
  %and117.i = or i32 %or4.i.i, 256
  %shl4.i391.i = zext i32 %and117.i to i64
  %73 = and i32 %conv115.i, 786432
  %shl4.i395.i = zext i32 %73 to i64
  %or.i392.i = or i64 %shl4.i371.i, %shl4.i395.i
  %or.i396.i = or i64 %or.i392.i, %shl4.i391.i
  %or.i397.i = or i64 %or.i396.i, 14
  %74 = ptrtoint ptr %cmdsp.2413.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %or.i397.i, ptr %cmdsp.2413.i, align 8
  %75 = tail call i64 @llvm.bswap.i64(i64 %or.i397.i) #7
  %cmd_dma124.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2413.i, i32 0, i32 1
  %76 = ptrtoint ptr %cmd_dma124.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cmd_dma124.i, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %75, ptr %77, align 8
  %flags125.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.2413.i, i32 0, i32 3
  %79 = ptrtoint ptr %flags125.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 1, ptr %flags125.i, align 8
  %incdec.ptr126.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.2413.i, i32 1
  %80 = trunc i32 %cond111.i to i8
  %conv130.i = sub i8 %dpos.0412.i, %80
  %tobool98.not.i = icmp eq i8 %conv130.i, 0
  br i1 %tobool98.not.i, label %while.body.i.skip_q_computation.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.skip_q_computation.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_q_computation.i

skip_q_computation.i:                             ; preds = %while.body.i.skip_q_computation.i_crit_edge, %if.end69.i.skip_q_computation.i_crit_edge, %if.end59.i.skip_q_computation.i_crit_edge
  %cmdsp.3.i = phi ptr [ %incdec.ptr66.i, %if.end59.i.skip_q_computation.i_crit_edge ], [ %incdec.ptr93.i, %if.end69.i.skip_q_computation.i_crit_edge ], [ %incdec.ptr126.i, %while.body.i.skip_q_computation.i_crit_edge ]
  br i1 %cmp.i.not, label %skip_q_computation.i.if.end146.i_crit_edge, label %if.then132.i

skip_q_computation.i.if.end146.i_crit_edge:       ; preds = %skip_q_computation.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.then132.i:                                     ; preds = %skip_q_computation.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i402.i = or i64 %shl4.i371.i, 562949953421322
  %81 = ptrtoint ptr %cmdsp.3.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %or.i402.i, ptr %cmdsp.3.i, align 8
  %82 = tail call i64 @llvm.bswap.i64(i64 %or.i402.i) #7
  %cmd_dma140.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i, i32 0, i32 1
  %83 = ptrtoint ptr %cmd_dma140.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cmd_dma140.i, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %82, ptr %84, align 8
  %flags141.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i, i32 0, i32 3
  %86 = ptrtoint ptr %flags141.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 2, ptr %flags141.i, align 8
  %87 = ptrtoint ptr %dst_q to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dst_q, align 4
  %add142.i = add i32 %88, %off
  %data143.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i, i32 0, i32 6
  %89 = ptrtoint ptr %data143.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add142.i, ptr %data143.i, align 8
  %data_len144.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.3.i, i32 0, i32 7
  %90 = ptrtoint ptr %data_len144.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %len, ptr %data_len144.i, align 4
  %incdec.ptr145.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.3.i, i32 1
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then132.i, %skip_q_computation.i.if.end146.i_crit_edge
  %cmdsp.4.i = phi ptr [ %incdec.ptr145.i, %if.then132.i ], [ %cmdsp.3.i, %skip_q_computation.i.if.end146.i_crit_edge ]
  %or.i410.i = or i64 %shl4.i371.i, 65548
  %91 = ptrtoint ptr %cmdsp.4.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %or.i410.i, ptr %cmdsp.4.i, align 8
  %92 = tail call i64 @llvm.bswap.i64(i64 %or.i410.i) #7
  %cmd_dma155.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.4.i, i32 0, i32 1
  %93 = ptrtoint ptr %cmd_dma155.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cmd_dma155.i, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %92, ptr %94, align 8
  %flags156.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.4.i, i32 0, i32 3
  %96 = ptrtoint ptr %flags156.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 1, ptr %flags156.i, align 8
  %sba157.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 1
  %97 = ptrtoint ptr %sba157.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sba157.i, align 8
  %hw_resp_size158.i = getelementptr inbounds %struct.sba_device, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %hw_resp_size158.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hw_resp_size158.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool159.not.i = icmp eq i32 %100, 0
  br i1 %tobool159.not.i, label %if.end146.i.if.end167.i_crit_edge, label %if.then160.i

if.end146.i.if.end167.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167.i

if.then160.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %flags156.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 9, ptr %flags156.i, align 8
  %resp163.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.4.i, i32 0, i32 4
  %102 = ptrtoint ptr %resp163.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %5, ptr %resp163.i, align 8
  %103 = ptrtoint ptr %sba157.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sba157.i, align 8
  %hw_resp_size165.i = getelementptr inbounds %struct.sba_device, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %hw_resp_size165.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hw_resp_size165.i, align 4
  %resp_len166.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.4.i, i32 0, i32 5
  %107 = ptrtoint ptr %resp_len166.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %resp_len166.i, align 4
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then160.i, %if.end146.i.if.end167.i_crit_edge
  %108 = ptrtoint ptr %flags156.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %flags156.i, align 8
  %or169.i = or i64 %109, 16
  store i64 %or169.i, ptr %flags156.i, align 8
  %110 = ptrtoint ptr %dst_q to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dst_q, align 4
  %add170.i = add i32 %111, %off
  %data171.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.4.i, i32 0, i32 6
  %112 = ptrtoint ptr %data171.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add170.i, ptr %data171.i, align 8
  %data_len172.i = getelementptr inbounds %struct.brcm_sba_command, ptr %cmdsp.4.i, i32 0, i32 7
  %113 = ptrtoint ptr %data_len172.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %len, ptr %data_len172.i, align 4
  %incdec.ptr173.i = getelementptr %struct.brcm_sba_command, ptr %cmdsp.4.i, i32 1
  br label %sba_fillup_pq_single_msg.exit

sba_fillup_pq_single_msg.exit:                    ; preds = %if.end167.i, %skip_p.i.sba_fillup_pq_single_msg.exit_crit_edge
  %cmdsp.5.i = phi ptr [ %incdec.ptr173.i, %if.end167.i ], [ %cmdsp.1.i, %skip_p.i.sba_fillup_pq_single_msg.exit_crit_edge ]
  %114 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 3, ptr %msg, align 4
  %115 = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %cmds, ptr %115, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %cmdsp.5.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %cmds to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 40
  %cmds_count.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 1, i32 0, i32 1
  %117 = ptrtoint ptr %cmds_count.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %sub.ptr.div.i, ptr %cmds_count.i, align 4
  %ctx.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 2
  %118 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call, ptr %ctx.i, align 4
  %error.i = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 6, i32 3
  %119 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %error.i, align 4
  %tx = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 7
  %flags6 = getelementptr inbounds %struct.sba_request, ptr %call, i32 0, i32 7, i32 1
  %120 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %flags, ptr %flags6, align 4
  %121 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -16, ptr %tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %sba_fillup_pq_single_msg.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_bcm_sba_raid__269_1775_sba_driver_init6, !1, !"__initcall__kmod_bcm_sba_raid__269_1775_sba_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1775, i32 1}
!2 = !{ptr @__exitcall_sba_driver_exit, !1, !"__exitcall_sba_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description270, !4, !"__UNIQUE_ID_description270", i1 false, i1 false}
!4 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1777, i32 1}
!5 = !{ptr @__UNIQUE_ID_author271, !6, !"__UNIQUE_ID_author271", i1 false, i1 false}
!6 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1778, i32 1}
!7 = !{ptr @__UNIQUE_ID_file272, !8, !"__UNIQUE_ID_file272", i1 false, i1 false}
!8 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1779, i32 1}
!9 = !{ptr @__UNIQUE_ID_license273, !8, !"__UNIQUE_ID_license273", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1771, i32 11}
!12 = !{ptr @sba_driver, !13, !"sba_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1767, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1638, i32 7}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1638, i32 17}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1643, i32 49}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1646, i32 7}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1720, i32 40}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1731, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sba_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @sba_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1450, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sba_receive_message._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @sba_receive_message._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/bcm-sba-raid.c", i32 370, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sba_send_mbox_request._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sba_send_mbox_request._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/bcm-sba-raid.c", i32 377, i32 3}
!45 = !{ptr @sba_send_mbox_request._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sba_send_mbox_request._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sba_prealloc_channel_resources.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1490, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/bcm-sba-raid.c", i32 484, i32 19}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/bcm-sba-raid.c", i32 485, i32 19}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/bcm-sba-raid.c", i32 486, i32 19}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/bcm-sba-raid.c", i32 487, i32 19}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/bcm-sba-raid.c", i32 488, i32 19}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/bcm-sba-raid.c", i32 489, i32 19}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1607, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sba_async_register._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sba_async_register._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1611, i32 2}
!69 = !{ptr @sba_async_register._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sba_async_register._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @sba_of_match, !77, !"sba_of_match", i1 false, i1 false}
!77 = !{!"../drivers/dma/bcm-sba-raid.c", i32 1760, i32 34}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148298534}
!88 = !{i64 2148213267, i64 2148213299, i64 2148213328, i64 2148213362, i64 2148213393, i64 2148213416}
!89 = !{i64 2148298763}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 2154641075, i64 2154641562, i64 2154641112, i64 2154641168, i64 2154641202, i64 2154641226, i64 2154641267, i64 2154641288, i64 2154641316, i64 2154641350}
!92 = !{i64 2154642575}
!93 = !{i64 2148210082, i64 2148210108, i64 2148210137, i64 2148210171, i64 2148210202, i64 2148210225}
