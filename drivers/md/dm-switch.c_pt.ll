; ModuleID = '/llk/IR_all_yes/drivers/md/dm-switch.c_pt.bc'
source_filename = "../drivers/md/dm-switch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.switch_ctx = type { ptr, i32, i32, i32, i8, i8, i8, i8, ptr, [0 x %struct.switch_path] }
%struct.switch_path = type { ptr, i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@switch_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 128, ptr @.str, ptr null, [3 x i32] [i32 1, i32 1, i32 0], ptr @switch_ctr, ptr @switch_dtr, ptr @switch_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @switch_status, ptr @switch_message, ptr @switch_prepare_ioctl, ptr null, ptr null, ptr @switch_iterate_devices, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_switch__268_584_dm_switch_init6 = internal global ptr @dm_switch_init, section ".initcall6.init", align 4
@__exitcall_dm_switch_exit = internal global ptr @dm_switch_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description269 = internal constant [66 x i8] c"dm_switch.description=device-mapper dynamic path switching target\00", section ".modinfo", align 1
@__UNIQUE_ID_author270 = internal constant [60 x i8] c"dm_switch.author=Kevin D. O'Kelley <Kevin_OKelley@dell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author271 = internal constant [68 x i8] c"dm_switch.author=Narendran Ganapathy <Narendran_Ganapathy@dell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [50 x i8] c"dm_switch.author=Jim Ramsay <Jim_Ramsay@dell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [55 x i8] c"dm_switch.author=Mikulas Patocka <mpatocka@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [36 x i8] c"dm_switch.file=drivers/md/dm-switch\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [22 x i8] c"dm_switch.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@switch_ctr._args = internal constant { [3 x %struct.dm_arg], [60 x i8] } { [3 x %struct.dm_arg] [%struct.dm_arg { i32 1, i32 524286, ptr @.str.1 }, %struct.dm_arg { i32 1, i32 -1, ptr @.str.2 }, %struct.dm_arg { i32 0, i32 0, ptr @.str.3 }], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid number of paths\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid region size\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid number of optional args\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Incorrect number of path arguments\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot allocate redirection context\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device lookup failed\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid device starting offset\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Region table too large\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot allocate region table\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u %u 0\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s %llu\00", [23 x i8] zeroinitializer }, align 32
@switch_message.message_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @switch_message.message_mutex, i64 52), ptr getelementptr (i8, ptr @switch_message.message_mutex, i64 52) }, ptr @switch_message.message_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"message_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"message_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_region_mappings\00", [44 x i8] zeroinitializer }, align 32
@switch_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014device-mapper: switch: Unrecognised message received.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"switch_message\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/dm-switch.c\00", [41 x i8] zeroinitializer }, align 32
@switch_message._entry_ptr = internal global ptr @switch_message._entry, section ".printk_index", align 4
@process_set_region_mappings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.17, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014device-mapper: switch: invalid set_region_mappings argument: '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"process_set_region_mappings\00", [36 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr = internal global ptr @process_set_region_mappings._entry, section ".printk_index", align 4
@process_set_region_mappings._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.17, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.21 = internal global ptr @process_set_region_mappings._entry.20, section ".printk_index", align 4
@process_set_region_mappings._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.17, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.23 = internal global ptr @process_set_region_mappings._entry.22, section ".printk_index", align 4
@process_set_region_mappings._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.17, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.25 = internal global ptr @process_set_region_mappings._entry.24, section ".printk_index", align 4
@process_set_region_mappings._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.17, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014device-mapper: switch: invalid set_region_mappings cycle length: %lu > %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.28 = internal global ptr @process_set_region_mappings._entry.26, section ".printk_index", align 4
@process_set_region_mappings._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.17, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014device-mapper: switch: invalid set_region_mappings region number: %lu + %lu >= %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.31 = internal global ptr @process_set_region_mappings._entry.29, section ".printk_index", align 4
@process_set_region_mappings._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.17, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.33 = internal global ptr @process_set_region_mappings._entry.32, section ".printk_index", align 4
@process_set_region_mappings._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.17, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.35 = internal global ptr @process_set_region_mappings._entry.34, section ".printk_index", align 4
@process_set_region_mappings._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.17, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.37 = internal global ptr @process_set_region_mappings._entry.36, section ".printk_index", align 4
@process_set_region_mappings._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.17, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014device-mapper: switch: invalid set_region_mappings region number: %lu >= %lu\0A\00", [48 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.40 = internal global ptr @process_set_region_mappings._entry.38, section ".printk_index", align 4
@process_set_region_mappings._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.19, ptr @.str.17, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014device-mapper: switch: invalid set_region_mappings device: %lu >= %u\0A\00", [56 x i8] zeroinitializer }, align 32
@process_set_region_mappings._entry_ptr.43 = internal global ptr @process_set_region_mappings._entry.41, section ".printk_index", align 4
@hex_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [64 x i8] zeroinitializer }, align 32
@dm_switch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.17, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: switch: dm_register_target() failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_switch_init\00", [17 x i8] zeroinitializer }, align 32
@dm_switch_init._entry_ptr = internal global ptr @dm_switch_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"switch_target\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 554, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 555, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 254, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 255, i32 84 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 256, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 257, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 282, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 288, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 213, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 218, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 102, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 119, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 502, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 504, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"message_mutex\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 472, i32 9 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 479, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 482, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 388, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 393, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 398, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 403, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 408, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 414, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 433, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 440, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 446, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 450, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 454, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [10 x i8] c"hex_table\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 341, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [26 x i8] c"../drivers/md/dm-switch.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 574, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_dm_switch_exit, ptr @__initcall__kmod_dm_switch__268_584_dm_switch_init6, ptr @dm_switch_exit, ptr @dm_switch_init._entry, ptr @dm_switch_init._entry_ptr, ptr @process_set_region_mappings._entry, ptr @process_set_region_mappings._entry.20, ptr @process_set_region_mappings._entry.22, ptr @process_set_region_mappings._entry.24, ptr @process_set_region_mappings._entry.26, ptr @process_set_region_mappings._entry.29, ptr @process_set_region_mappings._entry.32, ptr @process_set_region_mappings._entry.34, ptr @process_set_region_mappings._entry.36, ptr @process_set_region_mappings._entry.38, ptr @process_set_region_mappings._entry.41, ptr @process_set_region_mappings._entry_ptr, ptr @process_set_region_mappings._entry_ptr.21, ptr @process_set_region_mappings._entry_ptr.23, ptr @process_set_region_mappings._entry_ptr.25, ptr @process_set_region_mappings._entry_ptr.28, ptr @process_set_region_mappings._entry_ptr.31, ptr @process_set_region_mappings._entry_ptr.33, ptr @process_set_region_mappings._entry_ptr.35, ptr @process_set_region_mappings._entry_ptr.37, ptr @process_set_region_mappings._entry_ptr.40, ptr @process_set_region_mappings._entry_ptr.43, ptr @switch_message._entry, ptr @switch_message._entry_ptr, ptr @switch_target, ptr @.str, ptr @switch_ctr._args, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @switch_message.message_mutex, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.27, ptr @.str.30, ptr @.str.39, ptr @.str.42, ptr @hex_table, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_ctr._args to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_message.message_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_set_region_mappings._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hex_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_switch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_switch_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dm_unregister_target(ptr noundef nonnull @switch_target) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_switch_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @switch_target) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %start.i = alloca i64, align 8
  %as = alloca %struct.dm_arg_set, align 4
  %nr_paths = alloca i32, align 4
  %region_size = alloca i32, align 4
  %nr_optional_args = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #9
  %0 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_paths) #9
  %1 = ptrtoint ptr %nr_paths to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr_paths, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %region_size) #9
  %2 = ptrtoint ptr %region_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %region_size, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_optional_args) #9
  %3 = ptrtoint ptr %nr_optional_args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nr_optional_args, align 4, !annotation !112
  %4 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %argc, ptr %as, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %argv, ptr %0, align 4
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call = call i32 @dm_read_arg(ptr noundef nonnull @switch_ctr._args, ptr noundef nonnull %as, ptr noundef nonnull %nr_paths, ptr noundef %error) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([3 x %struct.dm_arg], ptr @switch_ctr._args, i32 0, i32 1), ptr noundef nonnull %as, ptr noundef nonnull %region_size, ptr noundef %error) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = call i32 @dm_read_arg_group(ptr noundef getelementptr inbounds ([3 x %struct.dm_arg], ptr @switch_ctr._args, i32 0, i32 2), ptr noundef nonnull %as, ptr noundef nonnull %nr_optional_args, ptr noundef %error) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %as, align 4
  %8 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_paths, align 4
  %mul = shl i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp.not = icmp eq i32 %7, %mul
  br i1 %cmp.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.4, ptr %error, align 8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %region_size, align 4
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 16) #9
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %15, i32 24) #9
  %retval.0.i.i = select i1 %14, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %error, align 8
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %17 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ti, ptr %call9.i.i.i, align 128
  %region_size3.i = getelementptr inbounds %struct.switch_ctx, ptr %call9.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %region_size3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %12, ptr %region_size3.i, align 8
  %private.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i.i, ptr %private.i, align 4
  %20 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %region_size, align 4
  %conv = zext i32 %21 to i64
  %call22 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.cond.preheader, label %if.end21.error36_crit_edge

