; ModuleID = '/llk/IR_all_yes/drivers/greybus/manifest.c_pt.bc'
source_filename = "../drivers/greybus/manifest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.greybus_manifest_header = type { i16, i8, i8 }
%struct.greybus_manifest = type { %struct.greybus_manifest_header, [0 x %struct.greybus_descriptor] }
%struct.greybus_descriptor = type { %struct.greybus_descriptor_header, %union.anon.71 }
%struct.greybus_descriptor_header = type { i16, i8, i8 }
%union.anon.71 = type { %struct.greybus_descriptor_cport }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.manifest_desc = type { %struct.list_head, i32, ptr, i32 }
%struct.greybus_descriptor_string = type { i8, i8, [0 x i8] }
%struct.gb_control = type { %struct.device, ptr, ptr, i8, i8, i8, i8, ptr, ptr }
%struct.greybus_descriptor_interface = type { i8, i8, i8, i8 }
%struct.greybus_descriptor_bundle = type { i8, i8, [2 x i8] }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/greybus/manifest.c\00", [37 x i8] zeroinitializer }, align 32
@gb_manifest_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"short manifest (%zu < %zu)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gb_manifest_parse\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_manifest_parse._entry_ptr = internal global ptr @gb_manifest_parse._entry, section ".printk_index", align 4
@gb_manifest_parse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 480, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"manifest size mismatch (%zu != %u)\0A\00", [60 x i8] zeroinitializer }, align 32
@gb_manifest_parse._entry_ptr.7 = internal global ptr @gb_manifest_parse._entry.5, section ".printk_index", align 4
@gb_manifest_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"manifest version too new (%u.%u > %u.%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@gb_manifest_parse._entry_ptr.10 = internal global ptr @gb_manifest_parse._entry.8, section ".printk_index", align 4
@gb_manifest_parse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str, i32 515, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"manifest must have 1 interface descriptor (%u found)\0A\00", [42 x i8] zeroinitializer }, align 32
@gb_manifest_parse._entry_ptr.13 = internal global ptr @gb_manifest_parse._entry.11, section ".printk_index", align 4
@gb_manifest_parse._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str, i32 528, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"excess descriptors in interface manifest\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gb_manifest_parse._entry_ptr.17 = internal global ptr @gb_manifest_parse._entry.14, section ".printk_index", align 4
@identify_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"manifest too small (%zu < %zu)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"identify_descriptor\00", [44 x i8] zeroinitializer }, align 32
@identify_descriptor._entry_ptr = internal global ptr @identify_descriptor._entry, section ".printk_index", align 4
@identify_descriptor._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"descriptor too big (%zu > %zu)\0A\00", [32 x i8] zeroinitializer }, align 32
@identify_descriptor._entry_ptr.22 = internal global ptr @identify_descriptor._entry.20, section ".printk_index", align 4
@identify_descriptor._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid descriptor type (%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@identify_descriptor._entry_ptr.25 = internal global ptr @identify_descriptor._entry.23, section ".printk_index", align 4
@identify_descriptor._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s descriptor too small (%zu < %zu)\0A\00", [59 x i8] zeroinitializer }, align 32
@identify_descriptor._entry_ptr.28 = internal global ptr @identify_descriptor._entry.26, section ".printk_index", align 4
@identify_descriptor._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str, i32 157, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s descriptor size mismatch (want %zu got %zu)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@identify_descriptor._entry_ptr.32 = internal global ptr @identify_descriptor._entry.29, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"string\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interface\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cport\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bundle\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_manifest_parse_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"manifest bundle descriptors not valid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_manifest_parse_interface\00", [36 x i8] zeroinitializer }, align 32
@gb_manifest_parse_interface._entry_ptr = internal global ptr @gb_manifest_parse_interface._entry, section ".printk_index", align 4
@gb_manifest_parse_bundles.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.42, ptr @.str, ptr @.str.43, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"greybus\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_manifest_parse_bundles\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - ignoring control bundle\0A\00", [34 x i8] zeroinitializer }, align 32
@gb_manifest_parse_bundles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str, i32 345, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bundle %u cannot use control class\0A\00", [60 x i8] zeroinitializer }, align 32
@gb_manifest_parse_bundles._entry_ptr = internal global ptr @gb_manifest_parse_bundles._entry, section ".printk_index", align 4
@gb_manifest_parse_cports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid cport id found (%02u)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gb_manifest_parse_cports\00", [39 x i8] zeroinitializer }, align 32
@gb_manifest_parse_cports._entry_ptr = internal global ptr @gb_manifest_parse_cports._entry, section ".printk_index", align 4
@gb_manifest_parse_cports._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"duplicate CPort %u found\0A\00", [38 x i8] zeroinitializer }, align 32
@gb_manifest_parse_cports._entry_ptr.49 = internal global ptr @gb_manifest_parse_cports._entry.47, section ".printk_index", align 4
@switch.table.gb_manifest_parse = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.35, ptr @.str.34, ptr @.str.37, ptr @.str.36], [16 x i8] zeroinitializer }, align 32
@switch.table.gb_manifest_parse.50 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.35, ptr @.str.34, ptr @.str.37, ptr @.str.36], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 464, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 469, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 479, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 486, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 514, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 528, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 107, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 114, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 141, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 147, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 155, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 17, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 19, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 21, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 23, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 26, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 414, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 334, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 343, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 254, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [30 x i8] c"../drivers/greybus/manifest.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 266, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant [31 x i8] c"switch.table.gb_manifest_parse\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [34 x i8] c"switch.table.gb_manifest_parse.50\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @gb_manifest_parse._entry, ptr @gb_manifest_parse._entry.11, ptr @gb_manifest_parse._entry.14, ptr @gb_manifest_parse._entry.5, ptr @gb_manifest_parse._entry.8, ptr @gb_manifest_parse._entry_ptr, ptr @gb_manifest_parse._entry_ptr.10, ptr @gb_manifest_parse._entry_ptr.13, ptr @gb_manifest_parse._entry_ptr.17, ptr @gb_manifest_parse._entry_ptr.7, ptr @gb_manifest_parse_bundles._entry, ptr @gb_manifest_parse_bundles._entry_ptr, ptr @gb_manifest_parse_cports._entry, ptr @gb_manifest_parse_cports._entry.47, ptr @gb_manifest_parse_cports._entry_ptr, ptr @gb_manifest_parse_cports._entry_ptr.49, ptr @gb_manifest_parse_interface._entry, ptr @gb_manifest_parse_interface._entry_ptr, ptr @identify_descriptor._entry, ptr @identify_descriptor._entry.20, ptr @identify_descriptor._entry.23, ptr @identify_descriptor._entry.26, ptr @identify_descriptor._entry.29, ptr @identify_descriptor._entry_ptr, ptr @identify_descriptor._entry_ptr.22, ptr @identify_descriptor._entry_ptr.25, ptr @identify_descriptor._entry_ptr.28, ptr @identify_descriptor._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @switch.table.gb_manifest_parse, ptr @switch.table.gb_manifest_parse.50], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_descriptor._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_descriptor._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_descriptor._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identify_descriptor._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse_bundles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse_cports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_manifest_parse_cports._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_manifest_parse to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gb_manifest_parse.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gb_manifest_parse(ptr noundef %intf, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %manifest_descs = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 4
  %0 = ptrtoint ptr %manifest_descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %manifest_descs, align 4
  %cmp.i.not = icmp eq ptr %1, %manifest_descs
  br i1 %cmp.i.not, label %if.end23, label %do.end, !prof !92

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 9, ptr noundef null) #7
  br label %cleanup100

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  br i1 %cmp, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.1, i32 noundef %size, i32 noundef 4) #10
  br label %cleanup100

if.end28:                                         ; preds = %if.end23
  %2 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %data, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %size)
  %cmp31.not = icmp eq i32 %conv, %size
  br i1 %cmp31.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.6, i32 noundef %size, i32 noundef %conv) #10
  br label %cleanup100

