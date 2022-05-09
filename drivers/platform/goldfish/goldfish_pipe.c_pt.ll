; ModuleID = '/llk/IR_all_yes/drivers/platform/goldfish/goldfish_pipe.c_pt.bc'
source_filename = "../drivers/platform/goldfish/goldfish_pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.goldfish_pipe_dev = type { ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i32, i32, ptr, %struct.miscdevice }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.goldfish_pipe_dev_buffers = type { %struct.open_command_param, [64 x %struct.signalled_pipe_buffer] }
%struct.open_command_param = type { i64, i32 }
%struct.signalled_pipe_buffer = type { i32, i32 }
%struct.goldfish_pipe = type { i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.wait_queue_head, ptr, [336 x ptr] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.goldfish_pipe_command = type { i32, i32, i32, i32, %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32, [336 x i64], [336 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_goldfish_pipe__236_950_goldfish_pipe_driver_init6 = internal global ptr @goldfish_pipe_driver_init, section ".initcall6.init", align 4
@goldfish_pipe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @goldfish_pipe_probe, ptr @goldfish_pipe_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @goldfish_pipe_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_goldfish_pipe_driver_exit = internal global ptr @goldfish_pipe_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [53 x i8] c"goldfish_pipe.author=David Turner <digit@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [59 x i8] c"goldfish_pipe.file=drivers/platform/goldfish/goldfish_pipe\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [29 x i8] c"goldfish_pipe.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"goldfish_pipe\00", [18 x i8] zeroinitializer }, align 32
@goldfish_pipe_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,android-pipe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@goldfish_pipe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@goldfish_pipe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 890, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't allocate i/o page\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"goldfish_pipe_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/platform/goldfish/goldfish_pipe.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@goldfish_pipe_probe._entry_ptr = internal global ptr @goldfish_pipe_probe._entry, section ".printk_index", align 4
@goldfish_pipe_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 895, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@goldfish_pipe_probe._entry_ptr.9 = internal global ptr @goldfish_pipe_probe._entry.7, section ".printk_index", align 4
@goldfish_pipe_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to allocate IRQ for v2\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"goldfish_pipe_device_init\00", [38 x i8] zeroinitializer }, align 32
@goldfish_pipe_device_init._entry_ptr = internal global ptr @goldfish_pipe_device_init._entry, section ".printk_index", align 4
@goldfish_pipe_device_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register v2 device\0A\00", [34 x i8] zeroinitializer }, align 32
@goldfish_pipe_device_init._entry_ptr.14 = internal global ptr @goldfish_pipe_device_init._entry.12, section ".printk_index", align 4
@goldfish_pipe_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @goldfish_pipe_read, ptr @goldfish_pipe_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @goldfish_pipe_poll, ptr null, ptr null, ptr null, i32 0, ptr @goldfish_pipe_open, ptr null, ptr @goldfish_pipe_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@goldfish_pipe_read_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.goldfish_pipe_read_write = private unnamed_addr constant [25 x i8] c"goldfish_pipe_read_write\00", align 1
@goldfish_pipe_read_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.goldfish_pipe_read_write, ptr @.str.4, i32 448, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"backend error %d on %s\0A\00", [40 x i8] zeroinitializer }, align 32
@goldfish_pipe_read_write._entry_ptr = internal global ptr @goldfish_pipe_read_write._entry, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@goldfish_pipe_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pipe->lock\00", [20 x i8] zeroinitializer }, align 32
@goldfish_pipe_open.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pipe->wake_queue\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967292, i64 4294967293, i64 4294967294]
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"goldfish_pipe_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 940, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 944, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"goldfish_pipe_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 934, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 886, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 890, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 895, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 816, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 823, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"goldfish_pipe_fops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 780, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 446, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 709, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [45 x i8] c"../drivers/platform/goldfish/goldfish_pipe.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 710, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_goldfish_pipe_driver_exit, ptr @__initcall__kmod_goldfish_pipe__236_950_goldfish_pipe_driver_init6, ptr @goldfish_pipe_device_init._entry, ptr @goldfish_pipe_device_init._entry.12, ptr @goldfish_pipe_device_init._entry_ptr, ptr @goldfish_pipe_device_init._entry_ptr.14, ptr @goldfish_pipe_driver_exit, ptr @goldfish_pipe_probe._entry, ptr @goldfish_pipe_probe._entry.7, ptr @goldfish_pipe_probe._entry_ptr, ptr @goldfish_pipe_probe._entry_ptr.9, ptr @goldfish_pipe_read_write._entry, ptr @goldfish_pipe_read_write._entry_ptr, ptr @goldfish_pipe_driver, ptr @.str, ptr @goldfish_pipe_of_match, ptr @goldfish_pipe_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @goldfish_pipe_fops, ptr @goldfish_pipe_read_write._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @goldfish_pipe_open.__key, ptr @.str.19, ptr @goldfish_pipe_open.__key.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_device_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_read_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_read_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goldfish_pipe_open.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @goldfish_pipe_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_pipe_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @goldfish_pipe_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @goldfish_pipe_device_deinit, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @goldfish_pipe_probe.__key, i16 noundef signext 3) #8
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.do.end9_crit_edge, label %lor.lhs.false

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

lor.lhs.false:                                    ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end.i, align 4
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call3, align 4
  %sub.i = add i32 %2, 1
  %add.i = sub i32 %sub.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 4096
  br i1 %cmp, label %lor.lhs.false.do.end9_crit_edge, label %if.end11

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end9:                                          ; preds = %lor.lhs.false.do.end9_crit_edge, %if.end.do.end9_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call13 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %4, i32 noundef 4096) #8
  %base = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %base, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #8
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %6 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call22, align 4
  %irq = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !65
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !66
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %version = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp36 = icmp slt i32 %14, 2
  br i1 %cmp36, label %do.end48, label %if.end64, !prof !68

