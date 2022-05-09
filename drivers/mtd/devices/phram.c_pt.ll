; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/phram.c_pt.bc'
source_filename = "../drivers/mtd/devices/phram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.phram_mtd_list = type { %struct.mtd_info, %struct.list_head }
%struct.erase_info = type { i64, i64, i64 }

@__param_str_phram = internal constant [12 x i8] c"phram.phram\00", align 1
@__param_ops_phram = internal constant %struct.kernel_param_ops { i32 0, ptr @phram_param_call, ptr null, ptr null }, align 4
@__param_phram = internal constant %struct.kernel_param { ptr @__param_str_phram, ptr null, ptr @__param_ops_phram, i16 128, i8 -1, i8 0, %union.anon.41 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_phram185 = internal constant [85 x i8] c"phram.parm=phram:Memory region to map. \22phram=<name>,<start>,<length>[,<erasesize>]\22\00", section ".modinfo", align 1
@__initcall__kmod_phram__186_347_init_phram6 = internal global ptr @init_phram, section ".initcall6.init", align 4
@__exitcall_cleanup_phram = internal global ptr @cleanup_phram, section ".exitcall.exit", align 4
@__UNIQUE_ID_file187 = internal constant [37 x i8] c"phram.file=drivers/mtd/devices/phram\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [18 x i8] c"phram.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [48 x i8] c"phram.author=Joern Engel <joern@wh.fh-wedel.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [46 x i8] c"phram.description=MTD driver for physical RAM\00", section ".modinfo", align 1
@phram_init_called = internal global { i1, [31 x i8] } zeroinitializer, align 32
@phram_paramline = internal global { [124 x i8], [36 x i8] } zeroinitializer, align 32
@phram_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013phram: parameter too long\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phram_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/devices/phram.c\00", [36 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr = internal global ptr @phram_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@phram_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013phram: too many arguments\0A\00", [35 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.6 = internal global ptr @phram_setup._entry.4, section ".printk_index", align 4
@phram_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013phram: not enough arguments\0A\00", [33 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.9 = internal global ptr @phram_setup._entry.7, section ".printk_index", align 4
@phram_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013phram: illegal start address\0A\00", [32 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.12 = internal global ptr @phram_setup._entry.10, section ".printk_index", align 4
@phram_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013phram: illegal device length\0A\00", [32 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.15 = internal global ptr @phram_setup._entry.13, section ".printk_index", align 4
@phram_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013phram: illegal erasesize\0A\00", [36 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.18 = internal global ptr @phram_setup._entry.16, section ".printk_index", align 4
@phram_setup._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013phram: illegal erasesize or len\0A\00", [61 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.21 = internal global ptr @phram_setup._entry.19, section ".printk_index", align 4
@phram_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013phram: len is not multiple of erasesize\0A\00", [53 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.24 = internal global ptr @phram_setup._entry.22, section ".printk_index", align 4
@phram_setup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016phram: %s device: %#llx at %#llx for erasesize %#llx\0A\00", [40 x i8] zeroinitializer }, align 32
@phram_setup._entry_ptr.27 = internal global ptr @phram_setup._entry.25, section ".printk_index", align 4
@register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013phram: ioremap failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register_device\00", [16 x i8] zeroinitializer }, align 32
@register_device._entry_ptr = internal global ptr @register_device._entry, section ".printk_index", align 4
@register_device._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013phram: Failed to register new device\0A\00", [56 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.32 = internal global ptr @register_device._entry.30, section ".printk_index", align 4
@phram_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @phram_list, ptr @phram_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 71, i64 77, i64 107]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 71, i64 77, i64 107]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 8, i64 71, i64 77, i64 107]
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"phram_init_called\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"phram_paramline\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 214, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 229, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 235, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 238, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 241, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 249, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 255, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 262, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 269, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 276, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 285, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 104, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 124, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"phram_list\00", align 1
@___asan_gen_.118 = private constant [31 x i8] c"../drivers/mtd/devices/phram.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 36, i32 8 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__UNIQUE_ID_phram185, ptr @__exitcall_cleanup_phram, ptr @__initcall__kmod_phram__186_347_init_phram6, ptr @__param_phram, ptr @cleanup_phram, ptr @phram_setup._entry, ptr @phram_setup._entry.10, ptr @phram_setup._entry.13, ptr @phram_setup._entry.16, ptr @phram_setup._entry.19, ptr @phram_setup._entry.22, ptr @phram_setup._entry.25, ptr @phram_setup._entry.4, ptr @phram_setup._entry.7, ptr @phram_setup._entry_ptr, ptr @phram_setup._entry_ptr.12, ptr @phram_setup._entry_ptr.15, ptr @phram_setup._entry_ptr.18, ptr @phram_setup._entry_ptr.21, ptr @phram_setup._entry_ptr.24, ptr @phram_setup._entry_ptr.27, ptr @phram_setup._entry_ptr.6, ptr @phram_setup._entry_ptr.9, ptr @register_device._entry, ptr @register_device._entry.30, ptr @register_device._entry_ptr, ptr @register_device._entry_ptr.32, ptr @phram_init_called, ptr @phram_paramline, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @phram_list], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_init_called to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_paramline to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_setup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phram_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_phram() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @phram_list, align 4
  %cmp.not19.i = icmp eq ptr %0, @phram_list
  br i1 %cmp.not19.i, label %entry.unregister_devices.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.unregister_devices.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unregister_devices.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %this.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -1408
  %1 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 8
  %call.i = tail call i32 @mtd_device_unregister(ptr noundef %this.0.i) #11
  %priv.i = getelementptr i8, ptr %.pn.in20.i, i32 -1168
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iounmap(ptr noundef %3) #11
  %name.i = getelementptr i8, ptr %.pn.in20.i, i32 -1352
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 8
  tail call void @kfree(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %this.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, @phram_list
  br i1 %cmp.not.i, label %for.body.i.unregister_devices.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.unregister_devices.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unregister_devices.exit

unregister_devices.exit:                          ; preds = %for.body.i.unregister_devices.exit_crit_edge, %entry.unregister_devices.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_phram() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @phram_paramline, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @phram_setup(ptr noundef nonnull @phram_paramline)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  store i1 true, ptr @phram_init_called, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phram_param_call(ptr nocapture noundef readonly %val, ptr nocapture noundef readnone %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @phram_init_called, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @phram_setup(ptr noundef %val)
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strlen(ptr noundef %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call1)
  %cmp = icmp ugt i32 %call1, 123
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call ptr @strcpy(ptr noundef nonnull @phram_paramline, ptr noundef %val) #14
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end3 ], [ -28, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phram_setup(ptr nocapture noundef readonly %val) unnamed_addr #1 align 64 {
entry:
  %buf = alloca [124 x i8], align 1
  %str = alloca ptr, align 4
  %start = alloca i64, align 8
  %len = alloca i64, align 8
  %erasesize = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #11
  %1 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %str, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #11
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %start, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #11
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %len, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %erasesize) #11
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4096, ptr %erasesize, align 8
  %call = call i32 @strnlen(ptr noundef %val, i32 noundef 124) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %call)
  %cmp = icmp ugt i32 %call, 123
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call ptr @strcpy(ptr noundef nonnull %buf, ptr noundef %val) #14
  %call.i = call ptr @strrchr(ptr noundef nonnull %buf, i32 noundef 10) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.kill_final_newline.exit_crit_edge, label %land.lhs.true.i