if.end39:                                         ; preds = %if.end28
  %version_major = getelementptr inbounds %struct.greybus_manifest_header, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %version_major to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %version_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp41.not = icmp eq i8 %6, 0
  br i1 %cmp41.not, label %if.end51, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv40 = zext i8 %6 to i32
  %version_minor = getelementptr inbounds %struct.greybus_manifest_header, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %version_minor to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version_minor, align 1
  %conv50 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.9, i32 noundef %conv40, i32 noundef %conv50, i32 noundef 0, i32 noundef 1) #10
  br label %cleanup100

if.end51:                                         ; preds = %if.end39
  %sub = add i32 %size, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool52.not189 = icmp eq i32 %sub, 0
  br i1 %tobool52.not189, label %if.end51.for.cond.preheader_crit_edge, label %while.body.lr.ph

if.end51.for.cond.preheader_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

while.body.lr.ph:                                 ; preds = %if.end51
  %descriptors = getelementptr inbounds %struct.greybus_manifest, ptr %data, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 4, i32 1
  br label %while.body

for.cond.preheader:                               ; preds = %cleanup.for.cond.preheader_crit_edge, %if.end51.for.cond.preheader_crit_edge
  %9 = ptrtoint ptr %manifest_descs to i32
  call void @__asan_load4_noabort(i32 %9)
  %descriptor.0193 = load ptr, ptr %manifest_descs, align 4
  %cmp63.not194 = icmp eq ptr %descriptor.0193, %manifest_descs
  br i1 %cmp63.not194, label %for.cond.preheader.do.end84_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end84_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %size.addr.0192 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub58, %cleanup.while.body_crit_edge ]
  %desc.0190 = phi ptr [ %descriptors, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.addr.0192)
  %cmp.i147 = icmp ult i32 %size.addr.0192, 4
  br i1 %cmp.i147, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.18, i32 noundef %size.addr.0192, i32 noundef 4) #10
  br label %out

if.end.i:                                         ; preds = %while.body
  %10 = ptrtoint ptr %desc.0190 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %desc.0190, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  %conv.i148 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.0192, i32 %conv.i148)
  %cmp2.i = icmp ult i32 %size.addr.0192, %conv.i148
  br i1 %cmp2.i, label %do.end7.i, label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.21, i32 noundef %conv.i148, i32 noundef %size.addr.0192) #10
  br label %out

if.end9.i:                                        ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.greybus_descriptor_header, ptr %desc.0190, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %do.end23.i [
    i8 2, label %sw.bb.i
    i8 1, label %if.end9.i.sw.epilog.i_crit_edge
    i8 3, label %if.end9.i.sw.epilog.i_crit_edge304
    i8 4, label %if.end9.i.sw.epilog.i_crit_edge305
  ]

if.end9.i.sw.epilog.i_crit_edge305:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end9.i.sw.epilog.i_crit_edge304:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end9.i.sw.epilog.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.greybus_descriptor, ptr %desc.0190, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv11.i = zext i8 %18 to i32
  %add13.i = add nuw nsw i32 %conv11.i, 9
  %and.i = and i32 %add13.i, 508
  br label %sw.epilog.i

do.end23.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv10.i = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.24, i32 noundef %conv10.i) #10
  br label %out

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end9.i.sw.epilog.i_crit_edge, %if.end9.i.sw.epilog.i_crit_edge304, %if.end9.i.sw.epilog.i_crit_edge305
  %expected_size.0.i = phi i32 [ %and.i, %sw.bb.i ], [ 8, %if.end9.i.sw.epilog.i_crit_edge ], [ 8, %if.end9.i.sw.epilog.i_crit_edge304 ], [ 8, %if.end9.i.sw.epilog.i_crit_edge305 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_size.0.i, i32 %conv.i148)
  %cmp27.i = icmp ugt i32 %expected_size.0.i, %conv.i148
  br i1 %cmp27.i, label %do.end32.i, label %if.end35.i

do.end32.i:                                       ; preds = %sw.epilog.i
  %switch.tableidx = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %19 = icmp ult i8 %switch.tableidx, 4
  br i1 %19, label %switch.lookup, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef null) #7
  br label %get_descriptor_type_string.exit.i

switch.lookup:                                    ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.gb_manifest_parse, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_descriptor_type_string.exit.i

get_descriptor_type_string.exit.i:                ; preds = %switch.lookup, %do.end.i.i
  %retval.0.i.i = phi ptr [ @.str.38, %do.end.i.i ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.27, ptr noundef nonnull %retval.0.i.i, i32 noundef %conv.i148, i32 noundef %expected_size.0.i) #10
  br label %out

if.end35.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_size.0.i, i32 %conv.i148)
  %cmp36.i = icmp ult i32 %expected_size.0.i, %conv.i148
  br i1 %cmp36.i, label %do.end41.i, label %if.end35.i.if.end45.i_crit_edge

if.end35.i.if.end45.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

do.end41.i:                                       ; preds = %if.end35.i
  %switch.tableidx264 = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx264)
  %22 = icmp ult i8 %switch.tableidx264, 4
  br i1 %22, label %switch.lookup263, label %do.end.i95.i

do.end.i95.i:                                     ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef null) #7
  br label %get_descriptor_type_string.exit97.i

switch.lookup263:                                 ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = sext i8 %switch.tableidx264 to i32
  %switch.gep265 = getelementptr inbounds [4 x ptr], ptr @switch.table.gb_manifest_parse.50, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep265 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load266 = load ptr, ptr %switch.gep265, align 4
  br label %get_descriptor_type_string.exit97.i

get_descriptor_type_string.exit97.i:              ; preds = %switch.lookup263, %do.end.i95.i
  %retval.0.i96.i = phi ptr [ @.str.38, %do.end.i95.i ], [ %switch.load266, %switch.lookup263 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %intf, ptr noundef nonnull @.str.30, ptr noundef nonnull %retval.0.i96.i, i32 noundef %expected_size.0.i, i32 noundef %conv.i148) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %get_descriptor_type_string.exit97.i, %if.end35.i.if.end45.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end45.i.out_crit_edge, label %if.end48.i

if.end45.i.out_crit_edge:                         ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end48.i:                                       ; preds = %if.end45.i
  %size49.i = getelementptr inbounds %struct.manifest_desc, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %size49.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i148, ptr %size49.i, align 8
  %add.ptr.i = getelementptr i8, ptr %desc.0190, i32 4
  %data.i = getelementptr inbounds %struct.manifest_desc, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type.i, align 1
  %conv51.i = zext i8 %29 to i32
  %type52.i = getelementptr inbounds %struct.manifest_desc, ptr %call7.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %type52.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv51.i, ptr %type52.i, align 8
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %32, ptr noundef %manifest_descs) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end48.i.cleanup_crit_edge

if.end48.i.cleanup_crit_edge:                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %manifest_descs, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i.i, ptr %32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.end48.i.cleanup_crit_edge
  %add.ptr = getelementptr i8, ptr %desc.0190, i32 %conv.i148
  %sub58 = sub i32 %size.addr.0192, %conv.i148
  %tobool52.not = icmp eq i32 %sub58, 0
  br i1 %tobool52.not, label %cleanup.for.cond.preheader_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.for.cond.preheader_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %descriptor.0197 = phi ptr [ %descriptor.0, %for.body.for.body_crit_edge ], [ %descriptor.0193, %for.cond.preheader.for.body_crit_edge ]
  %found.0196 = phi i32 [ %found.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %interface_desc.0195 = phi ptr [ %interface_desc.1, %for.body.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.manifest_desc, ptr %descriptor.0197, i32 0, i32 3
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp67 = icmp eq i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0196)
  %tobool70.not = icmp eq i32 %found.0196, 0
  %39 = select i1 %cmp67, i1 %tobool70.not, i1 false
  %interface_desc.1 = select i1 %39, ptr %descriptor.0197, ptr %interface_desc.0195
  %inc = zext i1 %cmp67 to i32
  %found.1 = add i32 %found.0196, %inc
  %40 = ptrtoint ptr %descriptor.0197 to i32
  call void @__asan_load4_noabort(i32 %40)
  %descriptor.0 = load ptr, ptr %descriptor.0197, align 4
  %cmp63.not = icmp eq ptr %descriptor.0, %manifest_descs
  br i1 %cmp63.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %found.1)
  %cmp79.not = icmp eq i32 %found.1, 1
  br i1 %cmp79.not, label %if.end86, label %for.end.do.end84_crit_edge

