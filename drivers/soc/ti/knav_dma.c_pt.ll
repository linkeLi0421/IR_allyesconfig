; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/knav_dma.c_pt.bc'
source_filename = "../drivers/soc/ti/knav_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+knav_dma_device_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_knav_dma_device_ready\09\09\09\09"
module asm "\09.long\09__crc_knav_dma_device_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_knav_dma_device_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22knav_dma_device_ready\22\09\09\09\09\09"
module asm "__kstrtabns_knav_dma_device_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+knav_dma_open_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_knav_dma_open_channel\09\09\09\09"
module asm "\09.long\09__crc_knav_dma_open_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_knav_dma_open_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22knav_dma_open_channel\22\09\09\09\09\09"
module asm "__kstrtabns_knav_dma_open_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+knav_dma_close_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_knav_dma_close_channel\09\09\09\09"
module asm "\09.long\09__crc_knav_dma_close_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_knav_dma_close_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22knav_dma_close_channel\22\09\09\09\09\09"
module asm "__kstrtabns_knav_dma_close_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.knav_dma_pool_device = type { ptr, %struct.list_head }
%struct.knav_dma_device = type { i8, i8, i32, i32, i32, i32, [4 x i32], ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [32 x i8], %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.knav_dma_cfg = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.knav_dma_rx_cfg }
%struct.knav_dma_rx_cfg = type { i8, i8, i32, i32, i8, i32, i32, i32, [4 x i32], i32, i32, i32 }
%struct.reg_chan = type { i32, i32, [6 x i32] }
%struct.reg_rx_flow = type { i32, i32, i32, [2 x i32], [3 x i32] }
%struct.reg_global = type { i32, i32, i32, i32, [4 x i32] }
%struct.knav_dma_chan = type { i32, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i32, %struct.knav_dma_cfg, %struct.list_head, %struct.spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.reg_tx_sched = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }

@device_ready = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_knav_dma_device_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_knav_dma_device_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_knav_dma_device_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @knav_dma_device_ready to i32), ptr @__kstrtab_knav_dma_device_ready, ptr @__kstrtabns_knav_dma_device_ready }, section "___ksymtab_gpl+knav_dma_device_ready", align 4
@kdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@knav_dma_open_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013keystone-navigator-dma driver not registered\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"knav_dma_open_channel\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/soc/ti/knav_dma.c\00", [38 x i8] zeroinitializer }, align 32
@knav_dma_open_channel._entry_ptr = internal global ptr @knav_dma_open_channel._entry, section ".printk_index", align 4
@knav_dma_open_channel._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No DMA instance with name %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@knav_dma_open_channel._entry_ptr.7 = internal global ptr @knav_dma_open_channel._entry.3, section ".printk_index", align 4
@knav_dma_open_channel.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"knav_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"initializing %s channel %d from DMA %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"transmit\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"receive\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@knav_dma_open_channel._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad direction\0A\00", [17 x i8] zeroinitializer }, align 32
@knav_dma_open_channel._entry_ptr.15 = internal global ptr @knav_dma_open_channel._entry.13, section ".printk_index", align 4
@knav_dma_open_channel._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@knav_dma_open_channel._entry_ptr.17 = internal global ptr @knav_dma_open_channel._entry.16, section ".printk_index", align 4
@knav_dma_open_channel._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"channel %d is not in DMA %s\0A\00", [35 x i8] zeroinitializer }, align 32
@knav_dma_open_channel._entry_ptr.20 = internal global ptr @knav_dma_open_channel._entry.18, section ".printk_index", align 4
@knav_dma_open_channel._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"channel %d config miss-match\0A\00", [34 x i8] zeroinitializer }, align 32
@knav_dma_open_channel._entry_ptr.23 = internal global ptr @knav_dma_open_channel._entry.21, section ".printk_index", align 4
@knav_dma_open_channel.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.24, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel %d opened from DMA %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_knav_dma_open_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_knav_dma_open_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_knav_dma_open_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @knav_dma_open_channel to i32), ptr @__kstrtab_knav_dma_open_channel, ptr @__kstrtabns_knav_dma_open_channel }, section "___ksymtab_gpl+knav_dma_open_channel", align 4
@knav_dma_close_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"knav_dma_close_channel\00", [41 x i8] zeroinitializer }, align 32
@knav_dma_close_channel._entry_ptr = internal global ptr @knav_dma_close_channel._entry, section ".printk_index", align 4
@knav_dma_close_channel.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"channel %d or flow %d closed from DMA %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_knav_dma_close_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_knav_dma_close_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_knav_dma_close_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @knav_dma_close_channel to i32), ptr @__kstrtab_knav_dma_close_channel, ptr @__kstrtabns_knav_dma_close_channel }, section "___ksymtab_gpl+knav_dma_close_channel", align 4
@__initcall__kmod_knav_dma__244_817_knav_dma_driver_init6 = internal global ptr @knav_dma_driver_init, section ".initcall6.init", align 4
@knav_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @knav_dma_probe, ptr @knav_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.41, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_knav_dma_driver_exit = internal global ptr @knav_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file245 = internal constant [38 x i8] c"knav_dma.file=drivers/soc/ti/knav_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"knav_dma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [61 x i8] c"knav_dma.description=TI Keystone Navigator Packet DMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [48 x i8] c"knav_dma.author=Sandeep Nair <sandeep_n@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [61 x i8] c"knav_dma.author=Santosh Shilimkar <santosh.shilimkar@ti.com>\00", section ".modinfo", align 1
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,navigator-dmas\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,navigator-dma-names\00", [41 x i8] zeroinitializer }, align 32
@of_channel_match_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No 'ti,navigator-dma-names' property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_channel_match_helper\00", [40 x i8] zeroinitializer }, align 32
@of_channel_match_helper._entry_ptr = internal global ptr @of_channel_match_helper._entry, section ".printk_index", align 4
@of_channel_match_helper._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Missing the phandle args name %s\0A\00", [62 x i8] zeroinitializer }, align 32
@of_channel_match_helper._entry_ptr.33 = internal global ptr @of_channel_match_helper._entry.31, section ".printk_index", align 4
@of_channel_match_helper._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Missing args for %s\0A\00", [43 x i8] zeroinitializer }, align 32
@of_channel_match_helper._entry_ptr.36 = internal global ptr @of_channel_match_helper._entry.34, section ".printk_index", align 4
@chan_stop.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chan_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel stopped\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@chan_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for teardown\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chan_teardown\00", [18 x i8] zeroinitializer }, align 32
@chan_teardown._entry_ptr = internal global ptr @chan_teardown._entry, section ".printk_index", align 4
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"keystone-navigator-dma\00", [41 x i8] zeroinitializer }, align 32
@of_match = internal global { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-navigator-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@knav_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 735, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not find device info\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"knav_dma_probe\00", [17 x i8] zeroinitializer }, align 32
@knav_dma_probe._entry_ptr = internal global ptr @knav_dma_probe._entry, section ".printk_index", align 4
@knav_dma_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 742, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not allocate driver mem\0A\00", [33 x i8] zeroinitializer }, align 32
@knav_dma_probe._entry_ptr.46 = internal global ptr @knav_dma_probe._entry.44, section ".printk_index", align 4
@knav_dma_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 753, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable pktdma, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@knav_dma_probe._entry_ptr.49 = internal global ptr @knav_dma_probe._entry.47, section ".printk_index", align 4
@knav_dma_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init failed with %d\0A\00", [43 x i8] zeroinitializer }, align 32
@knav_dma_probe._entry_ptr.52 = internal global ptr @knav_dma_probe._entry.50, section ".printk_index", align 4
@knav_dma_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.2, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no valid dma instance\0A\00", [41 x i8] zeroinitializer }, align 32
@knav_dma_probe._entry_ptr.55 = internal global ptr @knav_dma_probe._entry.53, section ".printk_index", align 4
@knav_dma_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @knav_dma_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.56, ptr @.str.2, i32 622, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_init\00", [23 x i8] zeroinitializer }, align 32
@dma_init._entry_ptr = internal global ptr @dma_init._entry, section ".printk_index", align 4
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,navigator-cloud-address\00", [37 x i8] zeroinitializer }, align 32
@dma_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.2, i32 629, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unspecified navigator cloud addresses\0A\00", [57 x i8] zeroinitializer }, align 32
@dma_init._entry_ptr.60 = internal global ptr @dma_init._entry.58, section ".printk_index", align 4
@dma_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.2, i32 636, ptr @.str.63, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"too many queue mgrs(>%d) rest ignored\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dma_init._entry_ptr.64 = internal global ptr @dma_init._entry.61, section ".printk_index", align 4
@dma_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.56, ptr @.str.2, i32 644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid navigator cloud addresses\0A\00", [61 x i8] zeroinitializer }, align 32
@dma_init._entry_ptr.67 = internal global ptr @dma_init._entry.65, section ".printk_index", align 4
@dma_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.2, i32 652, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad size %pa for global regs\0A\00", [34 x i8] zeroinitializer }, align 32
@dma_init._entry_ptr.70 = internal global ptr @dma_init._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,enable-all\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,loop-back\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,rx-retry-timeout\00", [44 x i8] zeroinitializer }, align 32
@dma_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.56, ptr @.str.2, ptr @.str.74, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unspecified rx timeout using value %d\0A\00", [57 x i8] zeroinitializer }, align 32
@dma_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dma->lock\00", [21 x i8] zeroinitializer }, align 32
@dma_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.56, ptr @.str.2, i32 722, ptr @.str.78, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"DMA %s registered %d logical channels, flows %d, tx chans: %d, rx chans: %d%s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dma_init._entry_ptr.79 = internal global ptr @dma_init._entry.76, section ".printk_index", align 4
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", loopback\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pktdma_get_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Can't translate of node(%pOFn) address for index(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pktdma_get_regs\00", [16 x i8] zeroinitializer }, align 32
@pktdma_get_regs._entry_ptr = internal global ptr @pktdma_get_regs._entry, section ".printk_index", align 4
@pktdma_get_regs._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to map register base for index(%d) node(%pOFn)\0A\00", [41 x i8] zeroinitializer }, align 32
@pktdma_get_regs._entry_ptr.86 = internal global ptr @pktdma_get_regs._entry.84, section ".printk_index", align 4
@pktdma_init_chan.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@pktdma_init_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel(%d) direction unknown\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pktdma_init_chan\00", [47 x i8] zeroinitializer }, align 32
@pktdma_init_chan._entry_ptr = internal global ptr @pktdma_init_chan._entry, section ".printk_index", align 4
@pktdma_init_tx_chan.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pktdma_init_tx_chan\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx channel(%d) (%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@pktdma_init_rx_chan.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pktdma_init_rx_chan\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx flow(%d) (%p)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s : max_tx_chan: (%d), max_rx_flows: (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09%s %d:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx chan\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx flow\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"einfo - %d, pswords - %d, priority - %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"einfo - %d, psinfo - %d, desc_type - %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\09\09\09dst_q: [%d], thresh: %d fdq: \00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%d]\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"device_ready\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [5 x i8] c"kdev\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 135, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 425, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 431, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 435, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 442, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 454, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 474, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 481, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 493, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 511, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 521, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"knav_dma_driver\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 809, i32 31 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 382, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 387, i32 39 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 389, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 395, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 400, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 261, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 229, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 813, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant [9 x i8] c"of_match\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 802, i32 28 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 735, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 742, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 753, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 762, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 768, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"knav_dma_debug_fops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 373, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 622, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 628, i32 31 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 629, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 635, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 644, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 652, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 679, i32 43 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 680, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 682, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 684, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 695, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 719, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 537, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 544, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 593, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 602, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 572, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 559, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 364, i32 18 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 324, i32 16 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 325, i32 42 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 325, i32 54 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 329, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 334, i32 17 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 338, i32 17 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 342, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private constant [29 x i8] c"../drivers/soc/ti/knav_dma.c\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 343, i32 17 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_knav_dma_driver_exit, ptr @__initcall__kmod_knav_dma__244_817_knav_dma_driver_init6, ptr @__ksymtab_knav_dma_close_channel, ptr @__ksymtab_knav_dma_device_ready, ptr @__ksymtab_knav_dma_open_channel, ptr @chan_teardown._entry, ptr @chan_teardown._entry_ptr, ptr @dma_init._entry, ptr @dma_init._entry.58, ptr @dma_init._entry.61, ptr @dma_init._entry.65, ptr @dma_init._entry.68, ptr @dma_init._entry.76, ptr @dma_init._entry_ptr, ptr @dma_init._entry_ptr.60, ptr @dma_init._entry_ptr.64, ptr @dma_init._entry_ptr.67, ptr @dma_init._entry_ptr.70, ptr @dma_init._entry_ptr.79, ptr @knav_dma_close_channel._entry, ptr @knav_dma_close_channel._entry_ptr, ptr @knav_dma_driver_exit, ptr @knav_dma_open_channel._entry, ptr @knav_dma_open_channel._entry.13, ptr @knav_dma_open_channel._entry.16, ptr @knav_dma_open_channel._entry.18, ptr @knav_dma_open_channel._entry.21, ptr @knav_dma_open_channel._entry.3, ptr @knav_dma_open_channel._entry_ptr, ptr @knav_dma_open_channel._entry_ptr.15, ptr @knav_dma_open_channel._entry_ptr.17, ptr @knav_dma_open_channel._entry_ptr.20, ptr @knav_dma_open_channel._entry_ptr.23, ptr @knav_dma_open_channel._entry_ptr.7, ptr @knav_dma_probe._entry, ptr @knav_dma_probe._entry.44, ptr @knav_dma_probe._entry.47, ptr @knav_dma_probe._entry.50, ptr @knav_dma_probe._entry.53, ptr @knav_dma_probe._entry_ptr, ptr @knav_dma_probe._entry_ptr.46, ptr @knav_dma_probe._entry_ptr.49, ptr @knav_dma_probe._entry_ptr.52, ptr @knav_dma_probe._entry_ptr.55, ptr @of_channel_match_helper._entry, ptr @of_channel_match_helper._entry.31, ptr @of_channel_match_helper._entry.34, ptr @of_channel_match_helper._entry_ptr, ptr @of_channel_match_helper._entry_ptr.33, ptr @of_channel_match_helper._entry_ptr.36, ptr @pktdma_get_regs._entry, ptr @pktdma_get_regs._entry.84, ptr @pktdma_get_regs._entry_ptr, ptr @pktdma_get_regs._entry_ptr.86, ptr @pktdma_init_chan._entry, ptr @pktdma_init_chan._entry_ptr, ptr @device_ready, ptr @kdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @knav_dma_driver, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @of_match, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @knav_dma_debug_fops, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @dma_init.__key, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @pktdma_init_chan.__key, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_ready to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_open_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_open_channel._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_open_channel._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_open_channel._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_open_channel._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_open_channel._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_close_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_channel_match_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_channel_match_helper._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_channel_match_helper._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @knav_dma_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pktdma_get_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pktdma_get_regs._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pktdma_init_chan.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pktdma_init_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @knav_dma_device_ready() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @device_ready, align 1
  ret i1 %.b1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @knav_dma_open_channel(ptr nocapture noundef readonly %dev, ptr noundef %name, ptr nocapture noundef readonly %config) #1 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #11
  %4 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i173 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %tobool.not.i.i = icmp eq i32 %call.i.i173, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #11
  br label %of_channel_match_helper.exit.thread

of_parse_phandle.exit.i:                          ; preds = %if.end
  %5 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #11
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.of_channel_match_helper.exit.thread_crit_edge, label %if.end.i

of_parse_phandle.exit.i.of_channel_match_helper.exit.thread_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_channel_match_helper.exit.thread

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call2.i = call i32 @of_property_match_string(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load ptr, ptr @kdev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29) #14
  br label %of_channel_match_helper.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i31.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 1, i32 noundef %call2.i, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool6.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool6.not.i, label %of_channel_match_helper.exit, label %do.end10.i

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = load ptr, ptr @kdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.32, ptr noundef %name) #14
  br label %of_channel_match_helper.exit.thread