if.end.kill_final_newline.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %kill_final_newline.exit

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.kill_final_newline.exit_crit_edge

land.lhs.true.i.kill_final_newline.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kill_final_newline.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call.i, align 1
  br label %kill_final_newline.exit

kill_final_newline.exit:                          ; preds = %if.then.i, %land.lhs.true.i.kill_final_newline.exit_crit_edge, %if.end.kill_final_newline.exit_crit_edge
  %call7 = call ptr @strsep(ptr noundef nonnull %str, ptr noundef nonnull @.str.3) #11
  %call7.1 = call ptr @strsep(ptr noundef nonnull %str, ptr noundef nonnull @.str.3) #11
  %call7.2 = call ptr @strsep(ptr noundef nonnull %str, ptr noundef nonnull @.str.3) #11
  %call7.3 = call ptr @strsep(ptr noundef nonnull %str, ptr noundef nonnull @.str.3) #11
  %8 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %str, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %kill_final_newline.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end17:                                         ; preds = %kill_final_newline.exit
  %tobool19.not = icmp eq ptr %call7.2, null
  br i1 %tobool19.not, label %do.end24, label %if.end29

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  %call.i139 = call i32 @strlen(ptr noundef %call7) #16
  %10 = add i32 %call.i139, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %10)
  %cmp.i = icmp ult i32 %10, -65
  br i1 %cmp.i, label %if.end29.cleanup_crit_edge, label %if.end.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end29
  %call1.i = call noalias ptr @kstrdup(ptr noundef %call7, i32 noundef 3264) #11
  %tobool.not.i140 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i140, label %if.end.i.cleanup_crit_edge, label %if.end34

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end.i
  %call.i141 = call i32 @strlen(ptr noundef %call7.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i141)
  %cmp.i142 = icmp ugt i32 %call.i141, 2
  br i1 %cmp.i142, label %if.then.i144, label %if.end34.parse_num64.exit_crit_edge