for.end.do.end84_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

do.end84:                                         ; preds = %for.end.do.end84_crit_edge, %for.cond.preheader.do.end84_crit_edge
  %found.0.lcssa224 = phi i32 [ %found.1, %for.end.do.end84_crit_edge ], [ 0, %for.cond.preheader.do.end84_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.12, i32 noundef %found.0.lcssa224) #10
  br label %out

if.end86:                                         ; preds = %for.end
  %data.i149 = getelementptr inbounds %struct.manifest_desc, ptr %interface_desc.1, i32 0, i32 2
  %41 = ptrtoint ptr %data.i149 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i149, align 4
  %control1.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 1
  %43 = ptrtoint ptr %control1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %control1.i, align 8
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i, label %if.end86.if.end.i150_crit_edge, label %if.end.i.i

if.end86.if.end.i150_crit_edge:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i150

if.end.i.i:                                       ; preds = %if.end86
  %47 = ptrtoint ptr %manifest_descs to i32
  call void @__asan_load4_noabort(i32 %47)
  %descriptor.043.i.i = load ptr, ptr %manifest_descs, align 4
  %cmp.not44.i.i = icmp eq ptr %descriptor.043.i.i, %manifest_descs
  br i1 %cmp.not44.i.i, label %if.end.i.i.out_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %descriptor.045.i.i = phi ptr [ %descriptor.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %descriptor.043.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.manifest_desc, ptr %descriptor.045.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp2.not.i.i = icmp eq i32 %49, 2
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end4.i.i:                                      ; preds = %for.body.i.i
  %data.i.i = getelementptr inbounds %struct.manifest_desc, ptr %descriptor.045.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.greybus_descriptor_string, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %id.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %46)
  %cmp6.i.i = icmp eq i8 %53, %46
  br i1 %cmp6.i.i, label %if.end17.i.i, label %if.end4.i.i.for.inc.i.i_crit_edge

if.end4.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end4.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %54 = ptrtoint ptr %descriptor.045.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %descriptor.0.i.i = load ptr, ptr %descriptor.045.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %descriptor.0.i.i, %manifest_descs
  br i1 %cmp.not.i.i, label %for.inc.i.i.out_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.out_crit_edge:                        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17.i.i:                                     ; preds = %if.end4.i.i
  %string18.i.i = getelementptr inbounds %struct.greybus_descriptor_string, ptr %51, i32 0, i32 2
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %51, align 1
  %conv19.i.i = zext i8 %56 to i32
  %add.i.i = add nuw nsw i32 %conv19.i.i, 1
  %call20.i.i = tail call ptr @kmemdup(ptr noundef %string18.i.i, i32 noundef %add.i.i, i32 noundef 3264) #7
  %tobool21.not.i.i = icmp eq ptr %call20.i.i, null
  br i1 %tobool21.not.i.i, label %if.end17.i.i.out_crit_edge, label %if.end24.i.i

if.end17.i.i.out_crit_edge:                       ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end24.i.i:                                     ; preds = %if.end17.i.i
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %51, align 1
  %idxprom.i.i = zext i8 %58 to i32
  %arrayidx.i.i = getelementptr i8, ptr %call20.i.i, i32 %idxprom.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %descriptor.045.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end24.i.i.gb_string_get.exit.i_crit_edge

if.end24.i.i.gb_string_get.exit.i_crit_edge:      ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gb_string_get.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %descriptor.045.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %descriptor.045.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %descriptor.045.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %gb_string_get.exit.i

gb_string_get.exit.i:                             ; preds = %if.end.i.i.i.i.i, %if.end24.i.i.gb_string_get.exit.i_crit_edge
  %66 = ptrtoint ptr %descriptor.045.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %descriptor.045.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %descriptor.045.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %descriptor.045.i.i) #7
  %cmp.i.i = icmp ugt ptr %call20.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %gb_string_get.exit.i.out_crit_edge, label %gb_string_get.exit.i.if.end.i150_crit_edge

gb_string_get.exit.i.if.end.i150_crit_edge:       ; preds = %gb_string_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i150

gb_string_get.exit.i.out_crit_edge:               ; preds = %gb_string_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i150:                                      ; preds = %gb_string_get.exit.i.if.end.i150_crit_edge, %if.end86.if.end.i150_crit_edge
  %retval.0.i73.i = phi ptr [ %call20.i.i, %gb_string_get.exit.i.if.end.i150_crit_edge ], [ null, %if.end86.if.end.i150_crit_edge ]
  %vendor_string.i = getelementptr inbounds %struct.gb_control, ptr %44, i32 0, i32 7
  %68 = ptrtoint ptr %vendor_string.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i73.i, ptr %vendor_string.i, align 4
  %product_stringid.i = getelementptr inbounds %struct.greybus_descriptor_interface, ptr %42, i32 0, i32 1
  %69 = ptrtoint ptr %product_stringid.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %product_stringid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i33.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i33.i, label %if.end.i150.if.end6.i_crit_edge, label %if.end.i37.i

if.end.i150.if.end6.i_crit_edge:                  ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end.i37.i:                                     ; preds = %if.end.i150
  %71 = ptrtoint ptr %manifest_descs to i32
  call void @__asan_load4_noabort(i32 %71)
  %descriptor.043.i35.i = load ptr, ptr %manifest_descs, align 4
  %cmp.not44.i36.i = icmp eq ptr %descriptor.043.i35.i, %manifest_descs
  br i1 %cmp.not44.i36.i, label %if.end.i37.i.out_free_vendor_string.i_crit_edge, label %if.end.i37.i.for.body.i41.i_crit_edge

if.end.i37.i.for.body.i41.i_crit_edge:            ; preds = %if.end.i37.i
  br label %for.body.i41.i

if.end.i37.i.out_free_vendor_string.i_crit_edge:  ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_vendor_string.i

for.body.i41.i:                                   ; preds = %for.inc.i48.i.for.body.i41.i_crit_edge, %if.end.i37.i.for.body.i41.i_crit_edge
  %descriptor.045.i38.i = phi ptr [ %descriptor.0.i46.i, %for.inc.i48.i.for.body.i41.i_crit_edge ], [ %descriptor.043.i35.i, %if.end.i37.i.for.body.i41.i_crit_edge ]
  %type.i39.i = getelementptr inbounds %struct.manifest_desc, ptr %descriptor.045.i38.i, i32 0, i32 3
  %72 = ptrtoint ptr %type.i39.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp2.not.i40.i = icmp eq i32 %73, 2
  br i1 %cmp2.not.i40.i, label %if.end4.i45.i, label %for.body.i41.i.for.inc.i48.i_crit_edge

for.body.i41.i.for.inc.i48.i_crit_edge:           ; preds = %for.body.i41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i48.i

if.end4.i45.i:                                    ; preds = %for.body.i41.i
  %data.i42.i = getelementptr inbounds %struct.manifest_desc, ptr %descriptor.045.i38.i, i32 0, i32 2
  %74 = ptrtoint ptr %data.i42.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i42.i, align 4
  %id.i43.i = getelementptr inbounds %struct.greybus_descriptor_string, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %id.i43.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %id.i43.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %70)
  %cmp6.i44.i = icmp eq i8 %77, %70
  br i1 %cmp6.i44.i, label %if.end17.i54.i, label %if.end4.i45.i.for.inc.i48.i_crit_edge

if.end4.i45.i.for.inc.i48.i_crit_edge:            ; preds = %if.end4.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i48.i