of_channel_match_helper.exit.thread:              ; preds = %do.end10.i, %do.end.i, %of_parse_phandle.exit.i.of_channel_match_helper.exit.thread_crit_edge, %of_parse_phandle.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %do.end5

of_channel_match_helper.exit:                     ; preds = %if.end4.i
  %args13.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %15 = ptrtoint ptr %args13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %args13.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %of_channel_match_helper.exit.do.end5_crit_edge, label %do.body8

of_channel_match_helper.exit.do.end5_crit_edge:   ; preds = %of_channel_match_helper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end5:                                          ; preds = %of_channel_match_helper.exit.do.end5_crit_edge, %of_channel_match_helper.exit.thread
  %17 = load ptr, ptr @kdev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef %name) #14
  br label %cleanup

do.body8:                                         ; preds = %of_channel_match_helper.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_dma_open_channel.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_dma_open_channel, %if.then14)) #11
          to label %do.end22 [label %if.then14], !srcloc !215

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %20 = load ptr, ptr @kdev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp16 = icmp eq i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp18 = icmp eq i32 %24, 2
  %cond = select i1 %cmp18, ptr @.str.11, ptr @.str.12
  %cond19 = select i1 %cmp16, ptr @.str.10, ptr %cond
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_dma_open_channel.__UNIQUE_ID_ddebug236, ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond19, i32 noundef %16, ptr noundef %8) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then14, %do.body8
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %config, align 4
  %.off = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %27 = load ptr, ptr @kdev, align 4
  br i1 %switch, label %if.end32, label %do.end30

do.end30:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.end32:                                         ; preds = %do.end22
  %list = getelementptr inbounds %struct.knav_dma_pool_device, ptr %27, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end32
  %.pn.in = phi ptr [ %list, %if.end32 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %30 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp36.not = icmp eq ptr %.pn, %list
  br i1 %cmp36.not, label %do.end53.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %name39 = getelementptr i8, ptr %.pn, i32 -36
  %call40 = call i32 @strcmp(ptr noundef %name39, ptr noundef %8) #15
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end55, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.end53.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef %8) #14
  br label %cleanup

if.end55:                                         ; preds = %for.body
  %chan_list = getelementptr i8, ptr %.pn, i32 8
  %33 = ptrtoint ptr %chan_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn165197 = load ptr, ptr %chan_list, align 4
  %cmp63.not198 = icmp eq ptr %.pn165197, %chan_list
  br i1 %cmp63.not198, label %if.end55.do.end88.critedge_crit_edge, label %for.body66.lr.ph

if.end55.do.end88.critedge_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88.critedge

for.body66.lr.ph:                                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp68 = icmp eq i32 %26, 1
  br label %for.body66

for.body66:                                       ; preds = %for.inc77.for.body66_crit_edge, %for.body66.lr.ph
  %.pn165199 = phi ptr [ %.pn165197, %for.body66.lr.ph ], [ %.pn165, %for.inc77.for.body66_crit_edge ]
  br i1 %cmp68, label %if.then69, label %if.else

if.then69:                                        ; preds = %for.body66
  %channel = getelementptr i8, ptr %.pn165199, i32 -68
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %16)
  %cmp70 = icmp eq i32 %35, %16
  br i1 %cmp70, label %if.then69.if.end90_crit_edge, label %if.then69.for.inc77_crit_edge

if.then69.for.inc77_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc77

if.then69.if.end90_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.else:                                          ; preds = %for.body66
  %flow = getelementptr i8, ptr %.pn165199, i32 -64
  %36 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %16)
  %cmp73 = icmp eq i32 %37, %16
  br i1 %cmp73, label %if.else.if.end90_crit_edge, label %if.else.for.inc77_crit_edge

if.else.for.inc77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc77

if.else.if.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

for.inc77:                                        ; preds = %if.else.for.inc77_crit_edge, %if.then69.for.inc77_crit_edge
  %38 = ptrtoint ptr %.pn165199 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn165 = load ptr, ptr %.pn165199, align 4
  %cmp63.not = icmp eq ptr %.pn165, %chan_list
  br i1 %cmp63.not, label %for.inc77.do.end88.critedge_crit_edge, label %for.inc77.for.body66_crit_edge

for.inc77.for.body66_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body66

for.inc77.do.end88.critedge_crit_edge:            ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88.critedge

do.end88.critedge:                                ; preds = %for.inc77.do.end88.critedge_crit_edge, %if.end55.do.end88.critedge_crit_edge
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.19, i32 noundef %16, ptr noundef %8) #14
  br label %cleanup

if.end90:                                         ; preds = %if.else.if.end90_crit_edge, %if.then69.if.end90_crit_edge
  %chan.0.le = getelementptr i8, ptr %.pn165199, i32 -92
  %ref_count = getelementptr i8, ptr %.pn165199, i32 -84
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #11
  %41 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp92 = icmp sgt i32 %42, 0
  br i1 %cmp92, label %if.then93, label %if.end90.if.end101_crit_edge

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then93:                                        ; preds = %if.end90
  %cfg1.i = getelementptr i8, ptr %.pn165199, i32 -60
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(60) %cfg1.i, ptr noundef dereferenceable(60) %config, i32 60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i175 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i175, label %if.then93.if.end101_crit_edge, label %do.end98

if.then93.if.end101_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

do.end98:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %43 = load ptr, ptr @kdev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.22, i32 noundef %16) #14
  br label %cleanup

