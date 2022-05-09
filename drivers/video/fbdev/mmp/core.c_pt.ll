; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/mmp/core.c_pt.bc'
source_filename = "../drivers/video/fbdev/mmp/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mmp_register_panel\22, \22a\22\09"
module asm "\09.weak\09__crc_mmp_register_panel\09\09\09\09"
module asm "\09.long\09__crc_mmp_register_panel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmp_register_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22mmp_register_panel\22\09\09\09\09\09"
module asm "__kstrtabns_mmp_register_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmp_unregister_panel\22, \22a\22\09"
module asm "\09.weak\09__crc_mmp_unregister_panel\09\09\09\09"
module asm "\09.long\09__crc_mmp_unregister_panel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmp_unregister_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22mmp_unregister_panel\22\09\09\09\09\09"
module asm "__kstrtabns_mmp_unregister_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmp_get_path\22, \22a\22\09"
module asm "\09.weak\09__crc_mmp_get_path\09\09\09\09"
module asm "\09.long\09__crc_mmp_get_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmp_get_path:\09\09\09\09\09"
module asm "\09.asciz \09\22mmp_get_path\22\09\09\09\09\09"
module asm "__kstrtabns_mmp_get_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmp_register_path\22, \22a\22\09"
module asm "\09.weak\09__crc_mmp_register_path\09\09\09\09"
module asm "\09.long\09__crc_mmp_register_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmp_register_path:\09\09\09\09\09"
module asm "\09.asciz \09\22mmp_register_path\22\09\09\09\09\09"
module asm "__kstrtabns_mmp_register_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmp_unregister_path\22, \22a\22\09"
module asm "\09.weak\09__crc_mmp_unregister_path\09\09\09\09"
module asm "\09.long\09__crc_mmp_unregister_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmp_unregister_path:\09\09\09\09\09"
module asm "\09.asciz \09\22mmp_unregister_path\22\09\09\09\09\09"
module asm "__kstrtabns_mmp_unregister_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmp_panel = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.mmp_path = type { %struct.list_head, ptr, i32, ptr, i32, ptr, ptr, %struct.mmp_mode, i32, i32, %struct.mutex, %struct.mmp_path_ops, i32, [0 x %struct.mmp_overlay] }
%struct.mmp_mode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmp_path_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mmp_overlay = type { i32, ptr, ptr, i32, %struct.mmp_addr, %struct.mmp_win, i32, i32, %struct.mutex, ptr }
%struct.mmp_addr = type { [6 x i32] }
%struct.mmp_win = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, [3 x i32] }
%struct.mmp_path_info = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@disp_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @disp_lock, i64 52), ptr getelementptr (i8, ptr @disp_lock, i64 52) }, ptr @disp_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@panel_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @panel_list, ptr @panel_list }, [24 x i8] zeroinitializer }, align 32
@path_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @path_list, ptr @path_list }, [24 x i8] zeroinitializer }, align 32
@mmp_register_panel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"connect to path %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmp_register_panel\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/fbdev/mmp/core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmp_register_panel._entry_ptr = internal global ptr @mmp_register_panel._entry, section ".printk_index", align 4
@__kstrtab_mmp_register_panel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmp_register_panel = external dso_local constant [0 x i8], align 1
@__ksymtab_mmp_register_panel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmp_register_panel to i32), ptr @__kstrtab_mmp_register_panel, ptr @__kstrtabns_mmp_register_panel }, section "___ksymtab_gpl+mmp_register_panel", align 4
@mmp_unregister_panel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disconnect from path %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmp_unregister_panel\00", [43 x i8] zeroinitializer }, align 32
@mmp_unregister_panel._entry_ptr = internal global ptr @mmp_unregister_panel._entry, section ".printk_index", align 4
@__kstrtab_mmp_unregister_panel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmp_unregister_panel = external dso_local constant [0 x i8], align 1
@__ksymtab_mmp_unregister_panel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmp_unregister_panel to i32), ptr @__kstrtab_mmp_unregister_panel, ptr @__kstrtabns_mmp_unregister_panel }, section "___ksymtab_gpl+mmp_unregister_panel", align 4
@__kstrtab_mmp_get_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmp_get_path = external dso_local constant [0 x i8], align 1
@__ksymtab_mmp_get_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmp_get_path to i32), ptr @__kstrtab_mmp_get_path, ptr @__kstrtabns_mmp_get_path }, section "___ksymtab_gpl+mmp_get_path", align 4
@mmp_register_path.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&path->access_ok\00", [47 x i8] zeroinitializer }, align 32
@mmp_register_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get panel %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmp_register_path\00", [46 x i8] zeroinitializer }, align 32
@mmp_register_path._entry_ptr = internal global ptr @mmp_register_path._entry, section ".printk_index", align 4
@mmp_register_path._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"register %s, overlay_num %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mmp_register_path._entry_ptr.12 = internal global ptr @mmp_register_path._entry.10, section ".printk_index", align 4
@mmp_register_path.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&path->overlays[i].access_ok\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_mmp_register_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmp_register_path = external dso_local constant [0 x i8], align 1
@__ksymtab_mmp_register_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmp_register_path to i32), ptr @__kstrtab_mmp_register_path, ptr @__kstrtabns_mmp_register_path }, section "___ksymtab_gpl+mmp_register_path", align 4
@__kstrtab_mmp_unregister_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmp_unregister_path = external dso_local constant [0 x i8], align 1
@__ksymtab_mmp_unregister_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmp_unregister_path to i32), ptr @__kstrtab_mmp_unregister_path, ptr @__kstrtabns_mmp_unregister_path }, section "___ksymtab_gpl+mmp_unregister_path", align 4
@__UNIQUE_ID_author230 = internal constant [45 x i8] c"mmp_disp.author=Zhou Zhu <zzhu3@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [51 x i8] c"mmp_disp.description=Marvell MMP display framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [47 x i8] c"mmp_disp.file=drivers/video/fbdev/mmp/mmp_disp\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [21 x i8] c"mmp_disp.license=GPL\00", section ".modinfo", align 1
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disp_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp_lock\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"disp_lock\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"panel_list\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 59, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"path_list\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 60, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 84, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 111, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 165, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 178, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 184, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 199, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [34 x i8] c"../drivers/video/fbdev/mmp/core.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 61, i32 8 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__ksymtab_mmp_get_path, ptr @__ksymtab_mmp_register_panel, ptr @__ksymtab_mmp_register_path, ptr @__ksymtab_mmp_unregister_panel, ptr @__ksymtab_mmp_unregister_path, ptr @mmp_register_panel._entry, ptr @mmp_register_panel._entry_ptr, ptr @mmp_register_path._entry, ptr @mmp_register_path._entry.10, ptr @mmp_register_path._entry_ptr, ptr @mmp_register_path._entry_ptr.12, ptr @mmp_unregister_panel._entry, ptr @mmp_unregister_panel._entry_ptr, ptr @disp_lock, ptr @panel_list, ptr @path_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mmp_register_path.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @mmp_register_path.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_panel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_unregister_panel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_path.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_path._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_path.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_panel(ptr noundef %panel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @disp_lock, i32 noundef 0) #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @panel_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %panel, ptr noundef %0, ptr noundef nonnull @panel_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %panel, ptr getelementptr inbounds (%struct.list_head, ptr @panel_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @panel_list, ptr %panel, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %panel, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %plat_path_name = getelementptr inbounds %struct.mmp_panel, ptr %panel, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %list_add_tail.exit
  %path.0.in = phi ptr [ @path_list, %list_add_tail.exit ], [ %path.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %path.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %path.0 = load ptr, ptr %path.0.in, align 4
  %cmp.not = icmp eq ptr %path.0, @path_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = ptrtoint ptr %plat_path_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plat_path_name, align 4
  %name = getelementptr inbounds %struct.mmp_path, ptr %path.0, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef %6, ptr noundef %8) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mmp_panel, ptr %panel, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %8) #12
  %panel3 = getelementptr inbounds %struct.mmp_path, ptr %path.0, i32 0, i32 5
  %11 = ptrtoint ptr %panel3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %panel, ptr %panel3, align 4
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @disp_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_unregister_panel(ptr noundef %panel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @disp_lock, i32 noundef 0) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %panel) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %panel, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %panel, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %list_del.exit
  %path.0.in = phi ptr [ @path_list, %list_del.exit ], [ %path.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %path.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %path.0 = load ptr, ptr %path.0.in, align 4
  %cmp.not = icmp eq ptr %path.0, @path_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %panel2 = getelementptr inbounds %struct.mmp_path, ptr %path.0, i32 0, i32 5
  %9 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel2, align 4
  %tobool.not = icmp ne ptr %10, null
  %cmp4 = icmp eq ptr %10, %panel
  %or.cond = and i1 %tobool.not, %cmp4
  br i1 %or.cond, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %panel2.le = getelementptr inbounds %struct.mmp_path, ptr %path.0, i32 0, i32 5
  %dev = getelementptr inbounds %struct.mmp_panel, ptr %panel, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.mmp_path, ptr %path.0, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %14) #12
  %15 = ptrtoint ptr %panel2.le to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %panel2.le, align 4
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @disp_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmp_get_path(ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @disp_lock, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %path.0.in = phi ptr [ @path_list, %entry ], [ %path.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %path.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %path.0 = load ptr, ptr %path.0.in, align 4
  %cmp.not = icmp eq ptr %path.0, @path_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %name1 = getelementptr inbounds %struct.mmp_path, ptr %path.0, i32 0, i32 3
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1, align 4
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %2) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %spec.select = phi ptr [ %path.0, %for.body.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @disp_lock) #8
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmp_register_path(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %overlay_num = getelementptr inbounds %struct.mmp_path_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %overlay_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overlay_num, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 180) #8
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 216) #8
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %access_ok = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %access_ok, ptr noundef nonnull @.str.7, ptr noundef nonnull @mmp_register_path.__key) #8
  %dev = getelementptr inbounds %struct.mmp_path_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dev2, align 8
  %id = getelementptr inbounds %struct.mmp_path_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %id3 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id3, align 4
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %name4 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name4, align 16
  %output_type = getelementptr inbounds %struct.mmp_path_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %output_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output_type, align 4
  %output_type5 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %output_type5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %output_type5, align 4
  %17 = ptrtoint ptr %overlay_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %overlay_num, align 4
  %overlay_num7 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %overlay_num7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %overlay_num7, align 4
  %plat_data = getelementptr inbounds %struct.mmp_path_info, ptr %info, i32 0, i32 8
  %20 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %plat_data, align 4
  %plat_data8 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %plat_data8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %plat_data8, align 4
  %set_mode = getelementptr inbounds %struct.mmp_path_info, ptr %info, i32 0, i32 5
  %23 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_mode, align 4
  %ops = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 11
  %set_mode9 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 11, i32 3
  %25 = ptrtoint ptr %set_mode9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %set_mode9, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @disp_lock, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body
  %panel.0.in = phi ptr [ @panel_list, %do.body ], [ %panel.0, %for.body.for.cond_crit_edge ]
  %26 = ptrtoint ptr %panel.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %panel.0 = load ptr, ptr %panel.0.in, align 4
  %cmp.not = icmp eq ptr %panel.0, @panel_list
  br i1 %cmp.not, label %for.cond.do.end27_crit_edge, label %for.body