for.inc.i48.i:                                    ; preds = %if.end4.i45.i.for.inc.i48.i_crit_edge, %for.body.i41.i.for.inc.i48.i_crit_edge
  %78 = ptrtoint ptr %descriptor.045.i38.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %descriptor.0.i46.i = load ptr, ptr %descriptor.045.i38.i, align 4
  %cmp.not.i47.i = icmp eq ptr %descriptor.0.i46.i, %manifest_descs
  br i1 %cmp.not.i47.i, label %for.inc.i48.i.out_free_vendor_string.i_crit_edge, label %for.inc.i48.i.for.body.i41.i_crit_edge

for.inc.i48.i.for.body.i41.i_crit_edge:           ; preds = %for.inc.i48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i41.i

for.inc.i48.i.out_free_vendor_string.i_crit_edge: ; preds = %for.inc.i48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_vendor_string.i

if.end17.i54.i:                                   ; preds = %if.end4.i45.i
  %string18.i49.i = getelementptr inbounds %struct.greybus_descriptor_string, ptr %75, i32 0, i32 2
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %75, align 1
  %conv19.i50.i = zext i8 %80 to i32
  %add.i51.i = add nuw nsw i32 %conv19.i50.i, 1
  %call20.i52.i = tail call ptr @kmemdup(ptr noundef %string18.i49.i, i32 noundef %add.i51.i, i32 noundef 3264) #7
  %tobool21.not.i53.i = icmp eq ptr %call20.i52.i, null
  br i1 %tobool21.not.i53.i, label %if.end17.i54.i.out_free_vendor_string.i_crit_edge, label %if.end24.i58.i

if.end17.i54.i.out_free_vendor_string.i_crit_edge: ; preds = %if.end17.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_vendor_string.i

if.end24.i58.i:                                   ; preds = %if.end17.i54.i
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %75, align 1
  %idxprom.i55.i = zext i8 %82 to i32
  %arrayidx.i56.i = getelementptr i8, ptr %call20.i52.i, i32 %idxprom.i55.i
  %83 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx.i56.i, align 1
  %call.i.i.i.i57.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %descriptor.045.i38.i) #7
  br i1 %call.i.i.i.i57.i, label %if.end.i.i.i.i61.i, label %if.end24.i58.i.gb_string_get.exit65.i_crit_edge

if.end24.i58.i.gb_string_get.exit65.i_crit_edge:  ; preds = %if.end24.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gb_string_get.exit65.i

if.end.i.i.i.i61.i:                               ; preds = %if.end24.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i59.i = getelementptr inbounds %struct.list_head, ptr %descriptor.045.i38.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i.i59.i, align 4
  %86 = ptrtoint ptr %descriptor.045.i38.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %descriptor.045.i38.i, align 4
  %prev1.i.i.i.i.i60.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i.i60.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %gb_string_get.exit65.i

gb_string_get.exit65.i:                           ; preds = %if.end.i.i.i.i61.i, %if.end24.i58.i.gb_string_get.exit65.i_crit_edge
  %90 = ptrtoint ptr %descriptor.045.i38.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %descriptor.045.i38.i, align 4
  %prev.i.i.i62.i = getelementptr inbounds %struct.list_head, ptr %descriptor.045.i38.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i62.i, align 4
  tail call void @kfree(ptr noundef %descriptor.045.i38.i) #7
  %cmp.i66.i = icmp ugt ptr %call20.i52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i, label %gb_string_get.exit65.i.out_free_vendor_string.i_crit_edge, label %gb_string_get.exit65.i.if.end6.i_crit_edge

gb_string_get.exit65.i.if.end6.i_crit_edge:       ; preds = %gb_string_get.exit65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

gb_string_get.exit65.i.out_free_vendor_string.i_crit_edge: ; preds = %gb_string_get.exit65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_vendor_string.i

if.end6.i:                                        ; preds = %gb_string_get.exit65.i.if.end6.i_crit_edge, %if.end.i150.if.end6.i_crit_edge
  %retval.0.i6479.i = phi ptr [ %call20.i52.i, %gb_string_get.exit65.i.if.end6.i_crit_edge ], [ null, %if.end.i150.if.end6.i_crit_edge ]
  %product_string.i = getelementptr inbounds %struct.gb_control, ptr %44, i32 0, i32 8
  %92 = ptrtoint ptr %product_string.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %retval.0.i6479.i, ptr %product_string.i, align 8
  %features.i = getelementptr inbounds %struct.greybus_descriptor_interface, ptr %42, i32 0, i32 2
  %93 = ptrtoint ptr %features.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %features.i, align 1
  %features7.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 7
  %95 = ptrtoint ptr %features7.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %features7.i, align 2
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %interface_desc.1) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end6.i.release_manifest_descriptor.exit.i_crit_edge

if.end6.i.release_manifest_descriptor.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_manifest_descriptor.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i67.i = getelementptr inbounds %struct.list_head, ptr %interface_desc.1, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i.i67.i, align 4
  %98 = ptrtoint ptr %interface_desc.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %interface_desc.1, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %release_manifest_descriptor.exit.i

release_manifest_descriptor.exit.i:               ; preds = %if.end.i.i.i.i, %if.end6.i.release_manifest_descriptor.exit.i_crit_edge
  %102 = ptrtoint ptr %interface_desc.1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %interface_desc.1, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %interface_desc.1, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %interface_desc.1) #7
  %call8.i = tail call fastcc i32 @gb_manifest_parse_bundles(ptr noundef %intf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i151 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i151, label %do.end.i152, label %land.lhs.true

do.end.i152:                                      ; preds = %release_manifest_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.39) #10
  %104 = ptrtoint ptr %product_string.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %product_string.i, align 8
  tail call void @kfree(ptr noundef %105) #7
  %106 = ptrtoint ptr %product_string.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %product_string.i, align 8
  br label %out_free_vendor_string.i

out_free_vendor_string.i:                         ; preds = %do.end.i152, %gb_string_get.exit65.i.out_free_vendor_string.i_crit_edge, %if.end17.i54.i.out_free_vendor_string.i_crit_edge, %for.inc.i48.i.out_free_vendor_string.i_crit_edge, %if.end.i37.i.out_free_vendor_string.i_crit_edge
  %107 = ptrtoint ptr %vendor_string.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vendor_string.i, align 4
  tail call void @kfree(ptr noundef %108) #7
  %109 = ptrtoint ptr %vendor_string.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %vendor_string.i, align 4
  br label %out

land.lhs.true:                                    ; preds = %release_manifest_descriptor.exit.i
  %110 = ptrtoint ptr %manifest_descs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %manifest_descs, align 4
  %cmp.i154.not = icmp eq ptr %111, %manifest_descs
  br i1 %cmp.i154.not, label %land.lhs.true.out_crit_edge, label %do.end96

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end96:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %intf, ptr noundef nonnull @.str.15) #10
  br label %out

out:                                              ; preds = %do.end96, %land.lhs.true.out_crit_edge, %out_free_vendor_string.i, %gb_string_get.exit.i.out_crit_edge, %if.end17.i.i.out_crit_edge, %for.inc.i.i.out_crit_edge, %if.end.i.i.out_crit_edge, %do.end84, %if.end45.i.out_crit_edge, %get_descriptor_type_string.exit.i, %do.end23.i, %do.end7.i, %do.end.i
  %result.2.off0 = phi i1 [ false, %do.end84 ], [ true, %land.lhs.true.out_crit_edge ], [ true, %do.end96 ], [ false, %get_descriptor_type_string.exit.i ], [ false, %do.end23.i ], [ false, %do.end7.i ], [ false, %do.end.i ], [ false, %out_free_vendor_string.i ], [ false, %gb_string_get.exit.i.out_crit_edge ], [ false, %if.end17.i.i.out_crit_edge ], [ false, %if.end.i.i.out_crit_edge ], [ false, %for.inc.i.i.out_crit_edge ], [ false, %if.end45.i.out_crit_edge ]
  %112 = ptrtoint ptr %manifest_descs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %manifest_descs, align 4
  %cmp.not17.i = icmp eq ptr %113, %manifest_descs
  br i1 %cmp.not17.i, label %out.cleanup100_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.cleanup100_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup100