do.end48:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 914, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end25
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call.i88 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @goldfish_pipe_interrupt, ptr noundef nonnull @goldfish_interrupt_task, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end64
  %miscdev.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 10
  %18 = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 10, i32 3
  %19 = call ptr @memset(ptr %18, i32 0, i32 28)
  %20 = ptrtoint ptr %miscdev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 255, ptr %miscdev.i, align 4
  %name.i.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str, ptr %name.i.i, align 4
  %fops.i.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @goldfish_pipe_fops, ptr %fops.i.i, align 4
  %call4.i = tail call i32 @misc_register(ptr noundef %miscdev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %pdev_dev.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %pdev_dev.i, align 4
  %first_signalled_pipe.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %first_signalled_pipe.i, align 4
  %pipes_capacity.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %pipes_capacity.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 64, ptr %pipes_capacity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 256) #12
  %pipes.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %pipes.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i.i, ptr %pipes.i, align 4
  %tobool16.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool16.not.i, label %if.then17.i, label %do.end22.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @misc_deregister(ptr noundef %miscdev.i) #8
  br label %cleanup

do.end22.i:                                       ; preds = %if.end11.i
  %call23.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %28 = inttoptr i32 %call23.i to ptr
  %buffers.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %buffers.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool25.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end29.i

if.then26.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %pipes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pipes.i, align 4
  tail call void @kfree(ptr noundef %31) #8
  tail call void @misc_deregister(ptr noundef %miscdev.i) #8
  br label %cleanup