if.end34.parse_num64.exit_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_num64.exit

if.then.i144:                                     ; preds = %if.end34
  %sub.i = add i32 %call.i141, -1
  %arrayidx.i143 = getelementptr i8, ptr %call7.1, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %12)
  %cmp1.i = icmp eq i8 %12, 105
  br i1 %cmp1.i, label %if.then3.i, label %if.then.i144.parse_num64.exit_crit_edge

if.then.i144.parse_num64.exit_crit_edge:          ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_num64.exit

if.then3.i:                                       ; preds = %if.then.i144
  %sub4.i = add i32 %call.i141, -2
  %arrayidx5.i = getelementptr i8, ptr %call7.1, i32 %sub4.i
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.then3.i.do.end42_crit_edge [
    i8 71, label %sw.bb.i
    i8 77, label %if.then3.i.sw.bb7.i_crit_edge
    i8 107, label %if.then3.i.sw.bb9.i_crit_edge
  ]

if.then3.i.sw.bb9.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i

if.then3.i.sw.bb7.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

if.then3.i.do.end42_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

sw.bb.i:                                          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %sw.bb.i, %if.then3.i.sw.bb7.i_crit_edge
  %shift.0.i = phi i32 [ 20, %if.then3.i.sw.bb7.i_crit_edge ], [ 30, %sw.bb.i ]
  br label %sw.bb9.i

sw.bb9.i:                                         ; preds = %sw.bb7.i, %if.then3.i.sw.bb9.i_crit_edge
  %shift.1.i = phi i32 [ 10, %if.then3.i.sw.bb9.i_crit_edge ], [ %shift.0.i, %sw.bb7.i ]
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx5.i, align 1
  br label %parse_num64.exit

parse_num64.exit:                                 ; preds = %sw.bb9.i, %if.then.i144.parse_num64.exit_crit_edge, %if.end34.parse_num64.exit_crit_edge
  %shift.2.i = phi i32 [ %shift.1.i, %sw.bb9.i ], [ 0, %if.then.i144.parse_num64.exit_crit_edge ], [ 0, %if.end34.parse_num64.exit_crit_edge ]
  %call.i.i = call i32 @kstrtoull(ptr noundef %call7.1, i32 noundef 0, ptr noundef nonnull %start) #11
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  %sh_prom.i = zext i32 %shift.2.i to i64
  %shl.i = shl i64 %18, %sh_prom.i
  store i64 %shl.i, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool37.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool37.not, label %if.end47, label %parse_num64.exit.do.end42_crit_edge

parse_num64.exit.do.end42_crit_edge:              ; preds = %parse_num64.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end42:                                         ; preds = %parse_num64.exit.do.end42_crit_edge, %if.then3.i.do.end42_crit_edge
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  br label %cleanup

if.end47:                                         ; preds = %parse_num64.exit
  %call.i146 = call i32 @strlen(ptr noundef nonnull %call7.2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i146)
  %cmp.i147 = icmp ugt i32 %call.i146, 2
  br i1 %cmp.i147, label %if.then.i151, label %if.end47.parse_num64.exit166_crit_edge

if.end47.parse_num64.exit166_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_num64.exit166