if.end101:                                        ; preds = %if.then93.if.end101_crit_edge, %if.end90.if.end101_crit_edge
  %dma102 = getelementptr i8, ptr %.pn165199, i32 -88
  %46 = ptrtoint ptr %dma102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma102, align 4
  %ref_count103 = getelementptr inbounds %struct.knav_dma_device, ptr %47, i32 0, i32 16
  %call.i.i167 = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count103, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !216
  call void @llvm.prefetch.p0(ptr %ref_count103, i32 1, i32 3, i32 1) #11
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count103, ptr %ref_count103, i32 1, ptr elementtype(i32) %ref_count103) #11, !srcloc !217
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i)
  %cmp105 = icmp slt i32 %asmresult.i.i.i.i, 2
  br i1 %cmp105, label %if.then106, label %if.end101.if.end108_crit_edge

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %dma102 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma102, align 4
  call fastcc void @knav_dma_hw_init(ptr noundef %50)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end101.if.end108_crit_edge
  %call.i.i168 = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !216
  call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #11
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #11, !srcloc !217
  %asmresult.i.i.i.i169 = extractvalue { i32, i32 } %51, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i169)
  %cmp111 = icmp slt i32 %asmresult.i.i.i.i169, 2
  br i1 %cmp111, label %if.then112, label %if.end108.do.body115_crit_edge

if.end108.do.body115_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

if.then112:                                       ; preds = %if.end108
  %lock.i = getelementptr i8, ptr %.pn165199, i32 8
  call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %52 = ptrtoint ptr %chan.0.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chan.0.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i176 = icmp eq i32 %53, 1
  br i1 %cmp.i176, label %land.lhs.true.i, label %if.then112.if.end10.i_crit_edge

if.then112.if.end10.i_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.then112
  %reg_chan.i = getelementptr i8, ptr %.pn165199, i32 -80
  %54 = ptrtoint ptr %reg_chan.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_chan.i, align 4
  %tobool.not.i177 = icmp eq ptr %55, null
  br i1 %tobool.not.i177, label %land.lhs.true.i.if.end10.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %u.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1
  %filt_pswords.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %filt_pswords.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %filt_pswords.i, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not.i = icmp eq i8 %57, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 0, i32 32
  %58 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %u.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool4.not.i = icmp eq i8 %59, 0
  %60 = or i32 %spec.select.i, 64
  %61 = select i1 %tobool4.not.i, i32 %spec.select.i, i32 %60
  %mode.i = getelementptr inbounds %struct.reg_chan, ptr %55, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode.i, i32 %61) #11, !srcloc !220
  %62 = ptrtoint ptr %reg_chan.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_chan.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 128) #11, !srcloc !220
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end10.i_crit_edge, %if.then112.if.end10.i_crit_edge
  %reg_tx_sched.i = getelementptr i8, ptr %.pn165199, i32 -76
  %64 = ptrtoint ptr %reg_tx_sched.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_tx_sched.i, align 4
  %tobool11.not.i = icmp eq ptr %65, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then12.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %priority.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %priority.i, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %65, i32 %68) #11, !srcloc !220
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end15.i_crit_edge
  %reg_rx_flow.i = getelementptr i8, ptr %.pn165199, i32 -72
  %69 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_rx_flow.i, align 4
  %tobool16.not.i = icmp eq ptr %70, null
  br i1 %tobool16.not.i, label %if.end15.i.chan_start.exit_crit_edge, label %if.then17.i

if.end15.i.chan_start.exit_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chan_start.exit

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %u18.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1
  %71 = ptrtoint ptr %u18.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %u18.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool19.not.i = icmp eq i8 %72, 0
  %spec.select1.i = select i1 %tobool19.not.i, i32 0, i32 1073741824
  %psinfo_present.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %psinfo_present.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %psinfo_present.i, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool24.not.i = icmp eq i8 %74, 0
  %or26.i = or i32 %spec.select1.i, 536870912
  %v.3.i = select i1 %tobool24.not.i, i32 %spec.select1.i, i32 %or26.i
  %err_mode.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 2
  %75 = ptrtoint ptr %err_mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %err_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp29.i = icmp eq i32 %76, 1
  %or31.i = or i32 %v.3.i, 268435456
  %v.4.i = select i1 %cmp29.i, i32 %or31.i, i32 %v.3.i
  %desc_type.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 3
  %77 = ptrtoint ptr %desc_type.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %desc_type.i, align 4
  %and.i = shl i32 %78, 26
  %shl.i = and i32 %and.i, 469762048
  %or34.i = or i32 %v.4.i, %shl.i
  %psinfo_at_sop.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 4
  %79 = ptrtoint ptr %psinfo_at_sop.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %psinfo_at_sop.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool36.not.i = icmp eq i8 %80, 0
  %or38.i = or i32 %or34.i, 33554432
  %v.5.i = select i1 %tobool36.not.i, i32 %or34.i, i32 %or38.i
  %sop_offset.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 5
  %81 = ptrtoint ptr %sop_offset.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sop_offset.i, align 4
  %and41.i = shl i32 %82, 16
  %shl42.i = and i32 %and41.i, 67043328
  %dst_q.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 6
  %83 = ptrtoint ptr %dst_q.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dst_q.i, align 4
  %and45.i = and i32 %84, 32767
  %or43.i = or i32 %and45.i, %shl42.i
  %or46.i = or i32 %or43.i, %v.5.i
  %85 = call i32 @llvm.bswap.i32(i32 %or46.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %85) #11, !srcloc !220
  %86 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_rx_flow.i, align 4
  %tags.i = getelementptr inbounds %struct.reg_rx_flow, ptr %87, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tags.i, i32 0) #11, !srcloc !220
  %88 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_rx_flow.i, align 4
  %tag_sel.i = getelementptr inbounds %struct.reg_rx_flow, ptr %89, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tag_sel.i, i32 0) #11, !srcloc !220
  %fdq.i = getelementptr inbounds %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 8
  %90 = ptrtoint ptr %fdq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fdq.i, align 4
  %shl52.i = shl i32 %91, 16
  %arrayidx55.i = getelementptr %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx55.i, align 4
  %and56.i = and i32 %93, 32767
  %or57.i = or i32 %and56.i, %shl52.i
  %94 = call i32 @llvm.bswap.i32(i32 %or57.i) #11
  %95 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_rx_flow.i, align 4
  %fdq_sel.i = getelementptr inbounds %struct.reg_rx_flow, ptr %96, i32 0, i32 3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fdq_sel.i, i32 %94) #11, !srcloc !220
  %arrayidx62.i = getelementptr %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 8, i32 2
  %97 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx62.i, align 4
  %shl63.i = shl i32 %98, 16
  %arrayidx66.i = getelementptr %struct.knav_dma_cfg, ptr %config, i32 0, i32 1, i32 0, i32 8, i32 3
  %99 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx66.i, align 4
  %and67.i = and i32 %100, 32767
  %or68.i = or i32 %and67.i, %shl63.i
  %101 = call i32 @llvm.bswap.i32(i32 %or68.i) #11
  %102 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg_rx_flow.i, align 4
  %arrayidx71.i = getelementptr %struct.reg_rx_flow, ptr %103, i32 0, i32 3, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx71.i, i32 %101) #11, !srcloc !220
  %104 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_rx_flow.i, align 4
  %thresh.i = getelementptr inbounds %struct.reg_rx_flow, ptr %105, i32 0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %thresh.i, i32 0) #11, !srcloc !220
  %106 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_rx_flow.i, align 4
  %arrayidx76.i = getelementptr %struct.reg_rx_flow, ptr %107, i32 0, i32 4, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx76.i, i32 0) #11, !srcloc !220
  %108 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg_rx_flow.i, align 4
  %arrayidx79.i = getelementptr %struct.reg_rx_flow, ptr %109, i32 0, i32 4, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx79.i, i32 0) #11, !srcloc !220
  br label %chan_start.exit

chan_start.exit:                                  ; preds = %if.then17.i, %if.end15.i.chan_start.exit_crit_edge
  %cfg81.i = getelementptr i8, ptr %.pn165199, i32 -60
  %110 = call ptr @memcpy(ptr %cfg81.i, ptr %config, i32 60)
  call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  br label %do.body115

do.body115:                                       ; preds = %chan_start.exit, %if.end108.do.body115_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_dma_open_channel.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_dma_open_channel, %if.then127)) #11
          to label %cleanup [label %if.then127], !srcloc !215

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %111 = load ptr, ptr @kdev, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_dma_open_channel.__UNIQUE_ID_ddebug237, ptr noundef %113, ptr noundef nonnull @.str.24, i32 noundef %16, ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %do.body115, %do.end98, %do.end88.critedge, %do.end53.critedge, %do.end30, %do.end5, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end5 ], [ inttoptr (i32 -22 to ptr), %do.end30 ], [ inttoptr (i32 -22 to ptr), %do.end98 ], [ inttoptr (i32 -22 to ptr), %do.end88.critedge ], [ inttoptr (i32 -22 to ptr), %do.end53.critedge ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %chan.0.le, %if.then127 ], [ %chan.0.le, %do.body115 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @knav_dma_hw_init(ptr noundef %dma) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 128
  %reg_global = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 7
  %2 = ptrtoint ptr %reg_global to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_global, align 4
  %emulation_control = getelementptr inbounds %struct.reg_global, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %emulation_control, i32 %cond) #11, !srcloc !220
  %4 = ptrtoint ptr %reg_global to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_global, align 4
  %perf_control = getelementptr inbounds %struct.reg_global, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %perf_control) #11, !srcloc !221
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %rx_timeout = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 4
  %8 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_timeout, align 4
  %and = and i32 %9, 131071
  %or = or i32 %and, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %reg_global to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_global, align 4
  %perf_control3 = getelementptr inbounds %struct.reg_global, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %perf_control3, i32 %10) #11, !srcloc !220
  %tx_priority = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 2
  %13 = ptrtoint ptr %tx_priority to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_priority, align 4
  %rx_priority = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 3
  %15 = ptrtoint ptr %rx_priority to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_priority, align 4
  %shl5 = shl i32 %16, 16
  %or6 = or i32 %shl5, %14
  %17 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %18 = ptrtoint ptr %reg_global to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_global, align 4
  %priority_control = getelementptr inbounds %struct.reg_global, ptr %19, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %priority_control, i32 %17) #11, !srcloc !220
  %max_rx_chan = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 12
  %20 = ptrtoint ptr %max_rx_chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rx_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp42.not = icmp eq i32 %21, 0
  br i1 %cmp42.not, label %entry.for.cond8.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %reg_rx_chan = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 10
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  %logical_queue_managers = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 5
  %22 = ptrtoint ptr %logical_queue_managers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logical_queue_managers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp944.not = icmp eq i32 %23, 0
  br i1 %cmp944.not, label %for.cond8.preheader.for.end17_crit_edge, label %for.cond8.preheader.for.body10_crit_edge

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8.preheader.for.end17_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end17

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %reg_rx_chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_rx_chan, align 4
  %arrayidx = getelementptr %struct.reg_chan, ptr %25, i32 %i.043
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 128) #11, !srcloc !220
  %inc = add nuw i32 %i.043, 1
  %26 = ptrtoint ptr %max_rx_chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_rx_chan, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond8.preheader_crit_edge

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond8.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %i.145 = phi i32 [ %inc16, %for.body10.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.knav_dma_device, ptr %dma, i32 0, i32 6, i32 %i.145
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %reg_global to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_global, align 4
  %arrayidx14 = getelementptr %struct.reg_global, ptr %32, i32 0, i32 4, i32 %i.145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx14, i32 %30) #11, !srcloc !220
  %inc16 = add nuw i32 %i.145, 1
  %33 = ptrtoint ptr %logical_queue_managers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logical_queue_managers, align 4
  %cmp9 = icmp ult i32 %inc16, %34
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end17_crit_edge

