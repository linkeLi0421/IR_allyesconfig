; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/slram.c_pt.bc'
source_filename = "../drivers/mtd/devices/slram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.slram_mtd_list = type { ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
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
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.slram_priv = type { ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }

@__setup_str_mtd_slram_setup = internal constant [7 x i8] c"slram=\00", section ".init.rodata", align 1
@__setup_mtd_slram_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_mtd_slram_setup, ptr @mtd_slram_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_slram__234_339_init_slram6 = internal global ptr @init_slram, section ".initcall6.init", align 4
@__exitcall_cleanup_slram = internal global ptr @cleanup_slram, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [37 x i8] c"slram.file=drivers/mtd/devices/slram\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [18 x i8] c"slram.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [51 x i8] c"slram.author=Jochen Schaeuble <psionic@psionic.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [53 x i8] c"slram.description=MTD driver for uncached system RAM\00", section ".modinfo", align 1
@map = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@slram_mtdlist = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_slram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015slram: not enough parameters.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_slram\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/devices/slram.c\00", [36 x i8] zeroinitializer }, align 32
@init_slram._entry_ptr = internal global ptr @init_slram._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@init_slram._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015slram: No devicename specified.\0A\00", [61 x i8] zeroinitializer }, align 32
@init_slram._entry_ptr.6 = internal global ptr @init_slram._entry.4, section ".printk_index", align 4
@init_slram._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017slram: devname = %s\0A\00", [41 x i8] zeroinitializer }, align 32
@init_slram._entry_ptr.9 = internal global ptr @init_slram._entry.7, section ".printk_index", align 4
@init_slram._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015slram: No devicestart specified.\0A\00", [60 x i8] zeroinitializer }, align 32
@init_slram._entry_ptr.12 = internal global ptr @init_slram._entry.10, section ".printk_index", align 4
@init_slram._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017slram: devstart = %s\0A\00", [40 x i8] zeroinitializer }, align 32
@init_slram._entry_ptr.15 = internal global ptr @init_slram._entry.13, section ".printk_index", align 4
@init_slram._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015slram: No devicelength / -end specified.\0A\00", [52 x i8] zeroinitializer }, align 32
@init_slram._entry_ptr.18 = internal global ptr @init_slram._entry.16, section ".printk_index", align 4
@init_slram._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017slram: devlength = %s\0A\00", [39 x i8] zeroinitializer }, align 32
@init_slram._entry_ptr.21 = internal global ptr @init_slram._entry.19, section ".printk_index", align 4
@parse_cmdline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017slram: devname=%s, devstart=0x%lx, devlength=0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse_cmdline\00", [18 x i8] zeroinitializer }, align 32
@parse_cmdline._entry_ptr = internal global ptr @parse_cmdline._entry, section ".printk_index", align 4
@parse_cmdline._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015slram: Illegal length parameter.\0A\00", [60 x i8] zeroinitializer }, align 32
@parse_cmdline._entry_ptr.26 = internal global ptr @parse_cmdline._entry.24, section ".printk_index", align 4
@register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015slram: Cannot allocate new MTD device.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register_device\00", [16 x i8] zeroinitializer }, align 32
@register_device._entry_ptr = internal global ptr @register_device._entry, section ".printk_index", align 4
@register_device._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.30 = internal global ptr @register_device._entry.29, section ".printk_index", align 4
@register_device._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015slram: memremap failed\0A\00", [38 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.33 = internal global ptr @register_device._entry.31, section ".printk_index", align 4
@register_device._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015slram: Failed to register new device\0A\00", [56 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.36 = internal global ptr @register_device._entry.34, section ".printk_index", align 4
@register_device._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017slram: Registered device %s from %luKiB to %luKiB\0A\00", [43 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.39 = internal global ptr @register_device._entry.37, section ".printk_index", align 4
@register_device._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.28, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017slram: Mapped from 0x%p to 0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.42 = internal global ptr @register_device._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 75, i64 77, i64 107, i64 109]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 8, i64 75, i64 77, i64 107, i64 109]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 8, i64 75, i64 77, i64 107, i64 109]
@___asan_gen_.45 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 71, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"slram_mtdlist\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 74, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 286, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 292, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 293, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 296, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 298, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 300, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 302, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 304, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 249, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 261, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 140, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 157, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 164, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 185, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 191, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [31 x i8] c"../drivers/mtd/devices/slram.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 193, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_cleanup_slram, ptr @__initcall__kmod_slram__234_339_init_slram6, ptr @__setup_mtd_slram_setup, ptr @cleanup_slram, ptr @init_slram._entry, ptr @init_slram._entry.10, ptr @init_slram._entry.13, ptr @init_slram._entry.16, ptr @init_slram._entry.19, ptr @init_slram._entry.4, ptr @init_slram._entry.7, ptr @init_slram._entry_ptr, ptr @init_slram._entry_ptr.12, ptr @init_slram._entry_ptr.15, ptr @init_slram._entry_ptr.18, ptr @init_slram._entry_ptr.21, ptr @init_slram._entry_ptr.6, ptr @init_slram._entry_ptr.9, ptr @parse_cmdline._entry, ptr @parse_cmdline._entry.24, ptr @parse_cmdline._entry_ptr, ptr @parse_cmdline._entry_ptr.26, ptr @register_device._entry, ptr @register_device._entry.29, ptr @register_device._entry.31, ptr @register_device._entry.34, ptr @register_device._entry.37, ptr @register_device._entry.40, ptr @register_device._entry_ptr, ptr @register_device._entry_ptr.30, ptr @register_device._entry_ptr.33, ptr @register_device._entry_ptr.36, ptr @register_device._entry_ptr.39, ptr @register_device._entry_ptr.42, ptr @map, ptr @slram_mtdlist, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slram_mtdlist to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slram._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slram._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slram._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slram._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slram._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slram._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_cmdline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_cmdline._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mtd_slram_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr @map, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_slram() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @unregister_devices()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unregister_devices() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.pr = load ptr, ptr @slram_mtdlist, align 4
  %tobool.not5 = icmp eq ptr %.pr, null
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %0 = phi ptr [ %2, %while.body.while.body_crit_edge ], [ %.pr, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.slram_mtd_list, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %next, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %call = tail call i32 @mtd_device_unregister(ptr noundef %4) #10
  %5 = load ptr, ptr @slram_mtdlist, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @memunmap(ptr noundef %11) #10
  %12 = load ptr, ptr @slram_mtdlist, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %priv3 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 54
  %15 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv3, align 8
  tail call void @kfree(ptr noundef %16) #10
  %17 = load ptr, ptr @slram_mtdlist, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = load ptr, ptr @slram_mtdlist, align 4
  tail call void @kfree(ptr noundef %20) #10
  store ptr %2, ptr @slram_mtdlist, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_slram() #1 section ".init.text" align 64 {
entry:
  %buffer.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @map, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

while.condthread-pre-split:                       ; preds = %if.end38.i.i
  %div128.i.i = lshr i32 %retval.0.i.i, 10
  %add.i.i = add i32 %devlength.0.i, %retval.0.i.i
  %div77129.i.i = lshr i32 %add.i.i, 10
  %call78.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %call2, i32 noundef %div128.i.i, i32 noundef %div77129.i.i) #13
  %1 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %curmtd.0.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %priv84.i.i = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 54
  %5 = ptrtoint ptr %priv84.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv84.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %end88.i.i = getelementptr inbounds %struct.slram_priv, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %end88.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end88.i.i, align 4
  %call89.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %8, ptr noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #10
  %.pr = load ptr, ptr @map, align 4
  %tobool1.not = icmp eq ptr %.pr, null
  br i1 %tobool1.not, label %while.condthread-pre-split.cleanup_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.condthread-pre-split.cleanup_crit_edge:     ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %entry.while.body_crit_edge
  %call2 = call ptr @strsep(ptr noundef nonnull @map, ptr noundef nonnull @.str.3) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %do.end13