if.end21.error36_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %error36

while.cond.preheader:                             ; preds = %if.end21
  %22 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool27.not69 = icmp eq i32 %23, 0
  br i1 %tobool27.not69, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %parse_path.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #9
  %26 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %start.i, align 8, !annotation !112
  %call.i = call ptr @dm_shift_arg(ptr noundef nonnull %as) #9
  %27 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ti, align 8
  %call1.i = call i32 @dm_table_get_mode(ptr noundef %28) #9
  %nr_paths.i = getelementptr inbounds %struct.switch_ctx, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %nr_paths.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_paths.i, align 4
  %arrayidx.i = getelementptr %struct.switch_ctx, ptr %25, i32 0, i32 9, i32 %30
  %call2.i = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %call.i, i32 noundef %call1.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i62 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i62, label %if.end.i63, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.6, ptr %error, align 8
  br label %parse_path.exit.thread

if.end.i63:                                       ; preds = %while.body
  %call3.i = call ptr @dm_shift_arg(ptr noundef nonnull %as) #9
  %call4.i = call i32 @kstrtoull(ptr noundef %call3.i, i32 noundef 10, ptr noundef nonnull %start.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %parse_path.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.7, ptr %error, align 8
  %33 = ptrtoint ptr %nr_paths.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_paths.i, align 4
  %arrayidx10.i = getelementptr %struct.switch_ctx, ptr %25, i32 0, i32 9, i32 %34
  %35 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx10.i, align 8
  call void @dm_put_device(ptr noundef %ti, ptr noundef %36) #9
  br label %parse_path.exit.thread

parse_path.exit.thread:                           ; preds = %if.then6.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -22, %if.then6.i ], [ %call2.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #9
  br label %error36

parse_path.exit:                                  ; preds = %if.end.i63
  %37 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start.i, align 8
  %39 = ptrtoint ptr %nr_paths.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_paths.i, align 4
  %start16.i = getelementptr %struct.switch_ctx, ptr %25, i32 0, i32 9, i32 %40, i32 1
  %41 = ptrtoint ptr %start16.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %38, ptr %start16.i, align 8
  %42 = load i32, ptr %nr_paths.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %nr_paths.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #9
  %43 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %as, align 4
  %tobool27.not = icmp eq i32 %44, 0
  br i1 %tobool27.not, label %parse_path.exit.while.end_crit_edge, label %parse_path.exit.while.body_crit_edge

parse_path.exit.while.body_crit_edge:             ; preds = %parse_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

parse_path.exit.while.end_crit_edge:              ; preds = %parse_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %parse_path.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %45 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_paths, align 4
  %call32 = call fastcc i32 @alloc_region_table(ptr noundef %ti, i32 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %while.end.error36_crit_edge

while.end.error36_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error36

if.end35:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @initialise_region_table(ptr noundef nonnull %call9.i.i.i)
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %47 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_discard_bios, align 8
  br label %cleanup

error36:                                          ; preds = %while.end.error36_crit_edge, %parse_path.exit.thread, %if.end21.error36_crit_edge
  %r.0 = phi i32 [ %call22, %if.end21.error36_crit_edge ], [ %call32, %while.end.error36_crit_edge ], [ %retval.0.i.ph, %parse_path.exit.thread ]
  call void @switch_dtr(ptr noundef %ti)
  br label %cleanup

cleanup:                                          ; preds = %error36, %if.end35, %if.then19, %if.then14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then14 ], [ %r.0, %error36 ], [ 0, %if.end35 ], [ -12, %if.then19 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_optional_args) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %region_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_paths) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switch_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %nr_paths = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_paths, align 4
  %dec7 = add i32 %3, -1
  store i32 %dec7, ptr %nr_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not8 = icmp eq i32 %3, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dec9 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec7, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %dec9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %5) #9
  %6 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_paths, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %nr_paths, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %region_table = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %region_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %region_table, align 4
  tail call void @vfree(ptr noundef %9) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %4 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %begin, align 8
  %sub = sub i64 %3, %5
  %region_size_bits.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %region_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %region_size_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp sgt i8 %7, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom.i = zext i8 %7 to i64
  %shr.i = lshr i64 %sub, %sh_prom.i
  %extract.t.i = trunc i64 %shr.i to i32
  br label %if.end190.i

if.else.i:                                        ; preds = %entry
  %region_size.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %region_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %region_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp174.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !113

if.then178.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv179.i = trunc i64 %sub to i32
  %div182.i = udiv i32 %conv179.i, %9
  br label %if.end190.i

if.else184.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %sub) #14, !srcloc !114
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t318.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.else184.i, %if.then178.i, %if.then.i
  %p.0.off0.i = phi i32 [ %extract.t.i, %if.then.i ], [ %div182.i, %if.then178.i ], [ %extract.t318.i, %if.else184.i ]
  %region_entries_per_slot_bits.i.i.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %region_entries_per_slot_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %region_entries_per_slot_bits.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i.i.i = icmp sgt i8 %12, -1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv21.i.i.i = zext i8 %12 to i32
  %shr.i.i.i = lshr i32 %p.0.off0.i, %conv21.i.i.i
  %region_entries_per_slot.i.i.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %region_entries_per_slot.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %region_entries_per_slot.i.i.i, align 2
  %conv4.i.i.i = zext i8 %14 to i32
  %sub.i.i.i = add nsw i32 %conv4.i.i.i, -1
  %and.i.i.i = and i32 %sub.i.i.i, %p.0.off0.i
  br label %switch_region_table_read.exit.i

if.else.i.i.i:                                    ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #11
  %region_entries_per_slot5.i.i.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %region_entries_per_slot5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %region_entries_per_slot5.i.i.i, align 2
  %conv6.i.i.i = zext i8 %16 to i32
  %p.0.off0.i.frozen = freeze i32 %p.0.off0.i
  %conv6.i.i.i.frozen = freeze i32 %conv6.i.i.i
  %div.i.i.i = udiv i32 %p.0.off0.i.frozen, %conv6.i.i.i.frozen
  %17 = mul i32 %div.i.i.i, %conv6.i.i.i.frozen
  %rem.i.i.i.decomposed = sub i32 %p.0.off0.i.frozen, %17
  br label %switch_region_table_read.exit.i

switch_region_table_read.exit.i:                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %region_index.0.i.i = phi i32 [ %shr.i.i.i, %if.then.i.i.i ], [ %div.i.i.i, %if.else.i.i.i ]
  %storemerge.i.i.i = phi i32 [ %and.i.i.i, %if.then.i.i.i ], [ %rem.i.i.i.decomposed, %if.else.i.i.i ]
  %region_table_entry_bits.i.i.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %region_table_entry_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %region_table_entry_bits.i.i.i, align 1
  %conv9.i.i.i = zext i8 %19 to i32
  %mul.i.i.i = mul i32 %storemerge.i.i.i, %conv9.i.i.i
  %region_table.i.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %region_table.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %region_table.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %21, i32 %region_index.0.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i, align 4
  %shr.i290.i = lshr i32 %23, %mul.i.i.i
  %notmask.i.i = shl nsw i32 -1, %conv9.i.i.i
  %sub.i291.i = xor i32 %notmask.i.i, -1
  %and.i292.i = and i32 %shr.i290.i, %sub.i291.i
  %nr_paths.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %nr_paths.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_paths.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i292.i, i32 %25)
  %cmp193.not.i = icmp ult i32 %and.i292.i, %25
  br i1 %cmp193.not.i, label %switch_region_table_read.exit.i.switch_get_path_nr.exit_crit_edge, label %if.then201.i, !prof !113

switch_region_table_read.exit.i.switch_get_path_nr.exit_crit_edge: ; preds = %switch_region_table_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch_get_path_nr.exit

if.then201.i:                                     ; preds = %switch_region_table_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch_get_path_nr.exit

switch_get_path_nr.exit:                          ; preds = %if.then201.i, %switch_region_table_read.exit.i.switch_get_path_nr.exit_crit_edge
  %path_nr.0.i = phi i32 [ 0, %if.then201.i ], [ %and.i292.i, %switch_region_table_read.exit.i.switch_get_path_nr.exit_crit_edge ]
  %arrayidx = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.0.i
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %30 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %31, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %32 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %33, %29
  br i1 %cmp.not.i, label %switch_get_path_nr.exit.bio_set_dev.exit_crit_edge, label %if.then.i12

switch_get_path_nr.exit.bio_set_dev.exit_crit_edge: ; preds = %switch_get_path_nr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_set_dev.exit