for.body.i:                                       ; preds = %release_manifest_descriptor.exit.i162.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %descriptor.018.i = phi ptr [ %next.0.i, %release_manifest_descriptor.exit.i162.for.body.i_crit_edge ], [ %113, %out.for.body.i_crit_edge ]
  %114 = ptrtoint ptr %descriptor.018.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %next.0.i = load ptr, ptr %descriptor.018.i, align 4
  %call.i.i.i.i157 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %descriptor.018.i) #7
  br i1 %call.i.i.i.i157, label %if.end.i.i.i.i160, label %for.body.i.release_manifest_descriptor.exit.i162_crit_edge

for.body.i.release_manifest_descriptor.exit.i162_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_manifest_descriptor.exit.i162

if.end.i.i.i.i160:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i158 = getelementptr inbounds %struct.list_head, ptr %descriptor.018.i, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i.i.i158, align 4
  %117 = ptrtoint ptr %descriptor.018.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %descriptor.018.i, align 4
  %prev1.i.i.i.i.i159 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev1.i.i.i.i.i159, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %116, align 4
  br label %release_manifest_descriptor.exit.i162

release_manifest_descriptor.exit.i162:            ; preds = %if.end.i.i.i.i160, %for.body.i.release_manifest_descriptor.exit.i162_crit_edge
  %121 = ptrtoint ptr %descriptor.018.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 256 to ptr), ptr %descriptor.018.i, align 4
  %prev.i.i.i161 = getelementptr inbounds %struct.list_head, ptr %descriptor.018.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i161, align 4
  tail call void @kfree(ptr noundef %descriptor.018.i) #7
  %cmp.not.i = icmp eq ptr %next.0.i, %manifest_descs
  br i1 %cmp.not.i, label %release_manifest_descriptor.exit.i162.cleanup100_crit_edge, label %release_manifest_descriptor.exit.i162.for.body.i_crit_edge

release_manifest_descriptor.exit.i162.for.body.i_crit_edge: ; preds = %release_manifest_descriptor.exit.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

release_manifest_descriptor.exit.i162.cleanup100_crit_edge: ; preds = %release_manifest_descriptor.exit.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup100

cleanup100:                                       ; preds = %release_manifest_descriptor.exit.i162.cleanup100_crit_edge, %out.cleanup100_crit_edge, %do.end46, %do.end36, %do.end27, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end27 ], [ false, %do.end36 ], [ false, %do.end46 ], [ %result.2.off0, %out.cleanup100_crit_edge ], [ %result.2.off0, %release_manifest_descriptor.exit.i162.cleanup100_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_manifest_parse_bundles(ptr noundef %intf) unnamed_addr #0 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %manifest_descs.i = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 4
  %0 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end26, %entry
  %count.0.ph = phi i32 [ %inc, %if.end26 ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.cond
  %descriptor.0.in.i = phi ptr [ %manifest_descs.i, %while.cond ], [ %descriptor.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %descriptor.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %descriptor.0.i = load ptr, ptr %descriptor.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %descriptor.0.i, %manifest_descs.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup44_crit_edge, label %for.body.i

for.cond.i.cleanup44_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

for.body.i:                                       ; preds = %for.cond.i
  %type.i = getelementptr inbounds %struct.manifest_desc, ptr %descriptor.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %cmp8.i = icmp eq i32 %3, 3
  br i1 %cmp8.i, label %get_next_bundle_desc.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_next_bundle_desc.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %descriptor.0.i, null
  br i1 %tobool.not, label %get_next_bundle_desc.exit.cleanup44_crit_edge, label %while.body

get_next_bundle_desc.exit.cleanup44_crit_edge:    ; preds = %get_next_bundle_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

while.body:                                       ; preds = %get_next_bundle_desc.exit
  %data = getelementptr inbounds %struct.manifest_desc, ptr %descriptor.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %class1 = getelementptr inbounds %struct.greybus_descriptor_bundle, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %class1, align 1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %descriptor.0.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.release_manifest_descriptor.exit_crit_edge

while.body.release_manifest_descriptor.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_manifest_descriptor.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %descriptor.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %descriptor.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %descriptor.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %release_manifest_descriptor.exit

release_manifest_descriptor.exit:                 ; preds = %if.end.i.i.i, %while.body.release_manifest_descriptor.exit_crit_edge
  %16 = ptrtoint ptr %descriptor.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %descriptor.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %descriptor.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %descriptor.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %release_manifest_descriptor.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_manifest_parse_bundles.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_manifest_parse_bundles, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !93

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_manifest_parse_bundles.__UNIQUE_ID_ddebug229, ptr noundef %intf, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %18 = ptrtoint ptr %manifest_descs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %manifest_descs.i, align 4
  %cmp.not25.i = icmp eq ptr %19, %manifest_descs.i
  br i1 %cmp.not25.i, label %do.end.while.cond.backedge_crit_edge, label %do.end.for.body.i73_crit_edge

do.end.for.body.i73_crit_edge:                    ; preds = %do.end
  br label %for.body.i73

do.end.while.cond.backedge_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %gb_manifest_parse_cports.exit.thread, %for.inc.i.while.cond.backedge_crit_edge, %do.end.while.cond.backedge_crit_edge
  br label %while.cond

for.body.i73:                                     ; preds = %for.inc.i.for.body.i73_crit_edge, %do.end.for.body.i73_crit_edge
  %desc.026.i = phi ptr [ %tmp.028.i, %for.inc.i.for.body.i73_crit_edge ], [ %19, %do.end.for.body.i73_crit_edge ]
  %20 = ptrtoint ptr %desc.026.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.028.i = load ptr, ptr %desc.026.i, align 4
  %type.i72 = getelementptr inbounds %struct.manifest_desc, ptr %desc.026.i, i32 0, i32 3
  %21 = ptrtoint ptr %type.i72 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp7.not.i = icmp eq i32 %22, 4
  br i1 %cmp7.not.i, label %if.end.i, label %for.body.i73.for.inc.i_crit_edge

for.body.i73.for.inc.i_crit_edge:                 ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i73
  %data.i = getelementptr inbounds %struct.manifest_desc, ptr %desc.026.i, i32 0, i32 2
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %bundle.i = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bundle.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp9.i = icmp eq i8 %26, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.end.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.026.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then11.i.release_manifest_descriptor.exit.i_crit_edge

if.then11.i.release_manifest_descriptor.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_manifest_descriptor.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %desc.026.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %desc.026.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc.026.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %release_manifest_descriptor.exit.i

release_manifest_descriptor.exit.i:               ; preds = %if.end.i.i.i.i, %if.then11.i.release_manifest_descriptor.exit.i_crit_edge
  %33 = ptrtoint ptr %desc.026.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %desc.026.i, align 4
  %prev.i.i.i74 = getelementptr inbounds %struct.list_head, ptr %desc.026.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i74, align 4
  call void @kfree(ptr noundef %desc.026.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %release_manifest_descriptor.exit.i, %if.end.i.for.inc.i_crit_edge, %for.body.i73.for.inc.i_crit_edge
  %cmp.not.i75 = icmp eq ptr %tmp.028.i, %manifest_descs.i
  br i1 %cmp.not.i75, label %for.inc.i.while.cond.backedge_crit_edge, label %for.inc.i.for.body.i73_crit_edge

for.inc.i.for.body.i73_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i73

for.inc.i.while.cond.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end8:                                          ; preds = %release_manifest_descriptor.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10 = icmp eq i8 %9, 0
  br i1 %cmp10, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv.le = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %intf, ptr noundef nonnull @.str.44, i32 noundef %conv.le) #10
  br label %cleanup27

if.end18:                                         ; preds = %if.end8
  %call19 = call ptr @gb_bundle_create(ptr noundef %intf, i8 noundef zeroext %7, i8 noundef zeroext %9) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.cleanup27_crit_edge, label %if.end22

if.end18.cleanup27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end22:                                         ; preds = %if.end18
  %intf1.i = getelementptr inbounds %struct.gb_bundle, ptr %call19, i32 0, i32 1
  %35 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #7
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list.i, ptr %list.i, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list.i, ptr %0, align 4
  %id.i = getelementptr inbounds %struct.gb_bundle, ptr %call19, i32 0, i32 2
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %id.i, align 4
  %manifest_descs.i76 = getelementptr inbounds %struct.gb_interface, ptr %36, i32 0, i32 4
  %41 = ptrtoint ptr %manifest_descs.i76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %manifest_descs.i76, align 4
  %cmp.not184.i = icmp eq ptr %42, %manifest_descs.i76
  br i1 %cmp.not184.i, label %if.end22.gb_manifest_parse_cports.exit.thread_crit_edge, label %if.end22.for.body.i78_crit_edge

if.end22.for.body.i78_crit_edge:                  ; preds = %if.end22
  br label %for.body.i78

if.end22.gb_manifest_parse_cports.exit.thread_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %gb_manifest_parse_cports.exit.thread

for.body.i78:                                     ; preds = %for.inc59.i.for.body.i78_crit_edge, %if.end22.for.body.i78_crit_edge
  %desc.0186.i = phi ptr [ %next.0188.i, %for.inc59.i.for.body.i78_crit_edge ], [ %42, %if.end22.for.body.i78_crit_edge ]
  %count.0185.i = phi i32 [ %count.1.i, %for.inc59.i.for.body.i78_crit_edge ], [ 0, %if.end22.for.body.i78_crit_edge ]
  %43 = ptrtoint ptr %desc.0186.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %next.0188.i = load ptr, ptr %desc.0186.i, align 4
  %type.i77 = getelementptr inbounds %struct.manifest_desc, ptr %desc.0186.i, i32 0, i32 3
  %44 = ptrtoint ptr %type.i77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp11.not.i = icmp eq i32 %45, 4
  br i1 %cmp11.not.i, label %if.end.i80, label %for.body.i78.for.inc59.i_crit_edge

for.body.i78.for.inc59.i_crit_edge:               ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.i

if.end.i80:                                       ; preds = %for.body.i78
  %data.i79 = getelementptr inbounds %struct.manifest_desc, ptr %desc.0186.i, i32 0, i32 2
  %46 = ptrtoint ptr %data.i79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i79, align 4
  %bundle12.i = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bundle12.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bundle12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %40)
  %cmp14.not.i = icmp eq i8 %49, %40
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end.i80.for.inc59.i_crit_edge

if.end.i80.for.inc59.i_crit_edge:                 ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59.i

if.end17.i:                                       ; preds = %if.end.i80
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %47, align 1
  %52 = call i16 @llvm.bswap.i16(i16 %51) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %52)
  %cmp20.i = icmp ugt i16 %52, 4095
  br i1 %cmp20.i, label %if.end17.i.exit.i_crit_edge, label %if.end23.i

if.end17.i.exit.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp25.i = icmp eq i16 %51, 0
  br i1 %cmp25.i, label %do.end.i, label %if.end23.i.for.cond34.i_crit_edge

if.end23.i.for.cond34.i_crit_edge:                ; preds = %if.end23.i
  br label %for.cond34.i

do.end.i:                                         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call19, ptr noundef nonnull @.str.45, i32 noundef 0) #10
  br label %exit.i