for.cond.do.end27_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

for.body:                                         ; preds = %for.cond
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %plat_path_name = getelementptr inbounds %struct.mmp_panel, ptr %panel.0, i32 0, i32 2
  %29 = ptrtoint ptr %plat_path_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %plat_path_name, align 4
  %call11 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %30) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2, align 8
  %name18 = getelementptr inbounds %struct.mmp_panel, ptr %panel.0, i32 0, i32 1
  %33 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name18, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.8, ptr noundef %34) #12
  %panel19 = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %panel19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %panel.0, ptr %panel19, align 8
  br label %do.end27

do.end27:                                         ; preds = %do.end16, %for.cond.do.end27_crit_edge
  %36 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2, align 8
  %38 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name4, align 16
  %40 = ptrtoint ptr %overlay_num7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %overlay_num7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef %39, i32 noundef %41) #12
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 64
  %tobool32.not = icmp eq ptr %43, null
  br i1 %tobool32.not, label %if.then33, label %do.end27.if.end36_crit_edge

do.end27.if.end36_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @path_check_status, ptr %ops, align 64
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %do.end27.if.end36_crit_edge
  %get_overlay = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 11, i32 1
  %45 = ptrtoint ptr %get_overlay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_overlay, align 4
  %tobool38.not = icmp eq ptr %46, null
  br i1 %tobool38.not, label %if.then39, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %get_overlay to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @path_get_overlay, ptr %get_overlay, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %get_modelist = getelementptr inbounds %struct.mmp_path, ptr %call9.i.i, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %get_modelist to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_modelist, align 8
  %tobool44.not = icmp eq ptr %49, null
  br i1 %tobool44.not, label %if.then45, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %get_modelist to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @path_get_modelist, ptr %get_modelist, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %51 = ptrtoint ptr %overlay_num7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %overlay_num7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp51119 = icmp sgt i32 %52, 0
  br i1 %cmp51119, label %for.body52.lr.ph, label %if.end48.for.end67_crit_edge