if.then.i12:                                      ; preds = %switch_get_path_nr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i = and i16 %31, -2177
  %34 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i12, %switch_get_path_nr.exit.bio_set_dev.exit_crit_edge
  %35 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %29, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #9
  %start = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.0.i, i32 1
  %36 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start, align 8
  %add = add i64 %37, %sub
  %38 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add, ptr %bi_iter, align 8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @switch_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %entry.sw.epilog.sink.split_crit_edge43
  ]

entry.sw.epilog.sink.split_crit_edge43:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb1.cond.end_crit_edge, label %cond.false

sw.bb1.cond.end_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %nr_paths = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_paths, align 4
  %region_size = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %region_size, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.10, i32 noundef %4, i32 noundef %6) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb1.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ 0, %sw.bb1.cond.end_crit_edge ]
  %nr_paths2 = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %nr_paths2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_paths2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp338.not = icmp eq i32 %8, 0
  br i1 %cmp338.not, label %cond.end.sw.epilog_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body:                                         ; preds = %cond.end13.for.body_crit_edge, %cond.end.for.body_crit_edge
  %path_nr.041 = phi i32 [ %inc, %cond.end13.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %sz.039 = phi i32 [ %add15, %cond.end13.for.body_crit_edge ], [ %cond, %cond.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.039, i32 %maxlen)
  %cmp4.not = icmp ult i32 %sz.039, %maxlen
  br i1 %cmp4.not, label %cond.false6, label %for.body.cond.end13_crit_edge

for.body.cond.end13_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end13

cond.false6:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr7 = getelementptr i8, ptr %result, i32 %sz.039
  %sub8 = sub i32 %maxlen, %sz.039
  %arrayidx9 = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.041
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %10, i32 0, i32 3
  %start = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.041, i32 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.11, ptr noundef %name, i64 noundef %12) #9
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false6, %for.body.cond.end13_crit_edge
  %cond14 = phi i32 [ %call12, %cond.false6 ], [ 0, %for.body.cond.end13_crit_edge ]
  %add15 = add i32 %cond14, %sz.039
  %inc = add nuw i32 %path_nr.041, 1
  %13 = ptrtoint ptr %nr_paths2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_paths2, align 4
  %cmp3 = icmp ult i32 %inc, %14
  br i1 %cmp3, label %cond.end13.for.body_crit_edge, label %cond.end13.sw.epilog_crit_edge

cond.end13.sw.epilog_crit_edge:                   ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cond.end13.for.body_crit_edge:                    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

sw.epilog.sink.split:                             ; preds = %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge43
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end13.sw.epilog_crit_edge, %cond.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @switch_message.message_mutex, i32 noundef 0) #9
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp409.i = icmp ugt i32 %argc, 1
  br i1 %cmp409.i, label %for.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %nr_regions175.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 3
  %nr_paths.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 1
  %region_entries_per_slot_bits.i.i327.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 7
  %region_entries_per_slot5.i.i336.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 6
  %region_table_entry_bits.i.i343.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 5
  %region_table.i346.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0411.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc210.i, %for.inc.i.for.body.i_crit_edge ]
  %region_index.0410.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %region_index.4.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %argv, i32 %i.0411.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = and i8 %7, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %8)
  %cmp1.i = icmp eq i8 %8, 82
  br i1 %cmp1.i, label %if.then.i, label %if.end116.i

if.then.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %5, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %10)
  %cmp4.i = icmp eq i8 %10, 44
  br i1 %cmp4.i, label %do.end.i, label %if.end.i, !prof !115

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  %idxprom5.i.i = zext i8 %10 to i32
  %arrayidx6.i.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom5.i.i
  %11 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp7.i.i = icmp ult i8 %12, 16
  br i1 %cmp7.i.i, label %if.end.i.while.body.i.i_crit_edge, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %13 = phi i8 [ %18, %while.body.i.i.while.body.i.i_crit_edge ], [ %12, %if.end.i.while.body.i.i_crit_edge ]
  %14 = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %incdec.ptr.i, %if.end.i.while.body.i.i_crit_edge ]
  %r.08.i.i = phi i32 [ %or.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.while.body.i.i_crit_edge ]
  %conv.i.i = zext i8 %13 to i32
  %shl.i.i = shl i32 %r.08.i.i, 4
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.i.i, align 1
  %idxprom.i.i = zext i8 %16 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %cmp.i.i = icmp ult i8 %18, 16
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %parse_hex.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

parse_hex.exit.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %16)
  %cmp11.not.i = icmp eq i8 %16, 44
  br i1 %cmp11.not.i, label %if.end26.i, label %parse_hex.exit.i.do.end22.i_crit_edge, !prof !113

parse_hex.exit.i.do.end22.i_crit_edge:            ; preds = %parse_hex.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

do.end22.i:                                       ; preds = %parse_hex.exit.i.do.end22.i_crit_edge, %if.end.i.do.end22.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  br label %if.end

if.end26.i:                                       ; preds = %parse_hex.exit.i
  %incdec.ptr27.i = getelementptr i8, ptr %14, i32 2
  %19 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool28.not.i = icmp eq i8 %20, 0
  br i1 %tobool28.not.i, label %do.end40.i, label %if.end44.i, !prof !115

do.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  br label %if.end

if.end44.i:                                       ; preds = %if.end26.i
  %idxprom5.i259.i = zext i8 %20 to i32
  %arrayidx6.i260.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom5.i259.i
  %21 = ptrtoint ptr %arrayidx6.i260.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6.i260.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %cmp7.i261.i = icmp ult i8 %22, 16
  br i1 %cmp7.i261.i, label %if.end44.i.while.body.i270.i_crit_edge, label %if.end44.i.do.end56.i_crit_edge

if.end44.i.do.end56.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56.i

if.end44.i.while.body.i270.i_crit_edge:           ; preds = %if.end44.i
  br label %while.body.i270.i

while.body.i270.i:                                ; preds = %while.body.i270.i.while.body.i270.i_crit_edge, %if.end44.i.while.body.i270.i_crit_edge
  %23 = phi i8 [ %28, %while.body.i270.i.while.body.i270.i_crit_edge ], [ %22, %if.end44.i.while.body.i270.i_crit_edge ]
  %24 = phi ptr [ %incdec.ptr.i266.i, %while.body.i270.i.while.body.i270.i_crit_edge ], [ %incdec.ptr27.i, %if.end44.i.while.body.i270.i_crit_edge ]
  %r.08.i262.i = phi i32 [ %or.i265.i, %while.body.i270.i.while.body.i270.i_crit_edge ], [ 0, %if.end44.i.while.body.i270.i_crit_edge ]
  %conv.i263.i = zext i8 %23 to i32
  %shl.i264.i = shl i32 %r.08.i262.i, 4
  %or.i265.i = or i32 %shl.i264.i, %conv.i263.i
  %incdec.ptr.i266.i = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %incdec.ptr.i266.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i266.i, align 1
  %idxprom.i267.i = zext i8 %26 to i32
  %arrayidx.i268.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom.i267.i
  %27 = ptrtoint ptr %arrayidx.i268.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i268.i, align 1
  %cmp.i269.i = icmp ult i8 %28, 16
  br i1 %cmp.i269.i, label %while.body.i270.i.while.body.i270.i_crit_edge, label %parse_hex.exit272.i

while.body.i270.i.while.body.i270.i_crit_edge:    ; preds = %while.body.i270.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i270.i

parse_hex.exit272.i:                              ; preds = %while.body.i270.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not.i = icmp eq i8 %26, 0
  br i1 %tobool46.not.i, label %if.end60.i, label %parse_hex.exit272.i.do.end56.i_crit_edge, !prof !113

parse_hex.exit272.i.do.end56.i_crit_edge:         ; preds = %parse_hex.exit272.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56.i

do.end56.i:                                       ; preds = %parse_hex.exit272.i.do.end56.i_crit_edge, %if.end44.i.do.end56.i_crit_edge
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  br label %if.end

if.end60.i:                                       ; preds = %parse_hex.exit272.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool61.not.i = icmp eq i32 %or.i.i, 0
  %sub.i = add i32 %or.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %region_index.0410.i)
  %cmp70.i = icmp ugt i32 %sub.i, %region_index.0410.i
  %or.cond.i = select i1 %tobool61.not.i, i1 true, i1 %cmp70.i
  br i1 %or.cond.i, label %do.end81.i, label %if.end85.i, !prof !116

do.end81.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %sub.i, i32 noundef %region_index.0410.i) #12
  br label %if.end

if.end85.i:                                       ; preds = %if.end60.i
  %add.i = add i32 %or.i265.i, %region_index.0410.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %region_index.0410.i)
  %cmp86.i = icmp ult i32 %add.i, %region_index.0410.i
  br i1 %cmp86.i, label %if.end85.i.do.end107.i_crit_edge, label %lor.lhs.false94.i, !prof !115