do.end7:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %cleanup

do.end13:                                         ; preds = %while.body
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %call2) #13
  %11 = load ptr, ptr @map, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %do.end13.do.end22_crit_edge, label %lor.lhs.false

do.end13.do.end22_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

lor.lhs.false:                                    ; preds = %do.end13
  %call17 = call ptr @strsep(ptr noundef nonnull @map, ptr noundef nonnull @.str.3) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %lor.lhs.false.do.end22_crit_edge, label %lor.lhs.false.do.end28_crit_edge

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false.do.end22_crit_edge, %do.end13.do.end22_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %do.end28

do.end28:                                         ; preds = %do.end22, %lor.lhs.false.do.end28_crit_edge
  %devstart.1 = phi ptr [ %call17, %lor.lhs.false.do.end28_crit_edge ], [ null, %do.end22 ]
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %devstart.1) #13
  %12 = load ptr, ptr @map, align 4
  %tobool31.not = icmp eq ptr %12, null
  br i1 %tobool31.not, label %do.end28.do.end38_crit_edge, label %lor.lhs.false32

do.end28.do.end38_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

lor.lhs.false32:                                  ; preds = %do.end28
  %call33 = call ptr @strsep(ptr noundef nonnull @map, ptr noundef nonnull @.str.3) #10
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %lor.lhs.false32.do.end38_crit_edge, label %lor.lhs.false32.do.end44_crit_edge