if.end29.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %signalled_pipe_buffers.i = getelementptr inbounds %struct.goldfish_pipe_dev_buffers, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 8
  %add.ptr32.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %signalled_pipe_buffers.i to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 0) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr37.i = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 1073741824) #8, !srcloc !65
  %38 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffers.i, align 4
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr40.i = getelementptr i8, ptr %41, i32 24
  %add.ptr42.i = getelementptr i8, ptr %41, i32 20
  %42 = ptrtoint ptr %39 to i32
  %call.i72.i = tail call i32 @__virt_to_phys(i32 noundef %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 0) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %call.i72.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %43) #8, !srcloc !65
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29.i, %if.then26.i, %if.then17.i, %do.end9.i, %do.end.i, %do.end48, %if.end21.cleanup_crit_edge, %do.end19, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end48 ], [ -22, %do.end19 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ %call.i88, %do.end.i ], [ %call4.i, %do.end9.i ], [ 0, %if.end29.i ], [ -12, %if.then26.i ], [ -12, %if.then17.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %miscdev.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %1, i32 0, i32 10
  tail call void @misc_deregister(ptr noundef %miscdev.i) #8
  %pipes.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pipes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipes.i, align 4
  tail call void @kfree(ptr noundef %3) #8
  %buffers.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffers.i, align 4
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @goldfish_pipe_device_deinit(ptr nocapture noundef readnone %pdev, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %miscdev = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev, i32 0, i32 10
  tail call void @misc_deregister(ptr noundef %miscdev) #8
  %pipes = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pipes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipes, align 4
  tail call void @kfree(ptr noundef %1) #8
  %buffers = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffers, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %cmp.not = icmp eq ptr %1, @goldfish_pipe_device_deinit
  br i1 %cmp.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_id, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_id, i32 0, i32 9
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9 = icmp eq i32 %4, 0
  br i1 %cmp9, label %do.body1.cleanup.sink.split_crit_edge, label %if.end13

do.body1.cleanup.sink.split_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end13:                                         ; preds = %do.body1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1841.not = icmp eq i32 %6, 0
  br i1 %cmp1841.not, label %if.end13.cleanup.sink.split_crit_edge, label %for.body.lr.ph

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end13
  %buffers = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_id, i32 0, i32 4
  %pipes_capacity.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_id, i32 0, i32 3
  %pipes.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_id, i32 0, i32 2
  %first_signalled_pipe.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_id, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %signalled_pipes_add_locked.exit.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %signalled_pipes_add_locked.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffers, align 4
  %arrayidx = getelementptr %struct.goldfish_pipe_dev_buffers, ptr %8, i32 0, i32 1, i32 %i.042
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %flags23 = getelementptr %struct.goldfish_pipe_dev_buffers, ptr %8, i32 0, i32 1, i32 %i.042, i32 1
  %11 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags23, align 4
  %13 = ptrtoint ptr %pipes_capacity.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipes_capacity.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp.not.i = icmp ugt i32 %14, %10
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !73

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 519, i32 noundef 9, ptr noundef null) #8
  br label %signalled_pipes_add_locked.exit

if.end21.i:                                       ; preds = %for.body
  %15 = ptrtoint ptr %pipes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipes.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %10
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %18, null
  br i1 %tobool22.not.i, label %if.end21.i.signalled_pipes_add_locked.exit_crit_edge, label %if.end24.i

if.end21.i.signalled_pipes_add_locked.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %signalled_pipes_add_locked.exit

if.end24.i:                                       ; preds = %if.end21.i
  %signalled_flags.i = getelementptr inbounds %struct.goldfish_pipe, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %signalled_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %signalled_flags.i, align 4
  %or.i = or i32 %20, %12
  store i32 %or.i, ptr %signalled_flags.i, align 4
  %prev_signalled.i = getelementptr inbounds %struct.goldfish_pipe, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %prev_signalled.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev_signalled.i, align 4
  %tobool25.not.i = icmp eq ptr %22, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i, label %if.end24.i.signalled_pipes_add_locked.exit_crit_edge

if.end24.i.signalled_pipes_add_locked.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %signalled_pipes_add_locked.exit

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %next_signalled.i = getelementptr inbounds %struct.goldfish_pipe, ptr %18, i32 0, i32 5
  %23 = ptrtoint ptr %next_signalled.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_signalled.i, align 4
  %tobool26.not.i = icmp eq ptr %24, null
  br i1 %tobool26.not.i, label %lor.lhs.false27.i, label %lor.lhs.false.i.signalled_pipes_add_locked.exit_crit_edge

lor.lhs.false.i.signalled_pipes_add_locked.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %signalled_pipes_add_locked.exit

lor.lhs.false27.i:                                ; preds = %lor.lhs.false.i
  %25 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %first_signalled_pipe.i, align 4
  %cmp28.i = icmp eq ptr %26, %18
  br i1 %cmp28.i, label %lor.lhs.false27.i.signalled_pipes_add_locked.exit_crit_edge, label %if.end30.i

lor.lhs.false27.i.signalled_pipes_add_locked.exit_crit_edge: ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %signalled_pipes_add_locked.exit

if.end30.i:                                       ; preds = %lor.lhs.false27.i
  %27 = ptrtoint ptr %next_signalled.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %next_signalled.i, align 4
  %28 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %first_signalled_pipe.i, align 4
  %tobool34.not.i = icmp eq ptr %29, null
  br i1 %tobool34.not.i, label %if.end30.i.if.end38.i_crit_edge, label %if.then35.i

if.end30.i.if.end38.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev_signalled37.i = getelementptr inbounds %struct.goldfish_pipe, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %prev_signalled37.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %18, ptr %prev_signalled37.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end30.i.if.end38.i_crit_edge
  %31 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %18, ptr %first_signalled_pipe.i, align 4
  br label %signalled_pipes_add_locked.exit

signalled_pipes_add_locked.exit:                  ; preds = %if.end38.i, %lor.lhs.false27.i.signalled_pipes_add_locked.exit_crit_edge, %lor.lhs.false.i.signalled_pipes_add_locked.exit_crit_edge, %if.end24.i.signalled_pipes_add_locked.exit_crit_edge, %if.end21.i.signalled_pipes_add_locked.exit_crit_edge, %do.end.i
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %signalled_pipes_add_locked.exit.cleanup.sink.split_crit_edge, label %signalled_pipes_add_locked.exit.for.body_crit_edge

signalled_pipes_add_locked.exit.for.body_crit_edge: ; preds = %signalled_pipes_add_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

signalled_pipes_add_locked.exit.cleanup.sink.split_crit_edge: ; preds = %signalled_pipes_add_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %signalled_pipes_add_locked.exit.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %do.body1.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.body1.cleanup.sink.split_crit_edge ], [ 2, %if.end13.cleanup.sink.split_crit_edge ], [ 2, %signalled_pipes_add_locked.exit.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_interrupt_task(i32 noundef %irq, ptr noundef %dev_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_addr, i32 0, i32 1
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %first_signalled_pipe.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %dev_addr, i32 0, i32 5
  %0 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %first_signalled_pipe.i, align 4
  %tobool.not.i18 = icmp eq ptr %1, null
  br i1 %tobool.not.i18, label %entry.while.end_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then.i:                                        ; preds = %if.end10.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %2 = phi ptr [ %12, %if.end10.if.then.i_crit_edge ], [ %1, %entry.if.then.i_crit_edge ]
  %call2.i19 = phi i32 [ %call2.i, %if.end10.if.then.i_crit_edge ], [ %call2.i17, %entry.if.then.i_crit_edge ]
  %signalled_flags.i = getelementptr inbounds %struct.goldfish_pipe, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %signalled_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %signalled_flags.i, align 4
  store i32 0, ptr %signalled_flags.i, align 4
  %next_signalled.i = getelementptr inbounds %struct.goldfish_pipe, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %next_signalled.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_signalled.i, align 4
  %7 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %first_signalled_pipe.i, align 4
  %tobool8.not.i = icmp eq ptr %6, null
  br i1 %tobool8.not.i, label %if.then.i.while.body_crit_edge, label %if.then9.i

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev_signalled.i = getelementptr inbounds %struct.goldfish_pipe, ptr %6, i32 0, i32 4
  %8 = ptrtoint ptr %prev_signalled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %prev_signalled.i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then9.i, %if.then.i.while.body_crit_edge
  %9 = ptrtoint ptr %next_signalled.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %next_signalled.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i19) #8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.goldfish_pipe, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %flags, align 4
  br label %if.end10

if.else:                                          ; preds = %while.body
  %and1 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else.if.end_crit_edge, label %if.then3

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %flags4 = getelementptr inbounds %struct.goldfish_pipe, ptr %2, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags4) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else.if.end_crit_edge
  %and5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags8 = getelementptr inbounds %struct.goldfish_pipe, ptr %2, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags8) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge, %if.then
  %wake_queue = getelementptr inbounds %struct.goldfish_pipe, ptr %2, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wake_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %11 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %first_signalled_pipe.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end10.while.end_crit_edge, label %if.end10.if.then.i_crit_edge

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i17, %entry.while.end_crit_edge ], [ %call2.i, %if.end10.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.lcssa) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %bufflen, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @goldfish_pipe_read_write(ptr noundef %filp, ptr noundef %buffer, i32 noundef %bufflen, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %bufflen, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @goldfish_pipe_read_write(ptr noundef %filp, ptr noundef %buffer, i32 noundef %bufflen, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wake_queue = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wake_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %wake_queue, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i30, label %goldfish_pipe_cmd.exit, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

goldfish_pipe_cmd.exit:                           ; preds = %poll_wait.exit
  %command_buffer.i.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %command_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command_buffer.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %5, align 8
  %7 = load ptr, ptr %command_buffer.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %dev.i.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #8, !srcloc !65
  %16 = ptrtoint ptr %command_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %command_buffer.i.i, align 4
  %status4.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %status4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status4.i.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %goldfish_pipe_cmd.exit.cleanup_crit_edge, label %if.end

goldfish_pipe_cmd.exit.cleanup_crit_edge:         ; preds = %goldfish_pipe_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %goldfish_pipe_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65
  %and3 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or6 = or i32 %spec.select, 260
  %mask.1 = select i1 %tobool4.not, i32 %spec.select, i32 %or6
  %and8 = shl i32 %19, 2
  %20 = and i32 %and8, 16
  %21 = or i32 %mask.1, %20
  %flags = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %and1.i = shl i32 %23, 3
  %24 = and i32 %and1.i, 8
  %25 = or i32 %21, %24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %goldfish_pipe_cmd.exit.cleanup_crit_edge, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %if.end ], [ -512, %goldfish_pipe_cmd.exit.cleanup_crit_edge ], [ -512, %poll_wait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1516) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -80
  %dev2 = getelementptr inbounds %struct.goldfish_pipe, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %dev2, align 8
  %lock = getelementptr inbounds %struct.goldfish_pipe, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @goldfish_pipe_open.__key) #8
  %wake_queue = getelementptr inbounds %struct.goldfish_pipe, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wake_queue, ptr noundef nonnull @.str.21, ptr noundef nonnull @goldfish_pipe_open.__key.20) #8
  %call9 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %4 = inttoptr i32 %call9 to ptr
  %command_buffer = getelementptr inbounds %struct.goldfish_pipe, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %command_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %command_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end.err_pipe_crit_edge, label %do.body15