if.then.i151:                                     ; preds = %if.end47
  %sub.i148 = add i32 %call.i146, -1
  %arrayidx.i149 = getelementptr i8, ptr %call7.2, i32 %sub.i148
  %19 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %20)
  %cmp1.i150 = icmp eq i8 %20, 105
  br i1 %cmp1.i150, label %if.then3.i154, label %if.then.i151.parse_num64.exit166_crit_edge

if.then.i151.parse_num64.exit166_crit_edge:       ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_num64.exit166

if.then3.i154:                                    ; preds = %if.then.i151
  %sub4.i152 = add i32 %call.i146, -2
  %arrayidx5.i153 = getelementptr i8, ptr %call7.2, i32 %sub4.i152
  %21 = ptrtoint ptr %arrayidx5.i153 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx5.i153, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %22, label %if.then3.i154.do.end55_crit_edge [
    i8 71, label %sw.bb.i155
    i8 77, label %if.then3.i154.sw.bb7.i157_crit_edge
    i8 107, label %if.then3.i154.sw.bb9.i159_crit_edge
  ]

if.then3.i154.sw.bb9.i159_crit_edge:              ; preds = %if.then3.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i159

if.then3.i154.sw.bb7.i157_crit_edge:              ; preds = %if.then3.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i157

if.then3.i154.do.end55_crit_edge:                 ; preds = %if.then3.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

sw.bb.i155:                                       ; preds = %if.then3.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i157

sw.bb7.i157:                                      ; preds = %sw.bb.i155, %if.then3.i154.sw.bb7.i157_crit_edge
  %shift.0.i156 = phi i32 [ 20, %if.then3.i154.sw.bb7.i157_crit_edge ], [ 30, %sw.bb.i155 ]
  br label %sw.bb9.i159

sw.bb9.i159:                                      ; preds = %sw.bb7.i157, %if.then3.i154.sw.bb9.i159_crit_edge
  %shift.1.i158 = phi i32 [ 10, %if.then3.i154.sw.bb9.i159_crit_edge ], [ %shift.0.i156, %sw.bb7.i157 ]
  %24 = ptrtoint ptr %arrayidx5.i153 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx5.i153, align 1
  br label %parse_num64.exit166

parse_num64.exit166:                              ; preds = %sw.bb9.i159, %if.then.i151.parse_num64.exit166_crit_edge, %if.end47.parse_num64.exit166_crit_edge
  %shift.2.i160 = phi i32 [ %shift.1.i158, %sw.bb9.i159 ], [ 0, %if.then.i151.parse_num64.exit166_crit_edge ], [ 0, %if.end47.parse_num64.exit166_crit_edge ]
  %call.i.i161 = call i32 @kstrtoull(ptr noundef nonnull %call7.2, i32 noundef 0, ptr noundef nonnull %len) #11
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %len, align 8
  %sh_prom.i162 = zext i32 %shift.2.i160 to i64
  %shl.i163 = shl i64 %26, %sh_prom.i162
  store i64 %shl.i163, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i161)
  %tobool50.not = icmp eq i32 %call.i.i161, 0
  br i1 %tobool50.not, label %if.end60, label %parse_num64.exit166.do.end55_crit_edge

parse_num64.exit166.do.end55_crit_edge:           ; preds = %parse_num64.exit166
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.end55:                                         ; preds = %parse_num64.exit166.do.end55_crit_edge, %if.then3.i154.do.end55_crit_edge
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end60:                                         ; preds = %parse_num64.exit166
  %tobool62.not = icmp eq ptr %call7.3, null
  br i1 %tobool62.not, label %if.end60.if.end77_crit_edge, label %if.then63

if.end60.if.end77_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then63:                                        ; preds = %if.end60
  %call.i167 = call i32 @strlen(ptr noundef nonnull %call7.3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i167)
  %cmp.i168 = icmp ugt i32 %call.i167, 2
  br i1 %cmp.i168, label %if.then.i172, label %if.then63.parse_num64.exit187_crit_edge

if.then63.parse_num64.exit187_crit_edge:          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_num64.exit187

if.then.i172:                                     ; preds = %if.then63
  %sub.i169 = add i32 %call.i167, -1
  %arrayidx.i170 = getelementptr i8, ptr %call7.3, i32 %sub.i169
  %27 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %28)
  %cmp1.i171 = icmp eq i8 %28, 105
  br i1 %cmp1.i171, label %if.then3.i175, label %if.then.i172.parse_num64.exit187_crit_edge