if.end85.i.do.end107.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107.i

lor.lhs.false94.i:                                ; preds = %if.end85.i
  %29 = ptrtoint ptr %nr_regions175.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_regions175.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %30)
  %cmp96.not.i = icmp ult i32 %add.i, %30
  br i1 %cmp96.not.i, label %while.cond.preheader.i, label %lor.lhs.false94.i.do.end107.i_crit_edge, !prof !113

lor.lhs.false94.i.do.end107.i_crit_edge:          ; preds = %lor.lhs.false94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i265.i)
  %tobool112.not406.i = icmp eq i32 %or.i265.i, 0
  br i1 %tobool112.not406.i, label %while.cond.preheader.i.for.inc.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.inc.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end107.i:                                      ; preds = %lor.lhs.false94.i.do.end107.i_crit_edge, %if.end85.i.do.end107.i_crit_edge
  %31 = ptrtoint ptr %nr_regions175.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_regions175.i, align 4
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %region_index.0410.i, i32 noundef %or.i265.i, i32 noundef %32) #12
  br label %if.end

while.body.i:                                     ; preds = %switch_region_table_write.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %region_index.1408.i = phi i32 [ %inc.i, %switch_region_table_write.exit.i.while.body.i_crit_edge ], [ %region_index.0410.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %num_write.0407.i = phi i32 [ %dec.i, %switch_region_table_write.exit.i.while.body.i_crit_edge ], [ %or.i265.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %num_write.0407.i, -1
  %inc.i = add i32 %region_index.1408.i, 1
  %sub113.i = sub i32 %inc.i, %or.i.i
  %33 = ptrtoint ptr %region_entries_per_slot_bits.i.i327.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %region_entries_per_slot_bits.i.i327.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp.i.i.i = icmp sgt i8 %34, -1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv21.i.i.i = zext i8 %34 to i32
  %shr.i.i.i = lshr i32 %sub113.i, %conv21.i.i.i
  %35 = ptrtoint ptr %region_entries_per_slot5.i.i336.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %region_entries_per_slot5.i.i336.i, align 2
  %conv4.i.i.i = zext i8 %36 to i32
  %sub.i.i.i = add nsw i32 %conv4.i.i.i, -1
  %and.i.i.i = and i32 %sub.i.i.i, %sub113.i
  br label %switch_region_table_read.exit.i

if.else.i.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %region_entries_per_slot5.i.i336.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %region_entries_per_slot5.i.i336.i, align 2
  %conv6.i.i.i = zext i8 %38 to i32
  %sub113.i.frozen = freeze i32 %sub113.i
  %conv6.i.i.i.frozen = freeze i32 %conv6.i.i.i
  %div.i.i.i = udiv i32 %sub113.i.frozen, %conv6.i.i.i.frozen
  %39 = mul i32 %div.i.i.i, %conv6.i.i.i.frozen
  %rem.i.i.i.decomposed = sub i32 %sub113.i.frozen, %39
  br label %switch_region_table_read.exit.i

switch_region_table_read.exit.i:                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %region_index.0.i.i = phi i32 [ %shr.i.i.i, %if.then.i.i.i ], [ %div.i.i.i, %if.else.i.i.i ]
  %storemerge.i.i.i = phi i32 [ %and.i.i.i, %if.then.i.i.i ], [ %rem.i.i.i.decomposed, %if.else.i.i.i ]
  %40 = ptrtoint ptr %region_table_entry_bits.i.i343.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %region_table_entry_bits.i.i343.i, align 1
  %conv9.i.i.i = zext i8 %41 to i32
  %mul.i.i.i = mul i32 %storemerge.i.i.i, %conv9.i.i.i
  %42 = ptrtoint ptr %region_table.i346.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %region_table.i346.i, align 4
  %arrayidx.i301.i = getelementptr i32, ptr %43, i32 %region_index.0.i.i
  %44 = ptrtoint ptr %arrayidx.i301.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i301.i, align 4
  %shr.i.i = lshr i32 %45, %mul.i.i.i
  %notmask.i.i = shl nsw i32 -1, %conv9.i.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %shr.i.i, %sub.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i310.i, label %if.else.i.i315.i

if.then.i.i310.i:                                 ; preds = %switch_region_table_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv21.i.i304.i = zext i8 %34 to i32
  %shr.i.i305.i = lshr i32 %inc.i, %conv21.i.i304.i
  %46 = ptrtoint ptr %region_entries_per_slot5.i.i336.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %region_entries_per_slot5.i.i336.i, align 2
  %conv4.i.i307.i = zext i8 %47 to i32
  %sub.i.i308.i = add nsw i32 %conv4.i.i307.i, -1
  %and.i.i309.i = and i32 %sub.i.i308.i, %inc.i
  br label %switch_region_table_write.exit.i

if.else.i.i315.i:                                 ; preds = %switch_region_table_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %region_entries_per_slot5.i.i336.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %region_entries_per_slot5.i.i336.i, align 2
  %conv6.i.i312.i = zext i8 %49 to i32
  %inc.i.frozen = freeze i32 %inc.i
  %conv6.i.i312.i.frozen = freeze i32 %conv6.i.i312.i
  %div.i.i313.i = udiv i32 %inc.i.frozen, %conv6.i.i312.i.frozen
  %50 = mul i32 %div.i.i313.i, %conv6.i.i312.i.frozen
  %rem.i.i314.i.decomposed = sub i32 %inc.i.frozen, %50
  br label %switch_region_table_write.exit.i

switch_region_table_write.exit.i:                 ; preds = %if.else.i.i315.i, %if.then.i.i310.i
  %region_index.0.i316.i = phi i32 [ %shr.i.i305.i, %if.then.i.i310.i ], [ %div.i.i313.i, %if.else.i.i315.i ]
  %storemerge.i.i317.i = phi i32 [ %and.i.i309.i, %if.then.i.i310.i ], [ %rem.i.i314.i.decomposed, %if.else.i.i315.i ]
  %mul.i.i320.i = mul i32 %storemerge.i.i317.i, %conv9.i.i.i
  %arrayidx.i322.i = getelementptr i32, ptr %43, i32 %region_index.0.i316.i
  %51 = ptrtoint ptr %arrayidx.i322.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i322.i, align 4
  %shl1.i.i = shl i32 %sub.i.i, %mul.i.i320.i
  %neg.i.i = xor i32 %shl1.i.i, -1
  %and.i325.i = and i32 %52, %neg.i.i
  %shl2.i.i = shl i32 %and.i.i, %mul.i.i320.i
  %or.i326.i = or i32 %and.i325.i, %shl2.i.i
  store i32 %or.i326.i, ptr %arrayidx.i322.i, align 4
  %tobool112.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool112.not.i, label %switch_region_table_write.exit.i.for.inc.i_crit_edge, label %switch_region_table_write.exit.i.while.body.i_crit_edge

switch_region_table_write.exit.i.while.body.i_crit_edge: ; preds = %switch_region_table_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

switch_region_table_write.exit.i.for.inc.i_crit_edge: ; preds = %switch_region_table_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end116.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %7)
  %cmp118.i = icmp eq i8 %7, 58
  br i1 %cmp118.i, label %if.then120.i, label %if.else.i

if.then120.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc121.i = add i32 %region_index.0410.i, 1
  br label %if.end140.i

if.else.i:                                        ; preds = %if.end116.i
  %idxprom5.i273.i = zext i8 %7 to i32
  %arrayidx6.i274.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom5.i273.i
  %53 = ptrtoint ptr %arrayidx6.i274.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx6.i274.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %54)
  %cmp7.i275.i = icmp ult i8 %54, 16
  br i1 %cmp7.i275.i, label %if.else.i.while.body.i284.i_crit_edge, label %if.else.i.do.end135.i_crit_edge

if.else.i.do.end135.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end135.i

if.else.i.while.body.i284.i_crit_edge:            ; preds = %if.else.i
  br label %while.body.i284.i

while.body.i284.i:                                ; preds = %while.body.i284.i.while.body.i284.i_crit_edge, %if.else.i.while.body.i284.i_crit_edge
  %55 = phi i8 [ %60, %while.body.i284.i.while.body.i284.i_crit_edge ], [ %54, %if.else.i.while.body.i284.i_crit_edge ]
  %56 = phi ptr [ %incdec.ptr.i280.i, %while.body.i284.i.while.body.i284.i_crit_edge ], [ %5, %if.else.i.while.body.i284.i_crit_edge ]
  %r.08.i276.i = phi i32 [ %or.i279.i, %while.body.i284.i.while.body.i284.i_crit_edge ], [ 0, %if.else.i.while.body.i284.i_crit_edge ]
  %conv.i277.i = zext i8 %55 to i32
  %shl.i278.i = shl i32 %r.08.i276.i, 4
  %or.i279.i = or i32 %shl.i278.i, %conv.i277.i
  %incdec.ptr.i280.i = getelementptr i8, ptr %56, i32 1
  %57 = ptrtoint ptr %incdec.ptr.i280.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr.i280.i, align 1
  %idxprom.i281.i = zext i8 %58 to i32
  %arrayidx.i282.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom.i281.i
  %59 = ptrtoint ptr %arrayidx.i282.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i282.i, align 1
  %cmp.i283.i = icmp ult i8 %60, 16
  br i1 %cmp.i283.i, label %while.body.i284.i.while.body.i284.i_crit_edge, label %parse_hex.exit286.i