if.end.err_pipe_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pipe

do.body15:                                        ; preds = %if.end
  %lock16 = getelementptr i8, ptr %1, i32 -76
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock16) #8
  %pipes_capacity.i = getelementptr i8, ptr %1, i32 -28
  %6 = ptrtoint ptr %pipes_capacity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipes_capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43.not.i = icmp eq i32 %7, 0
  br i1 %cmp43.not.i, label %do.body15.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body15.for.end.i_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body15
  %pipes.i = getelementptr i8, ptr %1, i32 -32
  %8 = ptrtoint ptr %pipes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %id.044.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.get_free_pipe_id_locked.exit_crit_edge, label %for.inc.i

for.body.i.get_free_pipe_id_locked.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_free_pipe_id_locked.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %id.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body15.for.end.i_crit_edge
  %mul.i = shl i32 %7, 1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 4) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %for.end.i.err_id_locked_crit_edge, label %if.end7.i.i.i, !prof !68

for.end.i.err_id_locked_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_id_locked

if.end7.i.i.i:                                    ; preds = %for.end.i
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 2848) #13
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.err_id_locked_crit_edge, label %cleanup.i

if.end7.i.i.i.err_id_locked_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_id_locked

cleanup.i:                                        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pipes6.i = getelementptr i8, ptr %1, i32 -32
  %15 = ptrtoint ptr %pipes6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipes6.i, align 4
  %17 = ptrtoint ptr %pipes_capacity.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipes_capacity.i, align 4
  %mul8.i = shl i32 %18, 2
  %19 = call ptr @memcpy(ptr %call8.i.i.i, ptr %16, i32 %mul8.i)
  tail call void @kfree(ptr noundef %16) #8
  %20 = ptrtoint ptr %pipes6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i.i, ptr %pipes6.i, align 4
  %21 = ptrtoint ptr %pipes_capacity.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipes_capacity.i, align 4
  store i32 %mul.i, ptr %pipes_capacity.i, align 4
  br label %get_free_pipe_id_locked.exit

get_free_pipe_id_locked.exit:                     ; preds = %cleanup.i, %for.body.i.get_free_pipe_id_locked.exit_crit_edge
  %retval.1.i = phi i32 [ %22, %cleanup.i ], [ %id.044.i, %for.body.i.get_free_pipe_id_locked.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp24 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp24, label %get_free_pipe_id_locked.exit.err_id_locked_crit_edge, label %if.end27

get_free_pipe_id_locked.exit.err_id_locked_crit_edge: ; preds = %get_free_pipe_id_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_id_locked

if.end27:                                         ; preds = %get_free_pipe_id_locked.exit
  %pipes = getelementptr i8, ptr %1, i32 -32
  %23 = ptrtoint ptr %pipes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pipes, align 4
  %arrayidx = getelementptr ptr, ptr %24, i32 %retval.1.i
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.1.i, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %command_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %command_buffer, align 4
  %id30 = getelementptr inbounds %struct.goldfish_pipe_command, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %id30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.1.i, ptr %id30, align 4
  %buffers = getelementptr i8, ptr %1, i32 -24
  %30 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffers, align 4
  %rw_params_max_count = getelementptr inbounds %struct.open_command_param, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %rw_params_max_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 336, ptr %rw_params_max_count, align 8
  %33 = load ptr, ptr %command_buffer, align 4
  %34 = ptrtoint ptr %33 to i32
  %call32 = tail call i32 @__virt_to_phys(i32 noundef %34) #8
  %conv33 = zext i32 %call32 to i64
  %35 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffers, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv33, ptr %36, align 8
  %38 = ptrtoint ptr %command_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %command_buffer, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %39, align 8
  %41 = load ptr, ptr %command_buffer, align 4
  %status.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %status.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call7.i.i, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %46 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2, align 8
  %base.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %45) #8, !srcloc !65
  %50 = ptrtoint ptr %command_buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %command_buffer, align 4
  %status4.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %status4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status4.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i32 noundef %call18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp38 = icmp slt i32 %53, 0
  br i1 %cmp38, label %do.body43, label %if.end41

if.end41:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %private_data.i, align 4
  br label %cleanup

do.body43:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock16) #8
  %55 = ptrtoint ptr %pipes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pipes, align 4
  %arrayidx57 = getelementptr ptr, ptr %56, i32 %retval.1.i
  %57 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx57, align 4
  br label %err_id_locked