for.body10.for.end17_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end17

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

for.end17:                                        ; preds = %for.body10.for.end17_crit_edge, %for.cond8.preheader.for.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @knav_dma_close_channel(ptr noundef %channel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_count = getelementptr inbounds %struct.knav_dma_chan, ptr %channel, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #11, !srcloc !223
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @chan_stop(ptr noundef %channel)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %dma = getelementptr inbounds %struct.knav_dma_chan, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %ref_count4 = getelementptr inbounds %struct.knav_dma_device, ptr %3, i32 0, i32 16
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count4, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %ref_count4, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count4, ptr %ref_count4, i32 1, ptr elementtype(i32) %ref_count4) #11, !srcloc !223
  %asmresult.i.i.i.i29 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i29)
  %cmp6 = icmp slt i32 %asmresult.i.i.i.i29, 1
  br i1 %cmp6, label %if.then7, label %if.end3.do.body10_crit_edge

if.end3.do.body10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

if.then7:                                         ; preds = %if.end3
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma, align 4
  %lock.i = getelementptr inbounds %struct.knav_dma_device, ptr %6, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %max_rx_chan.i = getelementptr inbounds %struct.knav_dma_device, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %max_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rx_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp21.not.i = icmp eq i32 %8, 0
  br i1 %cmp21.not.i, label %if.then7.for.cond1.preheader.i_crit_edge, label %for.body.lr.ph.i

if.then7.for.cond1.preheader.i_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.then7
  %reg_rx_chan.i = getelementptr inbounds %struct.knav_dma_device, ptr %6, i32 0, i32 10
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %if.then7.for.cond1.preheader.i_crit_edge
  %max_tx_chan.i = getelementptr inbounds %struct.knav_dma_device, ptr %6, i32 0, i32 13
  %9 = ptrtoint ptr %max_tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_tx_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp223.not.i = icmp eq i32 %10, 0
  br i1 %cmp223.not.i, label %for.cond1.preheader.i.knav_dma_hw_destroy.exit_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.knav_dma_hw_destroy.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %knav_dma_hw_destroy.exit

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %reg_tx_chan.i = getelementptr inbounds %struct.knav_dma_device, ptr %6, i32 0, i32 8
  br label %for.body3.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %reg_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_rx_chan.i, align 4
  %arrayidx.i = getelementptr %struct.reg_chan, ptr %12, i32 %i.022.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 -129) #11, !srcloc !220
  %inc.i = add nuw i32 %i.022.i, 1
  %13 = ptrtoint ptr %max_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_rx_chan.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %i.124.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc7.i, %for.body3.i.for.body3.i_crit_edge ]
  %15 = ptrtoint ptr %reg_tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_tx_chan.i, align 4
  %arrayidx4.i = getelementptr %struct.reg_chan, ptr %16, i32 %i.124.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4.i, i32 -129) #11, !srcloc !220
  %inc7.i = add nuw i32 %i.124.i, 1
  %17 = ptrtoint ptr %max_tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_tx_chan.i, align 4
  %cmp2.i = icmp ult i32 %inc7.i, %18
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.knav_dma_hw_destroy.exit_crit_edge

for.body3.i.knav_dma_hw_destroy.exit_crit_edge:   ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %knav_dma_hw_destroy.exit

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

knav_dma_hw_destroy.exit:                         ; preds = %for.body3.i.knav_dma_hw_destroy.exit_crit_edge, %for.cond1.preheader.i.knav_dma_hw_destroy.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  br label %do.body10

do.body10:                                        ; preds = %knav_dma_hw_destroy.exit, %if.end3.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @knav_dma_close_channel.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@knav_dma_close_channel, %if.then16)) #11
          to label %cleanup [label %if.then16], !srcloc !215

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %19 = load ptr, ptr @kdev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %channel17 = getelementptr inbounds %struct.knav_dma_chan, ptr %channel, i32 0, i32 6
  %22 = ptrtoint ptr %channel17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel17, align 4
  %flow = getelementptr inbounds %struct.knav_dma_chan, ptr %channel, i32 0, i32 7
  %24 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flow, align 4
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma, align 4
  %name = getelementptr inbounds %struct.knav_dma_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @knav_dma_close_channel.__UNIQUE_ID_ddebug238, ptr noundef %21, ptr noundef nonnull @.str.26, i32 noundef %23, i32 noundef %25, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body10, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chan_stop(ptr noundef %chan) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.knav_dma_chan, ptr %chan, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %reg_rx_flow = getelementptr inbounds %struct.knav_dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_rx_flow, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fdq_sel = getelementptr inbounds %struct.reg_rx_flow, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fdq_sel, i32 0) #11, !srcloc !220
  %2 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_rx_flow, align 4
  %arrayidx4 = getelementptr %struct.reg_rx_flow, ptr %3, i32 0, i32 3, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4, i32 0) #11, !srcloc !220
  %4 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_rx_flow, align 4
  %thresh = getelementptr inbounds %struct.reg_rx_flow, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %thresh, i32 0) #11, !srcloc !220
  %6 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_rx_flow, align 4
  %arrayidx9 = getelementptr %struct.reg_rx_flow, ptr %7, i32 0, i32 4, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx9, i32 0) #11, !srcloc !220
  %8 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_rx_flow, align 4
  %arrayidx12 = getelementptr %struct.reg_rx_flow, ptr %9, i32 0, i32 4, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12, i32 0) #11, !srcloc !220
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_chan.i = getelementptr inbounds %struct.knav_dma_chan, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %reg_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_chan.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.chan_teardown.exit_crit_edge, label %if.end.i

if.end.chan_teardown.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %chan_teardown.exit

if.end.i:                                         ; preds = %if.end
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 64) #11, !srcloc !220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = xor i32 %12, -1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %13 = ptrtoint ptr %reg_chan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_chan.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !221
  %.mask.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp.i, label %do.body.i.do.end.i_crit_edge, label %do.cond.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %16, %add.neg.i
  %cmp7.i = icmp slt i32 %sub.i, 0
  br i1 %cmp7.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.do.end.i_crit_edge

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %17 = ptrtoint ptr %reg_chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_chan.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !221
  %.mask1.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1.i)
  %tobool14.not.i = icmp eq i32 %.mask1.i, 0
  br i1 %tobool14.not.i, label %do.end.i.chan_teardown.exit_crit_edge, label %do.end18.i

do.end.i.chan_teardown.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chan_teardown.exit

do.end18.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = load ptr, ptr @kdev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.39) #14
  br label %chan_teardown.exit

chan_teardown.exit:                               ; preds = %do.end18.i, %do.end.i.chan_teardown.exit_crit_edge, %if.end.chan_teardown.exit_crit_edge
  %23 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_rx_flow, align 4
  %tobool14.not = icmp eq ptr %24, null
  br i1 %tobool14.not, label %chan_teardown.exit.if.end19_crit_edge, label %if.then15

chan_teardown.exit.if.end19_crit_edge:            ; preds = %chan_teardown.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then15:                                        ; preds = %chan_teardown.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 0) #11, !srcloc !220
  %25 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_rx_flow, align 4
  %tags = getelementptr inbounds %struct.reg_rx_flow, ptr %26, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tags, i32 0) #11, !srcloc !220
  %27 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_rx_flow, align 4
  %tag_sel = getelementptr inbounds %struct.reg_rx_flow, ptr %28, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tag_sel, i32 0) #11, !srcloc !220
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %chan_teardown.exit.if.end19_crit_edge
  %cfg = getelementptr inbounds %struct.knav_dma_chan, ptr %chan, i32 0, i32 8
  %29 = call ptr @memset(ptr %cfg, i32 0, i32 60)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_stop.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_stop, %if.then25)) #11
          to label %do.end [label %if.then25], !srcloc !215

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %30 = load ptr, ptr @kdev, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chan_stop.__UNIQUE_ID_ddebug235, ptr noundef %32, ptr noundef nonnull @.str.38) #11
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_dma_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @knav_dma_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @knav_dma_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @knav_dma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_dma_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #11
  store ptr %call.i, ptr @kdev, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %list = getelementptr inbounds %struct.knav_dma_pool_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.knav_dma_pool_device, ptr %call.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  %5 = load ptr, ptr @kdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i64 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp = icmp slt i32 %call.i64, 0
  br i1 %cmp, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end9
  %8 = load ptr, ptr @kdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !225
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !226
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then14.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then14.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !227
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then14.pm_runtime_put_noidle.exit_crit_edge
  %12 = load ptr, ptr @kdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.48, i32 noundef %call.i64) #14
  br label %err_pm_disable

if.end20:                                         ; preds = %if.end9
  %call21 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #11
  %cmp22.not68 = icmp eq ptr %call21, null
  br i1 %cmp22.not68, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %child.069 = phi ptr [ %call31, %for.inc.for.body_crit_edge ], [ %call21, %if.end20.for.body_crit_edge ]
  %call23 = tail call fastcc i32 @dma_init(ptr noundef nonnull %1, ptr noundef nonnull %child.069)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.inc, label %if.then25

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_node_put(ptr noundef nonnull %child.069) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %call23) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %call31 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.069) #11
  %cmp22.not = icmp eq ptr %call31, null
  br i1 %cmp22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then25, %if.end20.for.end_crit_edge
  %ret.1 = phi i32 [ %call23, %if.then25 ], [ %call.i64, %if.end20.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %15 = load ptr, ptr @kdev, align 4
  %list32 = getelementptr inbounds %struct.knav_dma_pool_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %list32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %list32, align 4
  %cmp.i.not = icmp eq ptr %17, %list32
  br i1 %cmp.i.not, label %do.end38, label %if.end39

do.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #14
  %18 = load ptr, ptr @kdev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i65 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 4) #11
  br label %err_pm_disable

if.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext -32476, ptr noundef null, ptr noundef null, ptr noundef nonnull @knav_dma_debug_fops) #11
  store i1 true, ptr @device_ready, align 1
  br label %cleanup