while.body.i284.i.while.body.i284.i_crit_edge:    ; preds = %while.body.i284.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i284.i

parse_hex.exit286.i:                              ; preds = %while.body.i284.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %58)
  %cmp124.not.i = icmp eq i8 %58, 58
  br i1 %cmp124.not.i, label %parse_hex.exit286.i.if.end140.i_crit_edge, label %parse_hex.exit286.i.do.end135.i_crit_edge, !prof !113

parse_hex.exit286.i.do.end135.i_crit_edge:        ; preds = %parse_hex.exit286.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end135.i

parse_hex.exit286.i.if.end140.i_crit_edge:        ; preds = %parse_hex.exit286.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.i

do.end135.i:                                      ; preds = %parse_hex.exit286.i.do.end135.i_crit_edge, %if.else.i.do.end135.i_crit_edge
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  br label %if.end

if.end140.i:                                      ; preds = %parse_hex.exit286.i.if.end140.i_crit_edge, %if.then120.i
  %string.3.i = phi ptr [ %5, %if.then120.i ], [ %incdec.ptr.i280.i, %parse_hex.exit286.i.if.end140.i_crit_edge ]
  %region_index.3.i = phi i32 [ %inc121.i, %if.then120.i ], [ %or.i279.i, %parse_hex.exit286.i.if.end140.i_crit_edge ]
  %incdec.ptr141.i = getelementptr i8, ptr %string.3.i, i32 1
  %61 = ptrtoint ptr %incdec.ptr141.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr141.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool142.not.i = icmp eq i8 %62, 0
  br i1 %tobool142.not.i, label %do.end154.i, label %if.end158.i, !prof !115

do.end154.i:                                      ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  br label %if.end

if.end158.i:                                      ; preds = %if.end140.i
  %idxprom5.i287.i = zext i8 %62 to i32
  %arrayidx6.i288.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom5.i287.i
  %63 = ptrtoint ptr %arrayidx6.i288.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx6.i288.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %64)
  %cmp7.i289.i = icmp ult i8 %64, 16
  br i1 %cmp7.i289.i, label %if.end158.i.while.body.i298.i_crit_edge, label %if.end158.i.do.end170.i_crit_edge

if.end158.i.do.end170.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end170.i

if.end158.i.while.body.i298.i_crit_edge:          ; preds = %if.end158.i
  br label %while.body.i298.i

while.body.i298.i:                                ; preds = %while.body.i298.i.while.body.i298.i_crit_edge, %if.end158.i.while.body.i298.i_crit_edge
  %65 = phi i8 [ %70, %while.body.i298.i.while.body.i298.i_crit_edge ], [ %64, %if.end158.i.while.body.i298.i_crit_edge ]
  %66 = phi ptr [ %incdec.ptr.i294.i, %while.body.i298.i.while.body.i298.i_crit_edge ], [ %incdec.ptr141.i, %if.end158.i.while.body.i298.i_crit_edge ]
  %r.08.i290.i = phi i32 [ %or.i293.i, %while.body.i298.i.while.body.i298.i_crit_edge ], [ 0, %if.end158.i.while.body.i298.i_crit_edge ]
  %conv.i291.i = zext i8 %65 to i32
  %shl.i292.i = shl i32 %r.08.i290.i, 4
  %or.i293.i = or i32 %shl.i292.i, %conv.i291.i
  %incdec.ptr.i294.i = getelementptr i8, ptr %66, i32 1
  %67 = ptrtoint ptr %incdec.ptr.i294.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr.i294.i, align 1
  %idxprom.i295.i = zext i8 %68 to i32
  %arrayidx.i296.i = getelementptr [256 x i8], ptr @hex_table, i32 0, i32 %idxprom.i295.i
  %69 = ptrtoint ptr %arrayidx.i296.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i296.i, align 1
  %cmp.i297.i = icmp ult i8 %70, 16
  br i1 %cmp.i297.i, label %while.body.i298.i.while.body.i298.i_crit_edge, label %parse_hex.exit300.i

while.body.i298.i.while.body.i298.i_crit_edge:    ; preds = %while.body.i298.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i298.i

parse_hex.exit300.i:                              ; preds = %while.body.i298.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool160.not.i = icmp eq i8 %68, 0
  br i1 %tobool160.not.i, label %if.end174.i, label %parse_hex.exit300.i.do.end170.i_crit_edge, !prof !113

parse_hex.exit300.i.do.end170.i_crit_edge:        ; preds = %parse_hex.exit300.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end170.i

do.end170.i:                                      ; preds = %parse_hex.exit300.i.do.end170.i_crit_edge, %if.end158.i.do.end170.i_crit_edge
  %call173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  br label %if.end

if.end174.i:                                      ; preds = %parse_hex.exit300.i
  %71 = ptrtoint ptr %nr_regions175.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_regions175.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %region_index.3.i, i32 %72)
  %cmp176.not.i = icmp ult i32 %region_index.3.i, %72
  br i1 %cmp176.not.i, label %if.end191.i, label %do.end187.i, !prof !113

do.end187.i:                                      ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  %call190.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %region_index.3.i, i32 noundef %72) #12
  br label %if.end

if.end191.i:                                      ; preds = %if.end174.i
  %73 = ptrtoint ptr %nr_paths.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_paths.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i293.i, i32 %74)
  %cmp192.not.i = icmp ult i32 %or.i293.i, %74
  br i1 %cmp192.not.i, label %if.end207.i, label %do.end203.i, !prof !113

do.end203.i:                                      ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #11
  %call206.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %or.i293.i, i32 noundef %74) #12
  br label %if.end

if.end207.i:                                      ; preds = %if.end191.i
  %75 = ptrtoint ptr %region_entries_per_slot_bits.i.i327.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %region_entries_per_slot_bits.i.i327.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %76)
  %cmp.i.i328.i = icmp sgt i8 %76, -1
  br i1 %cmp.i.i328.i, label %if.then.i.i335.i, label %if.else.i.i340.i

if.then.i.i335.i:                                 ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv21.i.i329.i = zext i8 %76 to i32
  %shr.i.i330.i = lshr i32 %region_index.3.i, %conv21.i.i329.i
  %77 = ptrtoint ptr %region_entries_per_slot5.i.i336.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %region_entries_per_slot5.i.i336.i, align 2
  %conv4.i.i332.i = zext i8 %78 to i32
  %sub.i.i333.i = add nsw i32 %conv4.i.i332.i, -1
  %and.i.i334.i = and i32 %sub.i.i333.i, %region_index.3.i
  br label %switch_region_table_write.exit355.i

if.else.i.i340.i:                                 ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %region_entries_per_slot5.i.i336.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %region_entries_per_slot5.i.i336.i, align 2
  %conv6.i.i337.i = zext i8 %80 to i32
  %region_index.3.i.frozen = freeze i32 %region_index.3.i
  %conv6.i.i337.i.frozen = freeze i32 %conv6.i.i337.i
  %div.i.i338.i = udiv i32 %region_index.3.i.frozen, %conv6.i.i337.i.frozen
  %81 = mul i32 %div.i.i338.i, %conv6.i.i337.i.frozen
  %rem.i.i339.i.decomposed = sub i32 %region_index.3.i.frozen, %81
  br label %switch_region_table_write.exit355.i