lor.lhs.false32.do.end44_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

lor.lhs.false32.do.end38_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end38:                                         ; preds = %lor.lhs.false32.do.end38_crit_edge, %do.end28.do.end38_crit_edge
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %do.end44

do.end44:                                         ; preds = %do.end38, %lor.lhs.false32.do.end44_crit_edge
  %devlength.1 = phi ptr [ %call33, %lor.lhs.false32.do.end44_crit_edge ], [ null, %do.end38 ]
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %devlength.1) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #10
  %13 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %buffer.i, align 4, !annotation !92
  %tobool1.not.i = icmp eq ptr %devstart.1, null
  %tobool3.not.i = icmp eq ptr %devlength.1, null
  %or.cond49.i = or i1 %tobool1.not.i, %tobool3.not.i
  br i1 %or.cond49.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @unregister_devices() #10
  br label %parse_cmdline.exit.thread

if.end.i:                                         ; preds = %do.end44
  %call.i = call i32 @simple_strtoul(ptr noundef nonnull %devstart.1, ptr noundef nonnull %buffer.i, i32 noundef 0) #10
  %14 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end.i.handle_unit.exit.i_crit_edge [
    i8 77, label %if.end.i.if.then.i.i_crit_edge
    i8 109, label %if.end.i.if.then.i.i_crit_edge81
    i8 75, label %if.end.i.if.then13.i.i_crit_edge
    i8 107, label %if.end.i.if.then13.i.i_crit_edge82
  ]

if.end.i.if.then13.i.i_crit_edge82:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i.i

if.end.i.if.then13.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i.i

if.end.i.if.then.i.i_crit_edge81:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end.i.handle_unit.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_unit.exit.i

if.then.i.i:                                      ; preds = %if.end.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge81
  %mul5.i.i = shl i32 %call.i, 20
  br label %handle_unit.exit.i

if.then13.i.i:                                    ; preds = %if.end.i.if.then13.i.i_crit_edge, %if.end.i.if.then13.i.i_crit_edge82
  %mul14.i.i = shl i32 %call.i, 10
  br label %handle_unit.exit.i