for.cond34.i:                                     ; preds = %for.body39.i.for.cond34.i_crit_edge, %if.end23.i.for.cond34.i_crit_edge
  %tmp.0.in.i = phi ptr [ %tmp.0.i, %for.body39.i.for.cond34.i_crit_edge ], [ %list.i, %if.end23.i.for.cond34.i_crit_edge ]
  %53 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp36.not.i = icmp eq ptr %tmp.0.i, %list.i
  br i1 %cmp36.not.i, label %for.end.i, label %for.body39.i

for.body39.i:                                     ; preds = %for.cond34.i
  %data40.i = getelementptr inbounds %struct.manifest_desc, ptr %tmp.0.i, i32 0, i32 2
  %54 = ptrtoint ptr %data40.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data40.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %55, align 1
  %cmp44.i = icmp eq i16 %51, %57
  br i1 %cmp44.i, label %do.end49.i, label %for.body39.i.for.cond34.i_crit_edge

for.body39.i.for.cond34.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond34.i

do.end49.i:                                       ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv19.le.i = zext i16 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call19, ptr noundef nonnull @.str.48, i32 noundef %conv19.le.i) #10
  br label %exit.i

for.end.i:                                        ; preds = %for.cond34.i
  %call.i.i.i81 = call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.0186.i) #7
  br i1 %call.i.i.i81, label %if.end.i.i.i84, label %for.end.i.__list_del_entry.exit.i.i_crit_edge

for.end.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i84:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %desc.0186.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i82, align 4
  %60 = ptrtoint ptr %desc.0186.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc.0186.i, align 4
  %prev1.i.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i83, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i84, %for.end.i.__list_del_entry.exit.i.i_crit_edge
  %64 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %0, align 4
  %call.i.i.i.i85 = call zeroext i1 @__list_add_valid(ptr noundef %desc.0186.i, ptr noundef %65, ptr noundef nonnull %list.i) #7
  br i1 %call.i.i.i.i85, label %if.end.i.i.i.i86, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit.i

if.end.i.i.i.i86:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %desc.0186.i, ptr %0, align 4
  %67 = ptrtoint ptr %desc.0186.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %list.i, ptr %desc.0186.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %desc.0186.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %desc.0186.i, ptr %65, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i86, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %inc.i = add i32 %count.0185.i, 1
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %list_move_tail.exit.i, %if.end.i80.for.inc59.i_crit_edge, %for.body.i78.for.inc59.i_crit_edge
  %count.1.i = phi i32 [ %count.0185.i, %for.body.i78.for.inc59.i_crit_edge ], [ %count.0185.i, %if.end.i80.for.inc59.i_crit_edge ], [ %inc.i, %list_move_tail.exit.i ]
  %cmp.not.i87 = icmp eq ptr %next.0188.i, %manifest_descs.i76
  br i1 %cmp.not.i87, label %for.end65.i, label %for.inc59.i.for.body.i78_crit_edge

for.inc59.i.for.body.i78_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i78

for.end65.i:                                      ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %tobool.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool.not.i, label %for.end65.i.gb_manifest_parse_cports.exit.thread_crit_edge, label %if.end67.i

for.end65.i.gb_manifest_parse_cports.exit.thread_crit_edge: ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gb_manifest_parse_cports.exit.thread

if.end67.i:                                       ; preds = %for.end65.i
  %70 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.1.i, i32 4) #7
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !94

kcalloc.exit.thread.i:                            ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  %cport_desc170.i = getelementptr inbounds %struct.gb_bundle, ptr %call19, i32 0, i32 7
  %72 = ptrtoint ptr %cport_desc170.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %cport_desc170.i, align 4
  br label %exit.i

if.end7.i.i.i:                                    ; preds = %if.end67.i
  %73 = extractvalue { i32, i1 } %70, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %73, i32 noundef 3520) #12
  %cport_desc.i = getelementptr inbounds %struct.gb_bundle, ptr %call19, i32 0, i32 7
  %74 = ptrtoint ptr %cport_desc.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call8.i.i.i, ptr %cport_desc.i, align 4
  %tobool69.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool69.not.i, label %if.end7.i.i.i.exit.i_crit_edge, label %if.end71.i