err_id_locked:                                    ; preds = %do.body43, %get_free_pipe_id_locked.exit.err_id_locked_crit_edge, %if.end7.i.i.i.err_id_locked_crit_edge, %for.end.i.err_id_locked_crit_edge
  %flags.0 = phi i32 [ %call51, %do.body43 ], [ %call18, %get_free_pipe_id_locked.exit.err_id_locked_crit_edge ], [ %call18, %if.end7.i.i.i.err_id_locked_crit_edge ], [ %call18, %for.end.i.err_id_locked_crit_edge ]
  %status.0 = phi i32 [ %53, %do.body43 ], [ %retval.1.i, %get_free_pipe_id_locked.exit.err_id_locked_crit_edge ], [ -12, %if.end7.i.i.i.err_id_locked_crit_edge ], [ -12, %for.end.i.err_id_locked_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i32 noundef %flags.0) #8
  %58 = ptrtoint ptr %command_buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %command_buffer, align 4
  %60 = ptrtoint ptr %59 to i32
  tail call void @free_pages(i32 noundef %60, i32 noundef 0) #8
  br label %err_pipe

err_pipe:                                         ; preds = %err_id_locked, %if.end.err_pipe_crit_edge
  %status.1 = phi i32 [ %status.0, %err_id_locked ], [ -12, %if.end.err_pipe_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pipe, %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %err_pipe ], [ 0, %if.end41 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @goldfish_pipe_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lock.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.goldfish_pipe_cmd.exit_crit_edge

entry.goldfish_pipe_cmd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %goldfish_pipe_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %command_buffer.i.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %command_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command_buffer.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %5, align 8
  %7 = load ptr, ptr %command_buffer.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %base.i.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #8, !srcloc !65
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %goldfish_pipe_cmd.exit

goldfish_pipe_cmd.exit:                           ; preds = %if.end.i, %entry.goldfish_pipe_cmd.exit_crit_edge
  %lock = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %3, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %pipes = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %pipes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipes, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  %prev_signalled.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %prev_signalled.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev_signalled.i, align 4
  %tobool.not.i18 = icmp eq ptr %22, null
  br i1 %tobool.not.i18, label %goldfish_pipe_cmd.exit.if.end.i19_crit_edge, label %if.then.i

goldfish_pipe_cmd.exit.if.end.i19_crit_edge:      ; preds = %goldfish_pipe_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i19

if.then.i:                                        ; preds = %goldfish_pipe_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %next_signalled.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %next_signalled.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_signalled.i, align 4
  %next_signalled2.i = getelementptr inbounds %struct.goldfish_pipe, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %next_signalled2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %next_signalled2.i, align 4
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.then.i, %goldfish_pipe_cmd.exit.if.end.i19_crit_edge
  %next_signalled3.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %next_signalled3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next_signalled3.i, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %if.end.i19.if.end9.i_crit_edge, label %if.then5.i

if.end.i19.if.end9.i_crit_edge:                   ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev_signalled.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev_signalled.i, align 4
  %prev_signalled8.i = getelementptr inbounds %struct.goldfish_pipe, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %prev_signalled8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %prev_signalled8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i19.if.end9.i_crit_edge
  %first_signalled_pipe.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %first_signalled_pipe.i, align 4
  %cmp.i = icmp eq ptr %32, %1
  br i1 %cmp.i, label %if.then10.i, label %if.end9.i.signalled_pipes_remove_locked.exit_crit_edge

if.end9.i.signalled_pipes_remove_locked.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %signalled_pipes_remove_locked.exit

if.then10.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %next_signalled3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_signalled3.i, align 4
  %35 = ptrtoint ptr %first_signalled_pipe.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %first_signalled_pipe.i, align 4
  br label %signalled_pipes_remove_locked.exit

signalled_pipes_remove_locked.exit:               ; preds = %if.then10.i, %if.end9.i.signalled_pipes_remove_locked.exit_crit_edge
  %36 = ptrtoint ptr %prev_signalled.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %prev_signalled.i, align 4
  %37 = ptrtoint ptr %next_signalled3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %next_signalled3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %private_data, align 4
  %command_buffer = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %command_buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %command_buffer, align 4
  %41 = ptrtoint ptr %40 to i32
  tail call void @free_pages(i32 noundef %41, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goldfish_pipe_read_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %bufflen, i32 noundef %is_write) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup70_crit_edge, !prof !73

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufflen)
  %cmp = icmp eq i32 %bufflen, 0
  br i1 %cmp, label %if.end.cleanup70_crit_edge, label %if.end10, !prof !68

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

if.end10:                                         ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %bufflen, i32 -1226833920) #14, !srcloc !75
  %asmresult = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp12.not = icmp eq i32 %asmresult, 0
  br i1 %cmp12.not, label %if.end22, label %if.end10.cleanup70_crit_edge, !prof !73

if.end10.cleanup70_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

if.end22:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %buffer to i32
  %add = add i32 %5, %bufflen
  %sub = add i32 %add, -1
  %and = and i32 %sub, -4096
  %and24 = and i32 %sub, 4095
  %add25 = add nuw nsw i32 %and24, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp26150 = icmp ugt i32 %add, %5
  br i1 %cmp26150, label %while.body.lr.ph, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end22
  %lock.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 6
  %pages.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_write)
  %tobool.not.i.i = icmp eq i32 %is_write, 0
  %cond.i.i = zext i1 %tobool.not.i.i to i32
  %command_buffer.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 3
  %cond.i = select i1 %tobool.not.i.i, i32 6, i32 4
  %dev.i.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 8
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %cond.i99 = select i1 %tobool.not.i.i, i32 2, i32 1
  %cond2.i = select i1 %tobool.not.i.i, i32 7, i32 5
  %6 = shl nuw nsw i32 1, %cond.i99
  %wake_queue.i = getelementptr inbounds %struct.goldfish_pipe, ptr %1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %count.0152 = phi i32 [ 0, %while.body.lr.ph ], [ %count.1, %cleanup.while.body_crit_edge ]
  %address.0151 = phi i32 [ %5, %while.body.lr.ph ], [ %address.1, %cleanup.while.body_crit_edge ]
  %and.i = and i32 %address.0151, -4096
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.while.end.loopexit_crit_edge

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit

if.end.i:                                         ; preds = %while.body
  %sub.i.i = sub i32 %and, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1376255, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 1376255
  %shr.i.i = lshr exact i32 %sub.i.i, 12
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %requested_pages.0.i.i = select i1 %cmp.i.i, i32 336, i32 %add.i.i
  %call.i.i = call i32 @pin_user_pages_fast(i32 noundef %and.i, i32 noundef %requested_pages.0.i.i, i32 noundef %cond.i.i, ptr noundef %pages.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp1.i.i, label %transfer_max_buffers.exit.thread111, label %if.end3.i.i

transfer_max_buffers.exit.thread111:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %while.end

if.end3.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %requested_pages.0.i.i)
  %cmp4.i.i = icmp ult i32 %call.i.i, %requested_pages.0.i.i
  %7 = or i1 %cmp.i.i, %cmp4.i.i
  %spec.select45.i = select i1 %7, i32 4096, i32 %add25
  %8 = ptrtoint ptr %command_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command_buffer.i, align 4
  %10 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i36.i = add i32 %sub.ptr.div.i.i, %13
  %shl.i.i = shl i32 %add.i36.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and.i)
  %cmp.i37.i = icmp eq i32 %and, %and.i
  %sub.i38.i = sub i32 %add, %address.0151
  %and.i.i = and i32 %address.0151, 4095
  %sub1.i.i = sub nuw nsw i32 4096, %and.i.i
  %cond.i39.i = select i1 %cmp.i37.i, i32 %sub.i38.i, i32 %sub1.i.i
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %conv.i.i = zext i32 %or.i.i to i64
  %ptrs.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %9, i32 0, i32 4, i32 0, i32 2
  %14 = ptrtoint ptr %ptrs.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i.i, ptr %ptrs.i.i, align 8
  %sizes.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %9, i32 0, i32 4, i32 0, i32 3
  %15 = ptrtoint ptr %sizes.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i39.i, ptr %sizes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp51.i.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp51.i.not.i, label %if.end3.i.i.if.end30_crit_edge, label %for.body.lr.ph.i.i

if.end3.i.i.if.end30_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.body.lr.ph.i.i:                               ; preds = %if.end3.i.i
  %sub14.i.i = add nsw i32 %call.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.04.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc32.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %buffer_idx.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %buffer_idx.1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %xaddr_prev.02.i.i = phi i32 [ %shl.i.i, %for.body.lr.ph.i.i ], [ %shl13.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr ptr, ptr %pages.i, i32 %i.04.i.i
  %16 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast8.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast9.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub10.i.i = sub i32 %sub.ptr.lhs.cast8.i.i, %sub.ptr.rhs.cast9.i.i
  %sub.ptr.div11.i.i = sdiv exact i32 %sub.ptr.sub10.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add12.i.i = add i32 %sub.ptr.div11.i.i, %19
  %shl13.i.i = shl i32 %add12.i.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %i.04.i.i, i32 %sub14.i.i)
  %cmp15.i.i = icmp eq i32 %i.04.i.i, %sub14.i.i
  %spec.select.i.i = select i1 %cmp15.i.i, i32 %spec.select45.i, i32 4096
  %add21.i.i = add i32 %xaddr_prev.02.i.i, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %shl13.i.i, i32 %add21.i.i)
  %cmp22.i.i = icmp eq i32 %shl13.i.i, %add21.i.i
  br i1 %cmp22.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx25.i.i = getelementptr %struct.goldfish_pipe_command, ptr %9, i32 0, i32 4, i32 0, i32 3, i32 %buffer_idx.03.i.i
  %20 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx25.i.i, align 4
  %add26.i.i = add i32 %21, %spec.select.i.i
  store i32 %add26.i.i, ptr %arrayidx25.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i.i = add i32 %buffer_idx.03.i.i, 1
  %conv27.i.i = zext i32 %shl13.i.i to i64
  %arrayidx29.i.i = getelementptr %struct.goldfish_pipe_command, ptr %9, i32 0, i32 4, i32 0, i32 2, i32 %inc.i.i
  %22 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv27.i.i, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i = getelementptr %struct.goldfish_pipe_command, ptr %9, i32 0, i32 4, i32 0, i32 3, i32 %inc.i.i
  %23 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i.i, ptr %arrayidx31.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %buffer_idx.1.i.i = phi i32 [ %buffer_idx.03.i.i, %if.then.i.i ], [ %inc.i.i, %if.else.i.i ]
  %inc32.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc32.i.i, %call.i.i
  br i1 %exitcond.not.i.i, label %if.end.i.i.if.end30_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i.i.if.end30_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.i.if.end30_crit_edge, %if.end3.i.i.if.end30_crit_edge
  %buffer_idx.0.lcssa.i.i = phi i32 [ 0, %if.end3.i.i.if.end30_crit_edge ], [ %buffer_idx.1.i.i, %if.end.i.i.if.end30_crit_edge ]
  %24 = getelementptr inbounds %struct.goldfish_pipe_command, ptr %9, i32 0, i32 4
  %add33.i.i = add i32 %buffer_idx.0.lcssa.i.i, 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add33.i.i, ptr %24, align 8
  %26 = ptrtoint ptr %command_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %command_buffer.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i, ptr %27, align 8
  %29 = load ptr, ptr %command_buffer.i, align 4
  %status.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %status.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #8, !srcloc !65
  %38 = ptrtoint ptr %command_buffer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %command_buffer.i, align 4
  %status4.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %status4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status4.i.i, align 8
  %consumed_size10.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %39, i32 0, i32 4, i32 0, i32 1
  %42 = ptrtoint ptr %consumed_size10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %consumed_size10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp14.i = icmp sgt i32 %43, 0
  %spec.select.i = select i1 %tobool.not.i.i, i1 %cmp14.i, i1 false
  call void @unpin_user_pages_dirty_lock(ptr noundef %pages.i, i32 noundef %call.i.i, i1 noundef zeroext %spec.select.i) #8
  call void @mutex_unlock(ptr noundef %lock.i) #8
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 0)
  %address.1 = add i32 %44, %address.0151
  %count.1 = add i32 %44, %count.0152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp36 = icmp sgt i32 %41, 0
  br i1 %cmp36, label %if.end30.cleanup_crit_edge, label %if.end38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp39 = icmp eq i32 %41, 0
  br i1 %cmp39, label %if.end38.while.end.loopexit_crit_edge, label %if.end41