handle_unit.exit.i:                               ; preds = %if.then13.i.i, %if.then.i.i, %if.end.i.handle_unit.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul5.i.i, %if.then.i.i ], [ %mul14.i.i, %if.then13.i.i ], [ %call.i, %if.end.i.handle_unit.exit.i_crit_edge ]
  %19 = ptrtoint ptr %devlength.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %devlength.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %20)
  %cmp.not.i = icmp eq i8 %20, 43
  br i1 %cmp.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %handle_unit.exit.i
  %call7.i = call i32 @simple_strtoul(ptr noundef nonnull %devlength.1, ptr noundef nonnull %buffer.i, i32 noundef 0) #10
  %21 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %24, label %if.then6.i.handle_unit.exit55.i_crit_edge [
    i8 77, label %if.then6.i.if.then.i51.i_crit_edge
    i8 109, label %if.then6.i.if.then.i51.i_crit_edge83
    i8 75, label %if.then6.i.if.then13.i53.i_crit_edge
    i8 107, label %if.then6.i.if.then13.i53.i_crit_edge84
  ]

if.then6.i.if.then13.i53.i_crit_edge84:           ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i53.i

if.then6.i.if.then13.i53.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i53.i

if.then6.i.if.then.i51.i_crit_edge83:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i51.i

if.then6.i.if.then.i51.i_crit_edge:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i51.i

if.then6.i.handle_unit.exit55.i_crit_edge:        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_unit.exit55.i

if.then.i51.i:                                    ; preds = %if.then6.i.if.then.i51.i_crit_edge, %if.then6.i.if.then.i51.i_crit_edge83
  %mul5.i50.i = shl i32 %call7.i, 20
  br label %handle_unit.exit55.i

if.then13.i53.i:                                  ; preds = %if.then6.i.if.then13.i53.i_crit_edge, %if.then6.i.if.then13.i53.i_crit_edge84
  %mul14.i52.i = shl i32 %call7.i, 10
  br label %handle_unit.exit55.i

handle_unit.exit55.i:                             ; preds = %if.then13.i53.i, %if.then.i51.i, %if.then6.i.handle_unit.exit55.i_crit_edge
  %retval.0.i54.i = phi i32 [ %mul5.i50.i, %if.then.i51.i ], [ %mul14.i52.i, %if.then13.i53.i ], [ %call7.i, %if.then6.i.handle_unit.exit55.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i54.i, i32 %retval.0.i.i)
  %cmp9.i = icmp ult i32 %retval.0.i54.i, %retval.0.i.i
  br i1 %cmp9.i, label %handle_unit.exit55.i.do.end27.i_crit_edge, label %if.end12.i

handle_unit.exit55.i.do.end27.i_crit_edge:        ; preds = %handle_unit.exit55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i

if.end12.i:                                       ; preds = %handle_unit.exit55.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %retval.0.i54.i, %retval.0.i.i
  br label %do.end.i

if.else.i:                                        ; preds = %handle_unit.exit.i
  %add.ptr.i = getelementptr i8, ptr %devlength.1, i32 1
  %call13.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef nonnull %buffer.i, i32 noundef 0) #10
  %26 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %29, label %if.else.i.do.end.i_crit_edge [
    i8 77, label %if.else.i.if.then.i57.i_crit_edge
    i8 109, label %if.else.i.if.then.i57.i_crit_edge85
    i8 75, label %if.else.i.if.then13.i59.i_crit_edge
    i8 107, label %if.else.i.if.then13.i59.i_crit_edge86
  ]

if.else.i.if.then13.i59.i_crit_edge86:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i59.i

if.else.i.if.then13.i59.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i59.i

if.else.i.if.then.i57.i_crit_edge85:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i57.i

if.else.i.if.then.i57.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i57.i

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i57.i:                                    ; preds = %if.else.i.if.then.i57.i_crit_edge, %if.else.i.if.then.i57.i_crit_edge85
  %mul5.i56.i = shl i32 %call13.i, 20
  br label %do.end.i