if.then.i172.parse_num64.exit187_crit_edge:       ; preds = %if.then.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_num64.exit187

if.then3.i175:                                    ; preds = %if.then.i172
  %sub4.i173 = add i32 %call.i167, -2
  %arrayidx5.i174 = getelementptr i8, ptr %call7.3, i32 %sub4.i173
  %29 = ptrtoint ptr %arrayidx5.i174 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx5.i174, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %30, label %if.then3.i175.do.end71_crit_edge [
    i8 71, label %sw.bb.i176
    i8 77, label %if.then3.i175.sw.bb7.i178_crit_edge
    i8 107, label %if.then3.i175.sw.bb9.i180_crit_edge
  ]

if.then3.i175.sw.bb9.i180_crit_edge:              ; preds = %if.then3.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i180

if.then3.i175.sw.bb7.i178_crit_edge:              ; preds = %if.then3.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i178

if.then3.i175.do.end71_crit_edge:                 ; preds = %if.then3.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

sw.bb.i176:                                       ; preds = %if.then3.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i178

sw.bb7.i178:                                      ; preds = %sw.bb.i176, %if.then3.i175.sw.bb7.i178_crit_edge
  %shift.0.i177 = phi i32 [ 20, %if.then3.i175.sw.bb7.i178_crit_edge ], [ 30, %sw.bb.i176 ]
  br label %sw.bb9.i180

sw.bb9.i180:                                      ; preds = %sw.bb7.i178, %if.then3.i175.sw.bb9.i180_crit_edge
  %shift.1.i179 = phi i32 [ 10, %if.then3.i175.sw.bb9.i180_crit_edge ], [ %shift.0.i177, %sw.bb7.i178 ]
  %32 = ptrtoint ptr %arrayidx5.i174 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx5.i174, align 1
  br label %parse_num64.exit187

parse_num64.exit187:                              ; preds = %sw.bb9.i180, %if.then.i172.parse_num64.exit187_crit_edge, %if.then63.parse_num64.exit187_crit_edge
  %shift.2.i181 = phi i32 [ %shift.1.i179, %sw.bb9.i180 ], [ 0, %if.then.i172.parse_num64.exit187_crit_edge ], [ 0, %if.then63.parse_num64.exit187_crit_edge ]
  %call.i.i182 = call i32 @kstrtoull(ptr noundef nonnull %call7.3, i32 noundef 0, ptr noundef nonnull %erasesize) #11
  %33 = ptrtoint ptr %erasesize to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %erasesize, align 8
  %sh_prom.i183 = zext i32 %shift.2.i181 to i64
  %shl.i184 = shl i64 %34, %sh_prom.i183
  store i64 %shl.i184, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool66.not = icmp eq i32 %call.i.i182, 0
  br i1 %tobool66.not, label %if.end77thread-pre-split, label %parse_num64.exit187.do.end71_crit_edge

parse_num64.exit187.do.end71_crit_edge:           ; preds = %parse_num64.exit187
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

do.end71:                                         ; preds = %parse_num64.exit187.do.end71_crit_edge, %if.then3.i175.do.end71_crit_edge
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end77thread-pre-split:                         ; preds = %parse_num64.exit187
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %35)
  %.pr = load i64, ptr %len, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.end77thread-pre-split, %if.end60.if.end77_crit_edge
  %36 = phi i64 [ %.pr, %if.end77thread-pre-split ], [ %shl.i163, %if.end60.if.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp78 = icmp eq i64 %36, 0
  br i1 %cmp78, label %if.end77.do.end88_crit_edge, label %lor.lhs.false

if.end77.do.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88

lor.lhs.false:                                    ; preds = %if.end77
  %37 = ptrtoint ptr %erasesize to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp79 = icmp eq i64 %38, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %36)
  %cmp81 = icmp ugt i64 %38, %36
  %or.cond = select i1 %cmp79, i1 true, i1 %cmp81
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %38)
  %cmp83 = icmp ugt i64 %38, 4294967295
  %or.cond138 = or i1 %cmp83, %or.cond
  br i1 %or.cond138, label %lor.lhs.false.do.end88_crit_edge, label %if.end93