err_pm_disable:                                   ; preds = %do.end38, %pm_runtime_put_noidle.exit
  %ret.2 = phi i32 [ %call.i64, %pm_runtime_put_noidle.exit ], [ -19, %do.end38 ]
  %21 = load ptr, ptr @kdev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end39, %do.end8, %do.end
  %retval.0 = phi i32 [ %ret.2, %err_pm_disable ], [ %ret.1, %if.end39 ], [ -12, %do.end8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_dma_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdev, align 4
  %list = getelementptr inbounds %struct.knav_dma_pool_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn15 = load ptr, ptr %list, align 4
  %cmp.not17 = icmp eq ptr %.pn15, %list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %ref_count = getelementptr i8, ptr %.pn18, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #11, !srcloc !223
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp3 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %lock.i = getelementptr i8, ptr %.pn18, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %max_rx_chan.i = getelementptr i8, ptr %.pn18, i32 -48
  %3 = ptrtoint ptr %max_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_rx_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp21.not.i = icmp eq i32 %4, 0
  br i1 %cmp21.not.i, label %if.then.for.cond1.preheader.i_crit_edge, label %for.body.lr.ph.i

if.then.for.cond1.preheader.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %reg_rx_chan.i = getelementptr i8, ptr %.pn18, i32 -56
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %if.then.for.cond1.preheader.i_crit_edge
  %max_tx_chan.i = getelementptr i8, ptr %.pn18, i32 -44
  %5 = ptrtoint ptr %max_tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_tx_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp223.not.i = icmp eq i32 %6, 0
  br i1 %cmp223.not.i, label %for.cond1.preheader.i.knav_dma_hw_destroy.exit_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.knav_dma_hw_destroy.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %knav_dma_hw_destroy.exit

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %reg_tx_chan.i = getelementptr i8, ptr %.pn18, i32 -64
  br label %for.body3.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %reg_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_rx_chan.i, align 4
  %arrayidx.i = getelementptr %struct.reg_chan, ptr %8, i32 %i.022.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 -129) #11, !srcloc !220
  %inc.i = add nuw i32 %i.022.i, 1
  %9 = ptrtoint ptr %max_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_rx_chan.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %i.124.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc7.i, %for.body3.i.for.body3.i_crit_edge ]
  %11 = ptrtoint ptr %reg_tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_tx_chan.i, align 4
  %arrayidx4.i = getelementptr %struct.reg_chan, ptr %12, i32 %i.124.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4.i, i32 -129) #11, !srcloc !220
  %inc7.i = add nuw i32 %i.124.i, 1
  %13 = ptrtoint ptr %max_tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_tx_chan.i, align 4
  %cmp2.i = icmp ult i32 %inc7.i, %14
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.knav_dma_hw_destroy.exit_crit_edge

for.body3.i.knav_dma_hw_destroy.exit_crit_edge:   ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %knav_dma_hw_destroy.exit

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

knav_dma_hw_destroy.exit:                         ; preds = %for.body3.i.knav_dma_hw_destroy.exit_crit_edge, %for.cond1.preheader.i.knav_dma_hw_destroy.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  br label %for.inc

for.inc:                                          ; preds = %knav_dma_hw_destroy.exit, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn18, align 4
  %16 = load ptr, ptr @kdev, align 4
  %list2 = getelementptr inbounds %struct.knav_dma_pool_device, ptr %16, i32 0, i32 1
  %cmp.not = icmp eq ptr %.pn, %list2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_init(ptr noundef %cloud, ptr noundef %dma_node) unnamed_addr #1 align 64 {
entry:
  %res.i280 = alloca %struct.resource, align 4
  %res.i266 = alloca %struct.resource, align 4
  %res.i252 = alloca %struct.resource, align 4
  %res.i238 = alloca %struct.resource, align 4
  %res.i = alloca %struct.resource, align 4
  %len = alloca i32, align 4
  %size = alloca i32, align 4
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #11
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %size, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #11
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %timeout, align 4, !annotation !228
  %3 = load ptr, ptr @kdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 164, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = load ptr, ptr @kdev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.45) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 17
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %chan_list = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 18
  %11 = ptrtoint ptr %chan_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %chan_list, ptr %chan_list, align 4
  %prev.i234 = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev.i234 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chan_list, ptr %prev.i234, align 4
  %call2 = call ptr @of_find_property(ptr noundef %cloud, ptr noundef nonnull @.str.57, ptr noundef nonnull %len) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr @kdev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.59) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %div227 = lshr i32 %17, 2
  %logical_queue_managers = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %logical_queue_managers to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div227, ptr %logical_queue_managers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %17)
  %cmp = icmp ugt i32 %17, 19
  br i1 %cmp, label %do.end14, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %19 = load ptr, ptr @kdev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.62, i32 noundef %div227) #14
  %22 = ptrtoint ptr %logical_queue_managers to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %logical_queue_managers, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end9.if.end18_crit_edge
  %qm_base_address = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %logical_queue_managers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %logical_queue_managers, align 4
  %call.i235 = call i32 @of_property_read_variable_u32_array(ptr noundef %cloud, ptr noundef nonnull @.str.57, ptr noundef %qm_base_address, i32 noundef %24, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i235)
  %tobool21.not = icmp sgt i32 %call.i235, -1
  %25 = load ptr, ptr @kdev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.66) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #11
  %28 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %29 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i236 = call i32 @of_address_to_resource(ptr noundef %dma_node, i32 noundef 0, ptr noundef nonnull %res.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %tobool.not.i = icmp eq i32 %call.i236, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.82, ptr noundef %dma_node, i32 noundef 0) #14
  %30 = inttoptr i32 %call.i236 to ptr
  br label %pktdma_get_regs.exit

if.end.i:                                         ; preds = %if.end27
  %31 = load ptr, ptr @kdev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call4.i = call ptr @devm_ioremap_resource(ptr noundef %33, ptr noundef nonnull %res.i) #11
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end9.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.85, i32 noundef 0, ptr noundef %dma_node) #14
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end9.i, %if.end.i.if.end10.i_crit_edge
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %28, align 4
  %36 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %35, 1
  %add.i.i = sub i32 %sub.i.i, %37
  %38 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i.i, ptr %size, align 4
  br label %pktdma_get_regs.exit

pktdma_get_regs.exit:                             ; preds = %if.end10.i, %do.end.i
  %retval.0.i237 = phi ptr [ %30, %do.end.i ], [ %call4.i, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #11
  %reg_global = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %reg_global to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i237, ptr %reg_global, align 4
  %cmp.i = icmp ugt ptr %retval.0.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end34

if.then31:                                        ; preds = %pktdma_get_regs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %retval.0.i237 to i32
  br label %cleanup

if.end34:                                         ; preds = %pktdma_get_regs.exit
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %42)
  %cmp35 = icmp ult i32 %42, 32
  %43 = load ptr, ptr @kdev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  br i1 %cmp35, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.69, ptr noundef nonnull %size) #14
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i238) #11
  %46 = getelementptr inbounds %struct.resource, ptr %res.i238, i32 0, i32 1
  %47 = call ptr @memset(ptr %res.i238, i32 255, i32 32)
  %call.i239 = call i32 @of_address_to_resource(ptr noundef %dma_node, i32 noundef 1, ptr noundef nonnull %res.i238) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool.not.i240 = icmp eq i32 %call.i239, 0
  br i1 %tobool.not.i240, label %if.end.i244, label %do.end.i241

do.end.i241:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.82, ptr noundef %dma_node, i32 noundef 1) #14
  %48 = inttoptr i32 %call.i239 to ptr
  br label %pktdma_get_regs.exit250

if.end.i244:                                      ; preds = %if.end41
  %49 = load ptr, ptr @kdev, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call4.i242 = call ptr @devm_ioremap_resource(ptr noundef %51, ptr noundef nonnull %res.i238) #11
  %cmp.i.i243 = icmp ugt ptr %call4.i242, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i243, label %do.end9.i245, label %if.end.i244.if.end10.i246_crit_edge

if.end.i244.if.end10.i246_crit_edge:              ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i246

do.end9.i245:                                     ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.85, i32 noundef 1, ptr noundef %dma_node) #14
  br label %if.end10.i246

if.end10.i246:                                    ; preds = %do.end9.i245, %if.end.i244.if.end10.i246_crit_edge
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %46, align 4
  %54 = ptrtoint ptr %res.i238 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %res.i238, align 4
  %sub.i.i247 = add i32 %53, 1
  %add.i.i248 = sub i32 %sub.i.i247, %55
  %56 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i.i248, ptr %size, align 4
  br label %pktdma_get_regs.exit250

pktdma_get_regs.exit250:                          ; preds = %if.end10.i246, %do.end.i241
  %retval.0.i249 = phi ptr [ %48, %do.end.i241 ], [ %call4.i242, %if.end10.i246 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i238) #11
  %reg_tx_chan = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 8
  %57 = ptrtoint ptr %reg_tx_chan to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %retval.0.i249, ptr %reg_tx_chan, align 4
  %cmp.i251 = icmp ugt ptr %retval.0.i249, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %if.then45, label %if.end48

if.then45:                                        ; preds = %pktdma_get_regs.exit250
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %retval.0.i249 to i32
  br label %cleanup

if.end48:                                         ; preds = %pktdma_get_regs.exit250
  %59 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size, align 4
  %div49228 = lshr i32 %60, 5
  %61 = load ptr, ptr @kdev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i252) #11
  %64 = getelementptr inbounds %struct.resource, ptr %res.i252, i32 0, i32 1
  %65 = call ptr @memset(ptr %res.i252, i32 255, i32 32)
  %call.i253 = call i32 @of_address_to_resource(ptr noundef %dma_node, i32 noundef 2, ptr noundef nonnull %res.i252) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool.not.i254 = icmp eq i32 %call.i253, 0
  br i1 %tobool.not.i254, label %if.end.i258, label %do.end.i255

do.end.i255:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.82, ptr noundef %dma_node, i32 noundef 2) #14
  %66 = inttoptr i32 %call.i253 to ptr
  br label %pktdma_get_regs.exit264

if.end.i258:                                      ; preds = %if.end48
  %67 = load ptr, ptr @kdev, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call4.i256 = call ptr @devm_ioremap_resource(ptr noundef %69, ptr noundef nonnull %res.i252) #11
  %cmp.i.i257 = icmp ugt ptr %call4.i256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i257, label %do.end9.i259, label %if.end.i258.if.end10.i260_crit_edge

if.end.i258.if.end10.i260_crit_edge:              ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i260

do.end9.i259:                                     ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.85, i32 noundef 2, ptr noundef %dma_node) #14
  br label %if.end10.i260

if.end10.i260:                                    ; preds = %do.end9.i259, %if.end.i258.if.end10.i260_crit_edge
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %64, align 4
  %72 = ptrtoint ptr %res.i252 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %res.i252, align 4
  %sub.i.i261 = add i32 %71, 1
  %add.i.i262 = sub i32 %sub.i.i261, %73
  %74 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add.i.i262, ptr %size, align 4
  br label %pktdma_get_regs.exit264