if.then13.i59.i:                                  ; preds = %if.else.i.if.then13.i59.i_crit_edge, %if.else.i.if.then13.i59.i_crit_edge86
  %mul14.i58.i = shl i32 %call13.i, 10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i59.i, %if.then.i57.i, %if.else.i.do.end.i_crit_edge, %if.end12.i
  %devlength.0.i = phi i32 [ %sub.i, %if.end12.i ], [ %mul5.i56.i, %if.then.i57.i ], [ %mul14.i58.i, %if.then13.i59.i ], [ %call13.i, %if.else.i.do.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %call2, i32 noundef %retval.0.i.i, i32 noundef %devlength.0.i) #13
  %rem.i = and i32 %devlength.0.i, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp17.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp17.not.i, label %do.end.i.while.cond.i.i_crit_edge, label %do.end.i.do.end27.i_crit_edge

do.end.i.do.end27.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i

do.end.i.while.cond.i.i_crit_edge:                ; preds = %do.end.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.end.i.while.cond.i.i_crit_edge
  %curmtd.0.i.i = phi ptr [ %next.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ @slram_mtdlist, %do.end.i.while.cond.i.i_crit_edge ]
  %31 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %curmtd.0.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  %next.i.i = getelementptr inbounds %struct.slram_mtd_list, ptr %32, i32 0, i32 1
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 8) #14
  %34 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i, ptr %curmtd.0.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %if.then23.i

if.end.i.i:                                       ; preds = %while.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 1408) #14
  %36 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %curmtd.0.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i.i, ptr %37, align 4
  %39 = load ptr, ptr %curmtd.0.i.i, align 4
  %next4.i.i = getelementptr inbounds %struct.slram_mtd_list, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %next4.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %next4.i.i, align 4
  %41 = load ptr, ptr %curmtd.0.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool6.not.i.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end17.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i130.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 8) #14
  %45 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %curmtd.0.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %priv.i.i = getelementptr inbounds %struct.mtd_info, ptr %48, i32 0, i32 54
  %49 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i130.i.i, ptr %priv.i.i, align 8
  %50 = load ptr, ptr %curmtd.0.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %priv11.i.i = getelementptr inbounds %struct.mtd_info, ptr %52, i32 0, i32 54
  %53 = ptrtoint ptr %priv11.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv11.i.i, align 8
  %tobool12.not.i.i = icmp eq ptr %54, null
  br i1 %tobool12.not.i.i, label %if.then13.i62.i, label %if.then7.i.i.if.end17.i.i_crit_edge

if.then7.i.i.if.end17.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then13.i62.i:                                  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %52) #10
  %55 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %curmtd.0.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %56, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i62.i, %if.then7.i.i.if.end17.i.i_crit_edge, %if.end.i.i.if.end17.i.i_crit_edge
  %58 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curmtd.0.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool19.not.i.i = icmp eq ptr %61, null
  br i1 %tobool19.not.i.i, label %do.end23.i.i, label %if.end26.i.i

do.end23.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %if.then23.i

if.end26.i.i:                                     ; preds = %if.end17.i.i
  %call27.i.i = call ptr @memremap(i32 noundef %retval.0.i.i, i32 noundef %devlength.0.i, i32 noundef 7) #10
  %62 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %curmtd.0.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %priv29.i.i = getelementptr inbounds %struct.mtd_info, ptr %65, i32 0, i32 54
  %66 = ptrtoint ptr %priv29.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv29.i.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call27.i.i, ptr %67, align 4
  %tobool31.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool31.not.i.i, label %do.end35.i.i, label %if.end38.i.i

do.end35.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call37.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %if.then23.i