switch_region_table_write.exit355.i:              ; preds = %if.else.i.i340.i, %if.then.i.i335.i
  %region_index.0.i341.i = phi i32 [ %shr.i.i330.i, %if.then.i.i335.i ], [ %div.i.i338.i, %if.else.i.i340.i ]
  %storemerge.i.i342.i = phi i32 [ %and.i.i334.i, %if.then.i.i335.i ], [ %rem.i.i339.i.decomposed, %if.else.i.i340.i ]
  %82 = ptrtoint ptr %region_table_entry_bits.i.i343.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %region_table_entry_bits.i.i343.i, align 1
  %conv9.i.i344.i = zext i8 %83 to i32
  %mul.i.i345.i = mul i32 %storemerge.i.i342.i, %conv9.i.i344.i
  %84 = ptrtoint ptr %region_table.i346.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %region_table.i346.i, align 4
  %arrayidx.i347.i = getelementptr i32, ptr %85, i32 %region_index.0.i341.i
  %86 = ptrtoint ptr %arrayidx.i347.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i347.i, align 4
  %notmask.i348.i = shl nsw i32 -1, %conv9.i.i344.i
  %sub.i349.i = xor i32 %notmask.i348.i, -1
  %shl1.i350.i = shl i32 %sub.i349.i, %mul.i.i345.i
  %neg.i351.i = xor i32 %shl1.i350.i, -1
  %and.i352.i = and i32 %87, %neg.i351.i
  %shl2.i353.i = shl i32 %or.i293.i, %mul.i.i345.i
  %or.i354.i = or i32 %and.i352.i, %shl2.i353.i
  store i32 %or.i354.i, ptr %arrayidx.i347.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %switch_region_table_write.exit355.i, %switch_region_table_write.exit.i.for.inc.i_crit_edge, %while.cond.preheader.i.for.inc.i_crit_edge
  %region_index.4.i = phi i32 [ %region_index.3.i, %switch_region_table_write.exit355.i ], [ %region_index.0410.i, %while.cond.preheader.i.for.inc.i_crit_edge ], [ %inc.i, %switch_region_table_write.exit.i.for.inc.i_crit_edge ]
  %inc210.i = add nuw i32 %i.0411.i, 1
  %exitcond.not.i = icmp eq i32 %inc210.i, %argc
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %for.inc.i.if.end_crit_edge, %do.end203.i, %do.end187.i, %do.end170.i, %do.end154.i, %do.end135.i, %do.end107.i, %do.end81.i, %do.end56.i, %do.end40.i, %do.end22.i, %do.end.i, %if.then.if.end_crit_edge
  %r.0 = phi i32 [ -22, %do.end ], [ -22, %do.end154.i ], [ -22, %do.end170.i ], [ -22, %do.end187.i ], [ -22, %do.end203.i ], [ -22, %do.end135.i ], [ -22, %do.end.i ], [ -22, %do.end22.i ], [ -22, %do.end40.i ], [ -22, %do.end56.i ], [ -22, %do.end81.i ], [ -22, %do.end107.i ], [ 0, %if.then.if.end_crit_edge ], [ 0, %for.inc.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @switch_message.message_mutex) #9
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_prepare_ioctl(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %bdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %region_table_entry_bits.i.i.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %region_table_entry_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %region_table_entry_bits.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %region_table.i.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %region_table.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region_table.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %notmask.i.i = shl nsw i32 -1, %conv9.i.i.i
  %sub.i291.i = xor i32 %notmask.i.i, -1
  %and.i292.i = and i32 %7, %sub.i291.i
  %nr_paths.i = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %nr_paths.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_paths.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i292.i, i32 %9)
  %cmp193.not.i = icmp ult i32 %and.i292.i, %9
  br i1 %cmp193.not.i, label %entry.switch_get_path_nr.exit_crit_edge, label %if.then201.i, !prof !113

entry.switch_get_path_nr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch_get_path_nr.exit

if.then201.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch_get_path_nr.exit

switch_get_path_nr.exit:                          ; preds = %if.then201.i, %entry.switch_get_path_nr.exit_crit_edge
  %path_nr.0.i = phi i32 [ 0, %if.then201.i ], [ %and.i292.i, %entry.switch_get_path_nr.exit_crit_edge ]
  %arrayidx = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.0.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %bdev, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len, align 8
  %start = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.0.i, i32 1
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  %add = add i64 %18, %16
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %20)
  %cmp.not = icmp ne i64 %add, %20
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %nr_paths = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %path_nr.014, 1
  %4 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_paths, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %path_nr.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %start = getelementptr %struct.switch_ctx, ptr %1, i32 0, i32 9, i32 %path_nr.014, i32 1
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %7, i64 noundef %9, i64 noundef %11, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_region_table(ptr nocapture noundef %ti, i32 noundef %nr_paths) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %region_size = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %region_size, align 8
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5), !range !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %tobool.not = icmp ult i32 %6, 2
  %7 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #9, !range !117
  %conv = trunc i32 %7 to i8
  %.sink = select i1 %tobool.not, i8 %conv, i8 -1
  %8 = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %8, align 8
  %region_table_entry_bits = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nr_paths)
  %cmp9 = icmp ugt i32 %nr_paths, 2
  br i1 %cmp9, label %while.body, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nr_paths)
  %cmp9.1 = icmp ugt i32 %nr_paths, 4
  br i1 %cmp9.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %nr_paths)
  %cmp9.2 = icmp ugt i32 %nr_paths, 8
  br i1 %cmp9.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nr_paths)
  %cmp9.3 = icmp ugt i32 %nr_paths, 16
  br i1 %cmp9.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nr_paths)
  %cmp9.4 = icmp ugt i32 %nr_paths, 32
  br i1 %cmp9.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %nr_paths)
  %cmp9.5 = icmp ugt i32 %nr_paths, 64
  br i1 %cmp9.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %nr_paths)
  %cmp9.6 = icmp ugt i32 %nr_paths, 128
  br i1 %cmp9.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %nr_paths)
  %cmp9.7 = icmp ugt i32 %nr_paths, 256
  br i1 %cmp9.7, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %nr_paths)
  %cmp9.8 = icmp ugt i32 %nr_paths, 512
  br i1 %cmp9.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %nr_paths)
  %cmp9.9 = icmp ugt i32 %nr_paths, 1024
  br i1 %cmp9.9, label %while.body.9, label %while.body.8.while.end_crit_edge

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %nr_paths)
  %cmp9.10 = icmp ugt i32 %nr_paths, 2048
  br i1 %cmp9.10, label %while.body.10, label %while.body.9.while.end_crit_edge

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %nr_paths)
  %cmp9.11 = icmp ugt i32 %nr_paths, 4096
  br i1 %cmp9.11, label %while.body.11, label %while.body.10.while.end_crit_edge

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %nr_paths)
  %cmp9.12 = icmp ugt i32 %nr_paths, 8192
  br i1 %cmp9.12, label %while.body.12, label %while.body.11.while.end_crit_edge

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %nr_paths)
  %cmp9.13 = icmp ugt i32 %nr_paths, 16384
  br i1 %cmp9.13, label %while.body.13, label %while.body.12.while.end_crit_edge

while.body.12.while.end_crit_edge:                ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.13:                                    ; preds = %while.body.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %nr_paths)
  %cmp9.14 = icmp ugt i32 %nr_paths, 32768
  br i1 %cmp9.14, label %while.body.14, label %while.body.13.while.end_crit_edge

while.body.13.while.end_crit_edge:                ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.14:                                    ; preds = %while.body.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %nr_paths)
  %cmp9.15 = icmp ugt i32 %nr_paths, 65536
  br i1 %cmp9.15, label %while.body.15, label %while.body.14.while.end_crit_edge

while.body.14.while.end_crit_edge:                ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.15:                                    ; preds = %while.body.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %nr_paths)
  %cmp9.16 = icmp ugt i32 %nr_paths, 131072
  br i1 %cmp9.16, label %while.body.16, label %while.body.15.while.end_crit_edge

while.body.15.while.end_crit_edge:                ; preds = %while.body.15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.16:                                    ; preds = %while.body.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %nr_paths)
  %cmp9.17 = icmp ugt i32 %nr_paths, 262144
  br i1 %cmp9.17, label %while.body.17, label %while.body.16.while.end_crit_edge

while.body.16.while.end_crit_edge:                ; preds = %while.body.16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.17:                                    ; preds = %while.body.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %nr_paths)
  %cmp9.18 = icmp ugt i32 %nr_paths, 524288
  br i1 %cmp9.18, label %while.body.18, label %while.body.17.while.end_crit_edge

while.body.17.while.end_crit_edge:                ; preds = %while.body.17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.18:                                    ; preds = %while.body.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %nr_paths)
  %cmp9.19 = icmp ugt i32 %nr_paths, 1048576
  br i1 %cmp9.19, label %while.body.19, label %while.body.18.while.end_crit_edge

while.body.18.while.end_crit_edge:                ; preds = %while.body.18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.19:                                    ; preds = %while.body.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %nr_paths)
  %cmp9.20 = icmp ugt i32 %nr_paths, 2097152
  br i1 %cmp9.20, label %while.body.20, label %while.body.19.while.end_crit_edge

while.body.19.while.end_crit_edge:                ; preds = %while.body.19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.20:                                    ; preds = %while.body.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %nr_paths)
  %cmp9.21 = icmp ugt i32 %nr_paths, 4194304
  br i1 %cmp9.21, label %while.body.21, label %while.body.20.while.end_crit_edge

while.body.20.while.end_crit_edge:                ; preds = %while.body.20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.21:                                    ; preds = %while.body.20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %nr_paths)
  %cmp9.22 = icmp ugt i32 %nr_paths, 8388608
  br i1 %cmp9.22, label %while.body.22, label %while.body.21.while.end_crit_edge

while.body.21.while.end_crit_edge:                ; preds = %while.body.21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.22:                                    ; preds = %while.body.21
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %nr_paths)
  %cmp9.23 = icmp ugt i32 %nr_paths, 16777216
  br i1 %cmp9.23, label %while.body.23, label %while.body.22.while.end_crit_edge