if.end38.while.end.loopexit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit

if.end41:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp42 = icmp sgt i32 %count.1, 0
  br i1 %cmp42, label %if.then43, label %if.end55

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %41)
  %cmp44.not = icmp eq i32 %41, -2
  br i1 %cmp44.not, label %if.then43.while.end_crit_edge, label %do.body

if.then43.while.end_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body:                                          ; preds = %if.then43
  %call46 = call i32 @___ratelimit(ptr noundef nonnull @goldfish_pipe_read_write._rs, ptr noundef nonnull @__func__.goldfish_pipe_read_write) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body.while.end_crit_edge, label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 4
  %pdev_dev = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev_dev, align 4
  %cond = select i1 %tobool.not.i.i, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.16, i32 noundef %41, ptr noundef nonnull %cond) #11
  br label %while.end

if.end55:                                         ; preds = %if.end41
  %49 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %if.end55.while.end_crit_edge [
    i32 -2, label %lor.lhs.false
    i32 -4, label %while.end.loopexit206
    i32 -3, label %if.end55.while.end.loopexit_crit_edge
  ]

if.end55.while.end.loopexit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end55
  %50 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %f_flags, align 4
  %and57 = and i32 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %cmp58.not = icmp eq i32 %and57, 0
  br i1 %cmp58.not, label %if.end61, label %lor.lhs.false.while.end.loopexit_crit_edge

lor.lhs.false.while.end.loopexit_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit

if.end61:                                         ; preds = %lor.lhs.false
  call void @_set_bit(i32 noundef %cond.i99, ptr noundef %flags) #8
  %call.i.i100 = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool.not.i.i101 = icmp eq i32 %call.i.i100, 0
  br i1 %tobool.not.i.i101, label %if.end.i.i102, label %if.end61.while.cond.i.preheader_crit_edge

if.end61.while.cond.i.preheader_crit_edge:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.preheader

if.end.i.i102:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %command_buffer.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %command_buffer.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond2.i, ptr %53, align 8
  %55 = load ptr, ptr %command_buffer.i, align 4
  %status.i.i.i = getelementptr inbounds %struct.goldfish_pipe_command, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %status.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #8
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.goldfish_pipe_dev, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #8, !srcloc !65
  call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end.i.i102, %if.end61.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end26.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags, align 4
  %66 = and i32 %65, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool5.not.i = icmp eq i32 %66, 0
  br i1 %tobool5.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 379) #8
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags, align 4
  %69 = and i32 %68, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool11.not.i = icmp eq i32 %69, 0
  br i1 %tobool11.not.i, label %while.body.i.if.end26.i_crit_edge, label %if.then.i