if.end7.i.i.i.exit.i_crit_edge:                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end71.i:                                       ; preds = %if.end7.i.i.i
  %cport_desc.i.le = getelementptr inbounds %struct.gb_bundle, ptr %call19, i32 0, i32 7
  %num_cports.i = getelementptr inbounds %struct.gb_bundle, ptr %call19, i32 0, i32 6
  %75 = ptrtoint ptr %num_cports.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %count.1.i, ptr %num_cports.i, align 8
  %76 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %list.i, align 4
  %cmp83.not189.i = icmp eq ptr %77, %list.i
  br i1 %cmp83.not189.i, label %gb_manifest_parse_cports.exit.thread97, label %if.end71.i.for.body86.i_crit_edge

if.end71.i.for.body86.i_crit_edge:                ; preds = %if.end71.i
  br label %for.body86.i

gb_manifest_parse_cports.exit.thread97:           ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #7
  br label %if.end26

for.body86.i:                                     ; preds = %release_manifest_descriptor.exit.i90.for.body86.i_crit_edge, %if.end71.i.for.body86.i_crit_edge
  %desc.1191.i = phi ptr [ %next.1.i, %release_manifest_descriptor.exit.i90.for.body86.i_crit_edge ], [ %77, %if.end71.i.for.body86.i_crit_edge ]
  %i.0190.i = phi i32 [ %inc89.i, %release_manifest_descriptor.exit.i90.for.body86.i_crit_edge ], [ 0, %if.end71.i.for.body86.i_crit_edge ]
  %78 = ptrtoint ptr %desc.1191.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %next.1.i = load ptr, ptr %desc.1191.i, align 4
  %data87.i = getelementptr inbounds %struct.manifest_desc, ptr %desc.1191.i, i32 0, i32 2
  %79 = ptrtoint ptr %data87.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data87.i, align 4
  %81 = ptrtoint ptr %cport_desc.i.le to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cport_desc.i.le, align 4
  %inc89.i = add i32 %i.0190.i, 1
  %arrayidx.i = getelementptr %struct.greybus_descriptor_cport, ptr %82, i32 %i.0190.i
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %80, align 1
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %arrayidx.i, align 1
  %call.i.i.i144.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.1191.i) #7
  br i1 %call.i.i.i144.i, label %if.end.i.i.i145.i, label %for.body86.i.release_manifest_descriptor.exit.i90_crit_edge

for.body86.i.release_manifest_descriptor.exit.i90_crit_edge: ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_manifest_descriptor.exit.i90

if.end.i.i.i145.i:                                ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i88 = getelementptr inbounds %struct.list_head, ptr %desc.1191.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i.i.i88, align 4
  %88 = ptrtoint ptr %desc.1191.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %desc.1191.i, align 4
  %prev1.i.i.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i.i.i89, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %release_manifest_descriptor.exit.i90

release_manifest_descriptor.exit.i90:             ; preds = %if.end.i.i.i145.i, %for.body86.i.release_manifest_descriptor.exit.i90_crit_edge
  %92 = ptrtoint ptr %desc.1191.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %desc.1191.i, align 4
  %prev.i.i146.i = getelementptr inbounds %struct.list_head, ptr %desc.1191.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i146.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i146.i, align 4
  call void @kfree(ptr noundef %desc.1191.i) #7
  %cmp83.not.i = icmp eq ptr %next.1.i, %list.i
  br i1 %cmp83.not.i, label %gb_manifest_parse_cports.exit, label %release_manifest_descriptor.exit.i90.for.body86.i_crit_edge

release_manifest_descriptor.exit.i90.for.body86.i_crit_edge: ; preds = %release_manifest_descriptor.exit.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86.i

exit.i:                                           ; preds = %if.end7.i.i.i.exit.i_crit_edge, %kcalloc.exit.thread.i, %do.end49.i, %do.end.i, %if.end17.i.exit.i_crit_edge
  %94 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %list.i, align 4
  %cmp.not25.i.i = icmp eq ptr %95, %list.i
  br i1 %cmp.not25.i.i, label %exit.i.release_cport_descriptors.exit.i_crit_edge, label %exit.i.for.body.i.i_crit_edge

exit.i.for.body.i.i_crit_edge:                    ; preds = %exit.i
  br label %for.body.i.i

exit.i.release_cport_descriptors.exit.i_crit_edge: ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_cport_descriptors.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %exit.i.for.body.i.i_crit_edge
  %desc.026.i.i = phi ptr [ %tmp.028.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %95, %exit.i.for.body.i.i_crit_edge ]
  %96 = ptrtoint ptr %desc.026.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %tmp.028.i.i = load ptr, ptr %desc.026.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.manifest_desc, ptr %desc.026.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp7.not.i.i = icmp eq i32 %98, 4
  br i1 %cmp7.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %data.i.i = getelementptr inbounds %struct.manifest_desc, ptr %desc.026.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i.i, align 4
  %bundle.i.i = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %bundle.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bundle.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %40)
  %cmp9.i.i = icmp eq i8 %102, %40
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.026.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i147.i, label %if.then11.i.i.release_manifest_descriptor.exit.i.i_crit_edge

if.then11.i.i.release_manifest_descriptor.exit.i.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_manifest_descriptor.exit.i.i

if.end.i.i.i.i147.i:                              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %desc.026.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %105 = ptrtoint ptr %desc.026.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %desc.026.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i.i.i.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %release_manifest_descriptor.exit.i.i

release_manifest_descriptor.exit.i.i:             ; preds = %if.end.i.i.i.i147.i, %if.then11.i.i.release_manifest_descriptor.exit.i.i_crit_edge
  %109 = ptrtoint ptr %desc.026.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 256 to ptr), ptr %desc.026.i.i, align 4
  %prev.i.i.i148.i = getelementptr inbounds %struct.list_head, ptr %desc.026.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i.i148.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i148.i, align 4
  call void @kfree(ptr noundef %desc.026.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %release_manifest_descriptor.exit.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %tmp.028.i.i, %list.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.release_cport_descriptors.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.release_cport_descriptors.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_cport_descriptors.exit.i

release_cport_descriptors.exit.i:                 ; preds = %for.inc.i.i.release_cport_descriptors.exit.i_crit_edge, %exit.i.release_cport_descriptors.exit.i_crit_edge
  %111 = ptrtoint ptr %manifest_descs.i76 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %manifest_descs.i76, align 4
  %cmp.not25.i149.i = icmp eq ptr %112, %manifest_descs.i76
  br i1 %cmp.not25.i149.i, label %release_cport_descriptors.exit.i.gb_manifest_parse_cports.exit.thread_crit_edge, label %release_cport_descriptors.exit.i.for.body.i154.i_crit_edge

release_cport_descriptors.exit.i.for.body.i154.i_crit_edge: ; preds = %release_cport_descriptors.exit.i
  br label %for.body.i154.i

release_cport_descriptors.exit.i.gb_manifest_parse_cports.exit.thread_crit_edge: ; preds = %release_cport_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gb_manifest_parse_cports.exit.thread

for.body.i154.i:                                  ; preds = %for.inc.i167.i.for.body.i154.i_crit_edge, %release_cport_descriptors.exit.i.for.body.i154.i_crit_edge
  %desc.026.i150.i = phi ptr [ %tmp.028.i151.i, %for.inc.i167.i.for.body.i154.i_crit_edge ], [ %112, %release_cport_descriptors.exit.i.for.body.i154.i_crit_edge ]
  %113 = ptrtoint ptr %desc.026.i150.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %tmp.028.i151.i = load ptr, ptr %desc.026.i150.i, align 4
  %type.i152.i = getelementptr inbounds %struct.manifest_desc, ptr %desc.026.i150.i, i32 0, i32 3
  %114 = ptrtoint ptr %type.i152.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type.i152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp7.not.i153.i = icmp eq i32 %115, 4
  br i1 %cmp7.not.i153.i, label %if.end.i158.i, label %for.body.i154.i.for.inc.i167.i_crit_edge

for.body.i154.i.for.inc.i167.i_crit_edge:         ; preds = %for.body.i154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i167.i

if.end.i158.i:                                    ; preds = %for.body.i154.i
  %data.i155.i = getelementptr inbounds %struct.manifest_desc, ptr %desc.026.i150.i, i32 0, i32 2
  %116 = ptrtoint ptr %data.i155.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i155.i, align 4
  %bundle.i156.i = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %bundle.i156.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bundle.i156.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %119, i8 %40)
  %cmp9.i157.i = icmp eq i8 %119, %40
  br i1 %cmp9.i157.i, label %if.then11.i160.i, label %if.end.i158.i.for.inc.i167.i_crit_edge