if.end48.for.end67_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

for.body52.lr.ph:                                 ; preds = %if.end48
  %overlay_ops = getelementptr inbounds %struct.mmp_path_info, ptr %info, i32 0, i32 7
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.lr.ph
  %i.0120 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc, %for.body52.for.body52_crit_edge ]
  %arrayidx = getelementptr %struct.mmp_path, ptr %call9.i.i, i32 0, i32 13, i32 %i.0120
  %path53 = getelementptr %struct.mmp_path, ptr %call9.i.i, i32 0, i32 13, i32 %i.0120, i32 2
  %53 = ptrtoint ptr %path53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call9.i.i, ptr %path53, align 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %i.0120, ptr %arrayidx, align 4
  %access_ok60 = getelementptr %struct.mmp_path, ptr %call9.i.i, i32 0, i32 13, i32 %i.0120, i32 8
  tail call void @__mutex_init(ptr noundef %access_ok60, ptr noundef nonnull @.str.14, ptr noundef nonnull @mmp_register_path.__key.13) #8
  %55 = ptrtoint ptr %overlay_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %overlay_ops, align 4
  %ops65 = getelementptr %struct.mmp_path, ptr %call9.i.i, i32 0, i32 13, i32 %i.0120, i32 9
  %57 = ptrtoint ptr %ops65 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %ops65, align 4
  %inc = add nuw nsw i32 %i.0120, 1
  %58 = ptrtoint ptr %overlay_num7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %overlay_num7, align 4
  %cmp51 = icmp slt i32 %inc, %59
  br i1 %cmp51, label %for.body52.for.body52_crit_edge, label %for.body52.for.end67_crit_edge