pktdma_get_regs.exit264:                          ; preds = %if.end10.i260, %do.end.i255
  %retval.0.i263 = phi ptr [ %66, %do.end.i255 ], [ %call4.i256, %if.end10.i260 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i252) #11
  %reg_rx_chan = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 10
  %75 = ptrtoint ptr %reg_rx_chan to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %retval.0.i263, ptr %reg_rx_chan, align 4
  %cmp.i265 = icmp ugt ptr %retval.0.i263, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %if.then53, label %if.end56

if.then53:                                        ; preds = %pktdma_get_regs.exit264
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %retval.0.i263 to i32
  br label %cleanup

if.end56:                                         ; preds = %pktdma_get_regs.exit264
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size, align 4
  %div57229 = lshr i32 %78, 5
  %79 = load ptr, ptr @kdev, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i266) #11
  %82 = getelementptr inbounds %struct.resource, ptr %res.i266, i32 0, i32 1
  %83 = call ptr @memset(ptr %res.i266, i32 255, i32 32)
  %call.i267 = call i32 @of_address_to_resource(ptr noundef %dma_node, i32 noundef 3, ptr noundef nonnull %res.i266) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %tobool.not.i268 = icmp eq i32 %call.i267, 0
  br i1 %tobool.not.i268, label %if.end.i272, label %do.end.i269

do.end.i269:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.82, ptr noundef %dma_node, i32 noundef 3) #14
  %84 = inttoptr i32 %call.i267 to ptr
  br label %pktdma_get_regs.exit278

if.end.i272:                                      ; preds = %if.end56
  %85 = load ptr, ptr @kdev, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call4.i270 = call ptr @devm_ioremap_resource(ptr noundef %87, ptr noundef nonnull %res.i266) #11
  %cmp.i.i271 = icmp ugt ptr %call4.i270, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i271, label %do.end9.i273, label %if.end.i272.if.end10.i274_crit_edge

if.end.i272.if.end10.i274_crit_edge:              ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i274

do.end9.i273:                                     ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.85, i32 noundef 3, ptr noundef %dma_node) #14
  br label %if.end10.i274

if.end10.i274:                                    ; preds = %do.end9.i273, %if.end.i272.if.end10.i274_crit_edge
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %82, align 4
  %90 = ptrtoint ptr %res.i266 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %res.i266, align 4
  %sub.i.i275 = add i32 %89, 1
  %add.i.i276 = sub i32 %sub.i.i275, %91
  %92 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add.i.i276, ptr %size, align 4
  br label %pktdma_get_regs.exit278

pktdma_get_regs.exit278:                          ; preds = %if.end10.i274, %do.end.i269
  %retval.0.i277 = phi ptr [ %84, %do.end.i269 ], [ %call4.i270, %if.end10.i274 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i266) #11
  %reg_tx_sched = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 11
  %93 = ptrtoint ptr %reg_tx_sched to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %retval.0.i277, ptr %reg_tx_sched, align 4
  %cmp.i279 = icmp ugt ptr %retval.0.i277, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i279, label %if.then61, label %if.end64

if.then61:                                        ; preds = %pktdma_get_regs.exit278
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %retval.0.i277 to i32
  br label %cleanup

if.end64:                                         ; preds = %pktdma_get_regs.exit278
  %95 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size, align 4
  %div65230 = lshr i32 %96, 2
  %97 = load ptr, ptr @kdev, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i280) #11
  %100 = getelementptr inbounds %struct.resource, ptr %res.i280, i32 0, i32 1
  %101 = call ptr @memset(ptr %res.i280, i32 255, i32 32)
  %call.i281 = call i32 @of_address_to_resource(ptr noundef %dma_node, i32 noundef 4, ptr noundef nonnull %res.i280) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool.not.i282 = icmp eq i32 %call.i281, 0
  br i1 %tobool.not.i282, label %if.end.i286, label %do.end.i283

do.end.i283:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.82, ptr noundef %dma_node, i32 noundef 4) #14
  %102 = inttoptr i32 %call.i281 to ptr
  br label %pktdma_get_regs.exit292

if.end.i286:                                      ; preds = %if.end64
  %103 = load ptr, ptr @kdev, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %call4.i284 = call ptr @devm_ioremap_resource(ptr noundef %105, ptr noundef nonnull %res.i280) #11
  %cmp.i.i285 = icmp ugt ptr %call4.i284, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i285, label %do.end9.i287, label %if.end.i286.if.end10.i288_crit_edge

if.end.i286.if.end10.i288_crit_edge:              ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i288

do.end9.i287:                                     ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.85, i32 noundef 4, ptr noundef %dma_node) #14
  br label %if.end10.i288

if.end10.i288:                                    ; preds = %do.end9.i287, %if.end.i286.if.end10.i288_crit_edge
  %106 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %100, align 4
  %108 = ptrtoint ptr %res.i280 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %res.i280, align 4
  %sub.i.i289 = add i32 %107, 1
  %add.i.i290 = sub i32 %sub.i.i289, %109
  %110 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add.i.i290, ptr %size, align 4
  br label %pktdma_get_regs.exit292

pktdma_get_regs.exit292:                          ; preds = %if.end10.i288, %do.end.i283
  %retval.0.i291 = phi ptr [ %102, %do.end.i283 ], [ %call4.i284, %if.end10.i288 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i280) #11
  %reg_rx_flow = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 9
  %111 = ptrtoint ptr %reg_rx_flow to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %retval.0.i291, ptr %reg_rx_flow, align 4
  %cmp.i293 = icmp ugt ptr %retval.0.i291, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i293, label %if.then69, label %if.end72

if.then69:                                        ; preds = %pktdma_get_regs.exit292
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %retval.0.i291 to i32
  br label %cleanup

if.end72:                                         ; preds = %pktdma_get_regs.exit292
  %113 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %size, align 4
  %div73231 = lshr i32 %114, 5
  %rx_priority = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 3
  %115 = ptrtoint ptr %rx_priority to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %rx_priority, align 4
  %tx_priority = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 2
  %116 = ptrtoint ptr %tx_priority to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %tx_priority, align 4
  %call74 = call ptr @of_get_property(ptr noundef %dma_node, ptr noundef nonnull @.str.71, ptr noundef null) #11
  %cmp75 = icmp ne ptr %call74, null
  %enable_all = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 1
  %frombool = zext i1 %cmp75 to i8
  %117 = ptrtoint ptr %enable_all to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %frombool, ptr %enable_all, align 1
  %call76 = call ptr @of_get_property(ptr noundef %dma_node, ptr noundef nonnull @.str.72, ptr noundef null) #11
  %cmp77 = icmp ne ptr %call76, null
  %frombool78 = zext i1 %cmp77 to i8
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %frombool78, ptr %call.i, align 4
  %call.i.i294 = call i32 @of_property_read_variable_u32_array(ptr noundef %dma_node, ptr noundef nonnull @.str.73, ptr noundef nonnull %timeout, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i294)
  %cmp80 = icmp slt i32 %call.i.i294, 0
  br i1 %cmp80, label %do.body82, label %if.end72.if.end93_crit_edge

if.end72.if.end93_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

do.body82:                                        ; preds = %if.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_init, %if.then88)) #11
          to label %do.end92 [label %if.then88], !srcloc !215

if.then88:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  %119 = load ptr, ptr @kdev, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_init.__UNIQUE_ID_ddebug241, ptr noundef %121, ptr noundef nonnull @.str.74, i32 noundef 17500) #11
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body82
  %122 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 17500, ptr %timeout, align 4
  br label %if.end93

if.end93:                                         ; preds = %do.end92, %if.end72.if.end93_crit_edge
  %123 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %timeout, align 4
  %rx_timeout = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 4
  %125 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %rx_timeout, align 4
  %max_rx_chan94 = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 12
  %126 = ptrtoint ptr %max_rx_chan94 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %div57229, ptr %max_rx_chan94, align 4
  %max_rx_flow95 = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 14
  %127 = ptrtoint ptr %max_rx_flow95 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %div73231, ptr %max_rx_flow95, align 4
  %128 = call i32 @llvm.umin.i32(i32 %div49228, i32 %div65230)
  %max_tx_chan98 = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 13
  %129 = ptrtoint ptr %max_tx_chan98 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %max_tx_chan98, align 4
  %ref_count = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 16
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #11
  %130 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 0, ptr %ref_count, align 4
  %name = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 15
  %131 = ptrtoint ptr %dma_node to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dma_node, align 4
  %call101 = call ptr @strcpy(ptr noundef %name, ptr noundef %132) #15
  %lock = getelementptr inbounds %struct.knav_dma_device, ptr %call.i, i32 0, i32 19
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.75, ptr noundef nonnull @dma_init.__key, i16 noundef signext 3) #11
  %133 = ptrtoint ptr %max_tx_chan98 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_tx_chan98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp107304.not = icmp eq i32 %134, 0
  br i1 %cmp107304.not, label %if.end93.for.cond113.preheader_crit_edge, label %if.end93.for.body_crit_edge

if.end93.for.body_crit_edge:                      ; preds = %if.end93
  br label %for.body

if.end93.for.cond113.preheader_crit_edge:         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %for.body.for.cond113.preheader_crit_edge, %if.end93.for.cond113.preheader_crit_edge
  %num_chan.0.lcssa = phi i32 [ 0, %if.end93.for.cond113.preheader_crit_edge ], [ %spec.select, %for.body.for.cond113.preheader_crit_edge ]
  %135 = ptrtoint ptr %max_rx_flow95 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max_rx_flow95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp115307.not = icmp eq i32 %136, 0
  br i1 %cmp115307.not, label %for.cond113.preheader.for.end124_crit_edge, label %for.cond113.preheader.for.body116_crit_edge

for.cond113.preheader.for.body116_crit_edge:      ; preds = %for.cond113.preheader
  br label %for.body116

for.cond113.preheader.for.end124_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end124

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end93.for.body_crit_edge
  %i.0306 = phi i32 [ %inc112, %for.body.for.body_crit_edge ], [ 0, %if.end93.for.body_crit_edge ]
  %num_chan.0305 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end93.for.body_crit_edge ]
  %call108 = call fastcc i32 @pktdma_init_chan(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef %i.0306)
  %137 = xor i32 %call108, -1
  %call108.lobit.not = lshr i32 %137, 31
  %spec.select = add i32 %call108.lobit.not, %num_chan.0305
  %inc112 = add nuw i32 %i.0306, 1
  %138 = ptrtoint ptr %max_tx_chan98 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max_tx_chan98, align 4
  %cmp107 = icmp ult i32 %inc112, %139
  br i1 %cmp107, label %for.body.for.body_crit_edge, label %for.body.for.cond113.preheader_crit_edge