if.end.i158.i.for.inc.i167.i_crit_edge:           ; preds = %if.end.i158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i167.i

if.then11.i160.i:                                 ; preds = %if.end.i158.i
  %call.i.i.i.i159.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.026.i150.i) #7
  br i1 %call.i.i.i.i159.i, label %if.end.i.i.i.i163.i, label %if.then11.i160.i.release_manifest_descriptor.exit.i165.i_crit_edge

if.then11.i160.i.release_manifest_descriptor.exit.i165.i_crit_edge: ; preds = %if.then11.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_manifest_descriptor.exit.i165.i

if.end.i.i.i.i163.i:                              ; preds = %if.then11.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i161.i = getelementptr inbounds %struct.list_head, ptr %desc.026.i150.i, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i.i.i161.i, align 4
  %122 = ptrtoint ptr %desc.026.i150.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %desc.026.i150.i, align 4
  %prev1.i.i.i.i.i162.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i.i.i162.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i.i.i162.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %release_manifest_descriptor.exit.i165.i

release_manifest_descriptor.exit.i165.i:          ; preds = %if.end.i.i.i.i163.i, %if.then11.i160.i.release_manifest_descriptor.exit.i165.i_crit_edge
  %126 = ptrtoint ptr %desc.026.i150.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 256 to ptr), ptr %desc.026.i150.i, align 4
  %prev.i.i.i164.i = getelementptr inbounds %struct.list_head, ptr %desc.026.i150.i, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i.i.i164.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i164.i, align 4
  call void @kfree(ptr noundef %desc.026.i150.i) #7
  br label %for.inc.i167.i

for.inc.i167.i:                                   ; preds = %release_manifest_descriptor.exit.i165.i, %if.end.i158.i.for.inc.i167.i_crit_edge, %for.body.i154.i.for.inc.i167.i_crit_edge
  %cmp.not.i166.i = icmp eq ptr %tmp.028.i151.i, %manifest_descs.i76
  br i1 %cmp.not.i166.i, label %for.inc.i167.i.gb_manifest_parse_cports.exit.thread_crit_edge, label %for.inc.i167.i.for.body.i154.i_crit_edge

for.inc.i167.i.for.body.i154.i_crit_edge:         ; preds = %for.inc.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i154.i

for.inc.i167.i.gb_manifest_parse_cports.exit.thread_crit_edge: ; preds = %for.inc.i167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gb_manifest_parse_cports.exit.thread

gb_manifest_parse_cports.exit.thread:             ; preds = %for.inc.i167.i.gb_manifest_parse_cports.exit.thread_crit_edge, %release_cport_descriptors.exit.i.gb_manifest_parse_cports.exit.thread_crit_edge, %for.end65.i.gb_manifest_parse_cports.exit.thread_crit_edge, %if.end22.gb_manifest_parse_cports.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #7
  call void @gb_bundle_destroy(ptr noundef nonnull %call19) #7
  br label %while.cond.backedge

gb_manifest_parse_cports.exit:                    ; preds = %release_manifest_descriptor.exit.i90
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #7
  br label %if.end26

if.end26:                                         ; preds = %gb_manifest_parse_cports.exit, %gb_manifest_parse_cports.exit.thread97
  %inc = add i32 %count.0.ph, 1
  br label %while.cond.outer

cleanup27:                                        ; preds = %if.end18.cleanup27_crit_edge, %do.end15
  %bundles = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 2
  %128 = ptrtoint ptr %bundles to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bundles, align 4
  %cmp35.not111 = icmp eq ptr %129, %bundles
  br i1 %cmp35.not111, label %cleanup27.cleanup44_crit_edge, label %cleanup27.for.body_crit_edge

cleanup27.for.body_crit_edge:                     ; preds = %cleanup27
  br label %for.body

cleanup27.cleanup44_crit_edge:                    ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cleanup27.for.body_crit_edge
  %.pn.in112 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %129, %cleanup27.for.body_crit_edge ]
  %bundle.0 = getelementptr i8, ptr %.pn.in112, i32 -956
  %130 = ptrtoint ptr %.pn.in112 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn = load ptr, ptr %.pn.in112, align 4
  call void @gb_bundle_destroy(ptr noundef %bundle.0) #7
  %cmp35.not = icmp eq ptr %.pn, %bundles
  br i1 %cmp35.not, label %for.body.cleanup44_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

cleanup44:                                        ; preds = %for.body.cleanup44_crit_edge, %cleanup27.cleanup44_crit_edge, %get_next_bundle_desc.exit.cleanup44_crit_edge, %for.cond.i.cleanup44_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup27.cleanup44_crit_edge ], [ 0, %for.body.cleanup44_crit_edge ], [ %count.0.ph, %for.cond.i.cleanup44_crit_edge ], [ %count.0.ph, %get_next_bundle_desc.exit.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_bundle_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_bundle_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/greybus/manifest.c", i32 464, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/greybus/manifest.c", i32 469, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @gb_manifest_parse._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @gb_manifest_parse._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/greybus/manifest.c", i32 479, i32 3}
!11 = !{ptr @gb_manifest_parse._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @gb_manifest_parse._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/greybus/manifest.c", i32 486, i32 3}
!15 = !{ptr @gb_manifest_parse._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @gb_manifest_parse._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/greybus/manifest.c", i32 514, i32 3}
!19 = !{ptr @gb_manifest_parse._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @gb_manifest_parse._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/greybus/manifest.c", i32 528, i32 3}
!23 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gb_manifest_parse._entry.14, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @gb_manifest_parse._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/greybus/manifest.c", i32 107, i32 3}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @identify_descriptor._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @identify_descriptor._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/greybus/manifest.c", i32 114, i32 3}
!33 = !{ptr @identify_descriptor._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @identify_descriptor._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/greybus/manifest.c", i32 141, i32 3}
!37 = !{ptr @identify_descriptor._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @identify_descriptor._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/greybus/manifest.c", i32 147, i32 3}
!41 = !{ptr @identify_descriptor._entry.26, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @identify_descriptor._entry_ptr.28, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/greybus/manifest.c", i32 155, i32 3}
!45 = !{ptr @.str.31, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @identify_descriptor._entry.29, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @identify_descriptor._entry_ptr.32, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/greybus/manifest.c", i32 15, i32 10}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/greybus/manifest.c", i32 17, i32 10}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/greybus/manifest.c", i32 19, i32 10}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/greybus/manifest.c", i32 21, i32 10}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/greybus/manifest.c", i32 23, i32 10}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/greybus/manifest.c", i32 26, i32 10}
!60 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/greybus/manifest.c", i32 414, i32 3}
!62 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gb_manifest_parse_interface._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gb_manifest_parse_interface._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/greybus/manifest.c", i32 334, i32 4}
!67 = !{ptr @.str.42, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @gb_manifest_parse_bundles.__UNIQUE_ID_ddebug229, !66, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/greybus/manifest.c", i32 343, i32 4}
!72 = !{ptr @gb_manifest_parse_bundles._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gb_manifest_parse_bundles._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/greybus/manifest.c", i32 254, i32 4}
!76 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @gb_manifest_parse_cports._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @gb_manifest_parse_cports._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/greybus/manifest.c", i32 266, i32 5}
!81 = !{ptr @gb_manifest_parse_cports._entry.47, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @gb_manifest_parse_cports._entry_ptr.49, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2148708582, i64 2148708587, i64 2148708600, i64 2148708644, i64 2148708678, i64 2148708699}
!94 = !{!"branch_weights", i32 1, i32 2000}