while.body.22.while.end_crit_edge:                ; preds = %while.body.22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.23:                                    ; preds = %while.body.22
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %nr_paths)
  %cmp9.24 = icmp ugt i32 %nr_paths, 33554432
  br i1 %cmp9.24, label %while.body.24, label %while.body.23.while.end_crit_edge

while.body.23.while.end_crit_edge:                ; preds = %while.body.23
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.24:                                    ; preds = %while.body.23
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %nr_paths)
  %cmp9.25 = icmp ugt i32 %nr_paths, 67108864
  br i1 %cmp9.25, label %while.body.25, label %while.body.24.while.end_crit_edge

while.body.24.while.end_crit_edge:                ; preds = %while.body.24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.25:                                    ; preds = %while.body.24
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %nr_paths)
  %cmp9.26 = icmp ugt i32 %nr_paths, 134217728
  br i1 %cmp9.26, label %while.body.26, label %while.body.25.while.end_crit_edge

while.body.25.while.end_crit_edge:                ; preds = %while.body.25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.26:                                    ; preds = %while.body.25
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %nr_paths)
  %cmp9.27 = icmp ugt i32 %nr_paths, 268435456
  br i1 %cmp9.27, label %while.body.27, label %while.body.26.while.end_crit_edge

while.body.26.while.end_crit_edge:                ; preds = %while.body.26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.27:                                    ; preds = %while.body.26
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %nr_paths)
  %cmp9.28 = icmp ugt i32 %nr_paths, 536870912
  br i1 %cmp9.28, label %while.body.28, label %while.body.27.while.end_crit_edge

while.body.27.while.end_crit_edge:                ; preds = %while.body.27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.28:                                    ; preds = %while.body.27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %nr_paths)
  %cmp9.29 = icmp ugt i32 %nr_paths, 1073741824
  br i1 %cmp9.29, label %while.body.29, label %while.body.28.while.end_crit_edge

while.body.28.while.end_crit_edge:                ; preds = %while.body.28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.29:                                    ; preds = %while.body.28
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %nr_paths)
  %cmp9.30 = icmp ugt i32 %nr_paths, -2147483648
  %spec.select744 = select i1 %cmp9.30, i8 32, i8 31
  br label %while.end

while.end:                                        ; preds = %while.body.29, %while.body.28.while.end_crit_edge, %while.body.27.while.end_crit_edge, %while.body.26.while.end_crit_edge, %while.body.25.while.end_crit_edge, %while.body.24.while.end_crit_edge, %while.body.23.while.end_crit_edge, %while.body.22.while.end_crit_edge, %while.body.21.while.end_crit_edge, %while.body.20.while.end_crit_edge, %while.body.19.while.end_crit_edge, %while.body.18.while.end_crit_edge, %while.body.17.while.end_crit_edge, %while.body.16.while.end_crit_edge, %while.body.15.while.end_crit_edge, %while.body.14.while.end_crit_edge, %while.body.13.while.end_crit_edge, %while.body.12.while.end_crit_edge, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %storemerge.lcssa741 = phi i8 [ 1, %entry.while.end_crit_edge ], [ 2, %while.body.while.end_crit_edge ], [ 3, %while.body.1.while.end_crit_edge ], [ 4, %while.body.2.while.end_crit_edge ], [ 5, %while.body.3.while.end_crit_edge ], [ 6, %while.body.4.while.end_crit_edge ], [ 7, %while.body.5.while.end_crit_edge ], [ 8, %while.body.6.while.end_crit_edge ], [ 9, %while.body.7.while.end_crit_edge ], [ 10, %while.body.8.while.end_crit_edge ], [ 11, %while.body.9.while.end_crit_edge ], [ 12, %while.body.10.while.end_crit_edge ], [ 13, %while.body.11.while.end_crit_edge ], [ 14, %while.body.12.while.end_crit_edge ], [ 15, %while.body.13.while.end_crit_edge ], [ 16, %while.body.14.while.end_crit_edge ], [ 17, %while.body.15.while.end_crit_edge ], [ 18, %while.body.16.while.end_crit_edge ], [ 19, %while.body.17.while.end_crit_edge ], [ 20, %while.body.18.while.end_crit_edge ], [ 21, %while.body.19.while.end_crit_edge ], [ 22, %while.body.20.while.end_crit_edge ], [ 23, %while.body.21.while.end_crit_edge ], [ 24, %while.body.22.while.end_crit_edge ], [ 25, %while.body.23.while.end_crit_edge ], [ 26, %while.body.24.while.end_crit_edge ], [ 27, %while.body.25.while.end_crit_edge ], [ 28, %while.body.26.while.end_crit_edge ], [ 29, %while.body.27.while.end_crit_edge ], [ 30, %while.body.28.while.end_crit_edge ], [ %spec.select744, %while.body.29 ]
  %10 = ptrtoint ptr %region_table_entry_bits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge.lcssa741, ptr %region_table_entry_bits, align 1
  %11 = udiv i8 32, %storemerge.lcssa741
  %region_entries_per_slot = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %region_entries_per_slot to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %region_entries_per_slot, align 2
  %conv16 = zext i8 %11 to i32
  %sub19 = add nuw nsw i32 %conv16, 63
  %and20 = and i32 %sub19, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %13 = tail call i32 @llvm.cttz.i32(i32 %conv16, i1 false) #9, !range !117
  %conv26 = trunc i32 %13 to i8
  %.sink743 = select i1 %tobool21.not, i8 %conv26, i8 -1
  %14 = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink743, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %3)
  %cmp206 = icmp ult i64 %3, 4294967296
  br i1 %cmp206, label %if.then210, label %if.else216, !prof !113

if.then210:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv211 = trunc i64 %3 to i32
  %conv211.frozen = freeze i32 %conv211
  %.frozen = freeze i32 %5
  %div214 = udiv i32 %conv211.frozen, %.frozen
  %16 = mul i32 %div214, %.frozen
  %rem212.decomposed = sub i32 %conv211.frozen, %16
  %conv215 = zext i32 %div214 to i64
  br label %if.end220

if.else216:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %3) #14, !srcloc !114
  %asmresult.i661 = extractvalue { i64, i64 } %17, 0
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  %shr.i = lshr i64 %asmresult.i661, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end220

if.end220:                                        ; preds = %if.else216, %if.then210
  %nr_regions.0 = phi i64 [ %conv215, %if.then210 ], [ %asmresult1.i, %if.else216 ]
  %__rem.0 = phi i32 [ %rem212.decomposed, %if.then210 ], [ %conv.i, %if.else216 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool222.not = icmp ne i32 %__rem.0, 0
  %inc224 = zext i1 %tobool222.not to i64
  %spec.select = add i64 %nr_regions.0, %inc224
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %spec.select)
  %cmp226 = icmp ugt i64 %spec.select, 4294967294
  br i1 %cmp226, label %if.end220.cleanup.sink.split_crit_edge, label %if.end229

if.end220.cleanup.sink.split_crit_edge:           ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end229:                                        ; preds = %if.end220
  %conv230 = trunc i64 %spec.select to i32
  %nr_regions231 = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %nr_regions231 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv230, ptr %nr_regions231, align 4
  %19 = ptrtoint ptr %region_entries_per_slot to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %region_entries_per_slot, align 2
  %conv234 = zext i8 %20 to i32
  %conv230.frozen = freeze i32 %conv230
  %conv234.frozen = freeze i32 %conv234
  %div447 = udiv i32 %conv230.frozen, %conv234.frozen
  %conv448 = zext i32 %div447 to i64
  %21 = mul i32 %div447, %conv234.frozen
  %rem445.decomposed = sub i32 %conv230.frozen, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem445.decomposed)
  %tobool455.not = icmp ne i32 %rem445.decomposed, 0
  %inc457 = zext i1 %tobool455.not to i64
  %spec.select740 = add nuw nsw i64 %conv448, %inc457
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741823, i64 %spec.select740)
  %cmp459 = icmp ugt i64 %spec.select740, 1073741823
  br i1 %cmp459, label %if.end229.cleanup.sink.split_crit_edge, label %if.end463

if.end229.cleanup.sink.split_crit_edge:           ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end463:                                        ; preds = %if.end229
  %conv464 = trunc i64 %spec.select740 to i32
  %22 = shl nuw i32 %conv464, 2
  %call466 = tail call noalias ptr @vmalloc(i32 noundef %22) #13
  %region_table = getelementptr inbounds %struct.switch_ctx, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %region_table to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call466, ptr %region_table, align 4
  %tobool468.not = icmp eq ptr %call466, null
  br i1 %tobool468.not, label %if.end463.cleanup.sink.split_crit_edge, label %if.end463.cleanup_crit_edge