if.end38.i.i:                                     ; preds = %if.end26.i.i
  %69 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %curmtd.0.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %priv40.i.i = getelementptr inbounds %struct.mtd_info, ptr %72, i32 0, i32 54
  %73 = ptrtoint ptr %priv40.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv40.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %devlength.0.i
  %end.i.i = getelementptr inbounds %struct.slram_priv, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i, ptr %end.i.i, align 4
  %78 = load ptr, ptr %curmtd.0.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %name45.i.i = getelementptr inbounds %struct.mtd_info, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %name45.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call2, ptr %name45.i.i, align 8
  %conv.i.i = zext i32 %devlength.0.i to i64
  %82 = load ptr, ptr %curmtd.0.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %size.i.i = getelementptr inbounds %struct.mtd_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv.i.i, ptr %size.i.i, align 8
  %86 = load ptr, ptr %curmtd.0.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %flags.i.i = getelementptr inbounds %struct.mtd_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 7168, ptr %flags.i.i, align 4
  %90 = load ptr, ptr %curmtd.0.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %_erase.i.i = getelementptr inbounds %struct.mtd_info, ptr %92, i32 0, i32 21
  %93 = ptrtoint ptr %_erase.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @slram_erase, ptr %_erase.i.i, align 8
  %94 = load ptr, ptr %curmtd.0.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %_point.i.i = getelementptr inbounds %struct.mtd_info, ptr %96, i32 0, i32 22
  %97 = ptrtoint ptr %_point.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @slram_point, ptr %_point.i.i, align 4
  %98 = load ptr, ptr %curmtd.0.i.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %_unpoint.i.i = getelementptr inbounds %struct.mtd_info, ptr %100, i32 0, i32 23
  %101 = ptrtoint ptr %_unpoint.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @slram_unpoint, ptr %_unpoint.i.i, align 8
  %102 = load ptr, ptr %curmtd.0.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %_read.i.i = getelementptr inbounds %struct.mtd_info, ptr %104, i32 0, i32 24
  %105 = ptrtoint ptr %_read.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @slram_read, ptr %_read.i.i, align 4
  %106 = load ptr, ptr %curmtd.0.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %_write.i.i = getelementptr inbounds %struct.mtd_info, ptr %108, i32 0, i32 25
  %109 = ptrtoint ptr %_write.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @slram_write, ptr %_write.i.i, align 8
  %110 = load ptr, ptr %curmtd.0.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %owner.i.i = getelementptr inbounds %struct.mtd_info, ptr %112, i32 0, i32 55
  %113 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %owner.i.i, align 4
  %114 = load ptr, ptr %curmtd.0.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %116, align 8
  %118 = load ptr, ptr %curmtd.0.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 16384, ptr %erasesize.i.i, align 8
  %122 = load ptr, ptr %curmtd.0.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %writesize.i.i, align 4
  %126 = load ptr, ptr %curmtd.0.i.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %call58.i.i = call i32 @mtd_device_parse_register(ptr noundef %128, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %while.condthread-pre-split, label %do.end63.i.i

do.end63.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call65.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  %129 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %curmtd.0.i.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %priv67.i.i = getelementptr inbounds %struct.mtd_info, ptr %132, i32 0, i32 54
  %133 = ptrtoint ptr %priv67.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv67.i.i, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  call void @memunmap(ptr noundef %136) #10
  %137 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %curmtd.0.i.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %priv70.i.i = getelementptr inbounds %struct.mtd_info, ptr %140, i32 0, i32 54
  %141 = ptrtoint ptr %priv70.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv70.i.i, align 8
  call void @kfree(ptr noundef %142) #10
  %143 = ptrtoint ptr %curmtd.0.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %curmtd.0.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  call void @kfree(ptr noundef %146) #10
  br label %if.then23.i

if.then23.i:                                      ; preds = %do.end63.i.i, %do.end35.i.i, %do.end23.i.i, %do.end.i.i
  call fastcc void @unregister_devices() #10
  br label %parse_cmdline.exit.thread

do.end27.i:                                       ; preds = %do.end.i.do.end27.i_crit_edge, %handle_unit.exit55.i.do.end27.i_crit_edge
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %parse_cmdline.exit.thread

parse_cmdline.exit.thread:                        ; preds = %do.end27.i, %if.then23.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #10
  br label %cleanup

cleanup:                                          ; preds = %parse_cmdline.exit.thread, %do.end7, %while.condthread-pre-split.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end7 ], [ -22, %parse_cmdline.exit.thread ], [ 0, %while.condthread-pre-split.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slram_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %instr, align 8
  %idx.ext = trunc i64 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %conv = trunc i64 %7 to i32
  %8 = call ptr @memset(ptr %add.ptr, i32 255, i32 %conv)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slram_point(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %virt, ptr nocapture noundef readnone %phys) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %virt, align 4
  %5 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slram_unpoint(ptr nocapture noundef readnone %mtd, i64 noundef %from, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slram_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  %5 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slram_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef readonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %idx.ext = trunc i64 %to to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  %5 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %retlen, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__setup_mtd_slram_setup, !1, !"__setup_mtd_slram_setup", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/slram.c", i32 273, i32 1}
!2 = !{ptr @__initcall__kmod_slram__234_339_init_slram6, !3, !"__initcall__kmod_slram__234_339_init_slram6", i1 false, i1 false}
!3 = !{!"../drivers/mtd/devices/slram.c", i32 339, i32 1}
!4 = !{ptr @__exitcall_cleanup_slram, !5, !"__exitcall_cleanup_slram", i1 false, i1 false}
!5 = !{!"../drivers/mtd/devices/slram.c", i32 340, i32 1}
!6 = !{ptr @__UNIQUE_ID_file235, !7, !"__UNIQUE_ID_file235", i1 false, i1 false}
!7 = !{!"../drivers/mtd/devices/slram.c", i32 342, i32 1}
!8 = !{ptr @__UNIQUE_ID_license236, !7, !"__UNIQUE_ID_license236", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author237, !10, !"__UNIQUE_ID_author237", i1 false, i1 false}
!10 = !{!"../drivers/mtd/devices/slram.c", i32 343, i32 1}
!11 = !{ptr @__UNIQUE_ID_description238, !12, !"__UNIQUE_ID_description238", i1 false, i1 false}
!12 = !{!"../drivers/mtd/devices/slram.c", i32 344, i32 1}
!13 = !{ptr @__setup_str_mtd_slram_setup, !1, !"__setup_str_mtd_slram_setup", i1 false, i1 false}
!14 = !{ptr @map, !15, !"map", i1 false, i1 false}
!15 = !{!"../drivers/mtd/devices/slram.c", i32 71, i32 14}
!16 = !{ptr @slram_mtdlist, !17, !"slram_mtdlist", i1 false, i1 false}
!17 = !{!"../drivers/mtd/devices/slram.c", i32 74, i32 26}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/devices/slram.c", i32 286, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @init_slram._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @init_slram._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/devices/slram.c", i32 292, i32 32}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/devices/slram.c", i32 293, i32 4}
!28 = !{ptr @init_slram._entry.4, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @init_slram._entry_ptr.6, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/devices/slram.c", i32 296, i32 3}
!32 = !{ptr @init_slram._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @init_slram._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/devices/slram.c", i32 298, i32 4}
!36 = !{ptr @init_slram._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @init_slram._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/devices/slram.c", i32 300, i32 3}
!40 = !{ptr @init_slram._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @init_slram._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/devices/slram.c", i32 302, i32 4}
!44 = !{ptr @init_slram._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @init_slram._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/devices/slram.c", i32 304, i32 3}
!48 = !{ptr @init_slram._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @init_slram._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/devices/slram.c", i32 249, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @parse_cmdline._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @parse_cmdline._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/devices/slram.c", i32 261, i32 2}
!57 = !{ptr @parse_cmdline._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @parse_cmdline._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/devices/slram.c", i32 140, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @register_device._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @register_device._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @register_device._entry.29, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/mtd/devices/slram.c", i32 157, i32 3}
!66 = !{ptr @register_device._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/devices/slram.c", i32 164, i32 3}
!69 = !{ptr @register_device._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @register_device._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/devices/slram.c", i32 185, i32 3}
!73 = !{ptr @register_device._entry.34, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @register_device._entry_ptr.36, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/devices/slram.c", i32 191, i32 2}
!77 = !{ptr @register_device._entry.37, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @register_device._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/devices/slram.c", i32 193, i32 2}
!81 = !{ptr @register_device._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @register_device._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