lor.lhs.false.do.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88

do.end88:                                         ; preds = %lor.lhs.false.do.end88_crit_edge, %if.end77.do.end88_crit_edge
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  br label %cleanup

if.end93:                                         ; preds = %lor.lhs.false
  %conv = trunc i64 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %36)
  %cmp164.i = icmp ult i64 %36, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !82

if.then168.i:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i = trunc i64 %36 to i32
  %rem170.i = urem i32 %conv169.i, %conv
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %39 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %36) #17, !srcloc !83
  %asmresult.i3.i = extractvalue { i64, i64 } %39, 0
  %shr.i.i = lshr i64 %asmresult.i3.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool95.not = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool95.not, label %if.end105, label %do.end100

do.end100:                                        ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  br label %cleanup

if.end105:                                        ; preds = %div_u64_rem.exit
  %40 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %start, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 1416) #18
  %tobool.not.i193 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i193, label %if.end105.error_crit_edge, label %if.end.i195

if.end105.error_crit_edge:                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i195:                                      ; preds = %if.end105
  %conv107 = trunc i64 %36 to i32
  %conv106 = trunc i64 %41 to i32
  %call1.i194 = call ptr @ioremap(i32 noundef %conv106, i32 noundef %conv107) #11
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 54
  %43 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i194, ptr %priv.i, align 8
  %tobool4.not.i = icmp eq ptr %call1.i194, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %out1.i

if.end7.i:                                        ; preds = %if.end.i195
  %name9.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 13
  %44 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call1.i, ptr %name9.i, align 8
  %conv.i = and i64 %36, 4294967295
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv.i, ptr %size.i, align 8
  %flags.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 7168, ptr %flags.i, align 4
  %_erase.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 21
  %47 = ptrtoint ptr %_erase.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @phram_erase, ptr %_erase.i, align 8
  %_point.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 22
  %48 = ptrtoint ptr %_point.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @phram_point, ptr %_point.i, align 4
  %_unpoint.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 23
  %49 = ptrtoint ptr %_unpoint.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @phram_unpoint, ptr %_unpoint.i, align 8
  %_read.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 24
  %50 = ptrtoint ptr %_read.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @phram_read, ptr %_read.i, align 4
  %_write.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 25
  %51 = ptrtoint ptr %_write.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @phram_write, ptr %_write.i, align 8
  %owner.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 55
  %52 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %owner.i, align 4
  %53 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %call7.i.i.i, align 8
  %erasesize20.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %erasesize20.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv, ptr %erasesize20.i, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %writesize.i, align 4
  %call23.i = call i32 @mtd_device_parse_register(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end31.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #15
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 8
  call void @iounmap(ptr noundef %57) #11
  br label %out1.i

if.end31.i:                                       ; preds = %if.end7.i
  %list.i = getelementptr inbounds %struct.phram_mtd_list, ptr %call7.i.i.i, i32 0, i32 1
  %58 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phram_list, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %58, ptr noundef nonnull @phram_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end31.i.do.end115_crit_edge

if.end31.i.do.end115_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

if.end.i.i.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @phram_list, i32 0, i32 1), align 4
  %59 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @phram_list, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.phram_mtd_list, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list.i, ptr %58, align 4
  br label %do.end115

out1.i:                                           ; preds = %do.end28.i, %do.end.i
  %ret.0.i = phi i32 [ -11, %do.end28.i ], [ -5, %do.end.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %error

do.end115:                                        ; preds = %if.end.i.i.i, %if.end31.i.do.end115_crit_edge
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %len, align 8
  %64 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %start, align 8
  %66 = ptrtoint ptr %erasesize to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %erasesize, align 8
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %call1.i, i64 noundef %63, i64 noundef %65, i64 noundef %67) #15
  br label %cleanup