for.body.for.cond113.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond113.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body116:                                      ; preds = %for.body116.for.body116_crit_edge, %for.cond113.preheader.for.body116_crit_edge
  %i.1309 = phi i32 [ %inc123, %for.body116.for.body116_crit_edge ], [ 0, %for.cond113.preheader.for.body116_crit_edge ]
  %num_chan.2308 = phi i32 [ %spec.select232, %for.body116.for.body116_crit_edge ], [ %num_chan.0.lcssa, %for.cond113.preheader.for.body116_crit_edge ]
  %call117 = call fastcc i32 @pktdma_init_chan(ptr noundef nonnull %call.i, i32 noundef 2, i32 noundef %i.1309)
  %140 = xor i32 %call117, -1
  %call117.lobit.not = lshr i32 %140, 31
  %spec.select232 = add i32 %call117.lobit.not, %num_chan.2308
  %inc123 = add nuw i32 %i.1309, 1
  %141 = ptrtoint ptr %max_rx_flow95 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max_rx_flow95, align 4
  %cmp115 = icmp ult i32 %inc123, %142
  br i1 %cmp115, label %for.body116.for.body116_crit_edge, label %for.body116.for.end124_crit_edge

for.body116.for.end124_crit_edge:                 ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end124

for.body116.for.body116_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body116

for.end124:                                       ; preds = %for.body116.for.end124_crit_edge, %for.cond113.preheader.for.end124_crit_edge
  %num_chan.2.lcssa = phi i32 [ %num_chan.0.lcssa, %for.cond113.preheader.for.end124_crit_edge ], [ %spec.select232, %for.body116.for.end124_crit_edge ]
  %143 = load ptr, ptr @kdev, align 4
  %list126 = getelementptr inbounds %struct.knav_dma_pool_device, ptr %143, i32 0, i32 1
  %prev.i295 = getelementptr inbounds %struct.knav_dma_pool_device, ptr %143, i32 0, i32 1, i32 1
  %144 = ptrtoint ptr %prev.i295 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i295, align 4
  %call.i.i296 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %145, ptr noundef %list126) #11
  br i1 %call.i.i296, label %if.end.i.i, label %for.end124.list_add_tail.exit_crit_edge

for.end124.list_add_tail.exit_crit_edge:          ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %prev.i295 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %list, ptr %prev.i295, align 4
  %147 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %list126, ptr %list, align 4
  %148 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev.i, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %list, ptr %145, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end124.list_add_tail.exit_crit_edge
  %150 = ptrtoint ptr %enable_all to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %enable_all, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool128.not = icmp eq i8 %151, 0
  br i1 %tobool128.not, label %list_add_tail.exit.do.end134_crit_edge, label %if.then129

list_add_tail.exit.do.end134_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end134

if.then129:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i233 = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #11
  %152 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #11, !srcloc !229
  call fastcc void @knav_dma_hw_init(ptr noundef nonnull %call.i)
  call fastcc void @dma_hw_enable_all(ptr noundef nonnull %call.i)
  br label %do.end134

do.end134:                                        ; preds = %if.then129, %list_add_tail.exit.do.end134_crit_edge
  %153 = load ptr, ptr @kdev, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %156 = ptrtoint ptr %max_rx_flow95 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %max_rx_flow95, align 4
  %158 = ptrtoint ptr %max_tx_chan98 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %max_tx_chan98, align 4
  %160 = ptrtoint ptr %max_rx_chan94 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %max_rx_chan94, align 4
  %162 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %call.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool142.not = icmp eq i8 %163, 0
  %cond143 = select i1 %tobool142.not, ptr @.str.81, ptr @.str.80
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %155, ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %num_chan.2.lcssa, i32 noundef %157, i32 noundef %159, i32 noundef %161, ptr noundef nonnull %cond143) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end134, %if.then69, %if.then61, %if.then53, %if.then45, %do.end39, %if.then31, %do.end25, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end25 ], [ %40, %if.then31 ], [ -19, %do.end39 ], [ %58, %if.then45 ], [ %76, %if.then53 ], [ %94, %if.then61 ], [ %112, %if.then69 ], [ 0, %do.end134 ], [ -19, %do.end7 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pktdma_init_chan(ptr noundef %dma, i32 noundef %dir, i32 noundef %chan_num) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdev, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 144, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %dma2 = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dma2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dma, ptr %dma2, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %call.i, align 4
  %ref_count = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #11
  %7 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %ref_count, align 4
  %lock = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.87, ptr noundef nonnull @pktdma_init_chan.__key, i16 noundef signext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then4, label %if.then8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call.i, align 4
  %9 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma2, align 4
  %channel2.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %channel2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %chan_num, ptr %channel2.i, align 4
  %reg_tx_chan.i = getelementptr inbounds %struct.knav_dma_device, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %reg_tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_tx_chan.i, align 4
  %add.ptr.i = getelementptr %struct.reg_chan, ptr %13, i32 %chan_num
  %reg_chan.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %reg_chan.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %reg_chan.i, align 4
  %reg_tx_sched.i = getelementptr inbounds %struct.knav_dma_device, ptr %10, i32 0, i32 11
  %15 = ptrtoint ptr %reg_tx_sched.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_tx_sched.i, align 4
  %add.ptr3.i = getelementptr %struct.reg_tx_sched, ptr %16, i32 %chan_num
  %reg_tx_sched4.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %reg_tx_sched4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr3.i, ptr %reg_tx_sched4.i, align 4
  %flow.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %flow.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65535, ptr %flow.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pktdma_init_tx_chan.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pktdma_init_chan, %if.then.i)) #11
          to label %if.end16 [label %if.then.i], !srcloc !215

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %19 = load ptr, ptr @kdev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel2.i, align 4
  %24 = ptrtoint ptr %reg_chan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_chan.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pktdma_init_tx_chan.__UNIQUE_ID_ddebug240, ptr noundef %21, ptr noundef nonnull @.str.91, i32 noundef %23, ptr noundef %25) #11
  br label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %call.i, align 4
  %27 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma2, align 4
  %flow2.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %flow2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %chan_num, ptr %flow2.i, align 4
  %reg_rx_flow.i = getelementptr inbounds %struct.knav_dma_device, ptr %28, i32 0, i32 9
  %30 = ptrtoint ptr %reg_rx_flow.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_rx_flow.i, align 4
  %add.ptr.i38 = getelementptr %struct.reg_rx_flow, ptr %31, i32 %chan_num
  %reg_rx_flow3.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %reg_rx_flow3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i38, ptr %reg_rx_flow3.i, align 4
  %channel.i = getelementptr inbounds %struct.knav_dma_chan, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %channel.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pktdma_init_rx_chan.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pktdma_init_chan, %if.then.i39)) #11
          to label %if.end16 [label %if.then.i39], !srcloc !215

if.then.i39:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %34 = load ptr, ptr @kdev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %flow2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flow2.i, align 4
  %39 = ptrtoint ptr %reg_rx_flow3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_rx_flow3.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pktdma_init_rx_chan.__UNIQUE_ID_ddebug239, ptr noundef %36, ptr noundef nonnull @.str.93, i32 noundef %38, ptr noundef %40) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then.i39, %if.then8, %if.then.i, %if.then4
  %chan_list = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 18
  %prev.i40 = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i40, align 4
  %call.i.i41 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %42, ptr noundef %chan_list) #11
  br i1 %call.i.i41, label %if.end.i.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %list, ptr %prev.i40, align 4
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %chan_list, ptr %list, align 4
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list, ptr %42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_hw_enable_all(ptr nocapture noundef readonly %dma) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tx_chan = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 13
  %0 = ptrtoint ptr %max_tx_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tx_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_tx_chan = getelementptr inbounds %struct.knav_dma_device, ptr %dma, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %reg_tx_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_tx_chan, align 4
  %mode = getelementptr %struct.reg_chan, ptr %3, i32 %i.09, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode, i32 0) #11, !srcloc !220
  %4 = ptrtoint ptr %reg_tx_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tx_chan, align 4
  %arrayidx2 = getelementptr %struct.reg_chan, ptr %5, i32 %i.09
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2, i32 128) #11, !srcloc !220
  %inc = add nuw i32 %i.09, 1
  %6 = ptrtoint ptr %max_tx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_tx_chan, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_dma_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @knav_dma_debug_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @knav_dma_debug_show(ptr noundef %s, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kdev, align 4
  %list = getelementptr inbounds %struct.knav_dma_pool_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn15 = load ptr, ptr %list, align 4
  %cmp.not17 = icmp eq ptr %.pn15, %list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %ref_count = getelementptr i8, ptr %.pn18, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #11
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %name = getelementptr i8, ptr %.pn18, i32 -36
  %max_tx_chan = getelementptr i8, ptr %.pn18, i32 -44
  %4 = ptrtoint ptr %max_tx_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_tx_chan, align 4
  %max_rx_flow = getelementptr i8, ptr %.pn18, i32 -40
  %6 = ptrtoint ptr %max_rx_flow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_rx_flow, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef %name, i32 noundef %5, i32 noundef %7) #11
  %chan_list.i = getelementptr i8, ptr %.pn18, i32 8
  %8 = ptrtoint ptr %chan_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn11.i = load ptr, ptr %chan_list.i, align 4
  %cmp.not13.i = icmp eq ptr %.pn11.i, %chan_list.i
  br i1 %cmp.not13.i, label %if.then.for.inc_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn11.i, %if.then.for.body.i_crit_edge ]
  %ref_count.i = getelementptr i8, ptr %.pn14.i, i32 -84
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %chan.015.i = getelementptr i8, ptr %.pn14.i, i32 -92
  %11 = ptrtoint ptr %chan.015.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan.015.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 1
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.96, ptr @.str.97
  %cond3.in.i.v.i = select i1 %cmp.i.i, i32 -68, i32 -64
  %cond3.in.i.i = getelementptr i8, ptr %.pn14.i, i32 %cond3.in.i.v.i
  %13 = ptrtoint ptr %cond3.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond3.i.i = load i32, ptr %cond3.in.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.95, ptr noundef nonnull %cond.i.i, i32 noundef %cond3.i.i) #11
  %14 = ptrtoint ptr %chan.015.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan.015.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp5.i.i = icmp eq i32 %15, 1
  %u.i.i = getelementptr i8, ptr %.pn14.i, i32 -56
  %16 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %u.i.i, align 4, !range !219
  %18 = zext i8 %17 to i32
  %filt_pswords.i.i = getelementptr i8, ptr %.pn14.i, i32 -55
  %19 = ptrtoint ptr %filt_pswords.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %filt_pswords.i.i, align 1, !range !219
  %21 = zext i8 %20 to i32
  br i1 %cmp5.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %priority.i.i = getelementptr i8, ptr %.pn14.i, i32 -52
  %22 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %priority.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.98, i32 noundef %18, i32 noundef %21, i32 noundef %23) #11
  br label %for.inc.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %desc_type.i.i = getelementptr i8, ptr %.pn14.i, i32 -48
  %24 = ptrtoint ptr %desc_type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc_type.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, i32 noundef %18, i32 noundef %21, i32 noundef %25) #11
  %dst_q.i.i = getelementptr i8, ptr %.pn14.i, i32 -36
  %26 = ptrtoint ptr %dst_q.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_q.i.i, align 4
  %thresh.i.i = getelementptr i8, ptr %.pn14.i, i32 -32
  %28 = ptrtoint ptr %thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %thresh.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.100, i32 noundef %27, i32 noundef %29) #11
  %arrayidx.i.i = getelementptr i8, ptr %.pn14.i, i32 -28
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %31) #11
  %arrayidx.1.i.i = getelementptr i8, ptr %.pn14.i, i32 -24
  %32 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %33) #11
  %arrayidx.2.i.i = getelementptr i8, ptr %.pn14.i, i32 -20
  %34 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %35) #11
  %arrayidx.3.i.i = getelementptr i8, ptr %.pn14.i, i32 -16
  %36 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %37) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.102) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.i, %if.then.i.i, %for.body.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %chan_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %39 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn18, align 4
  %40 = load ptr, ptr @kdev, align 4
  %list2 = getelementptr inbounds %struct.knav_dma_pool_device, ptr %40, i32 0, i32 1
  %cmp.not = icmp eq ptr %.pn, %list2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !146, !148, !149, !151, !152, !154, !155, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__ksymtab_knav_dma_device_ready, !1, !"__ksymtab_knav_dma_device_ready", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/knav_dma.c", i32 142, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/ti/knav_dma.c", i32 425, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @knav_dma_open_channel._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @knav_dma_open_channel._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/ti/knav_dma.c", i32 431, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @knav_dma_open_channel._entry.3, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @knav_dma_open_channel._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/ti/knav_dma.c", i32 435, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @knav_dma_open_channel.__UNIQUE_ID_ddebug236, !15, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/ti/knav_dma.c", i32 442, i32 3}