for.body52.for.end67_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body52

for.end67:                                        ; preds = %for.body52.for.end67_crit_edge, %if.end48.for.end67_crit_edge
  %60 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @path_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %60, ptr noundef nonnull @path_list) #8
  br i1 %call.i.i, label %if.end.i.i117, label %for.end67.list_add_tail.exit_crit_edge

for.end67.list_add_tail.exit_crit_edge:           ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i117:                                    ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call9.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @path_list, i32 0, i32 1), align 4
  %61 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @path_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %prev3.i.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call9.i.i, ptr %60, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i117, %for.end67.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @disp_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @path_check_status(ptr nocapture noundef readonly %path) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %overlay_num = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 12
  %0 = ptrtoint ptr %overlay_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overlay_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %status = getelementptr %struct.mmp_path, ptr %path, i32 0, i32 13, i32 %i.05, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @path_get_overlay(ptr noundef readonly %path, i32 noundef %overlay_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %overlay_num = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 12
  %0 = ptrtoint ptr %overlay_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overlay_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %overlay_id)
  %cmp = icmp sgt i32 %1, %overlay_id
  %arrayidx = getelementptr %struct.mmp_path, ptr %path, i32 0, i32 13, i32 %overlay_id
  %spec.select = select i1 %cmp, ptr %arrayidx, ptr null
  br label %return