error:                                            ; preds = %out1.i, %if.end105.error_crit_edge
  %retval.0.i196 = phi i32 [ %ret.0.i, %out1.i ], [ -12, %if.end105.error_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end115, %do.end100, %do.end88, %do.end71, %do.end55, %do.end42, %if.end.i.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end24, %do.end12, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end12 ], [ 1, %do.end42 ], [ 1, %do.end55 ], [ 1, %do.end71 ], [ 1, %do.end88 ], [ 1, %do.end100 ], [ %retval.0.i196, %error ], [ 0, %do.end115 ], [ 1, %do.end24 ], [ -12, %if.end.i.cleanup_crit_edge ], [ -28, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %erasesize) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #11
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phram_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %instr, align 8
  %idx.ext = trunc i64 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %conv = trunc i64 %5 to i32
  %6 = call ptr @memset(ptr %add.ptr, i32 255, i32 %conv)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phram_point(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %virt, ptr nocapture noundef readnone %phys) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %virt, align 4
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phram_unpoint(ptr nocapture noundef readnone %mtd, i64 noundef %from, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phram_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %2 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @phram_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef readonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %idx.ext = trunc i64 %to to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_phram, !1, !"__param_phram", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/phram.c", i32 325, i32 1}
!2 = !{ptr @__UNIQUE_ID_phram185, !3, !"__UNIQUE_ID_phram185", i1 false, i1 false}
!3 = !{!"../drivers/mtd/devices/phram.c", i32 326, i32 1}
!4 = !{ptr @__initcall__kmod_phram__186_347_init_phram6, !5, !"__initcall__kmod_phram__186_347_init_phram6", i1 false, i1 false}
!5 = !{!"../drivers/mtd/devices/phram.c", i32 347, i32 1}
!6 = !{ptr @__exitcall_cleanup_phram, !7, !"__exitcall_cleanup_phram", i1 false, i1 false}
!7 = !{!"../drivers/mtd/devices/phram.c", i32 348, i32 1}
!8 = !{ptr @__UNIQUE_ID_file187, !9, !"__UNIQUE_ID_file187", i1 false, i1 false}
!9 = !{!"../drivers/mtd/devices/phram.c", i32 350, i32 1}
!10 = !{ptr @__UNIQUE_ID_license188, !9, !"__UNIQUE_ID_license188", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author189, !12, !"__UNIQUE_ID_author189", i1 false, i1 false}
!12 = !{!"../drivers/mtd/devices/phram.c", i32 351, i32 1}
!13 = !{ptr @__UNIQUE_ID_description190, !14, !"__UNIQUE_ID_description190", i1 false, i1 false}
!14 = !{!"../drivers/mtd/devices/phram.c", i32 352, i32 1}
!15 = !{ptr @__param_str_phram, !1, !"__param_str_phram", i1 false, i1 false}
!16 = !{ptr @__param_ops_phram, !1, !"__param_ops_phram", i1 false, i1 false}
!17 = distinct !{null, !18, !"phram_init_called", i1 false, i1 false}
!18 = !{!"../drivers/mtd/devices/phram.c", i32 205, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/devices/phram.c", i32 229, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @phram_setup._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @phram_setup._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/devices/phram.c", i32 235, i32 27}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/devices/phram.c", i32 238, i32 3}
!29 = !{ptr @phram_setup._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @phram_setup._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/devices/phram.c", i32 241, i32 3}
!33 = !{ptr @phram_setup._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @phram_setup._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/devices/phram.c", i32 249, i32 3}
!37 = !{ptr @phram_setup._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @phram_setup._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/devices/phram.c", i32 255, i32 3}
!41 = !{ptr @phram_setup._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @phram_setup._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/devices/phram.c", i32 262, i32 4}
!45 = !{ptr @phram_setup._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @phram_setup._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/devices/phram.c", i32 269, i32 3}
!49 = !{ptr @phram_setup._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @phram_setup._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/devices/phram.c", i32 276, i32 3}
!53 = !{ptr @phram_setup._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @phram_setup._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/devices/phram.c", i32 285, i32 2}
!57 = !{ptr @phram_setup._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @phram_setup._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/devices/phram.c", i32 104, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @register_device._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @register_device._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/devices/phram.c", i32 124, i32 3}
!66 = !{ptr @register_device._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @register_device._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @phram_list, !69, !"phram_list", i1 false, i1 false}
!69 = !{!"../drivers/mtd/devices/phram.c", i32 36, i32 8}
!70 = !{ptr @phram_paramline, !71, !"phram_paramline", i1 false, i1 false}
!71 = !{!"../drivers/mtd/devices/phram.c", i32 214, i32 13}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148948490, i64 2148948770, i64 2148949104, i64 2148949438}