!23 = !{ptr @knav_dma_open_channel._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @knav_dma_open_channel._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @knav_dma_open_channel._entry.16, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/soc/ti/knav_dma.c", i32 454, i32 3}
!27 = !{ptr @knav_dma_open_channel._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/ti/knav_dma.c", i32 474, i32 3}
!30 = !{ptr @knav_dma_open_channel._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @knav_dma_open_channel._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/ti/knav_dma.c", i32 481, i32 4}
!34 = !{ptr @knav_dma_open_channel._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @knav_dma_open_channel._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/ti/knav_dma.c", i32 493, i32 2}
!38 = !{ptr @knav_dma_open_channel.__UNIQUE_ID_ddebug237, !37, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!39 = !{ptr @__ksymtab_knav_dma_open_channel, !40, !"__ksymtab_knav_dma_open_channel", i1 false, i1 false}
!40 = !{!"../drivers/soc/ti/knav_dma.c", i32 498, i32 1}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/ti/knav_dma.c", i32 511, i32 3}
!43 = !{ptr @knav_dma_close_channel._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @knav_dma_close_channel._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/ti/knav_dma.c", i32 521, i32 2}
!47 = !{ptr @knav_dma_close_channel.__UNIQUE_ID_ddebug238, !46, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!48 = !{ptr @__ksymtab_knav_dma_close_channel, !49, !"__ksymtab_knav_dma_close_channel", i1 false, i1 false}
!49 = !{!"../drivers/soc/ti/knav_dma.c", i32 524, i32 1}
!50 = !{ptr @__initcall__kmod_knav_dma__244_817_knav_dma_driver_init6, !51, !"__initcall__kmod_knav_dma__244_817_knav_dma_driver_init6", i1 false, i1 false}
!51 = !{!"../drivers/soc/ti/knav_dma.c", i32 817, i32 1}
!52 = !{ptr @__exitcall_knav_dma_driver_exit, !51, !"__exitcall_knav_dma_driver_exit", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_file245, !54, !"__UNIQUE_ID_file245", i1 false, i1 false}
!54 = !{!"../drivers/soc/ti/knav_dma.c", i32 819, i32 1}
!55 = !{ptr @__UNIQUE_ID_license246, !54, !"__UNIQUE_ID_license246", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_description247, !57, !"__UNIQUE_ID_description247", i1 false, i1 false}
!57 = !{!"../drivers/soc/ti/knav_dma.c", i32 820, i32 1}
!58 = !{ptr @__UNIQUE_ID_author248, !59, !"__UNIQUE_ID_author248", i1 false, i1 false}
!59 = !{!"../drivers/soc/ti/knav_dma.c", i32 821, i32 1}
!60 = !{ptr @__UNIQUE_ID_author249, !61, !"__UNIQUE_ID_author249", i1 false, i1 false}
!61 = !{!"../drivers/soc/ti/knav_dma.c", i32 822, i32 1}
!62 = !{ptr @kdev, !63, !"kdev", i1 false, i1 false}
!63 = !{!"../drivers/soc/ti/knav_dma.c", i32 135, i32 37}
!64 = distinct !{null, !65, !"device_ready", i1 false, i1 false}
!65 = !{!"../drivers/soc/ti/knav_dma.c", i32 137, i32 13}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/ti/knav_dma.c", i32 382, i32 34}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/ti/knav_dma.c", i32 387, i32 39}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/ti/knav_dma.c", i32 389, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @of_channel_match_helper._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @of_channel_match_helper._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/ti/knav_dma.c", i32 395, i32 3}
!77 = !{ptr @of_channel_match_helper._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @of_channel_match_helper._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/ti/knav_dma.c", i32 400, i32 3}
!81 = !{ptr @of_channel_match_helper._entry.34, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @of_channel_match_helper._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/ti/knav_dma.c", i32 261, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @chan_stop.__UNIQUE_ID_ddebug235, !84, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/ti/knav_dma.c", i32 229, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @chan_teardown._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @chan_teardown._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/ti/knav_dma.c", i32 813, i32 12}
!94 = !{ptr @knav_dma_driver, !95, !"knav_dma_driver", i1 false, i1 false}
!95 = !{!"../drivers/soc/ti/knav_dma.c", i32 809, i32 31}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/ti/knav_dma.c", i32 735, i32 3}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @knav_dma_probe._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @knav_dma_probe._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/soc/ti/knav_dma.c", i32 742, i32 3}
!103 = !{ptr @knav_dma_probe._entry.44, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @knav_dma_probe._entry_ptr.46, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/ti/knav_dma.c", i32 753, i32 3}
!107 = !{ptr @knav_dma_probe._entry.47, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @knav_dma_probe._entry_ptr.49, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/soc/ti/knav_dma.c", i32 762, i32 4}
!111 = !{ptr @knav_dma_probe._entry.50, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @knav_dma_probe._entry_ptr.52, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/soc/ti/knav_dma.c", i32 768, i32 3}
!115 = !{ptr @knav_dma_probe._entry.53, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @knav_dma_probe._entry_ptr.55, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/soc/ti/knav_dma.c", i32 622, i32 3}
!119 = !{ptr @dma_init._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @dma_init._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/soc/ti/knav_dma.c", i32 628, i32 31}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/soc/ti/knav_dma.c", i32 629, i32 3}
!125 = !{ptr @dma_init._entry.58, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @dma_init._entry_ptr.60, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/ti/knav_dma.c", i32 635, i32 3}
!129 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @dma_init._entry.61, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @dma_init._entry_ptr.64, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/soc/ti/knav_dma.c", i32 644, i32 3}
!134 = !{ptr @dma_init._entry.65, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @dma_init._entry_ptr.67, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/soc/ti/knav_dma.c", i32 652, i32 3}
!138 = !{ptr @dma_init._entry.68, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @dma_init._entry_ptr.70, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/soc/ti/knav_dma.c", i32 679, i32 43}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/soc/ti/knav_dma.c", i32 680, i32 41}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/soc/ti/knav_dma.c", i32 682, i32 35}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/soc/ti/knav_dma.c", i32 684, i32 3}
!148 = !{ptr @dma_init.__UNIQUE_ID_ddebug241, !147, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!149 = !{ptr @dma_init.__key, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/soc/ti/knav_dma.c", i32 695, i32 2}
!151 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/soc/ti/knav_dma.c", i32 719, i32 2}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @dma_init._entry.76, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @dma_init._entry_ptr.79, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/ti/knav_dma.c", i32 537, i32 3}
!161 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @pktdma_get_regs._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @pktdma_get_regs._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/soc/ti/knav_dma.c", i32 544, i32 3}
!166 = !{ptr @pktdma_get_regs._entry.84, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @pktdma_get_regs._entry_ptr.86, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @pktdma_init_chan.__key, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/soc/ti/knav_dma.c", i32 593, i32 2}
!170 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/ti/knav_dma.c", i32 602, i32 3}
!173 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pktdma_init_chan._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @pktdma_init_chan._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/soc/ti/knav_dma.c", i32 572, i32 2}
!178 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @pktdma_init_tx_chan.__UNIQUE_ID_ddebug240, !177, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/soc/ti/knav_dma.c", i32 559, i32 2}
!182 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @pktdma_init_rx_chan.__UNIQUE_ID_ddebug239, !181, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!184 = !{ptr @knav_dma_debug_fops, !185, !"knav_dma_debug_fops", i1 false, i1 false}
!185 = !{!"../drivers/soc/ti/knav_dma.c", i32 373, i32 1}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/soc/ti/knav_dma.c", i32 364, i32 18}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/soc/ti/knav_dma.c", i32 324, i32 16}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/soc/ti/knav_dma.c", i32 325, i32 42}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/soc/ti/knav_dma.c", i32 325, i32 54}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/soc/ti/knav_dma.c", i32 329, i32 17}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/soc/ti/knav_dma.c", i32 334, i32 17}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/soc/ti/knav_dma.c", i32 338, i32 17}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/soc/ti/knav_dma.c", i32 342, i32 18}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/soc/ti/knav_dma.c", i32 343, i32 17}
!204 = !{ptr @of_match, !205, !"of_match", i1 false, i1 false}
!205 = !{!"../drivers/soc/ti/knav_dma.c", i32 802, i32 28}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{i64 2148171489, i64 2148171494, i64 2148171507, i64 2148171551, i64 2148171585, i64 2148171606}
!216 = !{i64 2148525821}
!217 = !{i64 2148441130, i64 2148441162, i64 2148441191, i64 2148441225, i64 2148441256, i64 2148441279}
!218 = !{i64 2148526050}
!219 = !{i8 0, i8 2}
!220 = !{i64 704332}
!221 = !{i64 704750}
!222 = !{i64 2148528862}
!223 = !{i64 2148443595, i64 2148443627, i64 2148443656, i64 2148443690, i64 2148443721, i64 2148443744}
!224 = !{i64 2148529091}
!225 = !{i64 2148439829}
!226 = !{i64 926429, i64 926454, i64 926476, i64 926492, i64 926504, i64 926524, i64 926548, i64 926564, i64 926576}
!227 = !{i64 2148440017}
!228 = !{!"auto-init"}
!229 = !{i64 2148440410, i64 2148440436, i64 2148440465, i64 2148440499, i64 2148440530, i64 2148440553}