while.body.i.if.end26.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then.i:                                        ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %70 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %call1363.i = call i32 @prepare_to_wait_event(ptr noundef %wake_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags, align 4
  %73 = and i32 %72, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool16.not64.i = icmp eq i32 %73, 0
  br i1 %tobool16.not64.i, label %if.then.i.if.end22.thread59.i_crit_edge, label %if.then.i.if.end.i103_crit_edge

if.then.i.if.end.i103_crit_edge:                  ; preds = %if.then.i
  br label %if.end.i103

if.then.i.if.end22.thread59.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.thread59.i

if.end.i103:                                      ; preds = %cleanup.i.if.end.i103_crit_edge, %if.then.i.if.end.i103_crit_edge
  %call1365.i = phi i32 [ %call13.i, %cleanup.i.if.end.i103_crit_edge ], [ %call1363.i, %if.then.i.if.end.i103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1365.i)
  %tobool18.not.i = icmp eq i32 %call1365.i, 0
  br i1 %tobool18.not.i, label %cleanup.i, label %if.end22.i

cleanup.i:                                        ; preds = %if.end.i103
  call void @schedule() #8
  %call13.i = call i32 @prepare_to_wait_event(ptr noundef %wake_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags, align 4
  %76 = and i32 %75, %6
  %tobool16.not.i = icmp eq i32 %76, 0
  br i1 %tobool16.not.i, label %cleanup.i.if.end22.thread59.i_crit_edge, label %cleanup.i.if.end.i103_crit_edge

cleanup.i.if.end.i103_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i103

cleanup.i.if.end22.thread59.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.thread59.i

if.end22.thread59.i:                              ; preds = %cleanup.i.if.end22.thread59.i_crit_edge, %if.then.i.if.end22.thread59.i_crit_edge
  call void @finish_wait(ptr noundef %wake_queue.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.end26.i

if.end22.i:                                       ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %cleanup70

if.end26.i:                                       ; preds = %if.end22.thread59.i, %while.body.i.if.end26.i_crit_edge
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags, align 4
  %and1.i49.i = and i32 %78, 1
  %tobool29.not.i = icmp eq i32 %and1.i49.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.while.cond.i_crit_edge, label %if.end26.i.cleanup70_crit_edge

if.end26.i.cleanup70_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

if.end26.i.while.cond.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

cleanup:                                          ; preds = %while.cond.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %cmp26 = icmp ugt i32 %add, %address.1
  br i1 %cmp26, label %cleanup.while.body_crit_edge, label %cleanup.while.end.loopexit_crit_edge

cleanup.while.end.loopexit_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end.loopexit:                               ; preds = %cleanup.while.end.loopexit_crit_edge, %lor.lhs.false.while.end.loopexit_crit_edge, %if.end55.while.end.loopexit_crit_edge, %if.end38.while.end.loopexit_crit_edge, %while.body.while.end.loopexit_crit_edge
  %ret.2.ph = phi i32 [ -12, %if.end55.while.end.loopexit_crit_edge ], [ -11, %lor.lhs.false.while.end.loopexit_crit_edge ], [ -512, %while.body.while.end.loopexit_crit_edge ], [ 0, %if.end38.while.end.loopexit_crit_edge ], [ 0, %cleanup.while.end.loopexit_crit_edge ]
  %count.3.ph = phi i32 [ %count.1, %if.end55.while.end.loopexit_crit_edge ], [ %count.1, %lor.lhs.false.while.end.loopexit_crit_edge ], [ %count.0152, %while.body.while.end.loopexit_crit_edge ], [ %count.1, %if.end38.while.end.loopexit_crit_edge ], [ %count.1, %cleanup.while.end.loopexit_crit_edge ]
  br label %while.end

while.end.loopexit206:                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit206, %while.end.loopexit, %if.end55.while.end_crit_edge, %do.end, %do.body.while.end_crit_edge, %if.then43.while.end_crit_edge, %transfer_max_buffers.exit.thread111, %if.end22.while.end_crit_edge
  %ret.2 = phi i32 [ -14, %transfer_max_buffers.exit.thread111 ], [ 0, %if.then43.while.end_crit_edge ], [ 0, %do.end ], [ 0, %do.body.while.end_crit_edge ], [ -22, %if.end22.while.end_crit_edge ], [ %ret.2.ph, %while.end.loopexit ], [ -5, %while.end.loopexit206 ], [ -22, %if.end55.while.end_crit_edge ]
  %count.3 = phi i32 [ %count.0152, %transfer_max_buffers.exit.thread111 ], [ %count.1, %if.then43.while.end_crit_edge ], [ %count.1, %do.end ], [ %count.1, %do.body.while.end_crit_edge ], [ 0, %if.end22.while.end_crit_edge ], [ %count.3.ph, %while.end.loopexit ], [ %count.1, %while.end.loopexit206 ], [ %count.1, %if.end55.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.3)
  %cmp67 = icmp sgt i32 %count.3, 0
  %count.3.ret.2 = select i1 %cmp67, i32 %count.3, i32 %ret.2
  br label %cleanup70

cleanup70:                                        ; preds = %while.end, %if.end26.i.cleanup70_crit_edge, %if.end22.i, %if.end10.cleanup70_crit_edge, %if.end.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.2 = phi i32 [ -5, %entry.cleanup70_crit_edge ], [ 0, %if.end.cleanup70_crit_edge ], [ -14, %if.end10.cleanup70_crit_edge ], [ %count.3.ret.2, %while.end ], [ -512, %if.end22.i ], [ -5, %if.end26.i.cleanup70_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_goldfish_pipe__236_950_goldfish_pipe_driver_init6, !1, !"__initcall__kmod_goldfish_pipe__236_950_goldfish_pipe_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 950, i32 1}
!2 = !{ptr @__exitcall_goldfish_pipe_driver_exit, !1, !"__exitcall_goldfish_pipe_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 951, i32 1}
!5 = !{ptr @__UNIQUE_ID_file238, !6, !"__UNIQUE_ID_file238", i1 false, i1 false}
!6 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 952, i32 1}
!7 = !{ptr @__UNIQUE_ID_license239, !6, !"__UNIQUE_ID_license239", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 944, i32 11}
!10 = !{ptr @goldfish_pipe_driver, !11, !"goldfish_pipe_driver", i1 false, i1 false}
!11 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 940, i32 31}
!12 = !{ptr @goldfish_pipe_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 886, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 890, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @goldfish_pipe_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @goldfish_pipe_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 895, i32 3}
!25 = !{ptr @goldfish_pipe_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @goldfish_pipe_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 816, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @goldfish_pipe_device_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @goldfish_pipe_device_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 823, i32 3}
!34 = !{ptr @goldfish_pipe_device_init._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @goldfish_pipe_device_init._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @goldfish_pipe_fops, !37, !"goldfish_pipe_fops", i1 false, i1 false}
!37 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 780, i32 37}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 446, i32 5}
!40 = !{ptr @goldfish_pipe_read_write._rs, !39, !"_rs", i1 false, i1 false}
!41 = !{ptr @__func__.goldfish_pipe_read_write, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @goldfish_pipe_read_write._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @goldfish_pipe_read_write._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @goldfish_pipe_open.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 709, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @goldfish_pipe_open.__key.20, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 710, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @goldfish_pipe_of_match, !54, !"goldfish_pipe_of_match", i1 false, i1 false}
!54 = !{!"../drivers/platform/goldfish/goldfish_pipe.c", i32 934, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2154778126}
!65 = !{i64 4670410}
!66 = !{i64 4670828}
!67 = !{i64 2154778890}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2154767437}
!70 = !{i64 2154767949}
!71 = !{i64 2154773907}
!72 = !{i64 2154762011}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2154752436}
!75 = !{i64 2154756475, i64 2154756500}