return:                                           ; preds = %land.lhs.true, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @path_get_modelist(ptr noundef readonly %path, ptr noundef %modelist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %path, null
  %tobool1.not = icmp eq ptr %modelist, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end8, !prof !62

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/mmp/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 44, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

do.end8:                                          ; preds = %entry
  %panel = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 5
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end8.return_crit_edge, label %land.lhs.true

do.end8.return_crit_edge:                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %do.end8
  %get_modelist = getelementptr inbounds %struct.mmp_panel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %get_modelist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_modelist, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %land.lhs.true.return_crit_edge, label %if.then12

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %3(ptr noundef nonnull %1, ptr noundef nonnull %modelist) #8
  br label %return

return:                                           ; preds = %if.then12, %land.lhs.true.return_crit_edge, %do.end8.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then12 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %do.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_unregister_path(ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @disp_lock, i32 noundef 0) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %path) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %path, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %path, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %overlay_num = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 12
  %8 = ptrtoint ptr %overlay_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overlay_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp sgt i32 %9, 0
  br i1 %cmp9, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %list_del.exit.for.body_crit_edge ]
  %access_ok = getelementptr %struct.mmp_path, ptr %path, i32 0, i32 13, i32 %i.010, i32 8
  tail call void @mutex_destroy(ptr noundef %access_ok) #8
  %inc = add nuw nsw i32 %i.010, 1
  %10 = ptrtoint ptr %overlay_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overlay_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %access_ok1 = getelementptr inbounds %struct.mmp_path, ptr %path, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %access_ok1) #8
  tail call void @kfree(ptr noundef nonnull %path) #8
  tail call void @mutex_unlock(ptr noundef nonnull @disp_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !45, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/mmp/core.c", i32 84, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mmp_register_panel._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mmp_register_panel._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mmp_register_panel, !9, !"__ksymtab_mmp_register_panel", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/mmp/core.c", i32 93, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/mmp/core.c", i32 111, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mmp_unregister_panel._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mmp_unregister_panel._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_mmp_unregister_panel, !16, !"__ksymtab_mmp_unregister_panel", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/mmp/core.c", i32 119, i32 1}
!17 = !{ptr @__ksymtab_mmp_get_path, !18, !"__ksymtab_mmp_get_path", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/mmp/core.c", i32 144, i32 1}
!19 = !{ptr @mmp_register_path.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/mmp/core.c", i32 165, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/mmp/core.c", i32 178, i32 4}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mmp_register_path._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mmp_register_path._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/mmp/core.c", i32 184, i32 2}
!29 = !{ptr @mmp_register_path._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mmp_register_path._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mmp_register_path.__key.13, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/mmp/core.c", i32 199, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__ksymtab_mmp_register_path, !35, !"__ksymtab_mmp_register_path", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/mmp/core.c", i32 209, i32 1}
!36 = !{ptr @__ksymtab_mmp_unregister_path, !37, !"__ksymtab_mmp_unregister_path", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/mmp/core.c", i32 237, i32 1}
!38 = !{ptr @__UNIQUE_ID_author230, !39, !"__UNIQUE_ID_author230", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/mmp/core.c", i32 239, i32 1}
!40 = !{ptr @__UNIQUE_ID_description231, !41, !"__UNIQUE_ID_description231", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/mmp/core.c", i32 240, i32 1}
!42 = !{ptr @__UNIQUE_ID_file232, !43, !"__UNIQUE_ID_file232", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/mmp/core.c", i32 241, i32 1}
!44 = !{ptr @__UNIQUE_ID_license233, !43, !"__UNIQUE_ID_license233", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/mmp/core.c", i32 61, i32 8}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @disp_lock, !46, !"disp_lock", i1 false, i1 false}
!49 = !{ptr @panel_list, !50, !"panel_list", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/mmp/core.c", i32 59, i32 8}
!51 = !{ptr @path_list, !52, !"path_list", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/mmp/core.c", i32 60, i32 8}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2153859131, i64 2153859625, i64 2153859168, i64 2153859224, i64 2153859258, i64 2153859282, i64 2153859323, i64 2153859344, i64 2153859372, i64 2153859406}