if.end463.cleanup_crit_edge:                      ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end463.cleanup.sink.split_crit_edge:           ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end463.cleanup.sink.split_crit_edge, %if.end229.cleanup.sink.split_crit_edge, %if.end220.cleanup.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.8, %if.end220.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end229.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end463.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.end220.cleanup.sink.split_crit_edge ], [ -22, %if.end229.cleanup.sink.split_crit_edge ], [ -12, %if.end463.cleanup.sink.split_crit_edge ]
  %error470 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %24 = ptrtoint ptr %error470 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.str.9.sink, ptr %error470, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end463.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end463.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initialise_region_table(ptr nocapture noundef readonly %sctx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_regions = getelementptr inbounds %struct.switch_ctx, ptr %sctx, i32 0, i32 3
  %0 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %region_entries_per_slot_bits.i.i = getelementptr inbounds %struct.switch_ctx, ptr %sctx, i32 0, i32 7
  %region_entries_per_slot5.i.i = getelementptr inbounds %struct.switch_ctx, ptr %sctx, i32 0, i32 6
  %region_table_entry_bits.i.i = getelementptr inbounds %struct.switch_ctx, ptr %sctx, i32 0, i32 5
  %region_table.i = getelementptr inbounds %struct.switch_ctx, ptr %sctx, i32 0, i32 8
  %nr_paths = getelementptr inbounds %struct.switch_ctx, ptr %sctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %switch_region_table_write.exit.for.body_crit_edge, %for.body.lr.ph
  %region_nr.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc2, %switch_region_table_write.exit.for.body_crit_edge ]
  %path_nr.09 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.store.select, %switch_region_table_write.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %region_entries_per_slot_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %region_entries_per_slot_bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i.i = icmp sgt i8 %3, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv21.i.i = zext i8 %3 to i32
  %shr.i.i = lshr i32 %region_nr.010, %conv21.i.i
  %4 = ptrtoint ptr %region_entries_per_slot5.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %region_entries_per_slot5.i.i, align 2
  %conv4.i.i = zext i8 %5 to i32
  %sub.i.i = add nsw i32 %conv4.i.i, -1
  %and.i.i = and i32 %sub.i.i, %region_nr.010
  br label %switch_region_table_write.exit

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %region_entries_per_slot5.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %region_entries_per_slot5.i.i, align 2
  %conv6.i.i = zext i8 %7 to i32
  %region_nr.010.frozen = freeze i32 %region_nr.010
  %conv6.i.i.frozen = freeze i32 %conv6.i.i
  %div.i.i = udiv i32 %region_nr.010.frozen, %conv6.i.i.frozen
  %8 = mul i32 %div.i.i, %conv6.i.i.frozen
  %rem.i.i.decomposed = sub i32 %region_nr.010.frozen, %8
  br label %switch_region_table_write.exit

switch_region_table_write.exit:                   ; preds = %if.else.i.i, %if.then.i.i
  %region_index.0.i = phi i32 [ %shr.i.i, %if.then.i.i ], [ %div.i.i, %if.else.i.i ]
  %storemerge.i.i = phi i32 [ %and.i.i, %if.then.i.i ], [ %rem.i.i.decomposed, %if.else.i.i ]
  %9 = ptrtoint ptr %region_table_entry_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %region_table_entry_bits.i.i, align 1
  %conv9.i.i = zext i8 %10 to i32
  %mul.i.i = mul i32 %storemerge.i.i, %conv9.i.i
  %11 = ptrtoint ptr %region_table.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %region_table.i, align 4
  %arrayidx.i = getelementptr i32, ptr %12, i32 %region_index.0.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %notmask.i = shl nsw i32 -1, %conv9.i.i
  %sub.i = xor i32 %notmask.i, -1
  %shl1.i = shl i32 %sub.i, %mul.i.i
  %neg.i = xor i32 %shl1.i, -1
  %and.i = and i32 %14, %neg.i
  %shl2.i = shl i32 %path_nr.09, %mul.i.i
  %or.i = or i32 %and.i, %shl2.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc = add i32 %path_nr.09, 1
  %15 = ptrtoint ptr %nr_paths to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_paths, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp1.not = icmp ult i32 %inc, %16
  %spec.store.select = select i1 %cmp1.not, i32 %inc, i32 0
  %inc2 = add nuw i32 %region_nr.010, 1
  %17 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_regions, align 4
  %cmp = icmp ult i32 %inc2, %18
  br i1 %cmp, label %switch_region_table_write.exit.for.body_crit_edge, label %switch_region_table_write.exit.for.end_crit_edge

switch_region_table_write.exit.for.end_crit_edge: ; preds = %switch_region_table_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

switch_region_table_write.exit.for.body_crit_edge: ; preds = %switch_region_table_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %switch_region_table_write.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_dm_switch__268_584_dm_switch_init6, !1, !"__initcall__kmod_dm_switch__268_584_dm_switch_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-switch.c", i32 584, i32 1}
!2 = !{ptr @__exitcall_dm_switch_exit, !3, !"__exitcall_dm_switch_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-switch.c", i32 585, i32 1}
!4 = !{ptr @__UNIQUE_ID_description269, !5, !"__UNIQUE_ID_description269", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-switch.c", i32 587, i32 1}
!6 = !{ptr @__UNIQUE_ID_author270, !7, !"__UNIQUE_ID_author270", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-switch.c", i32 588, i32 1}
!8 = !{ptr @__UNIQUE_ID_author271, !9, !"__UNIQUE_ID_author271", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-switch.c", i32 589, i32 1}
!10 = !{ptr @__UNIQUE_ID_author272, !11, !"__UNIQUE_ID_author272", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-switch.c", i32 590, i32 1}
!12 = !{ptr @__UNIQUE_ID_author273, !13, !"__UNIQUE_ID_author273", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-switch.c", i32 591, i32 1}
!14 = !{ptr @__UNIQUE_ID_file274, !15, !"__UNIQUE_ID_file274", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-switch.c", i32 592, i32 1}
!16 = !{ptr @__UNIQUE_ID_license275, !15, !"__UNIQUE_ID_license275", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-switch.c", i32 555, i32 10}
!19 = !{ptr @switch_target, !20, !"switch_target", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-switch.c", i32 554, i32 27}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-switch.c", i32 255, i32 84}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-switch.c", i32 256, i32 17}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-switch.c", i32 257, i32 10}
!27 = !{ptr @switch_ctr._args, !28, !"_args", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-switch.c", i32 254, i32 29}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-switch.c", i32 282, i32 15}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-switch.c", i32 288, i32 15}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-switch.c", i32 213, i32 15}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-switch.c", i32 218, i32 15}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-switch.c", i32 102, i32 15}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-switch.c", i32 119, i32 15}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-switch.c", i32 502, i32 3}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-switch.c", i32 504, i32 4}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-switch.c", i32 472, i32 9}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @switch_message.message_mutex, !46, !"message_mutex", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-switch.c", i32 479, i32 27}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-switch.c", i32 482, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @switch_message._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @switch_message._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-switch.c", i32 388, i32 5}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @process_set_region_mappings._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @process_set_region_mappings._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @process_set_region_mappings._entry.20, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-switch.c", i32 393, i32 5}
!64 = !{ptr @process_set_region_mappings._entry_ptr.21, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @process_set_region_mappings._entry.22, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-switch.c", i32 398, i32 5}
!67 = !{ptr @process_set_region_mappings._entry_ptr.23, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @process_set_region_mappings._entry.24, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-switch.c", i32 403, i32 5}
!70 = !{ptr @process_set_region_mappings._entry_ptr.25, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-switch.c", i32 408, i32 5}
!73 = !{ptr @process_set_region_mappings._entry.26, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @process_set_region_mappings._entry_ptr.28, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-switch.c", i32 414, i32 5}
!77 = !{ptr @process_set_region_mappings._entry.29, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @process_set_region_mappings._entry_ptr.31, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @process_set_region_mappings._entry.32, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-switch.c", i32 433, i32 5}
!81 = !{ptr @process_set_region_mappings._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @process_set_region_mappings._entry.34, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-switch.c", i32 440, i32 4}
!84 = !{ptr @process_set_region_mappings._entry_ptr.35, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @process_set_region_mappings._entry.36, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-switch.c", i32 446, i32 4}
!87 = !{ptr @process_set_region_mappings._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-switch.c", i32 450, i32 4}
!90 = !{ptr @process_set_region_mappings._entry.38, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @process_set_region_mappings._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-switch.c", i32 454, i32 4}
!94 = !{ptr @process_set_region_mappings._entry.41, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @process_set_region_mappings._entry_ptr.43, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @hex_table, !97, !"hex_table", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-switch.c", i32 341, i32 28}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/dm-switch.c", i32 574, i32 3}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dm_switch_init._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @dm_switch_init._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2148427125, i64 2148427405, i64 2148427739, i64 2148428073}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{!"branch_weights", i32 4001, i32 4000000}
!117 = !{i32 0, i32 33}
