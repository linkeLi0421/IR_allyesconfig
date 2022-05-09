; ModuleID = '/llk/IR_all_yes/lib/test_xarray.c_pt.bc'
source_filename = "../lib/test_xarray.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.2, [64 x ptr], %union.anon.3 }
%union.anon.2 = type { %struct.list_head }
%union.anon.3 = type { [3 x [2 x i32]] }

@__initcall__kmod_test_xarray__107_1811_xarray_checks6 = internal global ptr @xarray_checks, section ".initcall6.init", align 4
@__exitcall_xarray_exit = internal global ptr @xarray_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author108 = internal constant [56 x i8] c"test_xarray.author=Matthew Wilcox <willy@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file109 = internal constant [33 x i8] c"test_xarray.file=lib/test_xarray\00", section ".modinfo", align 1
@__UNIQUE_ID_license110 = internal constant [24 x i8] c"test_xarray.license=GPL\00", section ".modinfo", align 1
@array = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@xa0 = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.229, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, [44 x i8] zeroinitializer }, align 32
@xarray_checks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"XArray: %u of %u tests passed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xarray_checks\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_xarray.c\00", [46 x i8] zeroinitializer }, align 32
@xarray_checks._entry_ptr = internal global ptr @xarray_checks._entry, section ".printk_index", align 4
@tests_passed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tests_run = internal global { i32, [28 x i8] } zeroinitializer, align 32
@check_xa_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BUG at %s:%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_xa_err\00", [19 x i8] zeroinitializer }, align 32
@check_xa_err._entry_ptr = internal global ptr @check_xa_err._entry, section ".printk_index", align 4
@check_xa_err._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_err._entry_ptr.6 = internal global ptr @check_xa_err._entry.5, section ".printk_index", align 4
@check_xa_err._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_err._entry_ptr.8 = internal global ptr @check_xa_err._entry.7, section ".printk_index", align 4
@check_xa_err._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_err._entry_ptr.10 = internal global ptr @check_xa_err._entry.9, section ".printk_index", align 4
@check_xa_err._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_err._entry_ptr.12 = internal global ptr @check_xa_err._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"array.xa_lock\00", [18 x i8] zeroinitializer }, align 32
@check_xas_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_xas_retry\00", [16 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr = internal global ptr @check_xas_retry._entry, section ".printk_index", align 4
@check_xas_retry._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.17 = internal global ptr @check_xas_retry._entry.16, section ".printk_index", align 4
@check_xas_retry._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.19 = internal global ptr @check_xas_retry._entry.18, section ".printk_index", align 4
@check_xas_retry._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.21 = internal global ptr @check_xas_retry._entry.20, section ".printk_index", align 4
@check_xas_retry._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.23 = internal global ptr @check_xas_retry._entry.22, section ".printk_index", align 4
@check_xas_retry._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.25 = internal global ptr @check_xas_retry._entry.24, section ".printk_index", align 4
@check_xas_retry._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.27 = internal global ptr @check_xas_retry._entry.26, section ".printk_index", align 4
@check_xas_retry._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.29 = internal global ptr @check_xas_retry._entry.28, section ".printk_index", align 4
@check_xas_retry._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.31 = internal global ptr @check_xas_retry._entry.30, section ".printk_index", align 4
@check_xas_retry._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.15, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_retry._entry_ptr.33 = internal global ptr @check_xas_retry._entry.32, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@xa_erase_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.36, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xa_erase_index\00", [17 x i8] zeroinitializer }, align 32
@xa_erase_index._entry_ptr = internal global ptr @xa_erase_index._entry, section ".printk_index", align 4
@xa_erase_index._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.36, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xa_erase_index._entry_ptr.38 = internal global ptr @xa_erase_index._entry.37, section ".printk_index", align 4
@xa_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@check_xa_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.41, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_xa_load\00", [18 x i8] zeroinitializer }, align 32
@check_xa_load._entry_ptr = internal global ptr @check_xa_load._entry, section ".printk_index", align 4
@check_xa_load._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.41, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_load._entry_ptr.43 = internal global ptr @check_xa_load._entry.42, section ".printk_index", align 4
@check_xa_load._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.41, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_load._entry_ptr.45 = internal global ptr @check_xa_load._entry.44, section ".printk_index", align 4
@check_xa_load._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.41, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_load._entry_ptr.47 = internal global ptr @check_xa_load._entry.46, section ".printk_index", align 4
@check_xa_load._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.41, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_load._entry_ptr.49 = internal global ptr @check_xa_load._entry.48, section ".printk_index", align 4
@check_xa_load._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.41, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_load._entry_ptr.51 = internal global ptr @check_xa_load._entry.50, section ".printk_index", align 4
@check_xa_mark_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_xa_mark_1\00", [16 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr = internal global ptr @check_xa_mark_1._entry, section ".printk_index", align 4
@check_xa_mark_1._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.54 = internal global ptr @check_xa_mark_1._entry.53, section ".printk_index", align 4
@check_xa_mark_1._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.56 = internal global ptr @check_xa_mark_1._entry.55, section ".printk_index", align 4
@check_xa_mark_1._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.58 = internal global ptr @check_xa_mark_1._entry.57, section ".printk_index", align 4
@check_xa_mark_1._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.60 = internal global ptr @check_xa_mark_1._entry.59, section ".printk_index", align 4
@check_xa_mark_1._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.62 = internal global ptr @check_xa_mark_1._entry.61, section ".printk_index", align 4
@check_xa_mark_1._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.64 = internal global ptr @check_xa_mark_1._entry.63, section ".printk_index", align 4
@check_xa_mark_1._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.66 = internal global ptr @check_xa_mark_1._entry.65, section ".printk_index", align 4
@check_xa_mark_1._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.68 = internal global ptr @check_xa_mark_1._entry.67, section ".printk_index", align 4
@check_xa_mark_1._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.70 = internal global ptr @check_xa_mark_1._entry.69, section ".printk_index", align 4
@check_xa_mark_1._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.72 = internal global ptr @check_xa_mark_1._entry.71, section ".printk_index", align 4
@check_xa_mark_1._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.74 = internal global ptr @check_xa_mark_1._entry.73, section ".printk_index", align 4
@check_xa_mark_1._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.76 = internal global ptr @check_xa_mark_1._entry.75, section ".printk_index", align 4
@check_xa_mark_1._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.78 = internal global ptr @check_xa_mark_1._entry.77, section ".printk_index", align 4
@check_xa_mark_1._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.80 = internal global ptr @check_xa_mark_1._entry.79, section ".printk_index", align 4
@check_xa_mark_1._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.82 = internal global ptr @check_xa_mark_1._entry.81, section ".printk_index", align 4
@check_xa_mark_1._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.84 = internal global ptr @check_xa_mark_1._entry.83, section ".printk_index", align 4
@check_xa_mark_1._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.86 = internal global ptr @check_xa_mark_1._entry.85, section ".printk_index", align 4
@check_xa_mark_1._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.88 = internal global ptr @check_xa_mark_1._entry.87, section ".printk_index", align 4
@check_xa_mark_1._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.90 = internal global ptr @check_xa_mark_1._entry.89, section ".printk_index", align 4
@check_xa_mark_1._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.92 = internal global ptr @check_xa_mark_1._entry.91, section ".printk_index", align 4
@check_xa_mark_1._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.94 = internal global ptr @check_xa_mark_1._entry.93, section ".printk_index", align 4
@check_xa_mark_1._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.52, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_1._entry_ptr.96 = internal global ptr @check_xa_mark_1._entry.95, section ".printk_index", align 4
@check_xa_mark_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.97, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_xa_mark_2\00", [16 x i8] zeroinitializer }, align 32
@check_xa_mark_2._entry_ptr = internal global ptr @check_xa_mark_2._entry, section ".printk_index", align 4
@check_xa_mark_2._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.97, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_2._entry_ptr.99 = internal global ptr @check_xa_mark_2._entry.98, section ".printk_index", align 4
@check_xa_mark_2._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.97, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_2._entry_ptr.101 = internal global ptr @check_xa_mark_2._entry.100, section ".printk_index", align 4
@check_xa_mark_2._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.97, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_mark_2._entry_ptr.103 = internal global ptr @check_xa_mark_2._entry.102, section ".printk_index", align 4
@check_xa_shrink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_xa_shrink\00", [16 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr = internal global ptr @check_xa_shrink._entry, section ".printk_index", align 4
@check_xa_shrink._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.106 = internal global ptr @check_xa_shrink._entry.105, section ".printk_index", align 4
@check_xa_shrink._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.108 = internal global ptr @check_xa_shrink._entry.107, section ".printk_index", align 4
@check_xa_shrink._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.110 = internal global ptr @check_xa_shrink._entry.109, section ".printk_index", align 4
@check_xa_shrink._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.112 = internal global ptr @check_xa_shrink._entry.111, section ".printk_index", align 4
@check_xa_shrink._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.114 = internal global ptr @check_xa_shrink._entry.113, section ".printk_index", align 4
@check_xa_shrink._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.116 = internal global ptr @check_xa_shrink._entry.115, section ".printk_index", align 4
@check_xa_shrink._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.118 = internal global ptr @check_xa_shrink._entry.117, section ".printk_index", align 4
@check_xa_shrink._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.120 = internal global ptr @check_xa_shrink._entry.119, section ".printk_index", align 4
@check_xa_shrink._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.122 = internal global ptr @check_xa_shrink._entry.121, section ".printk_index", align 4
@check_xa_shrink._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.124 = internal global ptr @check_xa_shrink._entry.123, section ".printk_index", align 4
@check_xa_shrink._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.126 = internal global ptr @check_xa_shrink._entry.125, section ".printk_index", align 4
@check_xa_shrink._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.128 = internal global ptr @check_xa_shrink._entry.127, section ".printk_index", align 4
@check_xa_shrink._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.130 = internal global ptr @check_xa_shrink._entry.129, section ".printk_index", align 4
@check_xa_shrink._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.132 = internal global ptr @check_xa_shrink._entry.131, section ".printk_index", align 4
@check_xa_shrink._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.134 = internal global ptr @check_xa_shrink._entry.133, section ".printk_index", align 4
@check_xa_shrink._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.136 = internal global ptr @check_xa_shrink._entry.135, section ".printk_index", align 4
@check_xa_shrink._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.104, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_shrink._entry_ptr.138 = internal global ptr @check_xa_shrink._entry.137, section ".printk_index", align 4
@xa_entry_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.139 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@check_xas_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.140, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_xas_erase\00", [16 x i8] zeroinitializer }, align 32
@check_xas_erase._entry_ptr = internal global ptr @check_xas_erase._entry, section ".printk_index", align 4
@check_xas_erase._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.140, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xas_erase._entry_ptr.142 = internal global ptr @check_xas_erase._entry.141, section ".printk_index", align 4
@check_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_insert\00", [19 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr = internal global ptr @check_insert._entry, section ".printk_index", align 4
@check_insert._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.145 = internal global ptr @check_insert._entry.144, section ".printk_index", align 4
@check_insert._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.147 = internal global ptr @check_insert._entry.146, section ".printk_index", align 4
@check_insert._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.149 = internal global ptr @check_insert._entry.148, section ".printk_index", align 4
@check_insert._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.151 = internal global ptr @check_insert._entry.150, section ".printk_index", align 4
@check_insert._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.153 = internal global ptr @check_insert._entry.152, section ".printk_index", align 4
@check_insert._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.155 = internal global ptr @check_insert._entry.154, section ".printk_index", align 4
@check_insert._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.157 = internal global ptr @check_insert._entry.156, section ".printk_index", align 4
@check_insert._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_insert._entry_ptr.159 = internal global ptr @check_insert._entry.158, section ".printk_index", align 4
@xa_insert_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.160, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xa_insert_index\00", [16 x i8] zeroinitializer }, align 32
@xa_insert_index._entry_ptr = internal global ptr @xa_insert_index._entry, section ".printk_index", align 4
@check_cmpxchg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_cmpxchg\00", [18 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr = internal global ptr @check_cmpxchg._entry, section ".printk_index", align 4
@check_cmpxchg._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.163 = internal global ptr @check_cmpxchg._entry.162, section ".printk_index", align 4
@check_cmpxchg._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.165 = internal global ptr @check_cmpxchg._entry.164, section ".printk_index", align 4
@check_cmpxchg._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.167 = internal global ptr @check_cmpxchg._entry.166, section ".printk_index", align 4
@check_cmpxchg._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.169 = internal global ptr @check_cmpxchg._entry.168, section ".printk_index", align 4
@check_cmpxchg._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.171 = internal global ptr @check_cmpxchg._entry.170, section ".printk_index", align 4
@check_cmpxchg._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.173 = internal global ptr @check_cmpxchg._entry.172, section ".printk_index", align 4
@check_cmpxchg._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.175 = internal global ptr @check_cmpxchg._entry.174, section ".printk_index", align 4
@check_cmpxchg._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.177 = internal global ptr @check_cmpxchg._entry.176, section ".printk_index", align 4
@check_cmpxchg._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.179 = internal global ptr @check_cmpxchg._entry.178, section ".printk_index", align 4
@check_cmpxchg._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.181 = internal global ptr @check_cmpxchg._entry.180, section ".printk_index", align 4
@check_cmpxchg._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.161, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_cmpxchg._entry_ptr.183 = internal global ptr @check_cmpxchg._entry.182, section ".printk_index", align 4
@check_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_reserve\00", [18 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr = internal global ptr @check_reserve._entry, section ".printk_index", align 4
@check_reserve._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.186 = internal global ptr @check_reserve._entry.185, section ".printk_index", align 4
@check_reserve._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.188 = internal global ptr @check_reserve._entry.187, section ".printk_index", align 4
@check_reserve._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.190 = internal global ptr @check_reserve._entry.189, section ".printk_index", align 4
@check_reserve._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.192 = internal global ptr @check_reserve._entry.191, section ".printk_index", align 4
@check_reserve._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.194 = internal global ptr @check_reserve._entry.193, section ".printk_index", align 4
@check_reserve._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.196 = internal global ptr @check_reserve._entry.195, section ".printk_index", align 4
@check_reserve._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.198 = internal global ptr @check_reserve._entry.197, section ".printk_index", align 4
@check_reserve._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.200 = internal global ptr @check_reserve._entry.199, section ".printk_index", align 4
@check_reserve._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.202 = internal global ptr @check_reserve._entry.201, section ".printk_index", align 4
@check_reserve._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.204 = internal global ptr @check_reserve._entry.203, section ".printk_index", align 4
@check_reserve._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.206 = internal global ptr @check_reserve._entry.205, section ".printk_index", align 4
@check_reserve._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.208 = internal global ptr @check_reserve._entry.207, section ".printk_index", align 4
@check_reserve._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.210 = internal global ptr @check_reserve._entry.209, section ".printk_index", align 4
@check_reserve._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.212 = internal global ptr @check_reserve._entry.211, section ".printk_index", align 4
@check_reserve._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.214 = internal global ptr @check_reserve._entry.213, section ".printk_index", align 4
@check_reserve._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.216 = internal global ptr @check_reserve._entry.215, section ".printk_index", align 4
@check_reserve._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.218 = internal global ptr @check_reserve._entry.217, section ".printk_index", align 4
@check_reserve._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.220 = internal global ptr @check_reserve._entry.219, section ".printk_index", align 4
@check_reserve._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.222 = internal global ptr @check_reserve._entry.221, section ".printk_index", align 4
@check_reserve._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.224 = internal global ptr @check_reserve._entry.223, section ".printk_index", align 4
@check_reserve._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.226 = internal global ptr @check_reserve._entry.225, section ".printk_index", align 4
@check_reserve._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_reserve._entry_ptr.228 = internal global ptr @check_reserve._entry.227, section ".printk_index", align 4
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xa0.xa_lock\00", [20 x i8] zeroinitializer }, align 32
@check_get_order._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.230, ptr @.str.2, i32 1724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_get_order\00", [16 x i8] zeroinitializer }, align 32
@check_get_order._entry_ptr = internal global ptr @check_get_order._entry, section ".printk_index", align 4
@check_get_order._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.230, ptr @.str.2, i32 1731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_get_order._entry_ptr.232 = internal global ptr @check_get_order._entry.231, section ".printk_index", align 4
@xa1 = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.259, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 12, ptr null }, [44 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_xa_alloc_1\00", [47 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr = internal global ptr @check_xa_alloc_1._entry, section ".printk_index", align 4
@check_xa_alloc_1._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.235 = internal global ptr @check_xa_alloc_1._entry.234, section ".printk_index", align 4
@check_xa_alloc_1._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.237 = internal global ptr @check_xa_alloc_1._entry.236, section ".printk_index", align 4
@check_xa_alloc_1._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.239 = internal global ptr @check_xa_alloc_1._entry.238, section ".printk_index", align 4
@check_xa_alloc_1._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.241 = internal global ptr @check_xa_alloc_1._entry.240, section ".printk_index", align 4
@check_xa_alloc_1._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.243 = internal global ptr @check_xa_alloc_1._entry.242, section ".printk_index", align 4
@check_xa_alloc_1._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.245 = internal global ptr @check_xa_alloc_1._entry.244, section ".printk_index", align 4
@check_xa_alloc_1._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.247 = internal global ptr @check_xa_alloc_1._entry.246, section ".printk_index", align 4
@check_xa_alloc_1._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.249 = internal global ptr @check_xa_alloc_1._entry.248, section ".printk_index", align 4
@check_xa_alloc_1._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.251 = internal global ptr @check_xa_alloc_1._entry.250, section ".printk_index", align 4
@check_xa_alloc_1._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.253 = internal global ptr @check_xa_alloc_1._entry.252, section ".printk_index", align 4
@check_xa_alloc_1._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.233, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_1._entry_ptr.255 = internal global ptr @check_xa_alloc_1._entry.254, section ".printk_index", align 4
@xa_alloc_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.256, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xa_alloc_index\00", [17 x i8] zeroinitializer }, align 32
@xa_alloc_index._entry_ptr = internal global ptr @xa_alloc_index._entry, section ".printk_index", align 4
@xa_alloc_index._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.256, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xa_alloc_index._entry_ptr.258 = internal global ptr @xa_alloc_index._entry.257, section ".printk_index", align 4
@.str.259 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xa1.xa_lock\00", [20 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_xa_alloc_2\00", [47 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr = internal global ptr @check_xa_alloc_2._entry, section ".printk_index", align 4
@check_xa_alloc_2._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.262 = internal global ptr @check_xa_alloc_2._entry.261, section ".printk_index", align 4
@check_xa_alloc_2._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.264 = internal global ptr @check_xa_alloc_2._entry.263, section ".printk_index", align 4
@check_xa_alloc_2._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.266 = internal global ptr @check_xa_alloc_2._entry.265, section ".printk_index", align 4
@check_xa_alloc_2._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.268 = internal global ptr @check_xa_alloc_2._entry.267, section ".printk_index", align 4
@check_xa_alloc_2._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.270 = internal global ptr @check_xa_alloc_2._entry.269, section ".printk_index", align 4
@check_xa_alloc_2._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.272 = internal global ptr @check_xa_alloc_2._entry.271, section ".printk_index", align 4
@check_xa_alloc_2._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.274 = internal global ptr @check_xa_alloc_2._entry.273, section ".printk_index", align 4
@check_xa_alloc_2._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.276 = internal global ptr @check_xa_alloc_2._entry.275, section ".printk_index", align 4
@check_xa_alloc_2._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.278 = internal global ptr @check_xa_alloc_2._entry.277, section ".printk_index", align 4
@check_xa_alloc_2._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.280 = internal global ptr @check_xa_alloc_2._entry.279, section ".printk_index", align 4
@check_xa_alloc_2._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.282 = internal global ptr @check_xa_alloc_2._entry.281, section ".printk_index", align 4
@check_xa_alloc_2._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.284 = internal global ptr @check_xa_alloc_2._entry.283, section ".printk_index", align 4
@check_xa_alloc_2._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.286 = internal global ptr @check_xa_alloc_2._entry.285, section ".printk_index", align 4
@check_xa_alloc_2._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.288 = internal global ptr @check_xa_alloc_2._entry.287, section ".printk_index", align 4
@check_xa_alloc_2._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.290 = internal global ptr @check_xa_alloc_2._entry.289, section ".printk_index", align 4
@check_xa_alloc_2._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.292 = internal global ptr @check_xa_alloc_2._entry.291, section ".printk_index", align 4
@check_xa_alloc_2._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.294 = internal global ptr @check_xa_alloc_2._entry.293, section ".printk_index", align 4
@check_xa_alloc_2._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.296 = internal global ptr @check_xa_alloc_2._entry.295, section ".printk_index", align 4
@check_xa_alloc_2._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.298 = internal global ptr @check_xa_alloc_2._entry.297, section ".printk_index", align 4
@check_xa_alloc_2._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.300 = internal global ptr @check_xa_alloc_2._entry.299, section ".printk_index", align 4
@check_xa_alloc_2._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.302 = internal global ptr @check_xa_alloc_2._entry.301, section ".printk_index", align 4
@check_xa_alloc_2._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.304 = internal global ptr @check_xa_alloc_2._entry.303, section ".printk_index", align 4
@check_xa_alloc_2._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.306 = internal global ptr @check_xa_alloc_2._entry.305, section ".printk_index", align 4
@check_xa_alloc_2._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.260, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_2._entry_ptr.308 = internal global ptr @check_xa_alloc_2._entry.307, section ".printk_index", align 4
@check_xa_alloc_3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_xa_alloc_3\00", [47 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr = internal global ptr @check_xa_alloc_3._entry, section ".printk_index", align 4
@check_xa_alloc_3._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.311 = internal global ptr @check_xa_alloc_3._entry.310, section ".printk_index", align 4
@check_xa_alloc_3._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.313 = internal global ptr @check_xa_alloc_3._entry.312, section ".printk_index", align 4
@check_xa_alloc_3._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.315 = internal global ptr @check_xa_alloc_3._entry.314, section ".printk_index", align 4
@check_xa_alloc_3._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.317 = internal global ptr @check_xa_alloc_3._entry.316, section ".printk_index", align 4
@check_xa_alloc_3._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.319 = internal global ptr @check_xa_alloc_3._entry.318, section ".printk_index", align 4
@check_xa_alloc_3._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.321 = internal global ptr @check_xa_alloc_3._entry.320, section ".printk_index", align 4
@check_xa_alloc_3._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.323 = internal global ptr @check_xa_alloc_3._entry.322, section ".printk_index", align 4
@check_xa_alloc_3._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.325 = internal global ptr @check_xa_alloc_3._entry.324, section ".printk_index", align 4
@check_xa_alloc_3._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.327 = internal global ptr @check_xa_alloc_3._entry.326, section ".printk_index", align 4
@check_xa_alloc_3._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.329 = internal global ptr @check_xa_alloc_3._entry.328, section ".printk_index", align 4
@check_xa_alloc_3._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.331 = internal global ptr @check_xa_alloc_3._entry.330, section ".printk_index", align 4
@check_xa_alloc_3._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.333 = internal global ptr @check_xa_alloc_3._entry.332, section ".printk_index", align 4
@check_xa_alloc_3._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.309, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_xa_alloc_3._entry_ptr.335 = internal global ptr @check_xa_alloc_3._entry.334, section ".printk_index", align 4
@check_find_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_find_1\00", [19 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr = internal global ptr @check_find_1._entry, section ".printk_index", align 4
@check_find_1._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.338 = internal global ptr @check_find_1._entry.337, section ".printk_index", align 4
@check_find_1._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.340 = internal global ptr @check_find_1._entry.339, section ".printk_index", align 4
@check_find_1._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.342 = internal global ptr @check_find_1._entry.341, section ".printk_index", align 4
@check_find_1._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.344 = internal global ptr @check_find_1._entry.343, section ".printk_index", align 4
@check_find_1._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.346 = internal global ptr @check_find_1._entry.345, section ".printk_index", align 4
@check_find_1._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.348 = internal global ptr @check_find_1._entry.347, section ".printk_index", align 4
@check_find_1._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.350 = internal global ptr @check_find_1._entry.349, section ".printk_index", align 4
@check_find_1._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.352 = internal global ptr @check_find_1._entry.351, section ".printk_index", align 4
@check_find_1._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.354 = internal global ptr @check_find_1._entry.353, section ".printk_index", align 4
@check_find_1._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.356 = internal global ptr @check_find_1._entry.355, section ".printk_index", align 4
@check_find_1._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.358 = internal global ptr @check_find_1._entry.357, section ".printk_index", align 4
@check_find_1._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.336, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_1._entry_ptr.360 = internal global ptr @check_find_1._entry.359, section ".printk_index", align 4
@check_find_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.361, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_find_2\00", [19 x i8] zeroinitializer }, align 32
@check_find_2._entry_ptr = internal global ptr @check_find_2._entry, section ".printk_index", align 4
@check_find_2._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.361, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_2._entry_ptr.363 = internal global ptr @check_find_2._entry.362, section ".printk_index", align 4
@check_find_2._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.361, ptr @.str.2, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_2._entry_ptr.365 = internal global ptr @check_find_2._entry.364, section ".printk_index", align 4
@check_find_3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.366, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_find_3\00", [19 x i8] zeroinitializer }, align 32
@check_find_3._entry_ptr = internal global ptr @check_find_3._entry, section ".printk_index", align 4
@check_find_4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.367, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_find_4\00", [19 x i8] zeroinitializer }, align 32
@check_find_4._entry_ptr = internal global ptr @check_find_4._entry, section ".printk_index", align 4
@check_find_4._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.367, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_4._entry_ptr.369 = internal global ptr @check_find_4._entry.368, section ".printk_index", align 4
@check_multi_find_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.370, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_multi_find_2\00", [45 x i8] zeroinitializer }, align 32
@check_multi_find_2._entry_ptr = internal global ptr @check_multi_find_2._entry, section ".printk_index", align 4
@check_multi_find_3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.371, ptr @.str.2, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_multi_find_3\00", [45 x i8] zeroinitializer }, align 32
@check_multi_find_3._entry_ptr = internal global ptr @check_multi_find_3._entry, section ".printk_index", align 4
@check_multi_find_3._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.371, ptr @.str.2, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_multi_find_3._entry_ptr.373 = internal global ptr @check_multi_find_3._entry.372, section ".printk_index", align 4
@check_find_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.374, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_find_entry\00", [47 x i8] zeroinitializer }, align 32
@check_find_entry._entry_ptr = internal global ptr @check_find_entry._entry, section ".printk_index", align 4
@check_find_entry._entry.375 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.374, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_entry._entry_ptr.376 = internal global ptr @check_find_entry._entry.375, section ".printk_index", align 4
@check_find_entry._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.374, ptr @.str.2, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_entry._entry_ptr.378 = internal global ptr @check_find_entry._entry.377, section ".printk_index", align 4
@check_find_entry._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.374, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_find_entry._entry_ptr.380 = internal global ptr @check_find_entry._entry.379, section ".printk_index", align 4
@check_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.381, ptr @.str.2, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"check_pause\00", [20 x i8] zeroinitializer }, align 32
@check_pause._entry_ptr = internal global ptr @check_pause._entry, section ".printk_index", align 4
@check_pause._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.381, ptr @.str.2, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_pause._entry_ptr.383 = internal global ptr @check_pause._entry.382, section ".printk_index", align 4
@check_pause._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.381, ptr @.str.2, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_pause._entry_ptr.385 = internal global ptr @check_pause._entry.384, section ".printk_index", align 4
@check_pause._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.381, ptr @.str.2, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_pause._entry_ptr.387 = internal global ptr @check_pause._entry.386, section ".printk_index", align 4
@check_pause._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.381, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_pause._entry_ptr.389 = internal global ptr @check_pause._entry.388, section ".printk_index", align 4
@check_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.390, ptr @.str.2, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_destroy\00", [18 x i8] zeroinitializer }, align 32
@check_destroy._entry_ptr = internal global ptr @check_destroy._entry, section ".printk_index", align 4
@check_destroy._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.390, ptr @.str.2, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_destroy._entry_ptr.392 = internal global ptr @check_destroy._entry.391, section ".printk_index", align 4
@check_destroy._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.390, ptr @.str.2, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_destroy._entry_ptr.394 = internal global ptr @check_destroy._entry.393, section ".printk_index", align 4
@check_destroy._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.390, ptr @.str.2, i32 1752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_destroy._entry_ptr.396 = internal global ptr @check_destroy._entry.395, section ".printk_index", align 4
@check_destroy._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.390, ptr @.str.2, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_destroy._entry_ptr.398 = internal global ptr @check_destroy._entry.397, section ".printk_index", align 4
@check_destroy._entry.399 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.390, ptr @.str.2, i32 1759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_destroy._entry_ptr.400 = internal global ptr @check_destroy._entry.399, section ".printk_index", align 4
@check_move._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_move\00", [21 x i8] zeroinitializer }, align 32
@check_move._entry_ptr = internal global ptr @check_move._entry, section ".printk_index", align 4
@check_move._entry.402 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.403 = internal global ptr @check_move._entry.402, section ".printk_index", align 4
@check_move._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.405 = internal global ptr @check_move._entry.404, section ".printk_index", align 4
@check_move._entry.406 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.407 = internal global ptr @check_move._entry.406, section ".printk_index", align 4
@check_move._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.409 = internal global ptr @check_move._entry.408, section ".printk_index", align 4
@check_move._entry.410 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.411 = internal global ptr @check_move._entry.410, section ".printk_index", align 4
@check_move._entry.412 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.413 = internal global ptr @check_move._entry.412, section ".printk_index", align 4
@check_move._entry.414 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.415 = internal global ptr @check_move._entry.414, section ".printk_index", align 4
@check_move._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.417 = internal global ptr @check_move._entry.416, section ".printk_index", align 4
@check_move._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.419 = internal global ptr @check_move._entry.418, section ".printk_index", align 4
@check_move._entry.420 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.421 = internal global ptr @check_move._entry.420, section ".printk_index", align 4
@check_move._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.423 = internal global ptr @check_move._entry.422, section ".printk_index", align 4
@check_move._entry.424 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.425 = internal global ptr @check_move._entry.424, section ".printk_index", align 4
@check_move._entry.426 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.427 = internal global ptr @check_move._entry.426, section ".printk_index", align 4
@check_move._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.401, ptr @.str.2, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move._entry_ptr.429 = internal global ptr @check_move._entry.428, section ".printk_index", align 4
@check_move_tiny._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_move_tiny\00", [16 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr = internal global ptr @check_move_tiny._entry, section ".printk_index", align 4
@check_move_tiny._entry.431 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr.432 = internal global ptr @check_move_tiny._entry.431, section ".printk_index", align 4
@check_move_tiny._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr.434 = internal global ptr @check_move_tiny._entry.433, section ".printk_index", align 4
@check_move_tiny._entry.435 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr.436 = internal global ptr @check_move_tiny._entry.435, section ".printk_index", align 4
@check_move_tiny._entry.437 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr.438 = internal global ptr @check_move_tiny._entry.437, section ".printk_index", align 4
@check_move_tiny._entry.439 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr.440 = internal global ptr @check_move_tiny._entry.439, section ".printk_index", align 4
@check_move_tiny._entry.441 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr.442 = internal global ptr @check_move_tiny._entry.441, section ".printk_index", align 4
@check_move_tiny._entry.443 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.430, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_tiny._entry_ptr.444 = internal global ptr @check_move_tiny._entry.443, section ".printk_index", align 4
@check_move_max._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.445, ptr @.str.2, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_move_max\00", [17 x i8] zeroinitializer }, align 32
@check_move_max._entry_ptr = internal global ptr @check_move_max._entry, section ".printk_index", align 4
@check_move_max._entry.446 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.445, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_max._entry_ptr.447 = internal global ptr @check_move_max._entry.446, section ".printk_index", align 4
@check_move_max._entry.448 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.445, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_max._entry_ptr.449 = internal global ptr @check_move_max._entry.448, section ".printk_index", align 4
@check_move_max._entry.450 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.445, ptr @.str.2, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_max._entry_ptr.451 = internal global ptr @check_move_max._entry.450, section ".printk_index", align 4
@check_move_max._entry.452 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.445, ptr @.str.2, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_max._entry_ptr.453 = internal global ptr @check_move_max._entry.452, section ".printk_index", align 4
@check_move_small._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_move_small\00", [47 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr = internal global ptr @check_move_small._entry, section ".printk_index", align 4
@check_move_small._entry.455 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.456 = internal global ptr @check_move_small._entry.455, section ".printk_index", align 4
@check_move_small._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.458 = internal global ptr @check_move_small._entry.457, section ".printk_index", align 4
@check_move_small._entry.459 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.460 = internal global ptr @check_move_small._entry.459, section ".printk_index", align 4
@check_move_small._entry.461 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.462 = internal global ptr @check_move_small._entry.461, section ".printk_index", align 4
@check_move_small._entry.463 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.464 = internal global ptr @check_move_small._entry.463, section ".printk_index", align 4
@check_move_small._entry.465 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.466 = internal global ptr @check_move_small._entry.465, section ".printk_index", align 4
@check_move_small._entry.467 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.468 = internal global ptr @check_move_small._entry.467, section ".printk_index", align 4
@check_move_small._entry.469 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.470 = internal global ptr @check_move_small._entry.469, section ".printk_index", align 4
@check_move_small._entry.471 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.472 = internal global ptr @check_move_small._entry.471, section ".printk_index", align 4
@check_move_small._entry.473 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.474 = internal global ptr @check_move_small._entry.473, section ".printk_index", align 4
@check_move_small._entry.475 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.476 = internal global ptr @check_move_small._entry.475, section ".printk_index", align 4
@check_move_small._entry.477 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.478 = internal global ptr @check_move_small._entry.477, section ".printk_index", align 4
@check_move_small._entry.479 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.480 = internal global ptr @check_move_small._entry.479, section ".printk_index", align 4
@check_move_small._entry.481 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.482 = internal global ptr @check_move_small._entry.481, section ".printk_index", align 4
@check_move_small._entry.483 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.454, ptr @.str.2, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_move_small._entry_ptr.484 = internal global ptr @check_move_small._entry.483, section ".printk_index", align 4
@check_create_range_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.485, ptr @.str.2, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_create_range_1\00", [43 x i8] zeroinitializer }, align 32
@check_create_range_1._entry_ptr = internal global ptr @check_create_range_1._entry, section ".printk_index", align 4
@xa_store_many_order._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.486, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xa_store_many_order\00", [44 x i8] zeroinitializer }, align 32
@xa_store_many_order._entry_ptr = internal global ptr @xa_store_many_order._entry, section ".printk_index", align 4
@xa_store_many_order._entry.487 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.486, ptr @.str.2, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xa_store_many_order._entry_ptr.488 = internal global ptr @xa_store_many_order._entry.487, section ".printk_index", align 4
@xa_store_many_order._entry.489 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.486, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xa_store_many_order._entry_ptr.490 = internal global ptr @xa_store_many_order._entry.489, section ".printk_index", align 4
@check_create_range_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.491, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_create_range_2\00", [43 x i8] zeroinitializer }, align 32
@check_create_range_2._entry_ptr = internal global ptr @check_create_range_2._entry, section ".printk_index", align 4
@check_create_range_4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.492, ptr @.str.2, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_create_range_4\00", [43 x i8] zeroinitializer }, align 32
@check_create_range_4._entry_ptr = internal global ptr @check_create_range_4._entry, section ".printk_index", align 4
@check_create_range_4._entry.493 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.492, ptr @.str.2, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_create_range_4._entry_ptr.494 = internal global ptr @check_create_range_4._entry.493, section ".printk_index", align 4
@check_create_range_4._entry.495 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.492, ptr @.str.2, i32 1459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_create_range_4._entry_ptr.496 = internal global ptr @check_create_range_4._entry.495, section ".printk_index", align 4
@check_create_range_4._entry.497 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.492, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_create_range_4._entry_ptr.498 = internal global ptr @check_create_range_4._entry.497, section ".printk_index", align 4
@__const.check_create_range_3.xas = private unnamed_addr constant %struct.xa_state { ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, ptr inttoptr (i32 3 to ptr), ptr null, ptr null }, align 4
@check_create_range_3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.499, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.499 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_create_range_3\00", [43 x i8] zeroinitializer }, align 32
@check_create_range_3._entry_ptr = internal global ptr @check_create_range_3._entry, section ".printk_index", align 4
@__check_store_range._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.500, ptr @.str.2, i32 1512, ptr null, ptr null }, align 1
@.str.500 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__check_store_range\00", [44 x i8] zeroinitializer }, align 32
@__check_store_range._entry_ptr = internal global ptr @__check_store_range._entry, section ".printk_index", align 4
@check_store_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.501, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.501 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_store_iter\00", [47 x i8] zeroinitializer }, align 32
@check_store_iter._entry_ptr = internal global ptr @check_store_iter._entry, section ".printk_index", align 4
@check_store_iter._entry.502 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.501, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_store_iter._entry_ptr.503 = internal global ptr @check_store_iter._entry.502, section ".printk_index", align 4
@check_store_iter._entry.504 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.501, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_store_iter._entry_ptr.505 = internal global ptr @check_store_iter._entry.504, section ".printk_index", align 4
@check_store_iter._entry.506 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.501, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_store_iter._entry_ptr.507 = internal global ptr @check_store_iter._entry.506, section ".printk_index", align 4
@check_store_iter._entry.508 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.501, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_store_iter._entry_ptr.509 = internal global ptr @check_store_iter._entry.508, section ".printk_index", align 4
@check_store_iter._entry.510 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.501, ptr @.str.2, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_store_iter._entry_ptr.511 = internal global ptr @check_store_iter._entry.510, section ".printk_index", align 4
@check_store_iter._entry.512 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.501, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_store_iter._entry_ptr.513 = internal global ptr @check_store_iter._entry.512, section ".printk_index", align 4
@__check_store_iter._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.514, ptr @.str.2, i32 877, ptr null, ptr null }, align 1
@.str.514 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__check_store_iter\00", [45 x i8] zeroinitializer }, align 32
@__check_store_iter._entry_ptr = internal global ptr @__check_store_iter._entry, section ".printk_index", align 4
@__check_store_iter._entry.515 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.514, ptr @.str.2, i32 878, ptr null, ptr null }, align 1
@__check_store_iter._entry_ptr.516 = internal global ptr @__check_store_iter._entry.515, section ".printk_index", align 4
@__check_store_iter._entry.517 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.514, ptr @.str.2, i32 879, ptr null, ptr null }, align 1
@__check_store_iter._entry_ptr.518 = internal global ptr @__check_store_iter._entry.517, section ".printk_index", align 4
@__check_store_iter._entry.519 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.514, ptr @.str.2, i32 888, ptr null, ptr null }, align 1
@__check_store_iter._entry_ptr.520 = internal global ptr @__check_store_iter._entry.519, section ".printk_index", align 4
@__check_store_iter._entry.521 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.514, ptr @.str.2, i32 889, ptr null, ptr null }, align 1
@__check_store_iter._entry_ptr.522 = internal global ptr @__check_store_iter._entry.521, section ".printk_index", align 4
@__check_store_iter._entry.523 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.514, ptr @.str.2, i32 890, ptr null, ptr null }, align 1
@__check_store_iter._entry_ptr.524 = internal global ptr @__check_store_iter._entry.523, section ".printk_index", align 4
@__check_store_iter._entry.525 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.514, ptr @.str.2, i32 892, ptr null, ptr null }, align 1
@__check_store_iter._entry_ptr.526 = internal global ptr @__check_store_iter._entry.525, section ".printk_index", align 4
@__const.check_align.name = private unnamed_addr constant [15 x i8] c"Motorola 68000\00", align 1
@check_align_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.527, ptr @.str.2, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_align_1\00", [18 x i8] zeroinitializer }, align 32
@check_align_1._entry_ptr = internal global ptr @check_align_1._entry, section ".printk_index", align 4
@check_align_1._entry.528 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.527, ptr @.str.2, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_align_1._entry_ptr.529 = internal global ptr @check_align_1._entry.528, section ".printk_index", align 4
@check_align_1._entry.530 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.527, ptr @.str.2, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_align_1._entry_ptr.531 = internal global ptr @check_align_1._entry.530, section ".printk_index", align 4
@check_align_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.532, ptr @.str.2, i32 1601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_align_2\00", [18 x i8] zeroinitializer }, align 32
@check_align_2._entry_ptr = internal global ptr @check_align_2._entry, section ".printk_index", align 4
@check_align_2._entry.533 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.532, ptr @.str.2, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_align_2._entry_ptr.534 = internal global ptr @check_align_2._entry.533, section ".printk_index", align 4
@check_align_2._entry.535 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.532, ptr @.str.2, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_align_2._entry_ptr.536 = internal global ptr @check_align_2._entry.535, section ".printk_index", align 4
@check_align_2._entry.537 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.532, ptr @.str.2, i32 1610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_align_2._entry_ptr.538 = internal global ptr @check_align_2._entry.537, section ".printk_index", align 4
@check_align_2._entry.539 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.532, ptr @.str.2, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_align_2._entry_ptr.540 = internal global ptr @check_align_2._entry.539, section ".printk_index", align 4
@shadow_nodes = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @shadow_nodes, ptr @shadow_nodes }, [24 x i8] zeroinitializer }, align 32
@check_workingset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.541, ptr @.str.2, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.541 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_workingset\00", [47 x i8] zeroinitializer }, align 32
@check_workingset._entry_ptr = internal global ptr @check_workingset._entry, section ".printk_index", align 4
@check_workingset._entry.542 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.541, ptr @.str.2, i32 1673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_workingset._entry_ptr.543 = internal global ptr @check_workingset._entry.542, section ".printk_index", align 4
@check_workingset._entry.544 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.541, ptr @.str.2, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_workingset._entry_ptr.545 = internal global ptr @check_workingset._entry.544, section ".printk_index", align 4
@check_workingset._entry.546 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.541, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_workingset._entry_ptr.547 = internal global ptr @check_workingset._entry.546, section ".printk_index", align 4
@check_workingset._entry.548 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.541, ptr @.str.2, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_workingset._entry_ptr.549 = internal global ptr @check_workingset._entry.548, section ".printk_index", align 4
@shadow_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.550, ptr @.str.2, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.550 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shadow_remove\00", [18 x i8] zeroinitializer }, align 32
@shadow_remove._entry_ptr = internal global ptr @shadow_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.551 = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@___asan_gen_.552 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [4 x i8] c"xa0\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1803, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [13 x i8] c"tests_passed\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 13, i32 21 }
@___asan_gen_.573 = private unnamed_addr constant [10 x i8] c"tests_run\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 12, i32 21 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 88, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 89, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 95, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 96, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 97, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 54, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1770, i32 8 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 111, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 113, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 114, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 115, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 117, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 118, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 119, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 122, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 125, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 127, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 695, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 62, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 63, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1166, i32 9 }
@___asan_gen_.655 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 723, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 155, i32 5 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 157, i32 5 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 159, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 166, i32 5 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 168, i32 5 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 172, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 181, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 183, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 186, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 187, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 189, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 192, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 193, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 197, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 198, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 200, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 212, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 214, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 216, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 224, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 225, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 226, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 233, i32 4 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 242, i32 4 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 244, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 245, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 246, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 249, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 251, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 267, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 279, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 284, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 285, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 331, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 332, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 333, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 340, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 342, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 343, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 344, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 345, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 346, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 347, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 349, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 351, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 356, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 357, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 361, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 364, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 366, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 368, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1191, i32 9 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 521, i32 4 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 526, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 379, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 380, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 386, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 387, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 391, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 392, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 397, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 398, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 401, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 47, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 410, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 411, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 412, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 413, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 414, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 415, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 416, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 417, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 418, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 419, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 420, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 423, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 433, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 434, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 435, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 436, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 438, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 441, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 442, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 445, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 448, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 449, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 453, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 456, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 457, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 459, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 460, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 461, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 465, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 470, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 473, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 479, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 481, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 484, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 486, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 854, i32 8 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1724, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1731, i32 5 }
@___asan_gen_.993 = private unnamed_addr constant [4 x i8] c"xa1\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 682, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 688, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 728, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 731, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 732, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 735, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 737, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 740, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 743, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 745, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 746, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 749, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 55, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 57, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 855, i32 8 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 759, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 760, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 761, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 762, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 763, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 764, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 767, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 768, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 769, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 770, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 772, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 775, i32 3 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 777, i32 3 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 780, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 781, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 782, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 783, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 784, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 785, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 792, i32 3 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 793, i32 3 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 795, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 796, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 797, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 798, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 811, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 813, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 816, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 818, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 821, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 828, i32 3 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 830, i32 3 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 838, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 840, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 841, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 843, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 844, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 846, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 851, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1008, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1015, i32 3 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1018, i32 4 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1026, i32 6 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1028, i32 6 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1030, i32 6 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1036, i32 6 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1038, i32 6 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1040, i32 6 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1043, i32 4 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1044, i32 4 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1047, i32 3 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1049, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1058, i32 3 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1065, i32 4 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1066, i32 4 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1087, i32 6 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1106, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1109, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 985, i32 4 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 997, i32 3 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 999, i32 3 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1176, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1178, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1179, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1181, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1193, i32 3 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1200, i32 3 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1204, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1210, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1215, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1741, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1745, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1750, i32 3 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1752, i32 3 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1757, i32 2 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1759, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1317, i32 3 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1323, i32 3 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1324, i32 3 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1327, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1328, i32 2 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1332, i32 3 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1333, i32 3 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1348, i32 4 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1350, i32 4 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1351, i32 3 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1354, i32 2 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1355, i32 2 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1360, i32 4 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1362, i32 4 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1363, i32 3 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1224, i32 2 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1226, i32 2 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1227, i32 2 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1232, i32 2 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1233, i32 2 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1235, i32 2 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1236, i32 2 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1239, i32 2 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1248, i32 2 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1249, i32 2 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1254, i32 2 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1256, i32 2 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1260, i32 2 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1275, i32 4 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1276, i32 3 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1278, i32 4 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1280, i32 4 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1283, i32 2 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1289, i32 4 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1290, i32 3 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1292, i32 4 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1294, i32 4 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1298, i32 2 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1299, i32 2 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1300, i32 2 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1301, i32 2 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1302, i32 2 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1303, i32 2 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1308, i32 2 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1411, i32 2 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1388, i32 3 }
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1393, i32 4 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1400, i32 2 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1423, i32 2 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1450, i32 5 }
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1452, i32 5 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1459, i32 2 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1463, i32 2 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1431, i32 2 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1512, i32 2 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 905, i32 3 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 907, i32 3 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 911, i32 3 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 914, i32 3 }
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 919, i32 3 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 923, i32 3 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 931, i32 2 }
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 877, i32 3 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1584, i32 3 }
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1586, i32 3 }
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1589, i32 3 }
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1601, i32 2 }
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1604, i32 3 }
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1609, i32 3 }
@___asan_gen_.1553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1610, i32 3 }
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1614, i32 2 }
@___asan_gen_.1557 = private unnamed_addr constant [13 x i8] c"shadow_nodes\00", align 1
@___asan_gen_.1559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1628, i32 8 }
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1668, i32 2 }
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1673, i32 2 }
@___asan_gen_.1571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1677, i32 2 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1680, i32 2 }
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1681, i32 2 }
@___asan_gen_.1578 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1581 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1582 = private constant [21 x i8] c"../lib/test_xarray.c\00", align 1
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1582, i32 1648, i32 3 }
@llvm.compiler.used = appending global [648 x ptr] [ptr @__UNIQUE_ID_author108, ptr @__UNIQUE_ID_file109, ptr @__UNIQUE_ID_license110, ptr @__check_store_iter._entry, ptr @__check_store_iter._entry.515, ptr @__check_store_iter._entry.517, ptr @__check_store_iter._entry.519, ptr @__check_store_iter._entry.521, ptr @__check_store_iter._entry.523, ptr @__check_store_iter._entry.525, ptr @__check_store_iter._entry_ptr, ptr @__check_store_iter._entry_ptr.516, ptr @__check_store_iter._entry_ptr.518, ptr @__check_store_iter._entry_ptr.520, ptr @__check_store_iter._entry_ptr.522, ptr @__check_store_iter._entry_ptr.524, ptr @__check_store_iter._entry_ptr.526, ptr @__check_store_range._entry, ptr @__check_store_range._entry_ptr, ptr @__exitcall_xarray_exit, ptr @__initcall__kmod_test_xarray__107_1811_xarray_checks6, ptr @check_align_1._entry, ptr @check_align_1._entry.528, ptr @check_align_1._entry.530, ptr @check_align_1._entry_ptr, ptr @check_align_1._entry_ptr.529, ptr @check_align_1._entry_ptr.531, ptr @check_align_2._entry, ptr @check_align_2._entry.533, ptr @check_align_2._entry.535, ptr @check_align_2._entry.537, ptr @check_align_2._entry.539, ptr @check_align_2._entry_ptr, ptr @check_align_2._entry_ptr.534, ptr @check_align_2._entry_ptr.536, ptr @check_align_2._entry_ptr.538, ptr @check_align_2._entry_ptr.540, ptr @check_cmpxchg._entry, ptr @check_cmpxchg._entry.162, ptr @check_cmpxchg._entry.164, ptr @check_cmpxchg._entry.166, ptr @check_cmpxchg._entry.168, ptr @check_cmpxchg._entry.170, ptr @check_cmpxchg._entry.172, ptr @check_cmpxchg._entry.174, ptr @check_cmpxchg._entry.176, ptr @check_cmpxchg._entry.178, ptr @check_cmpxchg._entry.180, ptr @check_cmpxchg._entry.182, ptr @check_cmpxchg._entry_ptr, ptr @check_cmpxchg._entry_ptr.163, ptr @check_cmpxchg._entry_ptr.165, ptr @check_cmpxchg._entry_ptr.167, ptr @check_cmpxchg._entry_ptr.169, ptr @check_cmpxchg._entry_ptr.171, ptr @check_cmpxchg._entry_ptr.173, ptr @check_cmpxchg._entry_ptr.175, ptr @check_cmpxchg._entry_ptr.177, ptr @check_cmpxchg._entry_ptr.179, ptr @check_cmpxchg._entry_ptr.181, ptr @check_cmpxchg._entry_ptr.183, ptr @check_create_range_1._entry, ptr @check_create_range_1._entry_ptr, ptr @check_create_range_2._entry, ptr @check_create_range_2._entry_ptr, ptr @check_create_range_3._entry, ptr @check_create_range_3._entry_ptr, ptr @check_create_range_4._entry, ptr @check_create_range_4._entry.493, ptr @check_create_range_4._entry.495, ptr @check_create_range_4._entry.497, ptr @check_create_range_4._entry_ptr, ptr @check_create_range_4._entry_ptr.494, ptr @check_create_range_4._entry_ptr.496, ptr @check_create_range_4._entry_ptr.498, ptr @check_destroy._entry, ptr @check_destroy._entry.391, ptr @check_destroy._entry.393, ptr @check_destroy._entry.395, ptr @check_destroy._entry.397, ptr @check_destroy._entry.399, ptr @check_destroy._entry_ptr, ptr @check_destroy._entry_ptr.392, ptr @check_destroy._entry_ptr.394, ptr @check_destroy._entry_ptr.396, ptr @check_destroy._entry_ptr.398, ptr @check_destroy._entry_ptr.400, ptr @check_find_1._entry, ptr @check_find_1._entry.337, ptr @check_find_1._entry.339, ptr @check_find_1._entry.341, ptr @check_find_1._entry.343, ptr @check_find_1._entry.345, ptr @check_find_1._entry.347, ptr @check_find_1._entry.349, ptr @check_find_1._entry.351, ptr @check_find_1._entry.353, ptr @check_find_1._entry.355, ptr @check_find_1._entry.357, ptr @check_find_1._entry.359, ptr @check_find_1._entry_ptr, ptr @check_find_1._entry_ptr.338, ptr @check_find_1._entry_ptr.340, ptr @check_find_1._entry_ptr.342, ptr @check_find_1._entry_ptr.344, ptr @check_find_1._entry_ptr.346, ptr @check_find_1._entry_ptr.348, ptr @check_find_1._entry_ptr.350, ptr @check_find_1._entry_ptr.352, ptr @check_find_1._entry_ptr.354, ptr @check_find_1._entry_ptr.356, ptr @check_find_1._entry_ptr.358, ptr @check_find_1._entry_ptr.360, ptr @check_find_2._entry, ptr @check_find_2._entry.362, ptr @check_find_2._entry.364, ptr @check_find_2._entry_ptr, ptr @check_find_2._entry_ptr.363, ptr @check_find_2._entry_ptr.365, ptr @check_find_3._entry, ptr @check_find_3._entry_ptr, ptr @check_find_4._entry, ptr @check_find_4._entry.368, ptr @check_find_4._entry_ptr, ptr @check_find_4._entry_ptr.369, ptr @check_find_entry._entry, ptr @check_find_entry._entry.375, ptr @check_find_entry._entry.377, ptr @check_find_entry._entry.379, ptr @check_find_entry._entry_ptr, ptr @check_find_entry._entry_ptr.376, ptr @check_find_entry._entry_ptr.378, ptr @check_find_entry._entry_ptr.380, ptr @check_get_order._entry, ptr @check_get_order._entry.231, ptr @check_get_order._entry_ptr, ptr @check_get_order._entry_ptr.232, ptr @check_insert._entry, ptr @check_insert._entry.144, ptr @check_insert._entry.146, ptr @check_insert._entry.148, ptr @check_insert._entry.150, ptr @check_insert._entry.152, ptr @check_insert._entry.154, ptr @check_insert._entry.156, ptr @check_insert._entry.158, ptr @check_insert._entry_ptr, ptr @check_insert._entry_ptr.145, ptr @check_insert._entry_ptr.147, ptr @check_insert._entry_ptr.149, ptr @check_insert._entry_ptr.151, ptr @check_insert._entry_ptr.153, ptr @check_insert._entry_ptr.155, ptr @check_insert._entry_ptr.157, ptr @check_insert._entry_ptr.159, ptr @check_move._entry, ptr @check_move._entry.402, ptr @check_move._entry.404, ptr @check_move._entry.406, ptr @check_move._entry.408, ptr @check_move._entry.410, ptr @check_move._entry.412, ptr @check_move._entry.414, ptr @check_move._entry.416, ptr @check_move._entry.418, ptr @check_move._entry.420, ptr @check_move._entry.422, ptr @check_move._entry.424, ptr @check_move._entry.426, ptr @check_move._entry.428, ptr @check_move._entry_ptr, ptr @check_move._entry_ptr.403, ptr @check_move._entry_ptr.405, ptr @check_move._entry_ptr.407, ptr @check_move._entry_ptr.409, ptr @check_move._entry_ptr.411, ptr @check_move._entry_ptr.413, ptr @check_move._entry_ptr.415, ptr @check_move._entry_ptr.417, ptr @check_move._entry_ptr.419, ptr @check_move._entry_ptr.421, ptr @check_move._entry_ptr.423, ptr @check_move._entry_ptr.425, ptr @check_move._entry_ptr.427, ptr @check_move._entry_ptr.429, ptr @check_move_max._entry, ptr @check_move_max._entry.446, ptr @check_move_max._entry.448, ptr @check_move_max._entry.450, ptr @check_move_max._entry.452, ptr @check_move_max._entry_ptr, ptr @check_move_max._entry_ptr.447, ptr @check_move_max._entry_ptr.449, ptr @check_move_max._entry_ptr.451, ptr @check_move_max._entry_ptr.453, ptr @check_move_small._entry, ptr @check_move_small._entry.455, ptr @check_move_small._entry.457, ptr @check_move_small._entry.459, ptr @check_move_small._entry.461, ptr @check_move_small._entry.463, ptr @check_move_small._entry.465, ptr @check_move_small._entry.467, ptr @check_move_small._entry.469, ptr @check_move_small._entry.471, ptr @check_move_small._entry.473, ptr @check_move_small._entry.475, ptr @check_move_small._entry.477, ptr @check_move_small._entry.479, ptr @check_move_small._entry.481, ptr @check_move_small._entry.483, ptr @check_move_small._entry_ptr, ptr @check_move_small._entry_ptr.456, ptr @check_move_small._entry_ptr.458, ptr @check_move_small._entry_ptr.460, ptr @check_move_small._entry_ptr.462, ptr @check_move_small._entry_ptr.464, ptr @check_move_small._entry_ptr.466, ptr @check_move_small._entry_ptr.468, ptr @check_move_small._entry_ptr.470, ptr @check_move_small._entry_ptr.472, ptr @check_move_small._entry_ptr.474, ptr @check_move_small._entry_ptr.476, ptr @check_move_small._entry_ptr.478, ptr @check_move_small._entry_ptr.480, ptr @check_move_small._entry_ptr.482, ptr @check_move_small._entry_ptr.484, ptr @check_move_tiny._entry, ptr @check_move_tiny._entry.431, ptr @check_move_tiny._entry.433, ptr @check_move_tiny._entry.435, ptr @check_move_tiny._entry.437, ptr @check_move_tiny._entry.439, ptr @check_move_tiny._entry.441, ptr @check_move_tiny._entry.443, ptr @check_move_tiny._entry_ptr, ptr @check_move_tiny._entry_ptr.432, ptr @check_move_tiny._entry_ptr.434, ptr @check_move_tiny._entry_ptr.436, ptr @check_move_tiny._entry_ptr.438, ptr @check_move_tiny._entry_ptr.440, ptr @check_move_tiny._entry_ptr.442, ptr @check_move_tiny._entry_ptr.444, ptr @check_multi_find_2._entry, ptr @check_multi_find_2._entry_ptr, ptr @check_multi_find_3._entry, ptr @check_multi_find_3._entry.372, ptr @check_multi_find_3._entry_ptr, ptr @check_multi_find_3._entry_ptr.373, ptr @check_pause._entry, ptr @check_pause._entry.382, ptr @check_pause._entry.384, ptr @check_pause._entry.386, ptr @check_pause._entry.388, ptr @check_pause._entry_ptr, ptr @check_pause._entry_ptr.383, ptr @check_pause._entry_ptr.385, ptr @check_pause._entry_ptr.387, ptr @check_pause._entry_ptr.389, ptr @check_reserve._entry, ptr @check_reserve._entry.185, ptr @check_reserve._entry.187, ptr @check_reserve._entry.189, ptr @check_reserve._entry.191, ptr @check_reserve._entry.193, ptr @check_reserve._entry.195, ptr @check_reserve._entry.197, ptr @check_reserve._entry.199, ptr @check_reserve._entry.201, ptr @check_reserve._entry.203, ptr @check_reserve._entry.205, ptr @check_reserve._entry.207, ptr @check_reserve._entry.209, ptr @check_reserve._entry.211, ptr @check_reserve._entry.213, ptr @check_reserve._entry.215, ptr @check_reserve._entry.217, ptr @check_reserve._entry.219, ptr @check_reserve._entry.221, ptr @check_reserve._entry.223, ptr @check_reserve._entry.225, ptr @check_reserve._entry.227, ptr @check_reserve._entry_ptr, ptr @check_reserve._entry_ptr.186, ptr @check_reserve._entry_ptr.188, ptr @check_reserve._entry_ptr.190, ptr @check_reserve._entry_ptr.192, ptr @check_reserve._entry_ptr.194, ptr @check_reserve._entry_ptr.196, ptr @check_reserve._entry_ptr.198, ptr @check_reserve._entry_ptr.200, ptr @check_reserve._entry_ptr.202, ptr @check_reserve._entry_ptr.204, ptr @check_reserve._entry_ptr.206, ptr @check_reserve._entry_ptr.208, ptr @check_reserve._entry_ptr.210, ptr @check_reserve._entry_ptr.212, ptr @check_reserve._entry_ptr.214, ptr @check_reserve._entry_ptr.216, ptr @check_reserve._entry_ptr.218, ptr @check_reserve._entry_ptr.220, ptr @check_reserve._entry_ptr.222, ptr @check_reserve._entry_ptr.224, ptr @check_reserve._entry_ptr.226, ptr @check_reserve._entry_ptr.228, ptr @check_store_iter._entry, ptr @check_store_iter._entry.502, ptr @check_store_iter._entry.504, ptr @check_store_iter._entry.506, ptr @check_store_iter._entry.508, ptr @check_store_iter._entry.510, ptr @check_store_iter._entry.512, ptr @check_store_iter._entry_ptr, ptr @check_store_iter._entry_ptr.503, ptr @check_store_iter._entry_ptr.505, ptr @check_store_iter._entry_ptr.507, ptr @check_store_iter._entry_ptr.509, ptr @check_store_iter._entry_ptr.511, ptr @check_store_iter._entry_ptr.513, ptr @check_workingset._entry, ptr @check_workingset._entry.542, ptr @check_workingset._entry.544, ptr @check_workingset._entry.546, ptr @check_workingset._entry.548, ptr @check_workingset._entry_ptr, ptr @check_workingset._entry_ptr.543, ptr @check_workingset._entry_ptr.545, ptr @check_workingset._entry_ptr.547, ptr @check_workingset._entry_ptr.549, ptr @check_xa_alloc_1._entry, ptr @check_xa_alloc_1._entry.234, ptr @check_xa_alloc_1._entry.236, ptr @check_xa_alloc_1._entry.238, ptr @check_xa_alloc_1._entry.240, ptr @check_xa_alloc_1._entry.242, ptr @check_xa_alloc_1._entry.244, ptr @check_xa_alloc_1._entry.246, ptr @check_xa_alloc_1._entry.248, ptr @check_xa_alloc_1._entry.250, ptr @check_xa_alloc_1._entry.252, ptr @check_xa_alloc_1._entry.254, ptr @check_xa_alloc_1._entry_ptr, ptr @check_xa_alloc_1._entry_ptr.235, ptr @check_xa_alloc_1._entry_ptr.237, ptr @check_xa_alloc_1._entry_ptr.239, ptr @check_xa_alloc_1._entry_ptr.241, ptr @check_xa_alloc_1._entry_ptr.243, ptr @check_xa_alloc_1._entry_ptr.245, ptr @check_xa_alloc_1._entry_ptr.247, ptr @check_xa_alloc_1._entry_ptr.249, ptr @check_xa_alloc_1._entry_ptr.251, ptr @check_xa_alloc_1._entry_ptr.253, ptr @check_xa_alloc_1._entry_ptr.255, ptr @check_xa_alloc_2._entry, ptr @check_xa_alloc_2._entry.261, ptr @check_xa_alloc_2._entry.263, ptr @check_xa_alloc_2._entry.265, ptr @check_xa_alloc_2._entry.267, ptr @check_xa_alloc_2._entry.269, ptr @check_xa_alloc_2._entry.271, ptr @check_xa_alloc_2._entry.273, ptr @check_xa_alloc_2._entry.275, ptr @check_xa_alloc_2._entry.277, ptr @check_xa_alloc_2._entry.279, ptr @check_xa_alloc_2._entry.281, ptr @check_xa_alloc_2._entry.283, ptr @check_xa_alloc_2._entry.285, ptr @check_xa_alloc_2._entry.287, ptr @check_xa_alloc_2._entry.289, ptr @check_xa_alloc_2._entry.291, ptr @check_xa_alloc_2._entry.293, ptr @check_xa_alloc_2._entry.295, ptr @check_xa_alloc_2._entry.297, ptr @check_xa_alloc_2._entry.299, ptr @check_xa_alloc_2._entry.301, ptr @check_xa_alloc_2._entry.303, ptr @check_xa_alloc_2._entry.305, ptr @check_xa_alloc_2._entry.307, ptr @check_xa_alloc_2._entry_ptr, ptr @check_xa_alloc_2._entry_ptr.262, ptr @check_xa_alloc_2._entry_ptr.264, ptr @check_xa_alloc_2._entry_ptr.266, ptr @check_xa_alloc_2._entry_ptr.268, ptr @check_xa_alloc_2._entry_ptr.270, ptr @check_xa_alloc_2._entry_ptr.272, ptr @check_xa_alloc_2._entry_ptr.274, ptr @check_xa_alloc_2._entry_ptr.276, ptr @check_xa_alloc_2._entry_ptr.278, ptr @check_xa_alloc_2._entry_ptr.280, ptr @check_xa_alloc_2._entry_ptr.282, ptr @check_xa_alloc_2._entry_ptr.284, ptr @check_xa_alloc_2._entry_ptr.286, ptr @check_xa_alloc_2._entry_ptr.288, ptr @check_xa_alloc_2._entry_ptr.290, ptr @check_xa_alloc_2._entry_ptr.292, ptr @check_xa_alloc_2._entry_ptr.294, ptr @check_xa_alloc_2._entry_ptr.296, ptr @check_xa_alloc_2._entry_ptr.298, ptr @check_xa_alloc_2._entry_ptr.300, ptr @check_xa_alloc_2._entry_ptr.302, ptr @check_xa_alloc_2._entry_ptr.304, ptr @check_xa_alloc_2._entry_ptr.306, ptr @check_xa_alloc_2._entry_ptr.308, ptr @check_xa_alloc_3._entry, ptr @check_xa_alloc_3._entry.310, ptr @check_xa_alloc_3._entry.312, ptr @check_xa_alloc_3._entry.314, ptr @check_xa_alloc_3._entry.316, ptr @check_xa_alloc_3._entry.318, ptr @check_xa_alloc_3._entry.320, ptr @check_xa_alloc_3._entry.322, ptr @check_xa_alloc_3._entry.324, ptr @check_xa_alloc_3._entry.326, ptr @check_xa_alloc_3._entry.328, ptr @check_xa_alloc_3._entry.330, ptr @check_xa_alloc_3._entry.332, ptr @check_xa_alloc_3._entry.334, ptr @check_xa_alloc_3._entry_ptr, ptr @check_xa_alloc_3._entry_ptr.311, ptr @check_xa_alloc_3._entry_ptr.313, ptr @check_xa_alloc_3._entry_ptr.315, ptr @check_xa_alloc_3._entry_ptr.317, ptr @check_xa_alloc_3._entry_ptr.319, ptr @check_xa_alloc_3._entry_ptr.321, ptr @check_xa_alloc_3._entry_ptr.323, ptr @check_xa_alloc_3._entry_ptr.325, ptr @check_xa_alloc_3._entry_ptr.327, ptr @check_xa_alloc_3._entry_ptr.329, ptr @check_xa_alloc_3._entry_ptr.331, ptr @check_xa_alloc_3._entry_ptr.333, ptr @check_xa_alloc_3._entry_ptr.335, ptr @check_xa_err._entry, ptr @check_xa_err._entry.11, ptr @check_xa_err._entry.5, ptr @check_xa_err._entry.7, ptr @check_xa_err._entry.9, ptr @check_xa_err._entry_ptr, ptr @check_xa_err._entry_ptr.10, ptr @check_xa_err._entry_ptr.12, ptr @check_xa_err._entry_ptr.6, ptr @check_xa_err._entry_ptr.8, ptr @check_xa_load._entry, ptr @check_xa_load._entry.42, ptr @check_xa_load._entry.44, ptr @check_xa_load._entry.46, ptr @check_xa_load._entry.48, ptr @check_xa_load._entry.50, ptr @check_xa_load._entry_ptr, ptr @check_xa_load._entry_ptr.43, ptr @check_xa_load._entry_ptr.45, ptr @check_xa_load._entry_ptr.47, ptr @check_xa_load._entry_ptr.49, ptr @check_xa_load._entry_ptr.51, ptr @check_xa_mark_1._entry, ptr @check_xa_mark_1._entry.53, ptr @check_xa_mark_1._entry.55, ptr @check_xa_mark_1._entry.57, ptr @check_xa_mark_1._entry.59, ptr @check_xa_mark_1._entry.61, ptr @check_xa_mark_1._entry.63, ptr @check_xa_mark_1._entry.65, ptr @check_xa_mark_1._entry.67, ptr @check_xa_mark_1._entry.69, ptr @check_xa_mark_1._entry.71, ptr @check_xa_mark_1._entry.73, ptr @check_xa_mark_1._entry.75, ptr @check_xa_mark_1._entry.77, ptr @check_xa_mark_1._entry.79, ptr @check_xa_mark_1._entry.81, ptr @check_xa_mark_1._entry.83, ptr @check_xa_mark_1._entry.85, ptr @check_xa_mark_1._entry.87, ptr @check_xa_mark_1._entry.89, ptr @check_xa_mark_1._entry.91, ptr @check_xa_mark_1._entry.93, ptr @check_xa_mark_1._entry.95, ptr @check_xa_mark_1._entry_ptr, ptr @check_xa_mark_1._entry_ptr.54, ptr @check_xa_mark_1._entry_ptr.56, ptr @check_xa_mark_1._entry_ptr.58, ptr @check_xa_mark_1._entry_ptr.60, ptr @check_xa_mark_1._entry_ptr.62, ptr @check_xa_mark_1._entry_ptr.64, ptr @check_xa_mark_1._entry_ptr.66, ptr @check_xa_mark_1._entry_ptr.68, ptr @check_xa_mark_1._entry_ptr.70, ptr @check_xa_mark_1._entry_ptr.72, ptr @check_xa_mark_1._entry_ptr.74, ptr @check_xa_mark_1._entry_ptr.76, ptr @check_xa_mark_1._entry_ptr.78, ptr @check_xa_mark_1._entry_ptr.80, ptr @check_xa_mark_1._entry_ptr.82, ptr @check_xa_mark_1._entry_ptr.84, ptr @check_xa_mark_1._entry_ptr.86, ptr @check_xa_mark_1._entry_ptr.88, ptr @check_xa_mark_1._entry_ptr.90, ptr @check_xa_mark_1._entry_ptr.92, ptr @check_xa_mark_1._entry_ptr.94, ptr @check_xa_mark_1._entry_ptr.96, ptr @check_xa_mark_2._entry, ptr @check_xa_mark_2._entry.100, ptr @check_xa_mark_2._entry.102, ptr @check_xa_mark_2._entry.98, ptr @check_xa_mark_2._entry_ptr, ptr @check_xa_mark_2._entry_ptr.101, ptr @check_xa_mark_2._entry_ptr.103, ptr @check_xa_mark_2._entry_ptr.99, ptr @check_xa_shrink._entry, ptr @check_xa_shrink._entry.105, ptr @check_xa_shrink._entry.107, ptr @check_xa_shrink._entry.109, ptr @check_xa_shrink._entry.111, ptr @check_xa_shrink._entry.113, ptr @check_xa_shrink._entry.115, ptr @check_xa_shrink._entry.117, ptr @check_xa_shrink._entry.119, ptr @check_xa_shrink._entry.121, ptr @check_xa_shrink._entry.123, ptr @check_xa_shrink._entry.125, ptr @check_xa_shrink._entry.127, ptr @check_xa_shrink._entry.129, ptr @check_xa_shrink._entry.131, ptr @check_xa_shrink._entry.133, ptr @check_xa_shrink._entry.135, ptr @check_xa_shrink._entry.137, ptr @check_xa_shrink._entry_ptr, ptr @check_xa_shrink._entry_ptr.106, ptr @check_xa_shrink._entry_ptr.108, ptr @check_xa_shrink._entry_ptr.110, ptr @check_xa_shrink._entry_ptr.112, ptr @check_xa_shrink._entry_ptr.114, ptr @check_xa_shrink._entry_ptr.116, ptr @check_xa_shrink._entry_ptr.118, ptr @check_xa_shrink._entry_ptr.120, ptr @check_xa_shrink._entry_ptr.122, ptr @check_xa_shrink._entry_ptr.124, ptr @check_xa_shrink._entry_ptr.126, ptr @check_xa_shrink._entry_ptr.128, ptr @check_xa_shrink._entry_ptr.130, ptr @check_xa_shrink._entry_ptr.132, ptr @check_xa_shrink._entry_ptr.134, ptr @check_xa_shrink._entry_ptr.136, ptr @check_xa_shrink._entry_ptr.138, ptr @check_xas_erase._entry, ptr @check_xas_erase._entry.141, ptr @check_xas_erase._entry_ptr, ptr @check_xas_erase._entry_ptr.142, ptr @check_xas_retry._entry, ptr @check_xas_retry._entry.16, ptr @check_xas_retry._entry.18, ptr @check_xas_retry._entry.20, ptr @check_xas_retry._entry.22, ptr @check_xas_retry._entry.24, ptr @check_xas_retry._entry.26, ptr @check_xas_retry._entry.28, ptr @check_xas_retry._entry.30, ptr @check_xas_retry._entry.32, ptr @check_xas_retry._entry_ptr, ptr @check_xas_retry._entry_ptr.17, ptr @check_xas_retry._entry_ptr.19, ptr @check_xas_retry._entry_ptr.21, ptr @check_xas_retry._entry_ptr.23, ptr @check_xas_retry._entry_ptr.25, ptr @check_xas_retry._entry_ptr.27, ptr @check_xas_retry._entry_ptr.29, ptr @check_xas_retry._entry_ptr.31, ptr @check_xas_retry._entry_ptr.33, ptr @shadow_remove._entry, ptr @shadow_remove._entry_ptr, ptr @xa_alloc_index._entry, ptr @xa_alloc_index._entry.257, ptr @xa_alloc_index._entry_ptr, ptr @xa_alloc_index._entry_ptr.258, ptr @xa_erase_index._entry, ptr @xa_erase_index._entry.37, ptr @xa_erase_index._entry_ptr, ptr @xa_erase_index._entry_ptr.38, ptr @xa_insert_index._entry, ptr @xa_insert_index._entry_ptr, ptr @xa_store_many_order._entry, ptr @xa_store_many_order._entry.487, ptr @xa_store_many_order._entry.489, ptr @xa_store_many_order._entry_ptr, ptr @xa_store_many_order._entry_ptr.488, ptr @xa_store_many_order._entry_ptr.490, ptr @xarray_checks._entry, ptr @xarray_checks._entry_ptr, ptr @array, ptr @xa0, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tests_passed, ptr @tests_run, ptr @.str.3, ptr @.str.4, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.52, ptr @.str.97, ptr @.str.104, ptr @.str.139, ptr @.str.140, ptr @.str.143, ptr @.str.160, ptr @.str.161, ptr @.str.184, ptr @.str.229, ptr @.str.230, ptr @xa1, ptr @.str.233, ptr @.str.256, ptr @.str.259, ptr @.str.260, ptr @.str.309, ptr @.str.336, ptr @.str.361, ptr @.str.366, ptr @.str.367, ptr @.str.370, ptr @.str.371, ptr @.str.374, ptr @.str.381, ptr @.str.390, ptr @.str.401, ptr @.str.430, ptr @.str.445, ptr @.str.454, ptr @.str.485, ptr @.str.486, ptr @.str.491, ptr @.str.492, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.514, ptr @.str.527, ptr @.str.532, ptr @shadow_nodes, ptr @.str.541, ptr @.str.550], section "llvm.metadata"
@0 = internal global [344 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa0 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xarray_checks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tests_passed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tests_run to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_err._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_err._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_err._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_err._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_retry._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_erase_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_erase_index._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_load._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_load._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_load._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_load._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_load._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_1._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_2._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_2._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_mark_2._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_shrink._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xas_erase._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_insert._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_insert_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmpxchg._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_get_order._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_get_order._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_1._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_alloc_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_alloc_index._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_2._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_xa_alloc_3._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_1._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_2._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_2._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_4._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_multi_find_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_multi_find_3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_multi_find_3._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_entry._entry.375 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_entry._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_find_entry._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pause._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pause._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pause._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pause._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_destroy._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_destroy._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_destroy._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_destroy._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_destroy._entry.399 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.402 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.412 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.420 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.426 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry.431 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry.435 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry.437 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry.439 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry.441 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_tiny._entry.443 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_max._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_max._entry.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_max._entry.448 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_max._entry.450 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_max._entry.452 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.455 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.459 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.461 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.463 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.465 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.467 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.469 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.473 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.475 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.477 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.479 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.481 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_move_small._entry.483 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_create_range_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_store_many_order._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_store_many_order._entry.487 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_store_many_order._entry.489 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_create_range_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_create_range_4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_create_range_4._entry.493 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_create_range_4._entry.495 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_create_range_4._entry.497 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_create_range_3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_store_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.501 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_store_iter._entry.502 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_store_iter._entry.504 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_store_iter._entry.506 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_store_iter._entry.508 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_store_iter._entry.510 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_store_iter._entry.512 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_1._entry.528 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_1._entry.530 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_2._entry.533 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_2._entry.535 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_2._entry.537 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_align_2._entry.539 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_workingset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.541 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_workingset._entry.542 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_workingset._entry.544 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_workingset._entry.546 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_workingset._entry.548 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.550 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xa_dump(ptr nocapture %xa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xarray_checks() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @check_xa_err()
  tail call fastcc void @check_xas_retry()
  tail call fastcc void @check_xa_load()
  tail call fastcc void @check_xa_mark()
  tail call fastcc void @check_xa_shrink()
  tail call fastcc void @check_xas_erase()
  tail call fastcc void @check_insert()
  tail call fastcc void @check_cmpxchg()
  tail call fastcc void @check_reserve(ptr noundef nonnull @array)
  tail call fastcc void @check_reserve(ptr noundef nonnull @xa0)
  tail call fastcc void @check_get_order()
  tail call fastcc void @check_xa_alloc()
  tail call fastcc void @check_find()
  tail call fastcc void @check_find_entry()
  tail call fastcc void @check_pause()
  tail call fastcc void @check_destroy()
  tail call fastcc void @check_move()
  tail call fastcc void @check_create_range()
  tail call fastcc void @check_store_range()
  tail call fastcc void @check_store_iter()
  tail call fastcc void @check_align()
  tail call fastcc void @check_workingset(i32 noundef 0)
  tail call fastcc void @check_workingset(i32 noundef 64)
  tail call fastcc void @check_workingset(i32 noundef 4096)
  %0 = load i32, ptr @tests_passed, align 4
  %1 = load i32, ptr @tests_run, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %1) #10
  %2 = load i32, ptr @tests_run, align 4
  %3 = load i32, ptr @tests_passed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp = icmp eq i32 %2, %3
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xarray_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_err() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 2048) #11
  %1 = ptrtoint ptr %call1.i to i32
  %and.i.i.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 2
  %cmp.i.i = icmp ult ptr %call1.i, inttoptr (i32 -16378 to ptr)
  %cmp.not26 = icmp ult ptr %call1.i, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i = or i1 %cmp.i.i, %cmp.i.i.i
  %cmp.not = or i1 %cmp.not26, %not.spec.select.i.i
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 88) #10
  tail call void @dump_stack() #10
  br label %do.body6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %2, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.body6

do.body6:                                         ; preds = %if.else, %do.end
  %3 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %3, 1
  store i32 %inc7, ptr @tests_run, align 4
  %call8 = tail call ptr @xa_erase(ptr noundef nonnull @array, i32 noundef 0) #11
  %4 = ptrtoint ptr %call8 to i32
  %and.i.i.i1 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i1)
  %cmp.i.i.i2 = icmp ne i32 %and.i.i.i1, 2
  %cmp.i.i3 = icmp ult ptr %call8, inttoptr (i32 -16378 to ptr)
  %cmp10.not27 = icmp ult ptr %call8, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i4 = or i1 %cmp.i.i3, %cmp.i.i.i2
  %cmp10.not = or i1 %cmp10.not27, %not.spec.select.i.i4
  br i1 %cmp10.not, label %if.else16, label %do.end13

do.end13:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 89) #10
  tail call void @dump_stack() #10
  br label %do.body20

if.else16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %5, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.body20

do.body20:                                        ; preds = %if.else16, %do.end13
  %6 = load i32, ptr @tests_run, align 4
  %inc21 = add i32 %6, 1
  store i32 %inc21, ptr @tests_run, align 4
  %call1.i7 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 3 to ptr), i32 noundef 3264) #11
  %7 = ptrtoint ptr %call1.i7 to i32
  %and.i.i.i8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i8)
  %cmp.i.i.i9 = icmp ne i32 %and.i.i.i8, 2
  %cmp.i.i10 = icmp ult ptr %call1.i7, inttoptr (i32 -16378 to ptr)
  %cmp24.not28 = icmp ult ptr %call1.i7, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i11 = or i1 %cmp.i.i10, %cmp.i.i.i9
  %cmp24.not = or i1 %cmp24.not28, %not.spec.select.i.i11
  br i1 %cmp24.not, label %if.else30, label %do.end27

do.end27:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 95) #10
  tail call void @dump_stack() #10
  br label %do.body34

if.else30:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc31 = add i32 %8, 1
  store i32 %inc31, ptr @tests_passed, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.else30, %do.end27
  %9 = load i32, ptr @tests_run, align 4
  %inc35 = add i32 %9, 1
  store i32 %inc35, ptr @tests_run, align 4
  %call37 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  %10 = ptrtoint ptr %call37 to i32
  %and.i.i.i14 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i14)
  %cmp.i.i.i15 = icmp ne i32 %and.i.i.i14, 2
  %cmp.i.i16 = icmp ult ptr %call37, inttoptr (i32 -16378 to ptr)
  %cmp39.not29 = icmp ult ptr %call37, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i17 = or i1 %cmp.i.i16, %cmp.i.i.i15
  %cmp39.not = or i1 %cmp39.not29, %not.spec.select.i.i17
  br i1 %cmp39.not, label %if.else45, label %do.end42

do.end42:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 96) #10
  tail call void @dump_stack() #10
  br label %do.body49

if.else45:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc46 = add i32 %11, 1
  store i32 %inc46, ptr @tests_passed, align 4
  br label %do.body49

do.body49:                                        ; preds = %if.else45, %do.end42
  %12 = load i32, ptr @tests_run, align 4
  %inc50 = add i32 %12, 1
  store i32 %inc50, ptr @tests_run, align 4
  %call51 = tail call ptr @xa_erase(ptr noundef nonnull @array, i32 noundef 1) #11
  %13 = ptrtoint ptr %call51 to i32
  %and.i.i.i20 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i20)
  %cmp.i.i.i21 = icmp ne i32 %and.i.i.i20, 2
  %cmp.i.i22 = icmp ult ptr %call51, inttoptr (i32 -16378 to ptr)
  %cmp53.not30 = icmp ult ptr %call51, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i23 = or i1 %cmp.i.i22, %cmp.i.i.i21
  %cmp53.not = or i1 %cmp53.not30, %not.spec.select.i.i23
  br i1 %cmp53.not, label %if.else59, label %do.end56

do.end56:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 97) #10
  tail call void @dump_stack() #10
  br label %do.end62

if.else59:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i32, ptr @tests_passed, align 4
  %inc60 = add i32 %14, 1
  store i32 %inc60, ptr @tests_passed, align 4
  br label %do.end62

do.end62:                                         ; preds = %if.else59, %do.end56
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xas_retry() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @array, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %0, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %call1.i12 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  %call1.i13 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 3 to ptr), i32 noundef 3264) #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %14 = load i32, ptr @tests_run, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @tests_run, align 4
  %call4 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %cmp.not = icmp eq ptr %call4, inttoptr (i32 1 to ptr)
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef 111) #10
  call void @dump_stack() #10
  br label %do.end10

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @tests_passed, align 4
  %inc8 = add i32 %15, 1
  store i32 %inc8, ptr @tests_passed, align 4
  br label %do.end10

do.end10:                                         ; preds = %if.else, %do.end
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 1)
  %16 = load i32, ptr @tests_run, align 4
  %inc12 = add i32 %16, 1
  store i32 %inc12, ptr @tests_run, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %tobool.not.i14 = icmp eq ptr %18, null
  br i1 %tobool.not.i14, label %if.then.i15, label %if.end.i

if.then.i15:                                      ; preds = %do.end10
  %19 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xas, align 4
  %xa_head.i.i = getelementptr inbounds %struct.xarray, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %xa_head.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then.i15.xas_reload.exit_crit_edge

if.then.i15.xas_reload.exit_crit_edge:            ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

lor.lhs.false.i.i:                                ; preds = %if.then.i15
  %call2.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_reload.exit_crit_edge

lor.lhs.false.i.i.xas_reload.exit_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.xas_reload.exit_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.xas_reload.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b12.i.i = load i1, ptr @xa_head.__warned, align 1
  br i1 %.b12.i.i, label %land.lhs.true6.i.i.xas_reload.exit_crit_edge, label %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge

land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

land.lhs.true6.i.i.xas_reload.exit_crit_edge:     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

if.end.i:                                         ; preds = %do.end10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 2
  %25 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xas, align 4
  %conv.i = zext i8 %24 to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %18, i32 0, i32 7, i32 %conv.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i10.i = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %call.i.i11.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i10.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i.i11.i, 0
  br i1 %tobool.not.i12.i, label %lor.lhs.false.i15.i, label %if.end.i.xas_reload.exit_crit_edge

if.end.i.xas_reload.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

lor.lhs.false.i15.i:                              ; preds = %if.end.i
  %call4.i13.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i13.i)
  %tobool5.not.i14.i = icmp eq i32 %call4.i13.i, 0
  br i1 %tobool5.not.i14.i, label %land.lhs.true.i16.i, label %lor.lhs.false.i15.i.xas_reload.exit_crit_edge

lor.lhs.false.i15.i.xas_reload.exit_crit_edge:    ; preds = %lor.lhs.false.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

land.lhs.true.i16.i:                              ; preds = %lor.lhs.false.i15.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i16.i.xas_reload.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i16.i.xas_reload.exit_crit_edge:    ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i16.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_reload.exit_crit_edge, label %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge

land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

land.lhs.true8.i.i.xas_reload.exit_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit

cleanup.sink.split.i:                             ; preds = %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge
  %xa_entry.__warned.sink.i = phi ptr [ @xa_head.__warned, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge ], [ @xa_entry.__warned, %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1167, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge ], [ 1183, %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi ptr [ %22, %land.lhs.true6.i.i.cleanup.sink.split.i_crit_edge ], [ %28, %land.lhs.true8.i.i.cleanup.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %xa_entry.__warned.sink.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i1 true, ptr %xa_entry.__warned.sink.i, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef %.sink.i, ptr noundef nonnull @.str.39) #11
  br label %xas_reload.exit

xas_reload.exit:                                  ; preds = %cleanup.sink.split.i, %land.lhs.true8.i.i.xas_reload.exit_crit_edge, %land.lhs.true.i16.i.xas_reload.exit_crit_edge, %lor.lhs.false.i15.i.xas_reload.exit_crit_edge, %if.end.i.xas_reload.exit_crit_edge, %land.lhs.true6.i.i.xas_reload.exit_crit_edge, %land.lhs.true.i.i.xas_reload.exit_crit_edge, %lor.lhs.false.i.i.xas_reload.exit_crit_edge, %if.then.i15.xas_reload.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.then.i15.xas_reload.exit_crit_edge ], [ %22, %lor.lhs.false.i.i.xas_reload.exit_crit_edge ], [ %22, %land.lhs.true.i.i.xas_reload.exit_crit_edge ], [ %22, %land.lhs.true6.i.i.xas_reload.exit_crit_edge ], [ %28, %if.end.i.xas_reload.exit_crit_edge ], [ %28, %lor.lhs.false.i15.i.xas_reload.exit_crit_edge ], [ %28, %land.lhs.true.i16.i.xas_reload.exit_crit_edge ], [ %28, %land.lhs.true8.i.i.xas_reload.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %cmp.i = icmp eq ptr %retval.0.i, inttoptr (i32 1026 to ptr)
  br i1 %cmp.i, label %if.else21, label %do.end18

do.end18:                                         ; preds = %xas_reload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef 113) #10
  call void @dump_stack() #10
  br label %do.body70

if.else21:                                        ; preds = %xas_reload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = load i32, ptr @tests_passed, align 4
  %inc22 = add i32 %30, 1
  store i32 %inc22, ptr @tests_passed, align 4
  br label %do.body70

do.body70:                                        ; preds = %if.else21, %do.end18
  %31 = load i32, ptr @tests_run, align 4
  %32 = load i32, ptr @tests_passed, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %inc66 = add i32 %32, 3
  store i32 %inc66, ptr @tests_passed, align 4
  %inc71 = add i32 %31, 4
  store i32 %inc71, ptr @tests_run, align 4
  %call72 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %cmp74.not = icmp eq ptr %call72, inttoptr (i32 1 to ptr)
  br i1 %cmp74.not, label %if.else81, label %do.end78

do.end78:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef 118) #10
  call void @dump_stack() #10
  br label %do.body86

if.else81:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %34 = load i32, ptr @tests_passed, align 4
  %inc82 = add i32 %34, 1
  store i32 %inc82, ptr @tests_passed, align 4
  br label %do.body86

do.body86:                                        ; preds = %if.else81, %do.end78
  %35 = load i32, ptr @tests_run, align 4
  %inc87 = add i32 %35, 1
  store i32 %inc87, ptr @tests_run, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %2, align 4
  %cmp89.not = icmp eq ptr %37, null
  br i1 %cmp89.not, label %if.else96, label %do.end93

do.end93:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef 119) #10
  call void @dump_stack() #10
  br label %do.end100

if.else96:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i32, ptr @tests_passed, align 4
  %inc97 = add i32 %38, 1
  store i32 %inc97, ptr @tests_passed, align 4
  br label %do.end100

do.end100:                                        ; preds = %if.else96, %do.end93
  %call.i19 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i19, label %do.end100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

do.end100.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %do.end100
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %do.end100.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %39 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i26 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %43 = load i32, ptr @tests_run, align 4
  %inc102 = add i32 %43, 1
  store i32 %inc102, ptr @tests_run, align 4
  %call1.i28 = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 3 to ptr), i32 noundef 3264) #11
  %cmp104.not = icmp eq ptr %call1.i28, null
  br i1 %cmp104.not, label %if.else111, label %do.end108

do.end108:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef 122) #10
  call void @dump_stack() #10
  br label %do.end115

if.else111:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = load i32, ptr @tests_passed, align 4
  %inc112 = add i32 %44, 1
  store i32 %inc112, ptr @tests_passed, align 4
  br label %do.end115

do.end115:                                        ; preds = %if.else111, %do.end108
  %45 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i1 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %preempt_count.i.i.i.i2 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i2, align 4
  %add.i.i.i3 = add i32 %48, 1
  store volatile i32 %add.i.i.i3, ptr %preempt_count.i.i.i.i2, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i4 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4, label %do.end115.rcu_read_lock.exit11_crit_edge, label %land.lhs.true.i7

do.end115.rcu_read_lock.exit11_crit_edge:         ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true.i7:                                 ; preds = %do.end115
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_lock.exit11_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit11

rcu_read_lock.exit11:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, %do.end115.rcu_read_lock.exit11_crit_edge
  %49 = load i32, ptr @tests_run, align 4
  %inc117 = add i32 %49, 1
  store i32 %inc117, ptr @tests_run, align 4
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %2, align 4
  %tobool.not.i30 = icmp eq ptr %51, null
  br i1 %tobool.not.i30, label %if.then.i35, label %if.end.i50

if.then.i35:                                      ; preds = %rcu_read_lock.exit11
  %52 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xas, align 4
  %xa_head.i.i31 = getelementptr inbounds %struct.xarray, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %xa_head.i.i31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %xa_head.i.i31, align 4
  %dep_map.i.i32 = getelementptr inbounds %struct.anon, ptr %53, i32 0, i32 1
  %call.i.i.i33 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i32, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33)
  %tobool.not.i.i34 = icmp eq i32 %call.i.i.i33, 0
  br i1 %tobool.not.i.i34, label %lor.lhs.false.i.i38, label %if.then.i35.xas_reload.exit64_crit_edge

if.then.i35.xas_reload.exit64_crit_edge:          ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

lor.lhs.false.i.i38:                              ; preds = %if.then.i35
  %call2.i.i36 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i36)
  %tobool3.not.i.i37 = icmp eq i32 %call2.i.i36, 0
  br i1 %tobool3.not.i.i37, label %land.lhs.true.i.i41, label %lor.lhs.false.i.i38.xas_reload.exit64_crit_edge

lor.lhs.false.i.i38.xas_reload.exit64_crit_edge:  ; preds = %lor.lhs.false.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

land.lhs.true.i.i41:                              ; preds = %lor.lhs.false.i.i38
  %call4.i.i39 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i39)
  %tobool5.not.i.i40 = icmp eq i32 %call4.i.i39, 0
  br i1 %tobool5.not.i.i40, label %land.lhs.true.i.i41.xas_reload.exit64_crit_edge, label %land.lhs.true6.i.i43

land.lhs.true.i.i41.xas_reload.exit64_crit_edge:  ; preds = %land.lhs.true.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

land.lhs.true6.i.i43:                             ; preds = %land.lhs.true.i.i41
  %.b12.i.i42 = load i1, ptr @xa_head.__warned, align 1
  br i1 %.b12.i.i42, label %land.lhs.true6.i.i43.xas_reload.exit64_crit_edge, label %land.lhs.true6.i.i43.cleanup.sink.split.i62_crit_edge

land.lhs.true6.i.i43.cleanup.sink.split.i62_crit_edge: ; preds = %land.lhs.true6.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i62

land.lhs.true6.i.i43.xas_reload.exit64_crit_edge: ; preds = %land.lhs.true6.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

if.end.i50:                                       ; preds = %rcu_read_lock.exit11
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %1, align 2
  %58 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xas, align 4
  %conv.i45 = zext i8 %57 to i32
  %arrayidx.i.i46 = getelementptr %struct.xa_node, ptr %51, i32 0, i32 7, i32 %conv.i45
  %60 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %arrayidx.i.i46, align 4
  %dep_map.i10.i47 = getelementptr inbounds %struct.anon, ptr %59, i32 0, i32 1
  %call.i.i11.i48 = call i32 @lock_is_held_type(ptr noundef %dep_map.i10.i47, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i48)
  %tobool.not.i12.i49 = icmp eq i32 %call.i.i11.i48, 0
  br i1 %tobool.not.i12.i49, label %lor.lhs.false.i15.i53, label %if.end.i50.xas_reload.exit64_crit_edge

if.end.i50.xas_reload.exit64_crit_edge:           ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

lor.lhs.false.i15.i53:                            ; preds = %if.end.i50
  %call4.i13.i51 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i13.i51)
  %tobool5.not.i14.i52 = icmp eq i32 %call4.i13.i51, 0
  br i1 %tobool5.not.i14.i52, label %land.lhs.true.i16.i56, label %lor.lhs.false.i15.i53.xas_reload.exit64_crit_edge

lor.lhs.false.i15.i53.xas_reload.exit64_crit_edge: ; preds = %lor.lhs.false.i15.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

land.lhs.true.i16.i56:                            ; preds = %lor.lhs.false.i15.i53
  %call6.i.i54 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i54)
  %tobool7.not.i.i55 = icmp eq i32 %call6.i.i54, 0
  br i1 %tobool7.not.i.i55, label %land.lhs.true.i16.i56.xas_reload.exit64_crit_edge, label %land.lhs.true8.i.i58

land.lhs.true.i16.i56.xas_reload.exit64_crit_edge: ; preds = %land.lhs.true.i16.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

land.lhs.true8.i.i58:                             ; preds = %land.lhs.true.i16.i56
  %.b13.i.i57 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i57, label %land.lhs.true8.i.i58.xas_reload.exit64_crit_edge, label %land.lhs.true8.i.i58.cleanup.sink.split.i62_crit_edge

land.lhs.true8.i.i58.cleanup.sink.split.i62_crit_edge: ; preds = %land.lhs.true8.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i62

land.lhs.true8.i.i58.xas_reload.exit64_crit_edge: ; preds = %land.lhs.true8.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_reload.exit64

cleanup.sink.split.i62:                           ; preds = %land.lhs.true8.i.i58.cleanup.sink.split.i62_crit_edge, %land.lhs.true6.i.i43.cleanup.sink.split.i62_crit_edge
  %xa_entry.__warned.sink.i59 = phi ptr [ @xa_head.__warned, %land.lhs.true6.i.i43.cleanup.sink.split.i62_crit_edge ], [ @xa_entry.__warned, %land.lhs.true8.i.i58.cleanup.sink.split.i62_crit_edge ]
  %.sink.i60 = phi i32 [ 1167, %land.lhs.true6.i.i43.cleanup.sink.split.i62_crit_edge ], [ 1183, %land.lhs.true8.i.i58.cleanup.sink.split.i62_crit_edge ]
  %retval.0.ph.i61 = phi ptr [ %55, %land.lhs.true6.i.i43.cleanup.sink.split.i62_crit_edge ], [ %61, %land.lhs.true8.i.i58.cleanup.sink.split.i62_crit_edge ]
  %62 = ptrtoint ptr %xa_entry.__warned.sink.i59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i1 true, ptr %xa_entry.__warned.sink.i59, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef %.sink.i60, ptr noundef nonnull @.str.39) #11
  br label %xas_reload.exit64

xas_reload.exit64:                                ; preds = %cleanup.sink.split.i62, %land.lhs.true8.i.i58.xas_reload.exit64_crit_edge, %land.lhs.true.i16.i56.xas_reload.exit64_crit_edge, %lor.lhs.false.i15.i53.xas_reload.exit64_crit_edge, %if.end.i50.xas_reload.exit64_crit_edge, %land.lhs.true6.i.i43.xas_reload.exit64_crit_edge, %land.lhs.true.i.i41.xas_reload.exit64_crit_edge, %lor.lhs.false.i.i38.xas_reload.exit64_crit_edge, %if.then.i35.xas_reload.exit64_crit_edge
  %retval.0.i63 = phi ptr [ %55, %if.then.i35.xas_reload.exit64_crit_edge ], [ %55, %lor.lhs.false.i.i38.xas_reload.exit64_crit_edge ], [ %55, %land.lhs.true.i.i41.xas_reload.exit64_crit_edge ], [ %55, %land.lhs.true6.i.i43.xas_reload.exit64_crit_edge ], [ %61, %if.end.i50.xas_reload.exit64_crit_edge ], [ %61, %lor.lhs.false.i15.i53.xas_reload.exit64_crit_edge ], [ %61, %land.lhs.true.i16.i56.xas_reload.exit64_crit_edge ], [ %61, %land.lhs.true8.i.i58.xas_reload.exit64_crit_edge ], [ %retval.0.ph.i61, %cleanup.sink.split.i62 ]
  %63 = ptrtoint ptr %retval.0.i63 to i32
  %and.i = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i65 = icmp eq i32 %and.i, 2
  br i1 %cmp.i65, label %if.else126, label %do.end123

do.end123:                                        ; preds = %xas_reload.exit64
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef 125) #10
  call void @dump_stack() #10
  br label %do.end130

if.else126:                                       ; preds = %xas_reload.exit64
  call void @__sanitizer_cov_trace_pc() #9
  %64 = load i32, ptr @tests_passed, align 4
  %inc127 = add i32 %64, 1
  store i32 %inc127, ptr @tests_passed, align 4
  br label %do.end130

do.end130:                                        ; preds = %if.else126, %do.end123
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %66 = load i32, ptr @tests_run, align 4
  %inc133 = add i32 %66, 1
  store i32 %inc133, ptr @tests_run, align 4
  %call134 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %cmp136.not = icmp eq ptr %call134, inttoptr (i32 1 to ptr)
  br i1 %cmp136.not, label %if.else143, label %do.end140

do.end140:                                        ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, i32 noundef 127) #10
  call void @dump_stack() #10
  br label %do.end147

if.else143:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  %67 = load i32, ptr @tests_passed, align 4
  %inc144 = add i32 %67, 1
  store i32 %inc144, ptr @tests_passed, align 4
  br label %do.end147

do.end147:                                        ; preds = %if.else143, %do.end140
  %call.i66 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i66, label %do.end147.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

do.end147.rcu_read_unlock.exit76_crit_edge:       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %do.end147
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %do.end147.rcu_read_unlock.exit76_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %68 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i73 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %71, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %72 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %73) #11
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %0, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %call150 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull inttoptr (i32 1026 to ptr)) #11
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %0, align 4
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %call152 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull inttoptr (i32 1026 to ptr)) #11
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %0, align 4
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %call153 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %tobool.not83 = icmp eq ptr %call153, null
  br i1 %tobool.not83, label %rcu_read_unlock.exit76.for.end_crit_edge, label %rcu_read_unlock.exit76.for.body_crit_edge

rcu_read_unlock.exit76.for.body_crit_edge:        ; preds = %rcu_read_unlock.exit76
  br label %for.body

rcu_read_unlock.exit76.for.end_crit_edge:         ; preds = %rcu_read_unlock.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_unlock.exit76.for.body_crit_edge
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %0, align 4
  %and.i82 = shl i32 %81, 1
  %or.i.i = or i32 %and.i82, 1
  %82 = inttoptr i32 %or.i.i to ptr
  %call156 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %82) #11
  %call157 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %tobool.not = icmp eq ptr %call157, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_unlock.exit76.for.end_crit_edge
  %83 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %84) #11
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 0)
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_load() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc45.for.cond1.preheader_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc46, %for.inc45.for.cond1.preheader_crit_edge ]
  br label %for.body3

for.body3:                                        ; preds = %if.end28.for.body3_crit_edge, %for.cond1.preheader
  %j.02 = phi i32 [ 0, %for.cond1.preheader ], [ %inc29, %if.end28.for.body3_crit_edge ]
  %call = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %j.02) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %j.02, i32 %i.04)
  %cmp5 = icmp ult i32 %j.02, %i.04
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  br i1 %cmp5, label %do.body, label %do.body15

do.body:                                          ; preds = %for.body3
  %1 = ptrtoint ptr %call to i32
  %shr.i = lshr i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %j.02)
  %cmp7.not = icmp eq i32 %shr.i, %j.02
  br i1 %cmp7.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef 155) #10
  tail call void @dump_stack() #10
  br label %if.end28

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc11 = add i32 %2, 1
  store i32 %inc11, ptr @tests_passed, align 4
  br label %if.end28

do.body15:                                        ; preds = %for.body3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else23, label %do.end20

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef 157) #10
  tail call void @dump_stack() #10
  br label %if.end28

if.else23:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @tests_passed, align 4
  %inc24 = add i32 %3, 1
  store i32 %inc24, ptr @tests_passed, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %do.end20, %if.else, %do.end
  %inc29 = add nuw nsw i32 %j.02, 1
  %exitcond.not = icmp eq i32 %inc29, 1024
  br i1 %exitcond.not, label %do.body30, label %if.end28.for.body3_crit_edge

if.end28.for.body3_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

do.body30:                                        ; preds = %if.end28
  %4 = load i32, ptr @tests_run, align 4
  %inc31 = add i32 %4, 1
  store i32 %inc31, ptr @tests_run, align 4
  %and.i.i = shl nuw i32 %i.04, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %5 = inttoptr i32 %or.i.i.i to ptr
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %i.04, ptr noundef nonnull %5, i32 noundef 3264) #11
  %cmp33.not = icmp eq ptr %call1.i, null
  br i1 %cmp33.not, label %if.else40, label %do.end37

do.end37:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef 159) #10
  tail call void @dump_stack() #10
  br label %for.inc45

if.else40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr @tests_passed, align 4
  %inc41 = add i32 %6, 1
  store i32 %inc41, ptr @tests_passed, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %if.else40, %do.end37
  %inc46 = add nuw nsw i32 %i.04, 1
  %exitcond8.not = icmp eq i32 %inc46, 1024
  br i1 %exitcond8.not, label %for.inc45.for.cond51.preheader_crit_edge, label %for.inc45.for.cond1.preheader_crit_edge

for.inc45.for.cond1.preheader_crit_edge:          ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.inc45.for.cond51.preheader_crit_edge:         ; preds = %for.inc45
  br label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.end91.for.cond51.preheader_crit_edge, %for.inc45.for.cond51.preheader_crit_edge
  %i.17 = phi i32 [ %inc93, %for.end91.for.cond51.preheader_crit_edge ], [ 0, %for.inc45.for.cond51.preheader_crit_edge ]
  br label %for.body53

for.body53:                                       ; preds = %if.end88.for.body53_crit_edge, %for.cond51.preheader
  %j.15 = phi i32 [ 0, %for.cond51.preheader ], [ %inc90, %if.end88.for.body53_crit_edge ]
  %call55 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %j.15) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %j.15, i32 %i.17)
  %cmp56.not = icmp ult i32 %j.15, %i.17
  %7 = load i32, ptr @tests_run, align 4
  %inc75 = add i32 %7, 1
  store i32 %inc75, ptr @tests_run, align 4
  br i1 %cmp56.not, label %do.body74, label %do.body58

do.body58:                                        ; preds = %for.body53
  %8 = ptrtoint ptr %call55 to i32
  %shr.i1 = lshr i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i1, i32 %j.15)
  %cmp61.not = icmp eq i32 %shr.i1, %j.15
  br i1 %cmp61.not, label %if.else68, label %do.end65

do.end65:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef 166) #10
  tail call void @dump_stack() #10
  br label %if.end88

if.else68:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @tests_passed, align 4
  %inc69 = add i32 %9, 1
  store i32 %inc69, ptr @tests_passed, align 4
  br label %if.end88

do.body74:                                        ; preds = %for.body53
  %tobool76.not = icmp eq ptr %call55, null
  br i1 %tobool76.not, label %if.else83, label %do.end80

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef 168) #10
  tail call void @dump_stack() #10
  br label %if.end88

if.else83:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load i32, ptr @tests_passed, align 4
  %inc84 = add i32 %10, 1
  store i32 %inc84, ptr @tests_passed, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else83, %do.end80, %if.else68, %do.end65
  %inc90 = add nuw nsw i32 %j.15, 1
  %exitcond9.not = icmp eq i32 %inc90, 1024
  br i1 %exitcond9.not, label %for.end91, label %if.end88.for.body53_crit_edge

if.end88.for.body53_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body53

for.end91:                                        ; preds = %if.end88
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %i.17)
  %inc93 = add nuw nsw i32 %i.17, 1
  %exitcond10.not = icmp eq i32 %inc93, 1024
  br i1 %exitcond10.not, label %do.body95, label %for.end91.for.cond51.preheader_crit_edge

for.end91.for.cond51.preheader_crit_edge:         ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond51.preheader

do.body95:                                        ; preds = %for.end91
  %11 = load i32, ptr @tests_run, align 4
  %inc96 = add i32 %11, 1
  store i32 %inc96, ptr @tests_run, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %if.else104, label %do.end101

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef 172) #10
  tail call void @dump_stack() #10
  br label %do.end108

if.else104:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @tests_passed, align 4
  %inc105 = add i32 %13, 1
  store i32 %inc105, ptr @tests_passed, align 4
  br label %do.end108

do.end108:                                        ; preds = %if.else104, %do.end101
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_mark() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %index.01 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  tail call fastcc void @check_xa_mark_1(i32 noundef %index.01)
  %add = add nuw nsw i32 %index.01, 4
  %cmp = icmp ult i32 %index.01, 16380
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @check_xa_mark_2()
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_shrink() unnamed_addr #2 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @array, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = load i32, ptr @tests_run, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr @tests_run, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 331) #10
  tail call void @dump_stack() #10
  br label %do.body7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %13, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.else, %do.end
  %14 = load i32, ptr @tests_run, align 4
  %inc8 = add i32 %14, 1
  store i32 %inc8, ptr @tests_run, align 4
  %call1.i12 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  %cmp.not = icmp eq ptr %call1.i12, null
  br i1 %cmp.not, label %if.else16, label %do.end13

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 332) #10
  tail call void @dump_stack() #10
  br label %do.body21

if.else16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.else16, %do.end13
  %16 = load i32, ptr @tests_run, align 4
  %inc22 = add i32 %16, 1
  store i32 %inc22, ptr @tests_run, align 4
  %call1.i13 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 3 to ptr), i32 noundef 3264) #11
  %cmp24.not = icmp eq ptr %call1.i13, null
  br i1 %cmp24.not, label %if.else31, label %do.end28

do.end28:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 333) #10
  tail call void @dump_stack() #10
  br label %do.end35

if.else31:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i32, ptr @tests_passed, align 4
  %inc32 = add i32 %17, 1
  store i32 %inc32, ptr @tests_passed, align 4
  br label %do.end35

do.end35:                                         ; preds = %if.else31, %do.end28
  %18 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xas, align 4
  tail call void @_raw_spin_lock(ptr noundef %19) #11
  %20 = load i32, ptr @tests_run, align 4
  %inc38 = add i32 %20, 1
  store i32 %inc38, ptr @tests_run, align 4
  %call39 = call ptr @xas_load(ptr noundef nonnull %xas) #11
  %cmp41.not = icmp eq ptr %call39, inttoptr (i32 3 to ptr)
  br i1 %cmp41.not, label %if.else48, label %do.end45

do.end45:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 340) #10
  call void @dump_stack() #10
  br label %do.end52

if.else48:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load i32, ptr @tests_passed, align 4
  %inc49 = add i32 %21, 1
  store i32 %inc49, ptr @tests_passed, align 4
  br label %do.end52

do.end52:                                         ; preds = %if.else48, %do.end45
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %24 = load i32, ptr @tests_run, align 4
  %inc55 = add i32 %24, 1
  store i32 %inc55, ptr @tests_run, align 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i14 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15, label %do.end52.xa_entry_locked.exit_crit_edge

do.end52.xa_entry_locked.exit_crit_edge:          ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry_locked.exit

land.lhs.true.i15:                                ; preds = %do.end52
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i15.xa_entry_locked.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i15.xa_entry_locked.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry_locked.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i15
  %.b1.i = load i1, ptr @xa_entry_locked.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.xa_entry_locked.exit_crit_edge, label %if.then.i16

land.lhs.true4.i.xa_entry_locked.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry_locked.exit

if.then.i16:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry_locked.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1192, ptr noundef nonnull @.str.139) #11
  br label %xa_entry_locked.exit

xa_entry_locked.exit:                             ; preds = %if.then.i16, %land.lhs.true4.i.xa_entry_locked.exit_crit_edge, %land.lhs.true.i15.xa_entry_locked.exit_crit_edge, %do.end52.xa_entry_locked.exit_crit_edge
  %slots.i = getelementptr inbounds %struct.xa_node, ptr %23, i32 0, i32 7
  %25 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slots.i, align 4
  %cmp58.not = icmp eq ptr %26, inttoptr (i32 1 to ptr)
  br i1 %cmp58.not, label %if.else65, label %do.end62

do.end62:                                         ; preds = %xa_entry_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 342) #10
  call void @dump_stack() #10
  br label %do.body70

if.else65:                                        ; preds = %xa_entry_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = load i32, ptr @tests_passed, align 4
  %inc66 = add i32 %27, 1
  store i32 %inc66, ptr @tests_passed, align 4
  br label %do.body70

do.body70:                                        ; preds = %if.else65, %do.end62
  %28 = load i32, ptr @tests_run, align 4
  %inc71 = add i32 %28, 1
  store i32 %inc71, ptr @tests_run, align 4
  %call72 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #11
  %cmp74.not = icmp eq ptr %call72, inttoptr (i32 3 to ptr)
  br i1 %cmp74.not, label %if.else81, label %do.end78

do.end78:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 343) #10
  call void @dump_stack() #10
  br label %do.body86

if.else81:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %29 = load i32, ptr @tests_passed, align 4
  %inc82 = add i32 %29, 1
  store i32 %inc82, ptr @tests_passed, align 4
  br label %do.body86

do.body86:                                        ; preds = %if.else81, %do.end78
  %30 = load i32, ptr @tests_run, align 4
  %inc87 = add i32 %30, 1
  store i32 %inc87, ptr @tests_run, align 4
  %call88 = call ptr @xa_load(ptr noundef nonnull @array, i32 noundef 1) #11
  %cmp89.not = icmp eq ptr %call88, null
  br i1 %cmp89.not, label %if.else96, label %do.end93

do.end93:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 344) #10
  call void @dump_stack() #10
  br label %do.body101

if.else96:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %31 = load i32, ptr @tests_passed, align 4
  %inc97 = add i32 %31, 1
  store i32 %inc97, ptr @tests_passed, align 4
  br label %do.body101

do.body101:                                       ; preds = %if.else96, %do.end93
  %32 = load i32, ptr @tests_run, align 4
  %inc102 = add i32 %32, 1
  store i32 %inc102, ptr @tests_run, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 4
  %cmp104.not = icmp eq ptr %34, inttoptr (i32 1 to ptr)
  br i1 %cmp104.not, label %if.else111, label %do.end108

do.end108:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 345) #10
  call void @dump_stack() #10
  br label %do.body116

if.else111:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %35 = load i32, ptr @tests_passed, align 4
  %inc112 = add i32 %35, 1
  store i32 %inc112, ptr @tests_passed, align 4
  br label %do.body116

do.body116:                                       ; preds = %if.else111, %do.end108
  %36 = load i32, ptr @tests_run, align 4
  %inc117 = add i32 %36, 1
  store i32 %inc117, ptr @tests_run, align 4
  %call.i.i17 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i18 = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i21, label %do.body116.xa_entry_locked.exit26_crit_edge

do.body116.xa_entry_locked.exit26_crit_edge:      ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry_locked.exit26

land.lhs.true.i21:                                ; preds = %do.body116
  %call2.i19 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i19)
  %tobool3.not.i20 = icmp eq i32 %call2.i19, 0
  br i1 %tobool3.not.i20, label %land.lhs.true.i21.xa_entry_locked.exit26_crit_edge, label %land.lhs.true4.i23

land.lhs.true.i21.xa_entry_locked.exit26_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry_locked.exit26

land.lhs.true4.i23:                               ; preds = %land.lhs.true.i21
  %.b1.i22 = load i1, ptr @xa_entry_locked.__warned, align 1
  br i1 %.b1.i22, label %land.lhs.true4.i23.xa_entry_locked.exit26_crit_edge, label %if.then.i24

land.lhs.true4.i23.xa_entry_locked.exit26_crit_edge: ; preds = %land.lhs.true4.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry_locked.exit26

if.then.i24:                                      ; preds = %land.lhs.true4.i23
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry_locked.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1192, ptr noundef nonnull @.str.139) #11
  br label %xa_entry_locked.exit26

xa_entry_locked.exit26:                           ; preds = %if.then.i24, %land.lhs.true4.i23.xa_entry_locked.exit26_crit_edge, %land.lhs.true.i21.xa_entry_locked.exit26_crit_edge, %do.body116.xa_entry_locked.exit26_crit_edge
  %37 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slots.i, align 4
  %cmp120.not = icmp eq ptr %38, inttoptr (i32 1026 to ptr)
  br i1 %cmp120.not, label %if.else127, label %do.end124

do.end124:                                        ; preds = %xa_entry_locked.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 346) #10
  call void @dump_stack() #10
  br label %do.body132

if.else127:                                       ; preds = %xa_entry_locked.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %39 = load i32, ptr @tests_passed, align 4
  %inc128 = add i32 %39, 1
  store i32 %inc128, ptr @tests_passed, align 4
  br label %do.body132

do.body132:                                       ; preds = %if.else127, %do.end124
  %40 = load i32, ptr @tests_run, align 4
  %inc133 = add i32 %40, 1
  store i32 %inc133, ptr @tests_run, align 4
  %call134 = call ptr @xas_load(ptr noundef nonnull %xas) #11
  %cmp135.not = icmp eq ptr %call134, null
  br i1 %cmp135.not, label %if.else142, label %do.end139

do.end139:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 347) #10
  call void @dump_stack() #10
  br label %do.end146

if.else142:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  %41 = load i32, ptr @tests_passed, align 4
  %inc143 = add i32 %41, 1
  store i32 %inc143, ptr @tests_passed, align 4
  br label %do.end146

do.end146:                                        ; preds = %if.else142, %do.end139
  %42 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %43) #11
  %44 = load i32, ptr @tests_run, align 4
  %inc150 = add i32 %44, 1
  store i32 %inc150, ptr @tests_run, align 4
  %call151 = call ptr @xa_load(ptr noundef nonnull @array, i32 noundef 0) #11
  %cmp153.not = icmp eq ptr %call151, inttoptr (i32 1 to ptr)
  br i1 %cmp153.not, label %if.else160, label %do.end157

do.end157:                                        ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #9
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 349) #10
  call void @dump_stack() #10
  br label %do.end164

if.else160:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #9
  %45 = load i32, ptr @tests_passed, align 4
  %inc161 = add i32 %45, 1
  store i32 %inc161, ptr @tests_passed, align 4
  br label %do.end164

do.end164:                                        ; preds = %if.else160, %do.end157
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 0)
  %46 = load i32, ptr @tests_run, align 4
  %inc166 = add i32 %46, 1
  store i32 %inc166, ptr @tests_run, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i27 = icmp eq ptr %47, null
  br i1 %cmp.i27, label %if.else174, label %do.end171

do.end171:                                        ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #9
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 351) #10
  call void @dump_stack() #10
  br label %do.end178

if.else174:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #9
  %48 = load i32, ptr @tests_passed, align 4
  %inc175 = add i32 %48, 1
  store i32 %inc175, ptr @tests_passed, align 4
  br label %do.end178

do.end178:                                        ; preds = %if.else174, %do.end171
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #11
  %49 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %51 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %52 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %53 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %54 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @array, ptr %xas.i, align 4
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %49, align 4
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %50, align 4
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 3 to ptr), ptr %51, align 4
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %52, align 4
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %53, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end178
  %60 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_lock(ptr noundef %61) #11
  %call.i28 = call ptr @xas_store(ptr noundef nonnull %xas.i, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  %62 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock(ptr noundef %63) #11
  %call10.i = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas.i, i32 noundef 3264) #11
  br i1 %call10.i, label %do.body.i.do.body.i_crit_edge, label %xa_store_order.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

xa_store_order.exit:                              ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #11
  %64 = load i32, ptr @tests_run, align 4
  %inc183 = add i32 %64, 1
  store i32 %inc183, ptr @tests_run, align 4
  %call184 = call ptr @xa_load(ptr noundef nonnull @array, i32 noundef 0) #11
  %cmp186.not = icmp eq ptr %call184, inttoptr (i32 1 to ptr)
  br i1 %cmp186.not, label %if.else193, label %do.end190

do.end190:                                        ; preds = %xa_store_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 356) #10
  call void @dump_stack() #10
  br label %do.body198

if.else193:                                       ; preds = %xa_store_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  %65 = load i32, ptr @tests_passed, align 4
  %inc194 = add i32 %65, 1
  store i32 %inc194, ptr @tests_passed, align 4
  br label %do.body198

do.body198:                                       ; preds = %if.else193, %do.end190
  %66 = load i32, ptr @tests_run, align 4
  %inc199 = add i32 %66, 1
  store i32 %inc199, ptr @tests_run, align 4
  %call200 = call ptr @xa_load(ptr noundef nonnull @array, i32 noundef 1) #11
  %cmp201.not = icmp eq ptr %call200, null
  br i1 %cmp201.not, label %if.else208, label %do.end205

do.end205:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #9
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 357) #10
  call void @dump_stack() #10
  br label %do.end212

if.else208:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #9
  %67 = load i32, ptr @tests_passed, align 4
  %inc209 = add i32 %67, 1
  store i32 %inc209, ptr @tests_passed, align 4
  br label %do.end212

do.end212:                                        ; preds = %if.else208, %do.end205
  %68 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %71, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end212.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end212.rcu_read_lock.exit_crit_edge:           ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end212
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end212.rcu_read_lock.exit_crit_edge
  %72 = load volatile ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %call.i.i29 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool.not.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool.not.i30, label %lor.lhs.false.i, label %rcu_read_lock.exit.xa_head.exit_crit_edge

rcu_read_lock.exit.xa_head.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call2.i31 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31)
  %tobool3.not.i32 = icmp eq i32 %call2.i31, 0
  br i1 %tobool3.not.i32, label %land.lhs.true.i33, label %lor.lhs.false.i.xa_head.exit_crit_edge

lor.lhs.false.i.xa_head.exit_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit

land.lhs.true.i33:                                ; preds = %lor.lhs.false.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i33.xa_head.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i33.xa_head.exit_crit_edge:         ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i33
  %.b12.i = load i1, ptr @xa_head.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.xa_head.exit_crit_edge, label %if.then.i34

land.lhs.true6.i.xa_head.exit_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit

if.then.i34:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_head.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1167, ptr noundef nonnull @.str.39) #11
  br label %xa_head.exit

xa_head.exit:                                     ; preds = %if.then.i34, %land.lhs.true6.i.xa_head.exit_crit_edge, %land.lhs.true.i33.xa_head.exit_crit_edge, %lor.lhs.false.i.xa_head.exit_crit_edge, %rcu_read_lock.exit.xa_head.exit_crit_edge
  %call.i35 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i35, label %xa_head.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

xa_head.exit.rcu_read_unlock.exit_crit_edge:      ; preds = %xa_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %xa_head.exit
  %call1.i36 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %xa_head.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %73 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i42 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %77 = load i32, ptr @tests_run, align 4
  %inc215 = add i32 %77, 1
  store i32 %inc215, ptr @tests_run, align 4
  %call1.i44 = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef -1, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef 3264) #11
  %cmp217.not = icmp eq ptr %call1.i44, null
  br i1 %cmp217.not, label %if.else224, label %do.end221

do.end221:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 362) #10
  call void @dump_stack() #10
  br label %do.end228

if.else224:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %78 = load i32, ptr @tests_passed, align 4
  %inc225 = add i32 %78, 1
  store i32 %inc225, ptr @tests_passed, align 4
  br label %do.end228

do.end228:                                        ; preds = %if.else224, %do.end221
  %79 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i1 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %preempt_count.i.i.i.i2 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i2, align 4
  %add.i.i.i3 = add i32 %82, 1
  store volatile i32 %add.i.i.i3, ptr %preempt_count.i.i.i.i2, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i4 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4, label %do.end228.rcu_read_lock.exit11_crit_edge, label %land.lhs.true.i7

do.end228.rcu_read_lock.exit11_crit_edge:         ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true.i7:                                 ; preds = %do.end228
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_lock.exit11_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit11

rcu_read_lock.exit11:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, %do.end228.rcu_read_lock.exit11_crit_edge
  %83 = load i32, ptr @tests_run, align 4
  %inc230 = add i32 %83, 1
  store i32 %inc230, ptr @tests_run, align 4
  %84 = load volatile ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %call.i.i45 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %tobool.not.i46 = icmp eq i32 %call.i.i45, 0
  br i1 %tobool.not.i46, label %lor.lhs.false.i49, label %rcu_read_lock.exit11.xa_head.exit56_crit_edge

rcu_read_lock.exit11.xa_head.exit56_crit_edge:    ; preds = %rcu_read_lock.exit11
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit56

lor.lhs.false.i49:                                ; preds = %rcu_read_lock.exit11
  %call2.i47 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i47)
  %tobool3.not.i48 = icmp eq i32 %call2.i47, 0
  br i1 %tobool3.not.i48, label %land.lhs.true.i52, label %lor.lhs.false.i49.xa_head.exit56_crit_edge

lor.lhs.false.i49.xa_head.exit56_crit_edge:       ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit56

land.lhs.true.i52:                                ; preds = %lor.lhs.false.i49
  %call4.i50 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i50)
  %tobool5.not.i51 = icmp eq i32 %call4.i50, 0
  br i1 %tobool5.not.i51, label %land.lhs.true.i52.xa_head.exit56_crit_edge, label %land.lhs.true6.i54

land.lhs.true.i52.xa_head.exit56_crit_edge:       ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit56

land.lhs.true6.i54:                               ; preds = %land.lhs.true.i52
  %.b12.i53 = load i1, ptr @xa_head.__warned, align 1
  br i1 %.b12.i53, label %land.lhs.true6.i54.xa_head.exit56_crit_edge, label %if.then.i55

land.lhs.true6.i54.xa_head.exit56_crit_edge:      ; preds = %land.lhs.true6.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_head.exit56

if.then.i55:                                      ; preds = %land.lhs.true6.i54
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_head.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1167, ptr noundef nonnull @.str.39) #11
  br label %xa_head.exit56

xa_head.exit56:                                   ; preds = %if.then.i55, %land.lhs.true6.i54.xa_head.exit56_crit_edge, %land.lhs.true.i52.xa_head.exit56_crit_edge, %lor.lhs.false.i49.xa_head.exit56_crit_edge, %rcu_read_lock.exit11.xa_head.exit56_crit_edge
  %cmp232 = icmp eq ptr %84, %72
  br i1 %cmp232, label %do.end236, label %if.else239

do.end236:                                        ; preds = %xa_head.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %call238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 364) #10
  call void @dump_stack() #10
  br label %do.end243

if.else239:                                       ; preds = %xa_head.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %85 = load i32, ptr @tests_passed, align 4
  %inc240 = add i32 %85, 1
  store i32 %inc240, ptr @tests_passed, align 4
  br label %do.end243

do.end243:                                        ; preds = %if.else239, %do.end236
  %call.i57 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i57, label %do.end243.rcu_read_unlock.exit67_crit_edge, label %land.lhs.true.i60

do.end243.rcu_read_unlock.exit67_crit_edge:       ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit67

land.lhs.true.i60:                                ; preds = %do.end243
  %call1.i58 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit67

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit67

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit67

rcu_read_unlock.exit67:                           ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge, %do.end243.rcu_read_unlock.exit67_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %86 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i64 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i66 = add i32 %89, -1
  store volatile i32 %sub.i.i.i66, ptr %preempt_count.i.i.i.i65, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %90 = load i32, ptr @tests_run, align 4
  %inc245 = add i32 %90, 1
  store i32 %inc245, ptr @tests_run, align 4
  %call247 = call ptr @xa_load(ptr noundef nonnull @array, i32 noundef 1) #11
  %cmp248.not = icmp eq ptr %call247, null
  br i1 %cmp248.not, label %if.else255, label %do.end252

do.end252:                                        ; preds = %rcu_read_unlock.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 366) #10
  call void @dump_stack() #10
  br label %do.end259

if.else255:                                       ; preds = %rcu_read_unlock.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %91 = load i32, ptr @tests_passed, align 4
  %inc256 = add i32 %91, 1
  store i32 %inc256, ptr @tests_passed, align 4
  br label %do.end259

do.end259:                                        ; preds = %if.else255, %do.end252
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef -1)
  %92 = load i32, ptr @tests_run, align 4
  %inc261 = add i32 %92, 1
  store i32 %inc261, ptr @tests_run, align 4
  %93 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp262.not = icmp eq ptr %93, %72
  br i1 %cmp262.not, label %if.else269, label %do.end266

do.end266:                                        ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #9
  %call268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 368) #10
  call void @dump_stack() #10
  br label %do.end273

if.else269:                                       ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #9
  %94 = load i32, ptr @tests_passed, align 4
  %inc270 = add i32 %94, 1
  store i32 %inc270, ptr @tests_passed, align 4
  br label %do.end273

do.end273:                                        ; preds = %if.else269, %do.end266
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xas_erase() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %4 = getelementptr inbounds i8, ptr %xas, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @array, ptr %xas, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %0, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc59.for.cond3.preheader_crit_edge, %entry
  %indvars.iv = phi i32 [ 17, %entry ], [ %indvars.iv.next, %for.inc59.for.cond3.preheader_crit_edge ]
  %i.012 = phi i32 [ 0, %entry ], [ %inc60, %for.inc59.for.cond3.preheader_crit_edge ]
  %mul = shl nuw i32 %i.012, 1
  %add = add nuw nsw i32 %mul, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %i.012, i32 %add)
  %cmp47 = icmp ult i32 %i.012, %add
  br i1 %cmp47, label %for.cond3.preheader.for.body5_crit_edge, label %for.cond3.preheader.for.end_crit_edge

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %j.08 = phi i32 [ %inc, %for.inc.for.body5_crit_edge ], [ %i.012, %for.cond3.preheader.for.body5_crit_edge ]
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %j.08, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %and.i = shl nuw i32 %j.08, 1
  %or.i.i = or i32 %and.i, 1
  %12 = inttoptr i32 %or.i.i to ptr
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body5
  %13 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %14) #11
  %call7 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %12) #11
  %15 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %16) #11
  %call10 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef 3264) #11
  br i1 %call10, label %do.body.do.body_crit_edge, label %for.inc

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc:                                          ; preds = %do.body
  %inc = add nuw nsw i32 %j.08, 1
  %exitcond.not = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %0, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %for.end
  %19 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %20) #11
  %call15 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  %21 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %22) #11
  %call19 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef 3264) #11
  br i1 %call19, label %do.body11.do.body11_crit_edge, label %do.end20

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.end20:                                         ; preds = %do.body11
  %23 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %24) #11
  %call23 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %0, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %call24 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %tobool.not9 = icmp eq ptr %call24, null
  br i1 %tobool.not9, label %do.end20.for.end42_crit_edge, label %do.end20.do.body27_crit_edge

do.end20.do.body27_crit_edge:                     ; preds = %do.end20
  br label %do.body27

do.end20.for.end42_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

do.body27:                                        ; preds = %do.end37.do.body27_crit_edge, %do.end20.do.body27_crit_edge
  %entry2.011 = phi ptr [ %call41, %do.end37.do.body27_crit_edge ], [ %call24, %do.end20.do.body27_crit_edge ]
  %j.110 = phi i32 [ %inc39, %do.end37.do.body27_crit_edge ], [ %i.012, %do.end20.do.body27_crit_edge ]
  %27 = load i32, ptr @tests_run, align 4
  %inc28 = add i32 %27, 1
  store i32 %inc28, ptr @tests_run, align 4
  %and.i5 = shl i32 %j.110, 1
  %or.i.i6 = or i32 %and.i5, 1
  %28 = inttoptr i32 %or.i.i6 to ptr
  %cmp30.not = icmp eq ptr %entry2.011, %28
  br i1 %cmp30.not, label %if.else, label %do.end33

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.140, i32 noundef 521) #10
  call void @dump_stack() #10
  br label %do.end37

if.else:                                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %29 = load i32, ptr @tests_passed, align 4
  %inc35 = add i32 %29, 1
  store i32 %inc35, ptr @tests_passed, align 4
  br label %do.end37

do.end37:                                         ; preds = %if.else, %do.end33
  %call38 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #11
  %inc39 = add i32 %j.110, 1
  %call41 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %tobool.not = icmp eq ptr %call41, null
  br i1 %tobool.not, label %do.end37.for.end42_crit_edge, label %do.end37.do.body27_crit_edge

do.end37.do.body27_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

do.end37.for.end42_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

for.end42:                                        ; preds = %do.end37.for.end42_crit_edge, %do.end20.for.end42_crit_edge
  %30 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %31) #11
  %32 = load i32, ptr @tests_run, align 4
  %inc46 = add i32 %32, 1
  store i32 %inc46, ptr @tests_run, align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %33, null
  br i1 %cmp.i, label %if.else54, label %do.end51

do.end51:                                         ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.140, i32 noundef 526) #10
  call void @dump_stack() #10
  br label %for.inc59

if.else54:                                        ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  %34 = load i32, ptr @tests_passed, align 4
  %inc55 = add i32 %34, 1
  store i32 %inc55, ptr @tests_passed, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %if.else54, %do.end51
  %inc60 = add nuw nsw i32 %i.012, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 2
  %exitcond14.not = icmp eq i32 %inc60, 200
  br i1 %exitcond14.not, label %for.end61, label %for.inc59.for.cond3.preheader_crit_edge

for.inc59.for.cond3.preheader_crit_edge:          ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader

for.end61:                                        ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_insert() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %do.end21.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %add, %do.end21.for.body_crit_edge ]
  %0 = load i32, ptr @tests_run, align 4
  %inc.i = add i32 %0, 1
  store i32 %inc.i, ptr @tests_run, align 4
  %and.i.i = shl nuw nsw i32 %i.029, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %1 = inttoptr i32 %or.i.i.i to ptr
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i.i = tail call i32 @__xa_insert(ptr noundef nonnull @array, i32 noundef %i.029, ptr noundef nonnull %1, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.160, i32 noundef 48) #10
  tail call void @dump_stack() #10
  br label %xa_insert_index.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc4.i = add i32 %2, 1
  store i32 %inc4.i, ptr @tests_passed, align 4
  br label %xa_insert_index.exit

xa_insert_index.exit:                             ; preds = %if.else.i, %do.end.i
  %3 = load i32, ptr @tests_run, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @tests_run, align 4
  %sub = add nsw i32 %i.029, -1
  %call = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %sub) #11
  %cmp1.not = icmp eq ptr %call, null
  br i1 %cmp1.not, label %if.else, label %do.end

do.end:                                           ; preds = %xa_insert_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 379) #10
  tail call void @dump_stack() #10
  br label %do.body7

if.else:                                          ; preds = %xa_insert_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %4, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.else, %do.end
  %5 = load i32, ptr @tests_run, align 4
  %inc8 = add i32 %5, 1
  store i32 %inc8, ptr @tests_run, align 4
  %add = add nuw nsw i32 %i.029, 1
  %call9 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %add) #11
  %cmp10.not = icmp eq ptr %call9, null
  br i1 %cmp10.not, label %if.else17, label %do.end14

do.end14:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 380) #10
  tail call void @dump_stack() #10
  br label %do.end21

if.else17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr @tests_passed, align 4
  %inc18 = add i32 %6, 1
  store i32 %inc18, ptr @tests_passed, align 4
  br label %do.end21

do.end21:                                         ; preds = %if.else17, %do.end14
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %i.029)
  %exitcond.not = icmp eq i32 %add, 1024
  br i1 %exitcond.not, label %do.end21.for.body25_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end21.for.body25_crit_edge:                    ; preds = %do.end21
  br label %for.body25

for.body25:                                       ; preds = %do.end95.for.body25_crit_edge, %do.end21.for.body25_crit_edge
  %i.130 = phi i32 [ %inc99, %do.end95.for.body25_crit_edge ], [ 10, %do.end21.for.body25_crit_edge ]
  %shl = shl nuw i32 1, %i.130
  %7 = load i32, ptr @tests_run, align 4
  %inc.i1 = add i32 %7, 1
  store i32 %inc.i1, ptr @tests_run, align 4
  %and.i.i2 = shl i32 %shl, 1
  %or.i.i.i3 = or i32 %and.i.i2, 1
  %8 = inttoptr i32 %or.i.i.i3 to ptr
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i.i4 = tail call i32 @__xa_insert(ptr noundef nonnull @array, i32 noundef %shl, ptr noundef nonnull %8, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.not.i5 = icmp eq i32 %call.i.i4, 0
  br i1 %cmp.not.i5, label %if.else.i9, label %do.end.i7

do.end.i7:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.160, i32 noundef 48) #10
  tail call void @dump_stack() #10
  br label %xa_insert_index.exit10

if.else.i9:                                       ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @tests_passed, align 4
  %inc4.i8 = add i32 %9, 1
  store i32 %inc4.i8, ptr @tests_passed, align 4
  br label %xa_insert_index.exit10

xa_insert_index.exit10:                           ; preds = %if.else.i9, %do.end.i7
  %10 = load i32, ptr @tests_run, align 4
  %inc27 = add i32 %10, 1
  store i32 %inc27, ptr @tests_run, align 4
  %sub29 = add i32 %shl, -1
  %call30 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %sub29) #11
  %cmp31.not = icmp eq ptr %call30, null
  br i1 %cmp31.not, label %if.else38, label %do.end35

do.end35:                                         ; preds = %xa_insert_index.exit10
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 386) #10
  tail call void @dump_stack() #10
  br label %do.body43

if.else38:                                        ; preds = %xa_insert_index.exit10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc39 = add i32 %11, 1
  store i32 %inc39, ptr @tests_passed, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.else38, %do.end35
  %12 = load i32, ptr @tests_run, align 4
  %inc44 = add i32 %12, 1
  store i32 %inc44, ptr @tests_run, align 4
  %add46 = add nuw i32 %shl, 1
  %call47 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %add46) #11
  %cmp48.not = icmp eq ptr %call47, null
  br i1 %cmp48.not, label %if.else55, label %do.end52

do.end52:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 387) #10
  tail call void @dump_stack() #10
  br label %do.end59

if.else55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @tests_passed, align 4
  %inc56 = add i32 %13, 1
  store i32 %inc56, ptr @tests_passed, align 4
  br label %do.end59

do.end59:                                         ; preds = %if.else55, %do.end52
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %shl)
  %14 = load i32, ptr @tests_run, align 4
  %inc.i11 = add i32 %14, 1
  store i32 %inc.i11, ptr @tests_run, align 4
  %and.i.i12 = shl nuw i32 %sub29, 1
  %or.i.i.i13 = or i32 %and.i.i12, 1
  %15 = inttoptr i32 %or.i.i.i13 to ptr
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i.i14 = tail call i32 @__xa_insert(ptr noundef nonnull @array, i32 noundef %sub29, ptr noundef nonnull %15, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp.not.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %cmp.not.i15, label %if.else.i19, label %do.end.i17

do.end.i17:                                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.160, i32 noundef 48) #10
  tail call void @dump_stack() #10
  br label %xa_insert_index.exit20

if.else.i19:                                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load i32, ptr @tests_passed, align 4
  %inc4.i18 = add i32 %16, 1
  store i32 %inc4.i18, ptr @tests_passed, align 4
  br label %xa_insert_index.exit20

xa_insert_index.exit20:                           ; preds = %if.else.i19, %do.end.i17
  %17 = load i32, ptr @tests_run, align 4
  %inc64 = add i32 %17, 1
  store i32 %inc64, ptr @tests_run, align 4
  %sub66 = add i32 %shl, -2
  %call67 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %sub66) #11
  %cmp68.not = icmp eq ptr %call67, null
  br i1 %cmp68.not, label %if.else75, label %do.end72

do.end72:                                         ; preds = %xa_insert_index.exit20
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 391) #10
  tail call void @dump_stack() #10
  br label %do.body80

if.else75:                                        ; preds = %xa_insert_index.exit20
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @tests_passed, align 4
  %inc76 = add i32 %18, 1
  store i32 %inc76, ptr @tests_passed, align 4
  br label %do.body80

do.body80:                                        ; preds = %if.else75, %do.end72
  %19 = load i32, ptr @tests_run, align 4
  %inc81 = add i32 %19, 1
  store i32 %inc81, ptr @tests_run, align 4
  %call83 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %shl) #11
  %cmp84.not = icmp eq ptr %call83, null
  br i1 %cmp84.not, label %if.else91, label %do.end88

do.end88:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 392) #10
  tail call void @dump_stack() #10
  br label %do.end95

if.else91:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load i32, ptr @tests_passed, align 4
  %inc92 = add i32 %20, 1
  store i32 %inc92, ptr @tests_passed, align 4
  br label %do.end95

do.end95:                                         ; preds = %if.else91, %do.end88
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %sub29)
  %inc99 = add nuw nsw i32 %i.130, 1
  %exitcond31.not = icmp eq i32 %inc99, 32
  br i1 %exitcond31.not, label %for.end100, label %do.end95.for.body25_crit_edge

do.end95.for.body25_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

for.end100:                                       ; preds = %do.end95
  %21 = load i32, ptr @tests_run, align 4
  %inc.i21 = add i32 %21, 1
  store i32 %inc.i21, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i.i22 = tail call i32 @__xa_insert(ptr noundef nonnull @array, i32 noundef -1, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.not.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.not.i23, label %if.else.i27, label %do.end.i25

do.end.i25:                                       ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.160, i32 noundef 48) #10
  tail call void @dump_stack() #10
  br label %xa_insert_index.exit28

if.else.i27:                                      ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  %22 = load i32, ptr @tests_passed, align 4
  %inc4.i26 = add i32 %22, 1
  store i32 %inc4.i26, ptr @tests_passed, align 4
  br label %xa_insert_index.exit28

xa_insert_index.exit28:                           ; preds = %if.else.i27, %do.end.i25
  %23 = load i32, ptr @tests_run, align 4
  %inc102 = add i32 %23, 1
  store i32 %inc102, ptr @tests_run, align 4
  %call103 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef 0) #11
  %cmp104.not = icmp eq ptr %call103, null
  br i1 %cmp104.not, label %if.else111, label %do.end108

do.end108:                                        ; preds = %xa_insert_index.exit28
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 397) #10
  tail call void @dump_stack() #10
  br label %do.body116

if.else111:                                       ; preds = %xa_insert_index.exit28
  call void @__sanitizer_cov_trace_pc() #9
  %24 = load i32, ptr @tests_passed, align 4
  %inc112 = add i32 %24, 1
  store i32 %inc112, ptr @tests_passed, align 4
  br label %do.body116

do.body116:                                       ; preds = %if.else111, %do.end108
  %25 = load i32, ptr @tests_run, align 4
  %inc117 = add i32 %25, 1
  store i32 %inc117, ptr @tests_run, align 4
  %call118 = tail call ptr @xa_load(ptr noundef nonnull @array, i32 noundef -2) #11
  %cmp119.not = icmp eq ptr %call118, null
  br i1 %cmp119.not, label %if.else126, label %do.end123

do.end123:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 398) #10
  tail call void @dump_stack() #10
  br label %do.end130

if.else126:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load i32, ptr @tests_passed, align 4
  %inc127 = add i32 %26, 1
  store i32 %inc127, ptr @tests_passed, align 4
  br label %do.end130

do.end130:                                        ; preds = %if.else126, %do.end123
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef -1)
  %27 = load i32, ptr @tests_run, align 4
  %inc132 = add i32 %27, 1
  store i32 %inc132, ptr @tests_run, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %28, null
  br i1 %cmp.i, label %if.else140, label %do.end137

do.end137:                                        ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef 401) #10
  tail call void @dump_stack() #10
  br label %do.end144

if.else140:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  %29 = load i32, ptr @tests_passed, align 4
  %inc141 = add i32 %29, 1
  store i32 %inc141, ptr @tests_passed, align 4
  br label %do.end144

do.end144:                                        ; preds = %if.else140, %do.end137
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_cmpxchg() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 410) #10
  tail call void @dump_stack() #10
  br label %do.body9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc6 = add i32 %2, 1
  store i32 %inc6, ptr @tests_passed, align 4
  br label %do.body9

do.body9:                                         ; preds = %if.else, %do.end
  %3 = load i32, ptr @tests_run, align 4
  %inc10 = add i32 %3, 1
  store i32 %inc10, ptr @tests_run, align 4
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 24691357 to ptr), i32 noundef 3264) #11
  %cmp.not = icmp eq ptr %call1.i, null
  br i1 %cmp.not, label %if.else18, label %do.end15

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 411) #10
  tail call void @dump_stack() #10
  br label %do.body23

if.else18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @tests_passed, align 4
  %inc19 = add i32 %4, 1
  store i32 %inc19, ptr @tests_passed, align 4
  br label %do.body23

do.body23:                                        ; preds = %if.else18, %do.end15
  %5 = load i32, ptr @tests_run, align 4
  %inc24 = add i32 %5, 1
  store i32 %inc24, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i = tail call i32 @__xa_insert(ptr noundef nonnull @array, i32 noundef 12345678, ptr noundef nonnull @array, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp26.not = icmp eq i32 %call.i, -16
  br i1 %cmp26.not, label %if.else33, label %do.end30

do.end30:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 412) #10
  tail call void @dump_stack() #10
  br label %do.body38

if.else33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr @tests_passed, align 4
  %inc34 = add i32 %6, 1
  store i32 %inc34, ptr @tests_passed, align 4
  br label %do.body38

do.body38:                                        ; preds = %if.else33, %do.end30
  %7 = load i32, ptr @tests_run, align 4
  %inc39 = add i32 %7, 1
  store i32 %inc39, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i1 = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @array, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 13 to ptr), ptr noundef nonnull inttoptr (i32 11 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  %cmp41.not = icmp eq ptr %call.i1, inttoptr (i32 24691357 to ptr)
  br i1 %cmp41.not, label %if.else48, label %do.end45

do.end45:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 413) #10
  tail call void @dump_stack() #10
  br label %do.body53

if.else48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc49 = add i32 %8, 1
  store i32 %inc49, ptr @tests_passed, align 4
  br label %do.body53

do.body53:                                        ; preds = %if.else48, %do.end45
  %9 = load i32, ptr @tests_run, align 4
  %inc54 = add i32 %9, 1
  store i32 %inc54, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i2 = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @array, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 24691357 to ptr), ptr noundef nonnull inttoptr (i32 11 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  %cmp56.not = icmp eq ptr %call.i2, inttoptr (i32 24691357 to ptr)
  br i1 %cmp56.not, label %if.else63, label %do.end60

do.end60:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 414) #10
  tail call void @dump_stack() #10
  br label %do.body68

if.else63:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load i32, ptr @tests_passed, align 4
  %inc64 = add i32 %10, 1
  store i32 %inc64, ptr @tests_passed, align 4
  br label %do.body68

do.body68:                                        ; preds = %if.else63, %do.end60
  %11 = load i32, ptr @tests_run, align 4
  %inc69 = add i32 %11, 1
  store i32 %inc69, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i3 = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @array, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 11 to ptr), ptr noundef nonnull inttoptr (i32 24691357 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  %cmp71.not = icmp eq ptr %call.i3, inttoptr (i32 11 to ptr)
  br i1 %cmp71.not, label %if.else78, label %do.end75

do.end75:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 415) #10
  tail call void @dump_stack() #10
  br label %do.body83

if.else78:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load i32, ptr @tests_passed, align 4
  %inc79 = add i32 %12, 1
  store i32 %inc79, ptr @tests_passed, align 4
  br label %do.body83

do.body83:                                        ; preds = %if.else78, %do.end75
  %13 = load i32, ptr @tests_run, align 4
  %inc84 = add i32 %13, 1
  store i32 %inc84, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i4 = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @array, i32 noundef 5, ptr noundef nonnull inttoptr (i32 11 to ptr), ptr noundef null, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  %cmp86.not = icmp eq ptr %call.i4, null
  br i1 %cmp86.not, label %if.else93, label %do.end90

do.end90:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 416) #10
  tail call void @dump_stack() #10
  br label %do.body98

if.else93:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i32, ptr @tests_passed, align 4
  %inc94 = add i32 %14, 1
  store i32 %inc94, ptr @tests_passed, align 4
  br label %do.body98

do.body98:                                        ; preds = %if.else93, %do.end90
  %15 = load i32, ptr @tests_run, align 4
  %inc99 = add i32 %15, 1
  store i32 %inc99, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i5 = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @array, i32 noundef 5, ptr noundef null, ptr noundef nonnull inttoptr (i32 11 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  %cmp101.not = icmp eq ptr %call.i5, null
  br i1 %cmp101.not, label %if.else108, label %do.end105

do.end105:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 417) #10
  tail call void @dump_stack() #10
  br label %do.body113

if.else108:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load i32, ptr @tests_passed, align 4
  %inc109 = add i32 %16, 1
  store i32 %inc109, ptr @tests_passed, align 4
  br label %do.body113

do.body113:                                       ; preds = %if.else108, %do.end105
  %17 = load i32, ptr @tests_run, align 4
  %inc114 = add i32 %17, 1
  store i32 %inc114, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i6 = tail call i32 @__xa_insert(ptr noundef nonnull @array, i32 noundef 5, ptr noundef nonnull inttoptr (i32 11 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i6)
  %cmp116.not = icmp eq i32 %call.i6, -16
  br i1 %cmp116.not, label %if.else123, label %do.end120

do.end120:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 418) #10
  tail call void @dump_stack() #10
  br label %do.body128

if.else123:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @tests_passed, align 4
  %inc124 = add i32 %18, 1
  store i32 %inc124, ptr @tests_passed, align 4
  br label %do.body128

do.body128:                                       ; preds = %if.else123, %do.end120
  %19 = load i32, ptr @tests_run, align 4
  %inc129 = add i32 %19, 1
  store i32 %inc129, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i7 = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @array, i32 noundef 5, ptr noundef nonnull inttoptr (i32 11 to ptr), ptr noundef null, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  %cmp131.not = icmp eq ptr %call.i7, inttoptr (i32 11 to ptr)
  br i1 %cmp131.not, label %if.else138, label %do.end135

do.end135:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 419) #10
  tail call void @dump_stack() #10
  br label %do.body143

if.else138:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load i32, ptr @tests_passed, align 4
  %inc139 = add i32 %20, 1
  store i32 %inc139, ptr @tests_passed, align 4
  br label %do.body143

do.body143:                                       ; preds = %if.else138, %do.end135
  %21 = load i32, ptr @tests_run, align 4
  %inc144 = add i32 %21, 1
  store i32 %inc144, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call.i8 = tail call i32 @__xa_insert(ptr noundef nonnull @array, i32 noundef 5, ptr noundef nonnull inttoptr (i32 11 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i8)
  %cmp146 = icmp eq i32 %call.i8, -16
  br i1 %cmp146, label %do.end150, label %if.else153

do.end150:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 420) #10
  tail call void @dump_stack() #10
  br label %do.end157

if.else153:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  %22 = load i32, ptr @tests_passed, align 4
  %inc154 = add i32 %22, 1
  store i32 %inc154, ptr @tests_passed, align 4
  br label %do.end157

do.end157:                                        ; preds = %if.else153, %do.end150
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 12345678)
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 5)
  %23 = load i32, ptr @tests_run, align 4
  %inc159 = add i32 %23, 1
  store i32 %inc159, ptr @tests_run, align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i9 = icmp eq ptr %24, null
  br i1 %cmp.i9, label %if.else167, label %do.end164

do.end164:                                        ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef 423) #10
  tail call void @dump_stack() #10
  br label %do.end171

if.else167:                                       ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load i32, ptr @tests_passed, align 4
  %inc168 = add i32 %25, 1
  store i32 %inc168, ptr @tests_passed, align 4
  br label %do.end171

do.end171:                                        ; preds = %if.else167, %do.end164
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_reserve(ptr noundef %xa) unnamed_addr #2 align 64 {
entry:
  %index = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !971
  %1 = load i32, ptr @tests_run, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @tests_run, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %xa, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 433) #10
  tail call void @dump_stack() #10
  br label %do.body7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %4, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.else, %do.end
  %5 = load i32, ptr @tests_run, align 4
  %inc8 = add i32 %5, 1
  store i32 %inc8, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef null, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  %6 = ptrtoint ptr %call.i.i to i32
  %and.i.i.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp ult ptr %call.i.i, inttoptr (i32 -16378 to ptr)
  %cmp.not448 = icmp ult ptr %call.i.i, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %cmp.not = or i1 %cmp.not448, %not.spec.select.i.i.i
  br i1 %cmp.not, label %if.else16, label %do.end13

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 434) #10
  tail call void @dump_stack() #10
  br label %do.body21

if.else16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.else16, %do.end13
  %8 = load i32, ptr @tests_run, align 4
  %inc22 = add i32 %8, 1
  store i32 %inc22, ptr @tests_run, align 4
  %9 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xa_head.i, align 4
  %cmp.i400 = icmp eq ptr %10, null
  br i1 %cmp.i400, label %do.end27, label %if.else30

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 435) #10
  tail call void @dump_stack() #10
  br label %do.body35

if.else30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc31 = add i32 %11, 1
  store i32 %inc31, ptr @tests_passed, align 4
  br label %do.body35

do.body35:                                        ; preds = %if.else30, %do.end27
  %12 = load i32, ptr @tests_run, align 4
  %inc36 = add i32 %12, 1
  store i32 %inc36, ptr @tests_run, align 4
  %call37 = tail call ptr @xa_load(ptr noundef %xa, i32 noundef 12345678) #11
  %tobool.not = icmp eq ptr %call37, null
  br i1 %tobool.not, label %if.else44, label %do.end41

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 436) #10
  tail call void @dump_stack() #10
  br label %do.end48

if.else44:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @tests_passed, align 4
  %inc45 = add i32 %13, 1
  store i32 %inc45, ptr @tests_passed, align 4
  br label %do.end48

do.end48:                                         ; preds = %if.else44, %do.end41
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i401 = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 1030 to ptr), ptr noundef null, i32 noundef 0) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  %14 = load i32, ptr @tests_run, align 4
  %inc50 = add i32 %14, 1
  store i32 %inc50, ptr @tests_run, align 4
  %15 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xa_head.i, align 4
  %cmp.i403 = icmp eq ptr %16, null
  br i1 %cmp.i403, label %if.else58, label %do.end55

do.end55:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 438) #10
  tail call void @dump_stack() #10
  br label %do.body63

if.else58:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i32, ptr @tests_passed, align 4
  %inc59 = add i32 %17, 1
  store i32 %inc59, ptr @tests_passed, align 4
  br label %do.body63

do.body63:                                        ; preds = %if.else58, %do.end55
  %18 = load i32, ptr @tests_run, align 4
  %inc64 = add i32 %18, 1
  store i32 %inc64, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i404 = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef null, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  %19 = ptrtoint ptr %call.i.i404 to i32
  %and.i.i.i.i405 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i405)
  %cmp.i.i.i.i406 = icmp ne i32 %and.i.i.i.i405, 2
  %cmp.i.i.i407 = icmp ult ptr %call.i.i404, inttoptr (i32 -16378 to ptr)
  %cmp66.not449 = icmp ult ptr %call.i.i404, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i408 = or i1 %cmp.i.i.i407, %cmp.i.i.i.i406
  %cmp66.not = or i1 %cmp66.not449, %not.spec.select.i.i.i408
  br i1 %cmp66.not, label %if.else73, label %do.end70

do.end70:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 441) #10
  tail call void @dump_stack() #10
  br label %do.body78

if.else73:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load i32, ptr @tests_passed, align 4
  %inc74 = add i32 %20, 1
  store i32 %inc74, ptr @tests_passed, align 4
  br label %do.body78

do.body78:                                        ; preds = %if.else73, %do.end70
  %21 = load i32, ptr @tests_run, align 4
  %inc79 = add i32 %21, 1
  store i32 %inc79, ptr @tests_run, align 4
  %call1.i = tail call ptr @xa_store(ptr noundef %xa, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 24691357 to ptr), i32 noundef 2048) #11
  %cmp81.not = icmp eq ptr %call1.i, null
  br i1 %cmp81.not, label %if.else88, label %do.end85

do.end85:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 442) #10
  tail call void @dump_stack() #10
  br label %do.end92

if.else88:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %22 = load i32, ptr @tests_passed, align 4
  %inc89 = add i32 %22, 1
  store i32 %inc89, ptr @tests_passed, align 4
  br label %do.end92

do.end92:                                         ; preds = %if.else88, %do.end85
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i411 = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 1030 to ptr), ptr noundef null, i32 noundef 0) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef 12345678)
  %23 = load i32, ptr @tests_run, align 4
  %inc94 = add i32 %23, 1
  store i32 %inc94, ptr @tests_run, align 4
  %24 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xa_head.i, align 4
  %cmp.i413 = icmp eq ptr %25, null
  br i1 %cmp.i413, label %if.else102, label %do.end99

do.end99:                                         ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 445) #10
  tail call void @dump_stack() #10
  br label %do.body107

if.else102:                                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load i32, ptr @tests_passed, align 4
  %inc103 = add i32 %26, 1
  store i32 %inc103, ptr @tests_passed, align 4
  br label %do.body107

do.body107:                                       ; preds = %if.else102, %do.end99
  %27 = load i32, ptr @tests_run, align 4
  %inc108 = add i32 %27, 1
  store i32 %inc108, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i414 = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef null, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  %28 = ptrtoint ptr %call.i.i414 to i32
  %and.i.i.i.i415 = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i415)
  %cmp.i.i.i.i416 = icmp ne i32 %and.i.i.i.i415, 2
  %cmp.i.i.i417 = icmp ult ptr %call.i.i414, inttoptr (i32 -16378 to ptr)
  %cmp110.not450 = icmp ult ptr %call.i.i414, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i418 = or i1 %cmp.i.i.i417, %cmp.i.i.i.i416
  %cmp110.not = or i1 %cmp110.not450, %not.spec.select.i.i.i418
  br i1 %cmp110.not, label %if.else117, label %do.end114

do.end114:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 448) #10
  tail call void @dump_stack() #10
  br label %do.body122

if.else117:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  %29 = load i32, ptr @tests_passed, align 4
  %inc118 = add i32 %29, 1
  store i32 %inc118, ptr @tests_passed, align 4
  br label %do.body122

do.body122:                                       ; preds = %if.else117, %do.end114
  %30 = load i32, ptr @tests_run, align 4
  %inc123 = add i32 %30, 1
  store i32 %inc123, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 1030 to ptr), ptr noundef nonnull inttoptr (i32 24691357 to ptr), i32 noundef 2048) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  %cmp127.not = icmp eq ptr %call.i, null
  br i1 %cmp127.not, label %if.else134, label %do.end131

do.end131:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 450) #10
  tail call void @dump_stack() #10
  br label %do.end138

if.else134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %31 = load i32, ptr @tests_passed, align 4
  %inc135 = add i32 %31, 1
  store i32 %inc135, ptr @tests_passed, align 4
  br label %do.end138

do.end138:                                        ; preds = %if.else134, %do.end131
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i421 = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 1030 to ptr), ptr noundef null, i32 noundef 0) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef 12345678)
  %32 = load i32, ptr @tests_run, align 4
  %inc140 = add i32 %32, 1
  store i32 %inc140, ptr @tests_run, align 4
  %33 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xa_head.i, align 4
  %cmp.i423 = icmp eq ptr %34, null
  br i1 %cmp.i423, label %if.else148, label %do.end145

do.end145:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #9
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 453) #10
  tail call void @dump_stack() #10
  br label %do.body153

if.else148:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #9
  %35 = load i32, ptr @tests_passed, align 4
  %inc149 = add i32 %35, 1
  store i32 %inc149, ptr @tests_passed, align 4
  br label %do.body153

do.body153:                                       ; preds = %if.else148, %do.end145
  %36 = load i32, ptr @tests_run, align 4
  %inc154 = add i32 %36, 1
  store i32 %inc154, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i424 = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 12345678, ptr noundef null, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  %37 = ptrtoint ptr %call.i.i424 to i32
  %and.i.i.i.i425 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i425)
  %cmp.i.i.i.i426 = icmp ne i32 %and.i.i.i.i425, 2
  %cmp.i.i.i427 = icmp ult ptr %call.i.i424, inttoptr (i32 -16378 to ptr)
  %cmp156.not451 = icmp ult ptr %call.i.i424, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i428 = or i1 %cmp.i.i.i427, %cmp.i.i.i.i426
  %cmp156.not = or i1 %cmp156.not451, %not.spec.select.i.i.i428
  br i1 %cmp156.not, label %if.else163, label %do.end160

do.end160:                                        ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 456) #10
  tail call void @dump_stack() #10
  br label %do.body168

if.else163:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i32, ptr @tests_passed, align 4
  %inc164 = add i32 %38, 1
  store i32 %inc164, ptr @tests_passed, align 4
  br label %do.body168

do.body168:                                       ; preds = %if.else163, %do.end160
  %39 = load i32, ptr @tests_run, align 4
  %inc169 = add i32 %39, 1
  store i32 %inc169, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i431 = tail call i32 @__xa_insert(ptr noundef %xa, i32 noundef 12345678, ptr noundef nonnull inttoptr (i32 24691357 to ptr), i32 noundef 0) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i431)
  %cmp172.not = icmp eq i32 %call.i431, -16
  br i1 %cmp172.not, label %if.else179, label %do.end176

do.end176:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 458) #10
  tail call void @dump_stack() #10
  br label %do.body184

if.else179:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  %40 = load i32, ptr @tests_passed, align 4
  %inc180 = add i32 %40, 1
  store i32 %inc180, ptr @tests_passed, align 4
  br label %do.body184

do.body184:                                       ; preds = %if.else179, %do.end176
  %41 = load i32, ptr @tests_run, align 4
  %inc185 = add i32 %41, 1
  store i32 %inc185, ptr @tests_run, align 4
  %42 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xa_head.i, align 4
  %cmp.i433 = icmp eq ptr %43, null
  br i1 %cmp.i433, label %do.end190, label %if.else193

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 459) #10
  tail call void @dump_stack() #10
  br label %do.body198

if.else193:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %44 = load i32, ptr @tests_passed, align 4
  %inc194 = add i32 %44, 1
  store i32 %inc194, ptr @tests_passed, align 4
  br label %do.body198

do.body198:                                       ; preds = %if.else193, %do.end190
  %45 = load i32, ptr @tests_run, align 4
  %inc199 = add i32 %45, 1
  store i32 %inc199, ptr @tests_run, align 4
  %call200 = tail call ptr @xa_erase(ptr noundef %xa, i32 noundef 12345678) #11
  %cmp201.not = icmp eq ptr %call200, null
  br i1 %cmp201.not, label %if.else208, label %do.end205

do.end205:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #9
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 460) #10
  tail call void @dump_stack() #10
  br label %do.body213

if.else208:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #9
  %46 = load i32, ptr @tests_passed, align 4
  %inc209 = add i32 %46, 1
  store i32 %inc209, ptr @tests_passed, align 4
  br label %do.body213

do.body213:                                       ; preds = %if.else208, %do.end205
  %47 = load i32, ptr @tests_run, align 4
  %inc214 = add i32 %47, 1
  store i32 %inc214, ptr @tests_run, align 4
  %48 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xa_head.i, align 4
  %cmp.i435 = icmp eq ptr %49, null
  br i1 %cmp.i435, label %if.else222, label %do.end219

do.end219:                                        ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #9
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 461) #10
  tail call void @dump_stack() #10
  br label %do.end226

if.else222:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #9
  %50 = load i32, ptr @tests_passed, align 4
  %inc223 = add i32 %50, 1
  store i32 %inc223, ptr @tests_passed, align 4
  br label %do.end226

do.end226:                                        ; preds = %if.else222, %do.end219
  %call1.i436 = tail call ptr @xa_store(ptr noundef %xa, i32 noundef 5, ptr noundef nonnull inttoptr (i32 11 to ptr), i32 noundef 3264) #11
  %51 = load i32, ptr @tests_run, align 4
  %inc229 = add i32 %51, 1
  store i32 %inc229, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i437 = tail call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 6, ptr noundef null, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %xa) #11
  %52 = ptrtoint ptr %call.i.i437 to i32
  %and.i.i.i.i438 = and i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i438)
  %cmp.i.i.i.i439 = icmp ne i32 %and.i.i.i.i438, 2
  %cmp.i.i.i440 = icmp ult ptr %call.i.i437, inttoptr (i32 -16378 to ptr)
  %cmp231.not452 = icmp ult ptr %call.i.i437, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i441 = or i1 %cmp.i.i.i440, %cmp.i.i.i.i439
  %cmp231.not = or i1 %cmp231.not452, %not.spec.select.i.i.i441
  br i1 %cmp231.not, label %if.else238, label %do.end235

do.end235:                                        ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #9
  %call237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 465) #10
  tail call void @dump_stack() #10
  br label %do.end242

if.else238:                                       ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #9
  %53 = load i32, ptr @tests_passed, align 4
  %inc239 = add i32 %53, 1
  store i32 %inc239, ptr @tests_passed, align 4
  br label %do.end242

do.end242:                                        ; preds = %if.else238, %do.end235
  %call1.i444 = tail call ptr @xa_store(ptr noundef %xa, i32 noundef 7, ptr noundef nonnull inttoptr (i32 15 to ptr), i32 noundef 3264) #11
  %54 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %index, align 4
  %call244 = call ptr @xa_find(ptr noundef %xa, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool245.not453 = icmp eq ptr %call244, null
  br i1 %tobool245.not453, label %do.body263.thread, label %do.end242.do.body246_crit_edge

do.end242.do.body246_crit_edge:                   ; preds = %do.end242
  br label %do.body246

do.body263.thread:                                ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #9
  %55 = load i32, ptr @tests_run, align 4
  %inc264456 = add i32 %55, 1
  store i32 %inc264456, ptr @tests_run, align 4
  br label %do.end269

do.body246:                                       ; preds = %do.end260.do.body246_crit_edge, %do.end242.do.body246_crit_edge
  %count.0454 = phi i32 [ %inc261, %do.end260.do.body246_crit_edge ], [ 0, %do.end242.do.body246_crit_edge ]
  %56 = load i32, ptr @tests_run, align 4
  %inc247 = add i32 %56, 1
  store i32 %inc247, ptr @tests_run, align 4
  %57 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %58, label %do.end253 [
    i32 5, label %do.body246.if.else256_crit_edge
    i32 7, label %do.body246.if.else256_crit_edge457
  ]

do.body246.if.else256_crit_edge457:               ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else256

do.body246.if.else256_crit_edge:                  ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else256

do.end253:                                        ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #9
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 470) #10
  call void @dump_stack() #10
  br label %do.end260

if.else256:                                       ; preds = %do.body246.if.else256_crit_edge, %do.body246.if.else256_crit_edge457
  %60 = load i32, ptr @tests_passed, align 4
  %inc257 = add i32 %60, 1
  store i32 %inc257, ptr @tests_passed, align 4
  br label %do.end260

do.end260:                                        ; preds = %if.else256, %do.end253
  %inc261 = add i32 %count.0454, 1
  %call262 = call ptr @xa_find_after(ptr noundef %xa, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool245.not = icmp eq ptr %call262, null
  br i1 %tobool245.not, label %do.body263, label %do.end260.do.body246_crit_edge

do.end260.do.body246_crit_edge:                   ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body246

do.body263:                                       ; preds = %do.end260
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc261)
  %phi.cmp = icmp eq i32 %inc261, 2
  %61 = load i32, ptr @tests_run, align 4
  %inc264 = add i32 %61, 1
  store i32 %inc264, ptr @tests_run, align 4
  br i1 %phi.cmp, label %if.else272, label %do.body263.do.end269_crit_edge

do.body263.do.end269_crit_edge:                   ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end269

do.end269:                                        ; preds = %do.body263.do.end269_crit_edge, %do.body263.thread
  %call271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 473) #10
  call void @dump_stack() #10
  br label %do.end276

if.else272:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #9
  %62 = load i32, ptr @tests_passed, align 4
  %inc273 = add i32 %62, 1
  store i32 %inc273, ptr @tests_passed, align 4
  br label %do.end276

do.end276:                                        ; preds = %if.else272, %do.end269
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %xa, i32 0, i32 1
  %63 = ptrtoint ptr %xa_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xa_flags, align 4
  %and = and i32 %64, 67108868
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool277.not = icmp eq i32 %and, 0
  br i1 %tobool277.not, label %do.end276.if.end342_crit_edge, label %if.then278

do.end276.if.end342_crit_edge:                    ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end342

if.then278:                                       ; preds = %do.end276
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %65 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %id, align 4, !annotation !971
  %66 = load i32, ptr @tests_run, align 4
  %inc280 = add i32 %66, 1
  store i32 %inc280, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i445 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 17 to ptr), [2 x i32] [i32 10, i32 5], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i445)
  %cmp283.not = icmp eq i32 %call.i445, 0
  br i1 %cmp283.not, label %if.else290, label %do.end287

do.end287:                                        ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #9
  %call289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 480) #10
  call void @dump_stack() #10
  br label %do.body295

if.else290:                                       ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #9
  %67 = load i32, ptr @tests_passed, align 4
  %inc291 = add i32 %67, 1
  store i32 %inc291, ptr @tests_passed, align 4
  br label %do.body295

do.body295:                                       ; preds = %if.else290, %do.end287
  %68 = load i32, ptr @tests_run, align 4
  %inc296 = add i32 %68, 1
  store i32 %inc296, ptr @tests_run, align 4
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %70)
  %cmp297.not = icmp eq i32 %70, 8
  br i1 %cmp297.not, label %if.else304, label %do.end301

do.end301:                                        ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #9
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 481) #10
  call void @dump_stack() #10
  br label %do.end308

if.else304:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #9
  %71 = load i32, ptr @tests_passed, align 4
  %inc305 = add i32 %71, 1
  store i32 %inc305, ptr @tests_passed, align 4
  br label %do.end308

do.end308:                                        ; preds = %if.else304, %do.end301
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i.i446 = call ptr @__xa_cmpxchg(ptr noundef %xa, i32 noundef 6, ptr noundef nonnull inttoptr (i32 1030 to ptr), ptr noundef null, i32 noundef 0) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  %72 = load i32, ptr @tests_run, align 4
  %inc310 = add i32 %72, 1
  store i32 %inc310, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i447 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 13 to ptr), [2 x i32] [i32 10, i32 5], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i447)
  %cmp316.not = icmp eq i32 %call.i447, 0
  br i1 %cmp316.not, label %if.else323, label %do.end320

do.end320:                                        ; preds = %do.end308
  call void @__sanitizer_cov_trace_pc() #9
  %call322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 485) #10
  call void @dump_stack() #10
  br label %do.body328

if.else323:                                       ; preds = %do.end308
  call void @__sanitizer_cov_trace_pc() #9
  %73 = load i32, ptr @tests_passed, align 4
  %inc324 = add i32 %73, 1
  store i32 %inc324, ptr @tests_passed, align 4
  br label %do.body328

do.body328:                                       ; preds = %if.else323, %do.end320
  %74 = load i32, ptr @tests_run, align 4
  %inc329 = add i32 %74, 1
  store i32 %inc329, ptr @tests_run, align 4
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %76)
  %cmp330.not = icmp eq i32 %76, 6
  br i1 %cmp330.not, label %if.else337, label %do.end334

do.end334:                                        ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #9
  %call336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, i32 noundef 486) #10
  call void @dump_stack() #10
  br label %do.end341

if.else337:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #9
  %77 = load i32, ptr @tests_passed, align 4
  %inc338 = add i32 %77, 1
  store i32 %inc338, ptr @tests_passed, align 4
  br label %do.end341

do.end341:                                        ; preds = %if.else337, %do.end334
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  br label %if.end342

if.end342:                                        ; preds = %do.end341, %do.end276.if.end342_crit_edge
  call void @xa_destroy(ptr noundef %xa) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_get_order() unnamed_addr #2 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %tests_run.promoted = load i32, ptr @tests_run, align 4
  %tests_passed.promoted = load i32, ptr @tests_passed, align 4
  %0 = add i32 %tests_run.promoted, 3
  %1 = add i32 %tests_passed.promoted, 3
  store i32 %0, ptr @tests_run, align 4
  store i32 %1, ptr @tests_passed, align 4
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  br label %for.body13

for.body13:                                       ; preds = %for.end39.for.body13_crit_edge, %entry
  %i.116 = phi i32 [ 0, %entry ], [ %add, %for.end39.for.body13_crit_edge ]
  %and.i = shl nuw nsw i32 %i.116, 1
  %or.i.i = or i32 %and.i, 1
  %7 = inttoptr i32 %or.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #11
  %8 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @array, ptr %xas.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.116, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 3 to ptr), ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %5, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %6, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body13
  %14 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_lock(ptr noundef %15) #11
  %call.i = call ptr @xas_store(ptr noundef nonnull %xas.i, ptr noundef nonnull %7) #11
  %16 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock(ptr noundef %17) #11
  %call10.i = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas.i, i32 noundef 3264) #11
  br i1 %call10.i, label %do.body.i.do.body.i_crit_edge, label %for.end39

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.end39:                                        ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #11
  %add = add nuw nsw i32 %i.116, 1
  %tests_passed.promoted8 = load i32, ptr @tests_passed, align 4
  %tests_run.promoted6 = load i32, ptr @tests_run, align 4
  %18 = add i32 %tests_run.promoted6, 1
  %19 = add i32 %tests_passed.promoted8, 1
  store i32 %18, ptr @tests_run, align 4
  store i32 %19, ptr @tests_passed, align 4
  %call41 = call ptr @xa_erase(ptr noundef nonnull @array, i32 noundef %i.116) #11
  %exitcond.not = icmp eq i32 %add, 10
  br i1 %exitcond.not, label %for.end47, label %for.end39.for.body13_crit_edge

for.end39.for.body13_crit_edge:                   ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.end47:                                        ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_alloc() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @check_xa_alloc_1(ptr noundef nonnull @xa0, i32 noundef 0)
  tail call fastcc void @check_xa_alloc_1(ptr noundef nonnull @xa1, i32 noundef 1)
  tail call fastcc void @check_xa_alloc_2(ptr noundef nonnull @xa0, i32 noundef 0)
  tail call fastcc void @check_xa_alloc_2(ptr noundef nonnull @xa1, i32 noundef 1)
  tail call fastcc void @check_xa_alloc_3(ptr noundef nonnull @xa0, i32 noundef 0)
  tail call fastcc void @check_xa_alloc_3(ptr noundef nonnull @xa1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_find() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @check_find_1()
  tail call fastcc void @check_find_2()
  tail call fastcc void @check_find_3()
  tail call fastcc void @check_find_4()
  tail call fastcc void @check_multi_find_2()
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_find_entry() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %call = tail call fastcc i32 @xa_find_entry(ptr noundef nonnull @array)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.374, i32 noundef 1176) #10
  tail call void @dump_stack() #10
  br label %do.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i32, ptr @tests_passed, align 4
  %inc3 = add i32 %1, 1
  store i32 %inc3, ptr @tests_passed, align 4
  br label %do.end4

do.end4:                                          ; preds = %if.else, %do.end
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef -1, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef 3264) #11
  %2 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %2, 1
  store i32 %inc7, ptr @tests_run, align 4
  %call8 = tail call fastcc i32 @xa_find_entry(ptr noundef nonnull @array)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, -1
  br i1 %cmp9.not, label %if.else15, label %do.end12

do.end12:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.374, i32 noundef 1178) #10
  tail call void @dump_stack() #10
  br label %do.body19

if.else15:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @tests_passed, align 4
  %inc16 = add i32 %3, 1
  store i32 %inc16, ptr @tests_passed, align 4
  br label %do.body19

do.body19:                                        ; preds = %if.else15, %do.end12
  %4 = load i32, ptr @tests_run, align 4
  %inc20 = add i32 %4, 1
  store i32 %inc20, ptr @tests_run, align 4
  %call22 = tail call fastcc i32 @xa_find_entry(ptr noundef nonnull inttoptr (i32 -1 to ptr))
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, -1
  br i1 %cmp23.not, label %if.else29, label %do.end26

do.end26:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.374, i32 noundef 1179) #10
  tail call void @dump_stack() #10
  br label %do.end32

if.else29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc30 = add i32 %5, 1
  store i32 %inc30, ptr @tests_passed, align 4
  br label %do.end32

do.end32:                                         ; preds = %if.else29, %do.end26
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef -1)
  %6 = load i32, ptr @tests_run, align 4
  %inc34 = add i32 %6, 1
  store i32 %inc34, ptr @tests_run, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.else41, label %do.end38

do.end38:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.374, i32 noundef 1181) #10
  tail call void @dump_stack() #10
  br label %do.end44

if.else41:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc42 = add i32 %8, 1
  store i32 %inc42, ptr @tests_passed, align 4
  br label %do.end44

do.end44:                                         ; preds = %if.else41, %do.end38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_pause() unnamed_addr #2 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %4 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @array, ptr %xas, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %12 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %13 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %14 = load i32, ptr @tests_run, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @tests_run, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #11
  %15 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @array, ptr %xas.i, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %9, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %10, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %12, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %13, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %21 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_lock(ptr noundef %22) #11
  %call.i12 = call ptr @xas_store(ptr noundef nonnull %xas.i, ptr noundef nonnull inttoptr (i32 3 to ptr)) #11
  %23 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock(ptr noundef %24) #11
  %call10.i = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas.i, i32 noundef 3264) #11
  br i1 %call10.i, label %do.body.i.do.body.i_crit_edge, label %xa_store_order.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

xa_store_order.exit:                              ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #11
  %tobool.not = icmp eq ptr %call.i12, null
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %xa_store_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.381, i32 noundef 1194) #10
  call void @dump_stack() #10
  br label %do.end8

if.else:                                          ; preds = %xa_store_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load i32, ptr @tests_passed, align 4
  %inc6 = add i32 %25, 1
  store i32 %inc6, ptr @tests_passed, align 4
  br label %do.end8

do.end8:                                          ; preds = %if.else, %do.end
  %26 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end8.rcu_read_lock.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end8
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end8.rcu_read_lock.exit_crit_edge
  %call10 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %tobool12.not38 = icmp eq ptr %call10, null
  br i1 %tobool12.not38, label %rcu_read_lock.exit.for.end33_crit_edge, label %rcu_read_lock.exit.do.body14_crit_edge

rcu_read_lock.exit.do.body14_crit_edge:           ; preds = %rcu_read_lock.exit
  br label %do.body14

rcu_read_lock.exit.for.end33_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end33

do.body14:                                        ; preds = %do.end29.do.body14_crit_edge, %rcu_read_lock.exit.do.body14_crit_edge
  %entry2.040 = phi ptr [ %call32, %do.end29.do.body14_crit_edge ], [ %call10, %rcu_read_lock.exit.do.body14_crit_edge ]
  %count.039 = phi i32 [ %inc30, %do.end29.do.body14_crit_edge ], [ 0, %rcu_read_lock.exit.do.body14_crit_edge ]
  %30 = load i32, ptr @tests_run, align 4
  %inc15 = add i32 %30, 1
  store i32 %inc15, ptr @tests_run, align 4
  %and.i13 = shl i32 2, %count.039
  %or.i.i14 = or i32 %and.i13, 1
  %31 = inttoptr i32 %or.i.i14 to ptr
  %cmp18.not = icmp eq ptr %entry2.040, %31
  br i1 %cmp18.not, label %if.else25, label %do.end22

do.end22:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.381, i32 noundef 1200) #10
  call void @dump_stack() #10
  br label %do.end29

if.else25:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %32 = load i32, ptr @tests_passed, align 4
  %inc26 = add i32 %32, 1
  store i32 %inc26, ptr @tests_passed, align 4
  br label %do.end29

do.end29:                                         ; preds = %if.else25, %do.end22
  %inc30 = add i32 %count.039, 1
  %call32 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %tobool12.not = icmp eq ptr %call32, null
  br i1 %tobool12.not, label %do.end29.for.end33_crit_edge, label %do.end29.do.body14_crit_edge

do.end29.do.body14_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

do.end29.for.end33_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end33

for.end33:                                        ; preds = %do.end29.for.end33_crit_edge, %rcu_read_lock.exit.for.end33_crit_edge
  %count.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end33_crit_edge ], [ %inc30, %do.end29.for.end33_crit_edge ]
  %call.i15 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i15, label %for.end33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

for.end33.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %for.end33
  %call1.i16 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %for.end33.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %33 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i22 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %37 = load i32, ptr @tests_run, align 4
  %inc35 = add i32 %37, 1
  store i32 %inc35, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.lcssa)
  %cmp36.not = icmp eq i32 %count.0.lcssa, 1
  br i1 %cmp36.not, label %if.else43, label %do.end40

do.end40:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.381, i32 noundef 1204) #10
  call void @dump_stack() #10
  br label %do.end47

if.else43:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i32, ptr @tests_passed, align 4
  %inc44 = add i32 %38, 1
  store i32 %inc44, ptr @tests_passed, align 4
  br label %do.end47

do.end47:                                         ; preds = %if.else43, %do.end40
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %0, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i1 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %preempt_count.i.i.i.i2 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i2, align 4
  %add.i.i.i3 = add i32 %44, 1
  store volatile i32 %add.i.i.i3, ptr %preempt_count.i.i.i.i2, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i4 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4, label %do.end47.rcu_read_lock.exit11_crit_edge, label %land.lhs.true.i7

do.end47.rcu_read_lock.exit11_crit_edge:          ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true.i7:                                 ; preds = %do.end47
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_lock.exit11_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit11

rcu_read_lock.exit11:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, %do.end47.rcu_read_lock.exit11_crit_edge
  %call48 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %tobool50.not41 = icmp eq ptr %call48, null
  br i1 %tobool50.not41, label %rcu_read_lock.exit11.for.end71_crit_edge, label %rcu_read_lock.exit11.do.body52_crit_edge

rcu_read_lock.exit11.do.body52_crit_edge:         ; preds = %rcu_read_lock.exit11
  br label %do.body52

rcu_read_lock.exit11.for.end71_crit_edge:         ; preds = %rcu_read_lock.exit11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

do.body52:                                        ; preds = %do.end67.do.body52_crit_edge, %rcu_read_lock.exit11.do.body52_crit_edge
  %entry2.143 = phi ptr [ %call70, %do.end67.do.body52_crit_edge ], [ %call48, %rcu_read_lock.exit11.do.body52_crit_edge ]
  %count.142 = phi i32 [ %inc68, %do.end67.do.body52_crit_edge ], [ 0, %rcu_read_lock.exit11.do.body52_crit_edge ]
  %45 = load i32, ptr @tests_run, align 4
  %inc53 = add i32 %45, 1
  store i32 %inc53, ptr @tests_run, align 4
  %and.i24 = shl i32 2, %count.142
  %or.i.i25 = or i32 %and.i24, 1
  %46 = inttoptr i32 %or.i.i25 to ptr
  %cmp56.not = icmp eq ptr %entry2.143, %46
  br i1 %cmp56.not, label %if.else63, label %do.end60

do.end60:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.381, i32 noundef 1210) #10
  call void @dump_stack() #10
  br label %do.end67

if.else63:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %47 = load i32, ptr @tests_passed, align 4
  %inc64 = add i32 %47, 1
  store i32 %inc64, ptr @tests_passed, align 4
  br label %do.end67

do.end67:                                         ; preds = %if.else63, %do.end60
  %inc68 = add i32 %count.142, 1
  call void @xas_pause(ptr noundef nonnull %xas) #11
  %call70 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %tobool50.not = icmp eq ptr %call70, null
  br i1 %tobool50.not, label %do.end67.for.end71_crit_edge, label %do.end67.do.body52_crit_edge

do.end67.do.body52_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52

do.end67.for.end71_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

for.end71:                                        ; preds = %do.end67.for.end71_crit_edge, %rcu_read_lock.exit11.for.end71_crit_edge
  %count.1.lcssa = phi i32 [ 0, %rcu_read_lock.exit11.for.end71_crit_edge ], [ %inc68, %do.end67.for.end71_crit_edge ]
  %call.i26 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i26, label %for.end71.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true.i29

for.end71.rcu_read_unlock.exit36_crit_edge:       ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit36

land.lhs.true.i29:                                ; preds = %for.end71
  %call1.i27 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit36

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit36

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit36

rcu_read_unlock.exit36:                           ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, %for.end71.rcu_read_unlock.exit36_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %48 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i33 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i35 = add i32 %51, -1
  store volatile i32 %sub.i.i.i35, ptr %preempt_count.i.i.i.i34, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %52 = load i32, ptr @tests_run, align 4
  %inc73 = add i32 %52, 1
  store i32 %inc73, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.1.lcssa)
  %cmp74.not = icmp eq i32 %count.1.lcssa, 1
  br i1 %cmp74.not, label %if.else81, label %do.end78

do.end78:                                         ; preds = %rcu_read_unlock.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.381, i32 noundef 1215) #10
  call void @dump_stack() #10
  br label %do.end85

if.else81:                                        ; preds = %rcu_read_unlock.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %53 = load i32, ptr @tests_passed, align 4
  %inc82 = add i32 %53, 1
  store i32 %inc82, ptr @tests_passed, align 4
  br label %do.end85

do.end85:                                         ; preds = %if.else81, %do.end78
  call void @xa_destroy(ptr noundef nonnull @array) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_destroy() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.390, i32 noundef 1741) #10
  tail call void @dump_stack() #10
  br label %do.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @tests_passed, align 4
  br label %do.end5

do.end5:                                          ; preds = %if.else, %do.end
  tail call void @xa_destroy(ptr noundef nonnull @array) #11
  %3 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %3, 1
  store i32 %inc7, ptr @tests_run, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i1 = icmp eq ptr %4, null
  br i1 %cmp.i1, label %if.else15, label %do.end12

do.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.390, i32 noundef 1745) #10
  tail call void @dump_stack() #10
  br label %for.body.preheader

if.else15:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc16 = add i32 %5, 1
  store i32 %inc16, ptr @tests_passed, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else15, %do.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %index.06 = phi i32 [ %inc49, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %and.i.i = shl nuw nsw i32 %index.06, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %6 = inttoptr i32 %or.i.i.i to ptr
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %index.06, ptr noundef nonnull %6, i32 noundef 3264) #11
  %7 = load i32, ptr @tests_run, align 4
  %inc22 = add i32 %7, 1
  store i32 %inc22, ptr @tests_run, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i2 = icmp eq ptr %8, null
  br i1 %cmp.i2, label %do.end27, label %if.else30

do.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.390, i32 noundef 1750) #10
  tail call void @dump_stack() #10
  br label %do.end34

if.else30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @tests_passed, align 4
  %inc31 = add i32 %9, 1
  store i32 %inc31, ptr @tests_passed, align 4
  br label %do.end34

do.end34:                                         ; preds = %if.else30, %do.end27
  tail call void @xa_destroy(ptr noundef nonnull @array) #11
  %10 = load i32, ptr @tests_run, align 4
  %inc36 = add i32 %10, 1
  store i32 %inc36, ptr @tests_run, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i3 = icmp eq ptr %11, null
  br i1 %cmp.i3, label %if.else44, label %do.end41

do.end41:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.390, i32 noundef 1752) #10
  tail call void @dump_stack() #10
  br label %for.inc

if.else44:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load i32, ptr @tests_passed, align 4
  %inc45 = add i32 %12, 1
  store i32 %inc45, ptr @tests_passed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else44, %do.end41
  %inc49 = add nuw nsw i32 %index.06, 1
  %exitcond.not = icmp eq i32 %inc49, 1000
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call50 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef -1, ptr noundef nonnull @array, i32 noundef 3264) #11
  %13 = load i32, ptr @tests_run, align 4
  %inc52 = add i32 %13, 1
  store i32 %inc52, ptr @tests_run, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i4 = icmp eq ptr %14, null
  br i1 %cmp.i4, label %do.end57, label %if.else60

do.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.390, i32 noundef 1757) #10
  tail call void @dump_stack() #10
  br label %do.end64

if.else60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @tests_passed, align 4
  %inc61 = add i32 %15, 1
  store i32 %inc61, ptr @tests_passed, align 4
  br label %do.end64

do.end64:                                         ; preds = %if.else60, %do.end57
  tail call void @xa_destroy(ptr noundef nonnull @array) #11
  %16 = load i32, ptr @tests_run, align 4
  %inc66 = add i32 %16, 1
  store i32 %inc66, ptr @tests_run, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i5 = icmp eq ptr %17, null
  br i1 %cmp.i5, label %if.else74, label %do.end71

do.end71:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.390, i32 noundef 1759) #10
  tail call void @dump_stack() #10
  br label %do.end78

if.else74:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @tests_passed, align 4
  %inc75 = add i32 %18, 1
  store i32 %inc75, ptr @tests_passed, align 4
  br label %do.end78

do.end78:                                         ; preds = %if.else74, %do.end71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_move() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @array, ptr %xas, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry
  %i.0200 = phi i32 [ 0, %entry ], [ %inc8, %for.inc.do.body_crit_edge ]
  %12 = load i32, ptr @tests_run, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr @tests_run, align 4
  %and.i.i = shl nuw nsw i32 %i.0200, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %13 = inttoptr i32 %or.i.i.i to ptr
  %call1.i13 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %i.0200, ptr noundef nonnull %13, i32 noundef 3264) #11
  %cmp2.not = icmp eq ptr %call1.i13, null
  br i1 %cmp2.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1317) #10
  tail call void @dump_stack() #10
  br label %for.inc

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i32, ptr @tests_passed, align 4
  %inc5 = add i32 %14, 1
  store i32 %inc5, ptr @tests_passed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %do.end
  %inc8 = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc8, 65536
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %for.inc
  %15 = tail call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.end.do.body9.preheader_crit_edge, label %land.lhs.true.i

for.end.do.body9.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.preheader

land.lhs.true.i:                                  ; preds = %for.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body9.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body9.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body9.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body9.preheader_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %do.body9.preheader

do.body9.preheader:                               ; preds = %if.then.i, %land.lhs.true2.i.do.body9.preheader_crit_edge, %land.lhs.true.i.do.body9.preheader_crit_edge, %for.end.do.body9.preheader_crit_edge
  br label %do.body9

do.body9:                                         ; preds = %do.end41.do.body9_crit_edge, %do.body9.preheader
  %i.1 = phi i32 [ %dec, %do.end41.do.body9_crit_edge ], [ 65536, %do.body9.preheader ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %21 = ptrtoint ptr %20 to i32
  %and.i.i14 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i.i = icmp ne i32 %and.i.i14, 0
  %tobool1.not.i.i = icmp eq ptr %20, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %do.body9.if.then.i16_crit_edge, label %lor.lhs.false.i, !prof !972

do.body9.if.then.i16_crit_edge:                   ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i16

lor.lhs.false.i:                                  ; preds = %do.body9
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i15 = icmp eq i8 %23, 0
  br i1 %tobool.not.i15, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i16_crit_edge, !prof !973

lor.lhs.false.i.if.then.i16_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i16

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i = icmp eq i8 %25, 0
  br i1 %cmp.i, label %lor.rhs.i.if.then.i16_crit_edge, label %if.end.i, !prof !972

lor.rhs.i.if.then.i16_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i16

if.then.i16:                                      ; preds = %lor.rhs.i.if.then.i16_crit_edge, %lor.lhs.false.i.if.then.i16_crit_edge, %do.body9.if.then.i16_crit_edge
  %call5.i = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  br label %xas_prev.exit

if.end.i:                                         ; preds = %lor.rhs.i
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %0, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %0, align 4
  %dec7.i = add i8 %25, -1
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %dec7.i, ptr %2, align 2
  %29 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %dec7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %20, i32 0, i32 7, i32 %conv9.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i20.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i20.i, label %lor.lhs.false.i.i, label %if.end.i.xas_prev.exit_crit_edge

if.end.i.xas_prev.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call4.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_prev.exit_crit_edge

lor.lhs.false.i.i.xas_prev.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xas_prev.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xas_prev.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_prev.exit_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xas_prev.exit_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_prev.exit

xas_prev.exit:                                    ; preds = %if.then.i.i, %land.lhs.true8.i.i.xas_prev.exit_crit_edge, %land.lhs.true.i.i.xas_prev.exit_crit_edge, %lor.lhs.false.i.i.xas_prev.exit_crit_edge, %if.end.i.xas_prev.exit_crit_edge, %if.then.i16
  %retval.0.i = phi ptr [ %call5.i, %if.then.i16 ], [ %32, %if.end.i.xas_prev.exit_crit_edge ], [ %32, %lor.lhs.false.i.i.xas_prev.exit_crit_edge ], [ %32, %land.lhs.true.i.i.xas_prev.exit_crit_edge ], [ %32, %land.lhs.true8.i.i.xas_prev.exit_crit_edge ], [ %32, %if.then.i.i ]
  %dec = add nsw i32 %i.1, -1
  %33 = load i32, ptr @tests_run, align 4
  %inc13 = add i32 %33, 1
  store i32 %inc13, ptr @tests_run, align 4
  %and.i = shl i32 %dec, 1
  %or.i.i = or i32 %and.i, 1
  %34 = inttoptr i32 %or.i.i to ptr
  %cmp15.not = icmp eq ptr %retval.0.i, %34
  br i1 %cmp15.not, label %if.else22, label %do.end19

do.end19:                                         ; preds = %xas_prev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1323) #10
  call void @dump_stack() #10
  br label %do.body27

if.else22:                                        ; preds = %xas_prev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = load i32, ptr @tests_passed, align 4
  %inc23 = add i32 %35, 1
  store i32 %inc23, ptr @tests_passed, align 4
  br label %do.body27

do.body27:                                        ; preds = %if.else22, %do.end19
  %36 = load i32, ptr @tests_run, align 4
  %inc28 = add i32 %36, 1
  store i32 %inc28, ptr @tests_run, align 4
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %38)
  %cmp30.not = icmp eq i32 %dec, %38
  br i1 %cmp30.not, label %if.else37, label %do.end34

do.end34:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1324) #10
  call void @dump_stack() #10
  br label %do.end41

if.else37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %39 = load i32, ptr @tests_passed, align 4
  %inc38 = add i32 %39, 1
  store i32 %inc38, ptr @tests_passed, align 4
  br label %do.end41

do.end41:                                         ; preds = %if.else37, %do.end34
  %cmp43.not = icmp eq i32 %dec, 0
  br i1 %cmp43.not, label %do.body45, label %do.end41.do.body9_crit_edge

do.end41.do.body9_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.body45:                                        ; preds = %do.end41
  %40 = load i32, ptr @tests_run, align 4
  %inc46 = add i32 %40, 1
  store i32 %inc46, ptr @tests_run, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %43 = ptrtoint ptr %42 to i32
  %and.i.i18 = and i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.not.i.i19 = icmp ne i32 %and.i.i18, 0
  %tobool1.not.i.i20 = icmp eq ptr %42, null
  %spec.select.i.i21 = or i1 %tobool1.not.i.i20, %tobool.not.i.i19
  br i1 %spec.select.i.i21, label %do.body45.if.then.i28_crit_edge, label %lor.lhs.false.i23, !prof !972

do.body45.if.then.i28_crit_edge:                  ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i28

lor.lhs.false.i23:                                ; preds = %do.body45
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i22 = icmp eq i8 %45, 0
  br i1 %tobool.not.i22, label %lor.rhs.i26, label %lor.lhs.false.i23.if.then.i28_crit_edge, !prof !973

lor.lhs.false.i23.if.then.i28_crit_edge:          ; preds = %lor.lhs.false.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i28

lor.rhs.i26:                                      ; preds = %lor.lhs.false.i23
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i25 = icmp eq i8 %47, 0
  br i1 %cmp.i25, label %lor.rhs.i26.if.then.i28_crit_edge, label %if.end.i37, !prof !972

lor.rhs.i26.if.then.i28_crit_edge:                ; preds = %lor.rhs.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i28

if.then.i28:                                      ; preds = %lor.rhs.i26.if.then.i28_crit_edge, %lor.lhs.false.i23.if.then.i28_crit_edge, %do.body45.if.then.i28_crit_edge
  %call5.i27 = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  br label %xas_prev.exit48

if.end.i37:                                       ; preds = %lor.rhs.i26
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %0, align 4
  %dec.i30 = add i32 %49, -1
  store i32 %dec.i30, ptr %0, align 4
  %dec7.i31 = add i8 %47, -1
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %dec7.i31, ptr %2, align 2
  %51 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xas, align 4
  %conv9.i32 = zext i8 %dec7.i31 to i32
  %arrayidx.i.i33 = getelementptr %struct.xa_node, ptr %42, i32 0, i32 7, i32 %conv9.i32
  %53 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %arrayidx.i.i33, align 4
  %dep_map.i.i34 = getelementptr inbounds %struct.anon, ptr %52, i32 0, i32 1
  %call.i.i.i35 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i34, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i35)
  %tobool.not.i20.i36 = icmp eq i32 %call.i.i.i35, 0
  br i1 %tobool.not.i20.i36, label %lor.lhs.false.i.i40, label %if.end.i37.xas_prev.exit48_crit_edge

if.end.i37.xas_prev.exit48_crit_edge:             ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit48

lor.lhs.false.i.i40:                              ; preds = %if.end.i37
  %call4.i.i38 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i38)
  %tobool5.not.i.i39 = icmp eq i32 %call4.i.i38, 0
  br i1 %tobool5.not.i.i39, label %land.lhs.true.i.i43, label %lor.lhs.false.i.i40.xas_prev.exit48_crit_edge

lor.lhs.false.i.i40.xas_prev.exit48_crit_edge:    ; preds = %lor.lhs.false.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit48

land.lhs.true.i.i43:                              ; preds = %lor.lhs.false.i.i40
  %call6.i.i41 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i41)
  %tobool7.not.i.i42 = icmp eq i32 %call6.i.i41, 0
  br i1 %tobool7.not.i.i42, label %land.lhs.true.i.i43.xas_prev.exit48_crit_edge, label %land.lhs.true8.i.i45

land.lhs.true.i.i43.xas_prev.exit48_crit_edge:    ; preds = %land.lhs.true.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit48

land.lhs.true8.i.i45:                             ; preds = %land.lhs.true.i.i43
  %.b13.i.i44 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i44, label %land.lhs.true8.i.i45.xas_prev.exit48_crit_edge, label %if.then.i.i46

land.lhs.true8.i.i45.xas_prev.exit48_crit_edge:   ; preds = %land.lhs.true8.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit48

if.then.i.i46:                                    ; preds = %land.lhs.true8.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_prev.exit48

xas_prev.exit48:                                  ; preds = %if.then.i.i46, %land.lhs.true8.i.i45.xas_prev.exit48_crit_edge, %land.lhs.true.i.i43.xas_prev.exit48_crit_edge, %lor.lhs.false.i.i40.xas_prev.exit48_crit_edge, %if.end.i37.xas_prev.exit48_crit_edge, %if.then.i28
  %retval.0.i47 = phi ptr [ %call5.i27, %if.then.i28 ], [ %54, %if.end.i37.xas_prev.exit48_crit_edge ], [ %54, %lor.lhs.false.i.i40.xas_prev.exit48_crit_edge ], [ %54, %land.lhs.true.i.i43.xas_prev.exit48_crit_edge ], [ %54, %land.lhs.true8.i.i45.xas_prev.exit48_crit_edge ], [ %54, %if.then.i.i46 ]
  %cmp48.not = icmp eq ptr %retval.0.i47, null
  br i1 %cmp48.not, label %if.else55, label %do.end52

do.end52:                                         ; preds = %xas_prev.exit48
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1327) #10
  call void @dump_stack() #10
  br label %do.body60

if.else55:                                        ; preds = %xas_prev.exit48
  call void @__sanitizer_cov_trace_pc() #9
  %55 = load i32, ptr @tests_passed, align 4
  %inc56 = add i32 %55, 1
  store i32 %inc56, ptr @tests_passed, align 4
  br label %do.body60

do.body60:                                        ; preds = %if.else55, %do.end52
  %56 = load i32, ptr @tests_run, align 4
  %inc61 = add i32 %56, 1
  store i32 %inc61, ptr @tests_run, align 4
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp63.not = icmp eq i32 %58, -1
  br i1 %cmp63.not, label %if.else70, label %do.end67

do.end67:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1328) #10
  call void @dump_stack() #10
  br label %do.body75.preheader

if.else70:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %59 = load i32, ptr @tests_passed, align 4
  %inc71 = add i32 %59, 1
  store i32 %inc71, ptr @tests_passed, align 4
  br label %do.body75.preheader

do.body75.preheader:                              ; preds = %if.else70, %do.end67
  br label %do.body75

do.body75:                                        ; preds = %do.end107.do.body75_crit_edge, %do.body75.preheader
  %i.2 = phi i32 [ %inc108, %do.end107.do.body75_crit_edge ], [ 0, %do.body75.preheader ]
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %62 = ptrtoint ptr %61 to i32
  %and.i.i50 = and i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp ne i32 %and.i.i50, 0
  %tobool1.not.i.i52 = icmp eq ptr %61, null
  %spec.select.i.i53 = or i1 %tobool1.not.i.i52, %tobool.not.i.i51
  br i1 %spec.select.i.i53, label %do.body75.if.then.i60_crit_edge, label %lor.lhs.false.i55, !prof !972

do.body75.if.then.i60_crit_edge:                  ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i60

lor.lhs.false.i55:                                ; preds = %do.body75
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i54 = icmp eq i8 %64, 0
  br i1 %tobool.not.i54, label %lor.rhs.i58, label %lor.lhs.false.i55.if.then.i60_crit_edge, !prof !973

lor.lhs.false.i55.if.then.i60_crit_edge:          ; preds = %lor.lhs.false.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i60

lor.rhs.i58:                                      ; preds = %lor.lhs.false.i55
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %66)
  %cmp.i57 = icmp eq i8 %66, 63
  br i1 %cmp.i57, label %lor.rhs.i58.if.then.i60_crit_edge, label %if.end.i67, !prof !972

lor.rhs.i58.if.then.i60_crit_edge:                ; preds = %lor.rhs.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i60

if.then.i60:                                      ; preds = %lor.rhs.i58.if.then.i60_crit_edge, %lor.lhs.false.i55.if.then.i60_crit_edge, %do.body75.if.then.i60_crit_edge
  %call5.i59 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit

if.end.i67:                                       ; preds = %lor.rhs.i58
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %0, align 4
  %inc.i = add i32 %68, 1
  store i32 %inc.i, ptr %0, align 4
  %inc7.i = add i8 %66, 1
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %inc7.i, ptr %2, align 2
  %70 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xas, align 4
  %conv9.i62 = zext i8 %inc7.i to i32
  %arrayidx.i.i63 = getelementptr %struct.xa_node, ptr %61, i32 0, i32 7, i32 %conv9.i62
  %72 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %arrayidx.i.i63, align 4
  %dep_map.i.i64 = getelementptr inbounds %struct.anon, ptr %71, i32 0, i32 1
  %call.i.i.i65 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i64, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i65)
  %tobool.not.i20.i66 = icmp eq i32 %call.i.i.i65, 0
  br i1 %tobool.not.i20.i66, label %lor.lhs.false.i.i70, label %if.end.i67.xas_next.exit_crit_edge

if.end.i67.xas_next.exit_crit_edge:               ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

lor.lhs.false.i.i70:                              ; preds = %if.end.i67
  %call4.i.i68 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i68)
  %tobool5.not.i.i69 = icmp eq i32 %call4.i.i68, 0
  br i1 %tobool5.not.i.i69, label %land.lhs.true.i.i73, label %lor.lhs.false.i.i70.xas_next.exit_crit_edge

lor.lhs.false.i.i70.xas_next.exit_crit_edge:      ; preds = %lor.lhs.false.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true.i.i73:                              ; preds = %lor.lhs.false.i.i70
  %call6.i.i71 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i71)
  %tobool7.not.i.i72 = icmp eq i32 %call6.i.i71, 0
  br i1 %tobool7.not.i.i72, label %land.lhs.true.i.i73.xas_next.exit_crit_edge, label %land.lhs.true8.i.i75

land.lhs.true.i.i73.xas_next.exit_crit_edge:      ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true8.i.i75:                             ; preds = %land.lhs.true.i.i73
  %.b13.i.i74 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i74, label %land.lhs.true8.i.i75.xas_next.exit_crit_edge, label %if.then.i.i76

land.lhs.true8.i.i75.xas_next.exit_crit_edge:     ; preds = %land.lhs.true8.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

if.then.i.i76:                                    ; preds = %land.lhs.true8.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit

xas_next.exit:                                    ; preds = %if.then.i.i76, %land.lhs.true8.i.i75.xas_next.exit_crit_edge, %land.lhs.true.i.i73.xas_next.exit_crit_edge, %lor.lhs.false.i.i70.xas_next.exit_crit_edge, %if.end.i67.xas_next.exit_crit_edge, %if.then.i60
  %retval.0.i77 = phi ptr [ %call5.i59, %if.then.i60 ], [ %73, %if.end.i67.xas_next.exit_crit_edge ], [ %73, %lor.lhs.false.i.i70.xas_next.exit_crit_edge ], [ %73, %land.lhs.true.i.i73.xas_next.exit_crit_edge ], [ %73, %land.lhs.true8.i.i75.xas_next.exit_crit_edge ], [ %73, %if.then.i.i76 ]
  %74 = load i32, ptr @tests_run, align 4
  %inc79 = add i32 %74, 1
  store i32 %inc79, ptr @tests_run, align 4
  %and.i78 = shl nuw nsw i32 %i.2, 1
  %or.i.i79 = or i32 %and.i78, 1
  %75 = inttoptr i32 %or.i.i79 to ptr
  %cmp81.not = icmp eq ptr %retval.0.i77, %75
  br i1 %cmp81.not, label %if.else88, label %do.end85

do.end85:                                         ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1332) #10
  call void @dump_stack() #10
  br label %do.body93

if.else88:                                        ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  %76 = load i32, ptr @tests_passed, align 4
  %inc89 = add i32 %76, 1
  store i32 %inc89, ptr @tests_passed, align 4
  br label %do.body93

do.body93:                                        ; preds = %if.else88, %do.end85
  %77 = load i32, ptr @tests_run, align 4
  %inc94 = add i32 %77, 1
  store i32 %inc94, ptr @tests_run, align 4
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %79)
  %cmp96.not = icmp eq i32 %i.2, %79
  br i1 %cmp96.not, label %if.else103, label %do.end100

do.end100:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1333) #10
  call void @dump_stack() #10
  br label %do.end107

if.else103:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %80 = load i32, ptr @tests_passed, align 4
  %inc104 = add i32 %80, 1
  store i32 %inc104, ptr @tests_passed, align 4
  br label %do.end107

do.end107:                                        ; preds = %if.else103, %do.end100
  %inc108 = add nuw nsw i32 %i.2, 1
  %exitcond204.not = icmp eq i32 %inc108, 65536
  br i1 %exitcond204.not, label %do.end111, label %do.end107.do.body75_crit_edge

do.end107.do.body75_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body75

do.end111:                                        ; preds = %do.end107
  %call.i80 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i80, label %do.end111.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i83

do.end111.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i83:                                ; preds = %do.end111
  %call1.i81 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, %do.end111.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %81 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i87 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i88, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %for.body114

for.body114:                                      ; preds = %for.body114.for.body114_crit_edge, %rcu_read_unlock.exit
  %i.3201 = phi i32 [ 256, %rcu_read_unlock.exit ], [ %inc116, %for.body114.for.body114_crit_edge ]
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %i.3201)
  %inc116 = add nuw nsw i32 %i.3201, 1
  %exitcond205.not = icmp eq i32 %inc116, 32768
  br i1 %exitcond205.not, label %for.end117, label %for.body114.for.body114_crit_edge

for.body114.for.body114_crit_edge:                ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114

for.end117:                                       ; preds = %for.body114
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %0, align 4
  %87 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i2 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i2 to ptr
  %preempt_count.i.i.i.i3 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i3, align 4
  %add.i.i.i4 = add i32 %90, 1
  store volatile i32 %add.i.i.i4, ptr %preempt_count.i.i.i.i3, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i5 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i5, label %for.end117.do.body119.preheader_crit_edge, label %land.lhs.true.i8

for.end117.do.body119.preheader_crit_edge:        ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119.preheader

land.lhs.true.i8:                                 ; preds = %for.end117
  %call1.i6 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.do.body119.preheader_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.do.body119.preheader_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119.preheader

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.do.body119.preheader_crit_edge, label %if.then.i11

land.lhs.true2.i10.do.body119.preheader_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119.preheader

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %do.body119.preheader

do.body119.preheader:                             ; preds = %if.then.i11, %land.lhs.true2.i10.do.body119.preheader_crit_edge, %land.lhs.true.i8.do.body119.preheader_crit_edge, %for.end117.do.body119.preheader_crit_edge
  br label %do.body119

do.body119:                                       ; preds = %do.end171.do.body119_crit_edge, %do.body119.preheader
  %i.4 = phi i32 [ %dec122, %do.end171.do.body119_crit_edge ], [ %86, %do.body119.preheader ]
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  %93 = ptrtoint ptr %92 to i32
  %and.i.i90 = and i32 %93, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool.not.i.i91 = icmp ne i32 %and.i.i90, 0
  %tobool1.not.i.i92 = icmp eq ptr %92, null
  %spec.select.i.i93 = or i1 %tobool1.not.i.i92, %tobool.not.i.i91
  br i1 %spec.select.i.i93, label %do.body119.if.then.i100_crit_edge, label %lor.lhs.false.i95, !prof !972

do.body119.if.then.i100_crit_edge:                ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i100

lor.lhs.false.i95:                                ; preds = %do.body119
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i94 = icmp eq i8 %95, 0
  br i1 %tobool.not.i94, label %lor.rhs.i98, label %lor.lhs.false.i95.if.then.i100_crit_edge, !prof !973

lor.lhs.false.i95.if.then.i100_crit_edge:         ; preds = %lor.lhs.false.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i100

lor.rhs.i98:                                      ; preds = %lor.lhs.false.i95
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp.i97 = icmp eq i8 %97, 0
  br i1 %cmp.i97, label %lor.rhs.i98.if.then.i100_crit_edge, label %if.end.i109, !prof !972

lor.rhs.i98.if.then.i100_crit_edge:               ; preds = %lor.rhs.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i100

if.then.i100:                                     ; preds = %lor.rhs.i98.if.then.i100_crit_edge, %lor.lhs.false.i95.if.then.i100_crit_edge, %do.body119.if.then.i100_crit_edge
  %call5.i99 = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  br label %xas_prev.exit120

if.end.i109:                                      ; preds = %lor.rhs.i98
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %0, align 4
  %dec.i102 = add i32 %99, -1
  store i32 %dec.i102, ptr %0, align 4
  %dec7.i103 = add i8 %97, -1
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %dec7.i103, ptr %2, align 2
  %101 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xas, align 4
  %conv9.i104 = zext i8 %dec7.i103 to i32
  %arrayidx.i.i105 = getelementptr %struct.xa_node, ptr %92, i32 0, i32 7, i32 %conv9.i104
  %103 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %arrayidx.i.i105, align 4
  %dep_map.i.i106 = getelementptr inbounds %struct.anon, ptr %102, i32 0, i32 1
  %call.i.i.i107 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i106, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i107)
  %tobool.not.i20.i108 = icmp eq i32 %call.i.i.i107, 0
  br i1 %tobool.not.i20.i108, label %lor.lhs.false.i.i112, label %if.end.i109.xas_prev.exit120_crit_edge

if.end.i109.xas_prev.exit120_crit_edge:           ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit120

lor.lhs.false.i.i112:                             ; preds = %if.end.i109
  %call4.i.i110 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i110)
  %tobool5.not.i.i111 = icmp eq i32 %call4.i.i110, 0
  br i1 %tobool5.not.i.i111, label %land.lhs.true.i.i115, label %lor.lhs.false.i.i112.xas_prev.exit120_crit_edge

lor.lhs.false.i.i112.xas_prev.exit120_crit_edge:  ; preds = %lor.lhs.false.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit120

land.lhs.true.i.i115:                             ; preds = %lor.lhs.false.i.i112
  %call6.i.i113 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i113)
  %tobool7.not.i.i114 = icmp eq i32 %call6.i.i113, 0
  br i1 %tobool7.not.i.i114, label %land.lhs.true.i.i115.xas_prev.exit120_crit_edge, label %land.lhs.true8.i.i117

land.lhs.true.i.i115.xas_prev.exit120_crit_edge:  ; preds = %land.lhs.true.i.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit120

land.lhs.true8.i.i117:                            ; preds = %land.lhs.true.i.i115
  %.b13.i.i116 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i116, label %land.lhs.true8.i.i117.xas_prev.exit120_crit_edge, label %if.then.i.i118

land.lhs.true8.i.i117.xas_prev.exit120_crit_edge: ; preds = %land.lhs.true8.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit120

if.then.i.i118:                                   ; preds = %land.lhs.true8.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_prev.exit120

xas_prev.exit120:                                 ; preds = %if.then.i.i118, %land.lhs.true8.i.i117.xas_prev.exit120_crit_edge, %land.lhs.true.i.i115.xas_prev.exit120_crit_edge, %lor.lhs.false.i.i112.xas_prev.exit120_crit_edge, %if.end.i109.xas_prev.exit120_crit_edge, %if.then.i100
  %retval.0.i119 = phi ptr [ %call5.i99, %if.then.i100 ], [ %104, %if.end.i109.xas_prev.exit120_crit_edge ], [ %104, %lor.lhs.false.i.i112.xas_prev.exit120_crit_edge ], [ %104, %land.lhs.true.i.i115.xas_prev.exit120_crit_edge ], [ %104, %land.lhs.true8.i.i117.xas_prev.exit120_crit_edge ], [ %104, %if.then.i.i118 ]
  %dec122 = add i32 %i.4, -1
  %105 = add i32 %i.4, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32512, i32 %105)
  %106 = icmp ult i32 %105, -32512
  %107 = load i32, ptr @tests_run, align 4
  %inc127 = add i32 %107, 1
  store i32 %inc127, ptr @tests_run, align 4
  br i1 %106, label %do.body126, label %do.body142

do.body126:                                       ; preds = %xas_prev.exit120
  %and.i121 = shl i32 %dec122, 1
  %or.i.i122 = or i32 %and.i121, 1
  %108 = inttoptr i32 %or.i.i122 to ptr
  %cmp129.not = icmp eq ptr %retval.0.i119, %108
  br i1 %cmp129.not, label %if.else136, label %do.end133

do.end133:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1348) #10
  call void @dump_stack() #10
  br label %do.body157

if.else136:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  %109 = load i32, ptr @tests_passed, align 4
  %inc137 = add i32 %109, 1
  store i32 %inc137, ptr @tests_passed, align 4
  br label %do.body157

do.body142:                                       ; preds = %xas_prev.exit120
  %cmp144.not = icmp eq ptr %retval.0.i119, null
  br i1 %cmp144.not, label %if.else151, label %do.end148

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #9
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1350) #10
  call void @dump_stack() #10
  br label %do.body157

if.else151:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #9
  %110 = load i32, ptr @tests_passed, align 4
  %inc152 = add i32 %110, 1
  store i32 %inc152, ptr @tests_passed, align 4
  br label %do.body157

do.body157:                                       ; preds = %if.else151, %do.end148, %if.else136, %do.end133
  %111 = load i32, ptr @tests_run, align 4
  %inc158 = add i32 %111, 1
  store i32 %inc158, ptr @tests_run, align 4
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec122, i32 %113)
  %cmp160.not = icmp eq i32 %dec122, %113
  br i1 %cmp160.not, label %if.else167, label %do.end164

do.end164:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1351) #10
  call void @dump_stack() #10
  br label %do.end171

if.else167:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %114 = load i32, ptr @tests_passed, align 4
  %inc168 = add i32 %114, 1
  store i32 %inc168, ptr @tests_passed, align 4
  br label %do.end171

do.end171:                                        ; preds = %if.else167, %do.end164
  %cmp173.not = icmp eq i32 %dec122, 0
  br i1 %cmp173.not, label %do.body175, label %do.end171.do.body119_crit_edge

do.end171.do.body119_crit_edge:                   ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body119

do.body175:                                       ; preds = %do.end171
  %115 = load i32, ptr @tests_run, align 4
  %inc176 = add i32 %115, 1
  store i32 %inc176, ptr @tests_run, align 4
  %116 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %3, align 4
  %118 = ptrtoint ptr %117 to i32
  %and.i.i124 = and i32 %118, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i125 = icmp ne i32 %and.i.i124, 0
  %tobool1.not.i.i126 = icmp eq ptr %117, null
  %spec.select.i.i127 = or i1 %tobool1.not.i.i126, %tobool.not.i.i125
  br i1 %spec.select.i.i127, label %do.body175.if.then.i134_crit_edge, label %lor.lhs.false.i129, !prof !972

do.body175.if.then.i134_crit_edge:                ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i134

lor.lhs.false.i129:                               ; preds = %do.body175
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %117, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i128 = icmp eq i8 %120, 0
  br i1 %tobool.not.i128, label %lor.rhs.i132, label %lor.lhs.false.i129.if.then.i134_crit_edge, !prof !973

lor.lhs.false.i129.if.then.i134_crit_edge:        ; preds = %lor.lhs.false.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i134

lor.rhs.i132:                                     ; preds = %lor.lhs.false.i129
  %121 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp.i131 = icmp eq i8 %122, 0
  br i1 %cmp.i131, label %lor.rhs.i132.if.then.i134_crit_edge, label %if.end.i143, !prof !972

lor.rhs.i132.if.then.i134_crit_edge:              ; preds = %lor.rhs.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i134

if.then.i134:                                     ; preds = %lor.rhs.i132.if.then.i134_crit_edge, %lor.lhs.false.i129.if.then.i134_crit_edge, %do.body175.if.then.i134_crit_edge
  %call5.i133 = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  br label %xas_prev.exit154

if.end.i143:                                      ; preds = %lor.rhs.i132
  %123 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %0, align 4
  %dec.i136 = add i32 %124, -1
  store i32 %dec.i136, ptr %0, align 4
  %dec7.i137 = add i8 %122, -1
  %125 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %dec7.i137, ptr %2, align 2
  %126 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %xas, align 4
  %conv9.i138 = zext i8 %dec7.i137 to i32
  %arrayidx.i.i139 = getelementptr %struct.xa_node, ptr %117, i32 0, i32 7, i32 %conv9.i138
  %128 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %arrayidx.i.i139, align 4
  %dep_map.i.i140 = getelementptr inbounds %struct.anon, ptr %127, i32 0, i32 1
  %call.i.i.i141 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i140, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i141)
  %tobool.not.i20.i142 = icmp eq i32 %call.i.i.i141, 0
  br i1 %tobool.not.i20.i142, label %lor.lhs.false.i.i146, label %if.end.i143.xas_prev.exit154_crit_edge

if.end.i143.xas_prev.exit154_crit_edge:           ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit154

lor.lhs.false.i.i146:                             ; preds = %if.end.i143
  %call4.i.i144 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i144)
  %tobool5.not.i.i145 = icmp eq i32 %call4.i.i144, 0
  br i1 %tobool5.not.i.i145, label %land.lhs.true.i.i149, label %lor.lhs.false.i.i146.xas_prev.exit154_crit_edge

lor.lhs.false.i.i146.xas_prev.exit154_crit_edge:  ; preds = %lor.lhs.false.i.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit154

land.lhs.true.i.i149:                             ; preds = %lor.lhs.false.i.i146
  %call6.i.i147 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i147)
  %tobool7.not.i.i148 = icmp eq i32 %call6.i.i147, 0
  br i1 %tobool7.not.i.i148, label %land.lhs.true.i.i149.xas_prev.exit154_crit_edge, label %land.lhs.true8.i.i151

land.lhs.true.i.i149.xas_prev.exit154_crit_edge:  ; preds = %land.lhs.true.i.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit154

land.lhs.true8.i.i151:                            ; preds = %land.lhs.true.i.i149
  %.b13.i.i150 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i150, label %land.lhs.true8.i.i151.xas_prev.exit154_crit_edge, label %if.then.i.i152

land.lhs.true8.i.i151.xas_prev.exit154_crit_edge: ; preds = %land.lhs.true8.i.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit154

if.then.i.i152:                                   ; preds = %land.lhs.true8.i.i151
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_prev.exit154

xas_prev.exit154:                                 ; preds = %if.then.i.i152, %land.lhs.true8.i.i151.xas_prev.exit154_crit_edge, %land.lhs.true.i.i149.xas_prev.exit154_crit_edge, %lor.lhs.false.i.i146.xas_prev.exit154_crit_edge, %if.end.i143.xas_prev.exit154_crit_edge, %if.then.i134
  %retval.0.i153 = phi ptr [ %call5.i133, %if.then.i134 ], [ %129, %if.end.i143.xas_prev.exit154_crit_edge ], [ %129, %lor.lhs.false.i.i146.xas_prev.exit154_crit_edge ], [ %129, %land.lhs.true.i.i149.xas_prev.exit154_crit_edge ], [ %129, %land.lhs.true8.i.i151.xas_prev.exit154_crit_edge ], [ %129, %if.then.i.i152 ]
  %cmp178.not = icmp eq ptr %retval.0.i153, null
  br i1 %cmp178.not, label %if.else185, label %do.end182

do.end182:                                        ; preds = %xas_prev.exit154
  call void @__sanitizer_cov_trace_pc() #9
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1354) #10
  call void @dump_stack() #10
  br label %do.body190

if.else185:                                       ; preds = %xas_prev.exit154
  call void @__sanitizer_cov_trace_pc() #9
  %130 = load i32, ptr @tests_passed, align 4
  %inc186 = add i32 %130, 1
  store i32 %inc186, ptr @tests_passed, align 4
  br label %do.body190

do.body190:                                       ; preds = %if.else185, %do.end182
  %131 = load i32, ptr @tests_run, align 4
  %inc191 = add i32 %131, 1
  store i32 %inc191, ptr @tests_run, align 4
  %132 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %133)
  %cmp193.not = icmp eq i32 %133, -1
  br i1 %cmp193.not, label %if.else200, label %do.end197

do.end197:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1355) #10
  call void @dump_stack() #10
  br label %do.body205.preheader

if.else200:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  %134 = load i32, ptr @tests_passed, align 4
  %inc201 = add i32 %134, 1
  store i32 %inc201, ptr @tests_passed, align 4
  br label %do.body205.preheader

do.body205.preheader:                             ; preds = %if.else200, %do.end197
  br label %do.body205

do.body205:                                       ; preds = %do.end257.do.body205_crit_edge, %do.body205.preheader
  %i.5 = phi i32 [ %inc258, %do.end257.do.body205_crit_edge ], [ 0, %do.body205.preheader ]
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %3, align 4
  %137 = ptrtoint ptr %136 to i32
  %and.i.i156 = and i32 %137, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156)
  %tobool.not.i.i157 = icmp ne i32 %and.i.i156, 0
  %tobool1.not.i.i158 = icmp eq ptr %136, null
  %spec.select.i.i159 = or i1 %tobool1.not.i.i158, %tobool.not.i.i157
  br i1 %spec.select.i.i159, label %do.body205.if.then.i166_crit_edge, label %lor.lhs.false.i161, !prof !972

do.body205.if.then.i166_crit_edge:                ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i166

lor.lhs.false.i161:                               ; preds = %do.body205
  %138 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %136, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i160 = icmp eq i8 %139, 0
  br i1 %tobool.not.i160, label %lor.rhs.i164, label %lor.lhs.false.i161.if.then.i166_crit_edge, !prof !973

lor.lhs.false.i161.if.then.i166_crit_edge:        ; preds = %lor.lhs.false.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i166

lor.rhs.i164:                                     ; preds = %lor.lhs.false.i161
  %140 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %141)
  %cmp.i163 = icmp eq i8 %141, 63
  br i1 %cmp.i163, label %lor.rhs.i164.if.then.i166_crit_edge, label %if.end.i175, !prof !972

lor.rhs.i164.if.then.i166_crit_edge:              ; preds = %lor.rhs.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i166

if.then.i166:                                     ; preds = %lor.rhs.i164.if.then.i166_crit_edge, %lor.lhs.false.i161.if.then.i166_crit_edge, %do.body205.if.then.i166_crit_edge
  %call5.i165 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit186

if.end.i175:                                      ; preds = %lor.rhs.i164
  %142 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %0, align 4
  %inc.i168 = add i32 %143, 1
  store i32 %inc.i168, ptr %0, align 4
  %inc7.i169 = add i8 %141, 1
  %144 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %inc7.i169, ptr %2, align 2
  %145 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %xas, align 4
  %conv9.i170 = zext i8 %inc7.i169 to i32
  %arrayidx.i.i171 = getelementptr %struct.xa_node, ptr %136, i32 0, i32 7, i32 %conv9.i170
  %147 = ptrtoint ptr %arrayidx.i.i171 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile ptr, ptr %arrayidx.i.i171, align 4
  %dep_map.i.i172 = getelementptr inbounds %struct.anon, ptr %146, i32 0, i32 1
  %call.i.i.i173 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i172, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i173)
  %tobool.not.i20.i174 = icmp eq i32 %call.i.i.i173, 0
  br i1 %tobool.not.i20.i174, label %lor.lhs.false.i.i178, label %if.end.i175.xas_next.exit186_crit_edge

if.end.i175.xas_next.exit186_crit_edge:           ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit186

lor.lhs.false.i.i178:                             ; preds = %if.end.i175
  %call4.i.i176 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i176)
  %tobool5.not.i.i177 = icmp eq i32 %call4.i.i176, 0
  br i1 %tobool5.not.i.i177, label %land.lhs.true.i.i181, label %lor.lhs.false.i.i178.xas_next.exit186_crit_edge

lor.lhs.false.i.i178.xas_next.exit186_crit_edge:  ; preds = %lor.lhs.false.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit186

land.lhs.true.i.i181:                             ; preds = %lor.lhs.false.i.i178
  %call6.i.i179 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i179)
  %tobool7.not.i.i180 = icmp eq i32 %call6.i.i179, 0
  br i1 %tobool7.not.i.i180, label %land.lhs.true.i.i181.xas_next.exit186_crit_edge, label %land.lhs.true8.i.i183

land.lhs.true.i.i181.xas_next.exit186_crit_edge:  ; preds = %land.lhs.true.i.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit186

land.lhs.true8.i.i183:                            ; preds = %land.lhs.true.i.i181
  %.b13.i.i182 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i182, label %land.lhs.true8.i.i183.xas_next.exit186_crit_edge, label %if.then.i.i184

land.lhs.true8.i.i183.xas_next.exit186_crit_edge: ; preds = %land.lhs.true8.i.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit186

if.then.i.i184:                                   ; preds = %land.lhs.true8.i.i183
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit186

xas_next.exit186:                                 ; preds = %if.then.i.i184, %land.lhs.true8.i.i183.xas_next.exit186_crit_edge, %land.lhs.true.i.i181.xas_next.exit186_crit_edge, %lor.lhs.false.i.i178.xas_next.exit186_crit_edge, %if.end.i175.xas_next.exit186_crit_edge, %if.then.i166
  %retval.0.i185 = phi ptr [ %call5.i165, %if.then.i166 ], [ %148, %if.end.i175.xas_next.exit186_crit_edge ], [ %148, %lor.lhs.false.i.i178.xas_next.exit186_crit_edge ], [ %148, %land.lhs.true.i.i181.xas_next.exit186_crit_edge ], [ %148, %land.lhs.true8.i.i183.xas_next.exit186_crit_edge ], [ %148, %if.then.i.i184 ]
  %149 = add nsw i32 %i.5, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32512, i32 %149)
  %150 = icmp ult i32 %149, -32512
  %151 = load i32, ptr @tests_run, align 4
  %inc213 = add i32 %151, 1
  store i32 %inc213, ptr @tests_run, align 4
  br i1 %150, label %do.body212, label %do.body228

do.body212:                                       ; preds = %xas_next.exit186
  %and.i187 = shl nuw i32 %i.5, 1
  %or.i.i188 = or i32 %and.i187, 1
  %152 = inttoptr i32 %or.i.i188 to ptr
  %cmp215.not = icmp eq ptr %retval.0.i185, %152
  br i1 %cmp215.not, label %if.else222, label %do.end219

do.end219:                                        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #9
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1360) #10
  call void @dump_stack() #10
  br label %do.body243

if.else222:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #9
  %153 = load i32, ptr @tests_passed, align 4
  %inc223 = add i32 %153, 1
  store i32 %inc223, ptr @tests_passed, align 4
  br label %do.body243

do.body228:                                       ; preds = %xas_next.exit186
  %cmp230.not = icmp eq ptr %retval.0.i185, null
  br i1 %cmp230.not, label %if.else237, label %do.end234

do.end234:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #9
  %call236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1362) #10
  call void @dump_stack() #10
  br label %do.body243

if.else237:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #9
  %154 = load i32, ptr @tests_passed, align 4
  %inc238 = add i32 %154, 1
  store i32 %inc238, ptr @tests_passed, align 4
  br label %do.body243

do.body243:                                       ; preds = %if.else237, %do.end234, %if.else222, %do.end219
  %155 = load i32, ptr @tests_run, align 4
  %inc244 = add i32 %155, 1
  store i32 %inc244, ptr @tests_run, align 4
  %156 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5, i32 %157)
  %cmp246.not = icmp eq i32 %i.5, %157
  br i1 %cmp246.not, label %if.else253, label %do.end250

do.end250:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #9
  %call252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.401, i32 noundef 1363) #10
  call void @dump_stack() #10
  br label %do.end257

if.else253:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #9
  %158 = load i32, ptr @tests_passed, align 4
  %inc254 = add i32 %158, 1
  store i32 %inc254, ptr @tests_passed, align 4
  br label %do.end257

do.end257:                                        ; preds = %if.else253, %do.end250
  %inc258 = add nuw nsw i32 %i.5, 1
  %exitcond206.not = icmp eq i32 %inc258, 65536
  br i1 %exitcond206.not, label %do.end261, label %do.end257.do.body205_crit_edge

do.end257.do.body205_crit_edge:                   ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body205

do.end261:                                        ; preds = %do.end257
  %call.i189 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i189, label %do.end261.rcu_read_unlock.exit199_crit_edge, label %land.lhs.true.i192

do.end261.rcu_read_unlock.exit199_crit_edge:      ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit199

land.lhs.true.i192:                               ; preds = %do.end261
  %call1.i190 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i190)
  %tobool.not.i191 = icmp eq i32 %call1.i190, 0
  br i1 %tobool.not.i191, label %land.lhs.true.i192.rcu_read_unlock.exit199_crit_edge, label %land.lhs.true2.i194

land.lhs.true.i192.rcu_read_unlock.exit199_crit_edge: ; preds = %land.lhs.true.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit199

land.lhs.true2.i194:                              ; preds = %land.lhs.true.i192
  %.b4.i193 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i193, label %land.lhs.true2.i194.rcu_read_unlock.exit199_crit_edge, label %if.then.i195

land.lhs.true2.i194.rcu_read_unlock.exit199_crit_edge: ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit199

if.then.i195:                                     ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit199

rcu_read_unlock.exit199:                          ; preds = %if.then.i195, %land.lhs.true2.i194.rcu_read_unlock.exit199_crit_edge, %land.lhs.true.i192.rcu_read_unlock.exit199_crit_edge, %do.end261.rcu_read_unlock.exit199_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %159 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i196 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i.i.i196 to ptr
  %preempt_count.i.i.i.i197 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i.i.i197, align 4
  %sub.i.i.i198 = add i32 %162, -1
  store volatile i32 %sub.i.i.i198, ptr %preempt_count.i.i.i.i197, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @xa_destroy(ptr noundef nonnull @array) #11
  call fastcc void @check_move_tiny()
  call fastcc void @check_move_max()
  call fastcc void @check_move_small(i32 noundef 1)
  call fastcc void @check_move_small(i32 noundef 2)
  call fastcc void @check_move_small(i32 noundef 4)
  call fastcc void @check_move_small(i32 noundef 8)
  call fastcc void @check_move_small(i32 noundef 16)
  call fastcc void @check_move_small(i32 noundef 32)
  call fastcc void @check_move_small(i32 noundef 64)
  call fastcc void @check_move_small(i32 noundef 128)
  call fastcc void @check_move_small(i32 noundef 256)
  call fastcc void @check_move_small(i32 noundef 512)
  call fastcc void @check_move_small(i32 noundef 1024)
  call fastcc void @check_move_small(i32 noundef 2048)
  call fastcc void @check_move_small(i32 noundef 4096)
  call fastcc void @check_move_small(i32 noundef 8192)
  call fastcc void @check_move_small(i32 noundef 16384)
  call fastcc void @check_move_small(i32 noundef 32768)
  call fastcc void @check_move_small(i32 noundef 3)
  call fastcc void @check_move_small(i32 noundef 7)
  call fastcc void @check_move_small(i32 noundef 15)
  call fastcc void @check_move_small(i32 noundef 31)
  call fastcc void @check_move_small(i32 noundef 63)
  call fastcc void @check_move_small(i32 noundef 127)
  call fastcc void @check_move_small(i32 noundef 255)
  call fastcc void @check_move_small(i32 noundef 511)
  call fastcc void @check_move_small(i32 noundef 1023)
  call fastcc void @check_move_small(i32 noundef 2047)
  call fastcc void @check_move_small(i32 noundef 4095)
  call fastcc void @check_move_small(i32 noundef 8191)
  call fastcc void @check_move_small(i32 noundef 16383)
  call fastcc void @check_move_small(i32 noundef 32767)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_create_range() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @check_create_range_1(i32 noundef 0)
  tail call fastcc void @check_create_range_1(i32 noundef 1)
  tail call fastcc void @check_create_range_1(i32 noundef 2)
  tail call fastcc void @check_create_range_1(i32 noundef 3)
  tail call fastcc void @check_create_range_1(i32 noundef 16777216)
  tail call fastcc void @check_create_range_2()
  tail call fastcc void @check_create_range_4(i32 noundef 0)
  tail call fastcc void @check_create_range_4(i32 noundef 1)
  tail call fastcc void @check_create_range_4(i32 noundef 2)
  tail call fastcc void @check_create_range_4(i32 noundef 3)
  tail call fastcc void @check_create_range_4(i32 noundef 16777216)
  tail call fastcc void @check_create_range_4(i32 noundef 1)
  tail call fastcc void @check_create_range_4(i32 noundef 2)
  tail call fastcc void @check_create_range_4(i32 noundef 3)
  tail call fastcc void @check_create_range_4(i32 noundef 1)
  tail call fastcc void @check_create_range_4(i32 noundef 4)
  tail call fastcc void @check_create_range_4(i32 noundef 2)
  tail call fastcc void @check_create_range_4(i32 noundef 16777217)
  tail call fastcc void @check_create_range_3()
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_store_range() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.preheader

for.body3.preheader:                              ; preds = %for.inc13.for.body3.preheader_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13.for.body3.preheader_crit_edge ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.preheader
  %j.02 = phi i32 [ %inc, %for.body3.for.body3_crit_edge ], [ %i.03, %for.body3.preheader ]
  tail call fastcc void @__check_store_range()
  tail call fastcc void @__check_store_range()
  tail call fastcc void @__check_store_range()
  tail call fastcc void @__check_store_range()
  tail call fastcc void @__check_store_range()
  tail call fastcc void @__check_store_range()
  %inc = add nuw nsw i32 %j.02, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc13, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.inc13:                                        ; preds = %for.body3
  %inc14 = add nuw nsw i32 %i.03, 1
  %exitcond5.not = icmp eq i32 %inc14, 128
  br i1 %exitcond5.not, label %for.end15, label %for.inc13.for.body3.preheader_crit_edge

for.inc13.for.body3.preheader_crit_edge:          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.preheader

for.end15:                                        ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_store_iter() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__check_store_iter(i32 noundef 0, i32 noundef 0)
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.501, i32 noundef 905) #10
  tail call void @dump_stack() #10
  br label %do.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %2, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.end6

do.end6:                                          ; preds = %if.else, %do.end
  tail call fastcc void @__check_store_iter(i32 noundef 1, i32 noundef 0)
  %3 = load i32, ptr @tests_run, align 4
  %inc8 = add i32 %3, 1
  store i32 %inc8, ptr @tests_run, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i1 = icmp eq ptr %4, null
  br i1 %cmp.i1, label %if.else16, label %do.end13

do.end13:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.501, i32 noundef 907) #10
  tail call void @dump_stack() #10
  br label %do.end20

if.else16:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %5, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.end20

do.end20:                                         ; preds = %if.else16, %do.end13
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 3 to ptr), i32 noundef 3264) #11
  tail call fastcc void @__check_store_iter(i32 noundef 1, i32 noundef 1)
  %6 = load i32, ptr @tests_run, align 4
  %inc23 = add i32 %6, 1
  store i32 %inc23, ptr @tests_run, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i2 = icmp eq ptr %7, null
  br i1 %cmp.i2, label %if.else31, label %do.end28

do.end28:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.501, i32 noundef 911) #10
  tail call void @dump_stack() #10
  br label %do.end35

if.else31:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc32 = add i32 %8, 1
  store i32 %inc32, ptr @tests_passed, align 4
  br label %do.end35

do.end35:                                         ; preds = %if.else31, %do.end28
  %call1.i3 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 3 to ptr), i32 noundef 3264) #11
  tail call fastcc void @__check_store_iter(i32 noundef 1, i32 noundef 1)
  %9 = load i32, ptr @tests_run, align 4
  %inc38 = add i32 %9, 1
  store i32 %inc38, ptr @tests_run, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i4 = icmp eq ptr %10, null
  br i1 %cmp.i4, label %if.else46, label %do.end43

do.end43:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.501, i32 noundef 914) #10
  tail call void @dump_stack() #10
  br label %do.end50

if.else46:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc47 = add i32 %11, 1
  store i32 %inc47, ptr @tests_passed, align 4
  br label %do.end50

do.end50:                                         ; preds = %if.else46, %do.end43
  %call1.i5 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  tail call fastcc void @__check_store_iter(i32 noundef 0, i32 noundef 1)
  %12 = load i32, ptr @tests_run, align 4
  %inc57 = add i32 %12, 1
  store i32 %inc57, ptr @tests_run, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i6 = icmp eq ptr %13, null
  br i1 %cmp.i6, label %if.else65, label %do.end62

do.end62:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.501, i32 noundef 919) #10
  tail call void @dump_stack() #10
  br label %do.end69

if.else65:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i32, ptr @tests_passed, align 4
  %inc66 = add i32 %14, 1
  store i32 %inc66, ptr @tests_passed, align 4
  br label %do.end69

do.end69:                                         ; preds = %if.else65, %do.end62
  %call1.i7 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 1, ptr noundef nonnull inttoptr (i32 3 to ptr), i32 noundef 3264) #11
  tail call fastcc void @__check_store_iter(i32 noundef 1, i32 noundef 1)
  %15 = load i32, ptr @tests_run, align 4
  %inc78 = add i32 %15, 1
  store i32 %inc78, ptr @tests_run, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i8 = icmp eq ptr %16, null
  br i1 %cmp.i8, label %if.else86, label %do.end83

do.end83:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.501, i32 noundef 923) #10
  tail call void @dump_stack() #10
  br label %do.body94

if.else86:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i32, ptr @tests_passed, align 4
  %inc87 = add i32 %17, 1
  store i32 %inc87, ptr @tests_passed, align 4
  br label %do.body94

do.body94:                                        ; preds = %if.else86, %do.end83
  %18 = load i32, ptr @tests_run, align 4
  %inc95 = add i32 %18, 1
  store i32 %inc95, ptr @tests_run, align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i9 = icmp eq ptr %19, null
  br i1 %cmp.i9, label %if.else103, label %do.end100

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.501, i32 noundef 931) #10
  tail call void @dump_stack() #10
  br label %do.end107

if.else103:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load i32, ptr @tests_passed, align 4
  %inc104 = add i32 %20, 1
  store i32 %inc104, ptr @tests_passed, align 4
  br label %do.end107

do.end107:                                        ; preds = %if.else103, %do.end100
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_align() unnamed_addr #2 align 64 {
entry:
  %name = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %name) #11
  %0 = call ptr @memcpy(ptr %name, ptr @__const.check_align.name, i32 15)
  call fastcc void @check_align_1(ptr noundef nonnull %name)
  %add.ptr = getelementptr inbounds i8, ptr %name, i32 1
  call fastcc void @check_align_1(ptr noundef %add.ptr)
  %add.ptr3 = getelementptr inbounds i8, ptr %name, i32 2
  call fastcc void @check_align_1(ptr noundef %add.ptr3)
  %add.ptr5 = getelementptr inbounds i8, ptr %name, i32 3
  call fastcc void @check_align_1(ptr noundef %add.ptr5)
  %1 = load i32, ptr @tests_run, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr @tests_run, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @xa0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %2, null
  br i1 %cmp.i.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.532, i32 noundef 1601) #10
  call void @dump_stack() #10
  br label %do.body6.i.preheader

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @tests_passed, align 4
  %inc3.i = add i32 %3, 1
  store i32 %inc3.i, ptr @tests_passed, align 4
  br label %do.body6.i.preheader

do.body6.i.preheader:                             ; preds = %if.else.i, %do.end.i
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end20.i.do.body6.i_crit_edge, %do.body6.i.preheader
  %i.03.i = phi i32 [ %inc22.i, %do.end20.i.do.body6.i_crit_edge ], [ 0, %do.body6.i.preheader ]
  %4 = load i32, ptr @tests_run, align 4
  %inc7.i = add i32 %4, 1
  store i32 %inc7.i, ptr @tests_run, align 4
  %add.ptr.i = getelementptr i8, ptr %name, i32 %i.03.i
  %call8.i = call ptr @xa_store(ptr noundef nonnull @xa0, i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef 3264) #11
  %cmp9.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp9.not.i, label %if.else16.i, label %do.end13.i

do.end13.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.532, i32 noundef 1604) #10
  call void @dump_stack() #10
  br label %do.end20.i

if.else16.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc17.i = add i32 %5, 1
  store i32 %inc17.i, ptr @tests_passed, align 4
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.else16.i, %do.end13.i
  %call21.i = call ptr @xa_erase(ptr noundef nonnull @xa0, i32 noundef 0) #11
  %inc22.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, 8
  br i1 %exitcond.not.i, label %do.end20.i.do.body26.i_crit_edge, label %do.end20.i.do.body6.i_crit_edge

do.end20.i.do.body6.i_crit_edge:                  ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

do.end20.i.do.body26.i_crit_edge:                 ; preds = %do.end20.i
  br label %do.body26.i

do.body26.i:                                      ; preds = %do.end56.i.do.body26.i_crit_edge, %do.end20.i.do.body26.i_crit_edge
  %i.14.i = phi i32 [ %inc59.i, %do.end56.i.do.body26.i_crit_edge ], [ 0, %do.end20.i.do.body26.i_crit_edge ]
  %6 = load i32, ptr @tests_run, align 4
  %inc27.i = add i32 %6, 1
  store i32 %inc27.i, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @xa0) #11
  %call.i.i.i = call ptr @__xa_cmpxchg(ptr noundef nonnull @xa0, i32 noundef 0, ptr noundef null, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef nonnull @xa0) #11
  %7 = ptrtoint ptr %call.i.i.i to i32
  %and.i.i.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ne i32 %and.i.i.i.i.i, 2
  %cmp.i.i.i.i = icmp ult ptr %call.i.i.i, inttoptr (i32 -16378 to ptr)
  %cmp29.not2.i = icmp ult ptr %call.i.i.i, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i.i.i
  %cmp29.not.i = or i1 %cmp29.not2.i, %not.spec.select.i.i.i.i
  br i1 %cmp29.not.i, label %if.else36.i, label %do.end33.i

do.end33.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.532, i32 noundef 1609) #10
  call void @dump_stack() #10
  br label %do.body41.i

if.else36.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc37.i = add i32 %8, 1
  store i32 %inc37.i, ptr @tests_passed, align 4
  br label %do.body41.i

do.body41.i:                                      ; preds = %if.else36.i, %do.end33.i
  %9 = load i32, ptr @tests_run, align 4
  %inc42.i = add i32 %9, 1
  store i32 %inc42.i, ptr @tests_run, align 4
  %add.ptr43.i = getelementptr i8, ptr %name, i32 %i.14.i
  %call44.i = call ptr @xa_store(ptr noundef nonnull @xa0, i32 noundef 0, ptr noundef %add.ptr43.i, i32 noundef 0) #11
  %cmp45.not.i = icmp eq ptr %call44.i, null
  br i1 %cmp45.not.i, label %if.else52.i, label %do.end49.i

do.end49.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #9
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.532, i32 noundef 1610) #10
  call void @dump_stack() #10
  br label %do.end56.i

if.else52.i:                                      ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load i32, ptr @tests_passed, align 4
  %inc53.i = add i32 %10, 1
  store i32 %inc53.i, ptr @tests_passed, align 4
  br label %do.end56.i

do.end56.i:                                       ; preds = %if.else52.i, %do.end49.i
  %call57.i = call ptr @xa_erase(ptr noundef nonnull @xa0, i32 noundef 0) #11
  %inc59.i = add nuw nsw i32 %i.14.i, 1
  %exitcond5.not.i = icmp eq i32 %inc59.i, 8
  br i1 %exitcond5.not.i, label %do.body61.i, label %do.end56.i.do.body26.i_crit_edge

do.end56.i.do.body26.i_crit_edge:                 ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i

do.body61.i:                                      ; preds = %do.end56.i
  %11 = load i32, ptr @tests_run, align 4
  %inc62.i = add i32 %11, 1
  store i32 %inc62.i, ptr @tests_run, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @xa0, i32 0, i32 2), align 4
  %cmp.i1.i = icmp eq ptr %12, null
  br i1 %cmp.i1.i, label %if.else70.i, label %do.end67.i

do.end67.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.532, i32 noundef 1614) #10
  call void @dump_stack() #10
  br label %check_align_2.exit

if.else70.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @tests_passed, align 4
  %inc71.i = add i32 %13, 1
  store i32 %inc71.i, ptr @tests_passed, align 4
  br label %check_align_2.exit

check_align_2.exit:                               ; preds = %if.else70.i, %do.end67.i
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %name) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_workingset(i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @array, ptr %xas, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %index, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @test_update_node, ptr %5, align 4
  br label %do.body

do.body:                                          ; preds = %xas_next.exit.do.body_crit_edge, %entry
  %12 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %13) #11
  %call3 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %15 to i32
  %and.i.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i.i = icmp eq ptr %15, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %do.body.if.then.i_crit_edge, label %lor.lhs.false.i, !prof !972

do.body.if.then.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.body
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i_crit_edge, !prof !973

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %20)
  %cmp.i = icmp eq i8 %20, 63
  br i1 %cmp.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.end.i, !prof !972

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %do.body.if.then.i_crit_edge
  %call5.i = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit

if.end.i:                                         ; preds = %lor.rhs.i
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %0, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %0, align 4
  %inc7.i = add i8 %20, 1
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %inc7.i, ptr %2, align 2
  %24 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %inc7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %15, i32 0, i32 7, i32 %conv9.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i20.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i20.i, label %lor.lhs.false.i.i, label %if.end.i.xas_next.exit_crit_edge

if.end.i.xas_next.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call4.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_next.exit_crit_edge

lor.lhs.false.i.i.xas_next.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xas_next.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xas_next.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_next.exit_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xas_next.exit_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit

xas_next.exit:                                    ; preds = %if.then.i.i, %land.lhs.true8.i.i.xas_next.exit_crit_edge, %land.lhs.true.i.i.xas_next.exit_crit_edge, %lor.lhs.false.i.i.xas_next.exit_crit_edge, %if.end.i.xas_next.exit_crit_edge, %if.then.i
  %call6 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull inttoptr (i32 3 to ptr)) #11
  %28 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %29) #11
  %call9 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef 3264) #11
  br i1 %call9, label %xas_next.exit.do.body_crit_edge, label %do.body10

xas_next.exit.do.body_crit_edge:                  ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body10:                                        ; preds = %xas_next.exit
  %30 = load i32, ptr @tests_run, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr @tests_run, align 4
  %31 = load volatile ptr, ptr @shadow_nodes, align 4
  %cmp.i1.not = icmp eq ptr %31, @shadow_nodes
  br i1 %cmp.i1.not, label %do.end14, label %if.else

do.end14:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.541, i32 noundef 1668) #10
  call void @dump_stack() #10
  br label %do.end18

if.else:                                          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %32 = load i32, ptr @tests_passed, align 4
  %inc16 = add i32 %32, 1
  store i32 %inc16, ptr @tests_passed, align 4
  br label %do.end18

do.end18:                                         ; preds = %if.else, %do.end14
  %33 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %34) #11
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %37 = ptrtoint ptr %36 to i32
  %and.i.i3 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3)
  %tobool.not.i.i4 = icmp ne i32 %and.i.i3, 0
  %tobool1.not.i.i5 = icmp eq ptr %36, null
  %spec.select.i.i6 = or i1 %tobool1.not.i.i5, %tobool.not.i.i4
  br i1 %spec.select.i.i6, label %do.end18.if.then.i13_crit_edge, label %lor.lhs.false.i8, !prof !972

do.end18.if.then.i13_crit_edge:                   ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i13

lor.lhs.false.i8:                                 ; preds = %do.end18
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i7 = icmp eq i8 %39, 0
  br i1 %tobool.not.i7, label %lor.rhs.i11, label %lor.lhs.false.i8.if.then.i13_crit_edge, !prof !973

lor.lhs.false.i8.if.then.i13_crit_edge:           ; preds = %lor.lhs.false.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i13

lor.rhs.i11:                                      ; preds = %lor.lhs.false.i8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %41)
  %cmp.i10 = icmp eq i8 %41, 63
  br i1 %cmp.i10, label %lor.rhs.i11.if.then.i13_crit_edge, label %if.end.i22, !prof !972

lor.rhs.i11.if.then.i13_crit_edge:                ; preds = %lor.rhs.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i13

if.then.i13:                                      ; preds = %lor.rhs.i11.if.then.i13_crit_edge, %lor.lhs.false.i8.if.then.i13_crit_edge, %do.end18.if.then.i13_crit_edge
  %call5.i12 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit33

if.end.i22:                                       ; preds = %lor.rhs.i11
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 4
  %inc.i15 = add i32 %43, 1
  store i32 %inc.i15, ptr %0, align 4
  %inc7.i16 = add i8 %41, 1
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %inc7.i16, ptr %2, align 2
  %45 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xas, align 4
  %conv9.i17 = zext i8 %inc7.i16 to i32
  %arrayidx.i.i18 = getelementptr %struct.xa_node, ptr %36, i32 0, i32 7, i32 %conv9.i17
  %47 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %arrayidx.i.i18, align 4
  %dep_map.i.i19 = getelementptr inbounds %struct.anon, ptr %46, i32 0, i32 1
  %call.i.i.i20 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i19, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i20)
  %tobool.not.i20.i21 = icmp eq i32 %call.i.i.i20, 0
  br i1 %tobool.not.i20.i21, label %lor.lhs.false.i.i25, label %if.end.i22.xas_next.exit33_crit_edge

if.end.i22.xas_next.exit33_crit_edge:             ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit33

lor.lhs.false.i.i25:                              ; preds = %if.end.i22
  %call4.i.i23 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i23)
  %tobool5.not.i.i24 = icmp eq i32 %call4.i.i23, 0
  br i1 %tobool5.not.i.i24, label %land.lhs.true.i.i28, label %lor.lhs.false.i.i25.xas_next.exit33_crit_edge

lor.lhs.false.i.i25.xas_next.exit33_crit_edge:    ; preds = %lor.lhs.false.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit33

land.lhs.true.i.i28:                              ; preds = %lor.lhs.false.i.i25
  %call6.i.i26 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i26)
  %tobool7.not.i.i27 = icmp eq i32 %call6.i.i26, 0
  br i1 %tobool7.not.i.i27, label %land.lhs.true.i.i28.xas_next.exit33_crit_edge, label %land.lhs.true8.i.i30

land.lhs.true.i.i28.xas_next.exit33_crit_edge:    ; preds = %land.lhs.true.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit33

land.lhs.true8.i.i30:                             ; preds = %land.lhs.true.i.i28
  %.b13.i.i29 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i29, label %land.lhs.true8.i.i30.xas_next.exit33_crit_edge, label %if.then.i.i31

land.lhs.true8.i.i30.xas_next.exit33_crit_edge:   ; preds = %land.lhs.true8.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit33

if.then.i.i31:                                    ; preds = %land.lhs.true8.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit33

xas_next.exit33:                                  ; preds = %if.then.i.i31, %land.lhs.true8.i.i30.xas_next.exit33_crit_edge, %land.lhs.true.i.i28.xas_next.exit33_crit_edge, %lor.lhs.false.i.i25.xas_next.exit33_crit_edge, %if.end.i22.xas_next.exit33_crit_edge, %if.then.i13
  %call22 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %xas) #11
  %49 = load i32, ptr @tests_run, align 4
  %inc24 = add i32 %49, 1
  store i32 %inc24, ptr @tests_run, align 4
  %50 = load volatile ptr, ptr @shadow_nodes, align 4
  %cmp.i34.not = icmp eq ptr %50, @shadow_nodes
  br i1 %cmp.i34.not, label %if.else33, label %do.end30

do.end30:                                         ; preds = %xas_next.exit33
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.541, i32 noundef 1673) #10
  call void @dump_stack() #10
  br label %do.end37

if.else33:                                        ; preds = %xas_next.exit33
  call void @__sanitizer_cov_trace_pc() #9
  %51 = load i32, ptr @tests_passed, align 4
  %inc34 = add i32 %51, 1
  store i32 %inc34, ptr @tests_passed, align 4
  br label %do.end37

do.end37:                                         ; preds = %if.else33, %do.end30
  %call39 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull inttoptr (i32 5 to ptr)) #11
  %52 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %53) #11
  %54 = load i32, ptr @tests_run, align 4
  %inc43 = add i32 %54, 1
  store i32 %inc43, ptr @tests_run, align 4
  %55 = load volatile ptr, ptr @shadow_nodes, align 4
  %cmp.i36.not = icmp eq ptr %55, @shadow_nodes
  br i1 %cmp.i36.not, label %do.end49, label %if.else52

do.end49:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.541, i32 noundef 1677) #10
  call void @dump_stack() #10
  br label %do.end56

if.else52:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %56 = load i32, ptr @tests_passed, align 4
  %inc53 = add i32 %56, 1
  store i32 %inc53, ptr @tests_passed, align 4
  br label %do.end56

do.end56:                                         ; preds = %if.else52, %do.end49
  call fastcc void @shadow_remove()
  %57 = load i32, ptr @tests_run, align 4
  %inc58 = add i32 %57, 1
  store i32 %inc58, ptr @tests_run, align 4
  %58 = load volatile ptr, ptr @shadow_nodes, align 4
  %cmp.i38.not = icmp eq ptr %58, @shadow_nodes
  br i1 %cmp.i38.not, label %if.else67, label %do.end64

do.end64:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.541, i32 noundef 1680) #10
  call void @dump_stack() #10
  br label %do.body72

if.else67:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %59 = load i32, ptr @tests_passed, align 4
  %inc68 = add i32 %59, 1
  store i32 %inc68, ptr @tests_passed, align 4
  br label %do.body72

do.body72:                                        ; preds = %if.else67, %do.end64
  %60 = load i32, ptr @tests_run, align 4
  %inc73 = add i32 %60, 1
  store i32 %inc73, ptr @tests_run, align 4
  %61 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i40 = icmp eq ptr %61, null
  br i1 %cmp.i40, label %if.else81, label %do.end78

do.end78:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.541, i32 noundef 1681) #10
  call void @dump_stack() #10
  br label %do.end85

if.else81:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %62 = load i32, ptr @tests_passed, align 4
  %inc82 = add i32 %62, 1
  store i32 %inc82, ptr @tests_passed, align 4
  br label %do.end85

do.end85:                                         ; preds = %if.else81, %do.end78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %call = tail call ptr @xa_erase(ptr noundef %xa, i32 noundef %index) #11
  %and.i = shl i32 %index, 1
  %or.i.i = or i32 %and.i, 1
  %1 = inttoptr i32 %or.i.i to ptr
  %cmp.not = icmp eq ptr %call, %1
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, i32 noundef 62) #10
  tail call void @dump_stack() #10
  br label %do.body6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %2, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.body6

do.body6:                                         ; preds = %if.else, %do.end
  %3 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %3, 1
  store i32 %inc7, ptr @tests_run, align 4
  %call8 = tail call ptr @xa_load(ptr noundef %xa, i32 noundef %index) #11
  %cmp9.not = icmp eq ptr %call8, null
  br i1 %cmp9.not, label %if.else15, label %do.end12

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, i32 noundef 63) #10
  tail call void @dump_stack() #10
  br label %do.end18

if.else15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @tests_passed, align 4
  %inc16 = add i32 %4, 1
  store i32 %inc16, ptr @tests_passed, align 4
  br label %do.end18

do.end18:                                         ; preds = %if.else15, %do.end12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xas_next_entry(ptr noundef %xas) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %0 = ptrtoint ptr %xa_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_node, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %spec.select.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false, !prof !972

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.lhs.false.cleanup.sink.split_crit_edge, !prof !973

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %5 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xa_offset, align 2
  %conv2 = zext i8 %6 to i32
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %7 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa_index, align 4
  %and = and i32 %8, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv2)
  %cmp.not = icmp eq i32 %and, %conv2
  br i1 %cmp.not, label %lor.rhs.do.body_crit_edge, label %lor.rhs.cleanup.sink.split_crit_edge, !prof !973

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  br label %do.body

do.body:                                          ; preds = %if.end44.do.body_crit_edge, %lor.rhs.do.body_crit_edge
  %9 = phi i32 [ %inc47, %if.end44.do.body_crit_edge ], [ %8, %lor.rhs.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp8 = icmp eq i32 %9, -1
  br i1 %cmp8, label %do.body.cleanup.sink.split_crit_edge, label %if.end18, !prof !972

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end18:                                         ; preds = %do.body
  %10 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %xa_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %11)
  %cmp21 = icmp eq i8 %11, 63
  br i1 %cmp21, label %if.end18.cleanup.sink.split_crit_edge, label %if.end31, !prof !972

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end18
  %conv20 = zext i8 %11 to i32
  %12 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xas, align 4
  %add = add nuw nsw i32 %conv20, 1
  %arrayidx.i = getelementptr %struct.xa_node, ptr %1, i32 0, i32 7, i32 %add
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i2 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i2, label %lor.lhs.false.i, label %if.end31.xa_entry.exit_crit_edge

if.end31.xa_entry.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

lor.lhs.false.i:                                  ; preds = %if.end31
  %call4.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.xa_entry.exit_crit_edge

lor.lhs.false.i.xa_entry.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.xa_entry.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.xa_entry.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true8.i.xa_entry.exit_crit_edge, label %if.then.i

land.lhs.true8.i.xa_entry.exit_crit_edge:         ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xa_entry.exit

xa_entry.exit:                                    ; preds = %if.then.i, %land.lhs.true8.i.xa_entry.exit_crit_edge, %land.lhs.true.i.xa_entry.exit_crit_edge, %lor.lhs.false.i.xa_entry.exit_crit_edge, %if.end31.xa_entry.exit_crit_edge
  %16 = ptrtoint ptr %15 to i32
  %and.i3 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i3)
  %cmp.i = icmp eq i32 %and.i3, 2
  br i1 %cmp.i, label %xa_entry.exit.cleanup.sink.split_crit_edge, label %if.end44, !prof !972

xa_entry.exit.cleanup.sink.split_crit_edge:       ; preds = %xa_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end44:                                         ; preds = %xa_entry.exit
  %17 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %xa_offset, align 2
  %inc = add i8 %18, 1
  store i8 %inc, ptr %xa_offset, align 2
  %19 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xa_index, align 4
  %inc47 = add i32 %20, 1
  store i32 %inc47, ptr %xa_index, align 4
  %tobool48.not = icmp eq ptr %15, null
  br i1 %tobool48.not, label %if.end44.do.body_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44.do.body_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup.sink.split:                               ; preds = %xa_entry.exit.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call43 = tail call ptr @xas_find(ptr noundef %xas, i32 noundef -1) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge
  %retval.0 = phi ptr [ %call43, %cleanup.sink.split ], [ %15, %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_mark_1(i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %call = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  br i1 %call, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 181) #10
  tail call void @dump_stack() #10
  br label %do.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i32, ptr @tests_passed, align 4
  %inc3 = add i32 %1, 1
  store i32 %inc3, ptr @tests_passed, align 4
  br label %do.end5

do.end5:                                          ; preds = %if.else, %do.end
  tail call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  %2 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %2, 1
  store i32 %inc7, ptr @tests_run, align 4
  %call8 = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  br i1 %call8, label %do.end12, label %if.else15

do.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 183) #10
  tail call void @dump_stack() #10
  br label %do.body20

if.else15:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @tests_passed, align 4
  %inc16 = add i32 %3, 1
  store i32 %inc16, ptr @tests_passed, align 4
  br label %do.body20

do.body20:                                        ; preds = %if.else15, %do.end12
  %4 = load i32, ptr @tests_run, align 4
  %inc21 = add i32 %4, 1
  store i32 %inc21, ptr @tests_run, align 4
  %and.i.i = shl i32 %index, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %5 = inttoptr i32 %or.i.i.i to ptr
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %index, ptr noundef nonnull %5, i32 noundef 3264) #11
  %cmp.not = icmp eq ptr %call1.i, null
  br i1 %cmp.not, label %if.else29, label %do.end26

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 186) #10
  tail call void @dump_stack() #10
  br label %do.body34

if.else29:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr @tests_passed, align 4
  %inc30 = add i32 %6, 1
  store i32 %inc30, ptr @tests_passed, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.else29, %do.end26
  %7 = load i32, ptr @tests_run, align 4
  %inc35 = add i32 %7, 1
  store i32 %inc35, ptr @tests_run, align 4
  %call36 = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  br i1 %call36, label %do.end40, label %if.else43

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 187) #10
  tail call void @dump_stack() #10
  br label %do.end47

if.else43:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc44 = add i32 %8, 1
  store i32 %inc44, ptr @tests_passed, align 4
  br label %do.end47

do.end47:                                         ; preds = %if.else43, %do.end40
  tail call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  %9 = load i32, ptr @tests_run, align 4
  %inc49 = add i32 %9, 1
  store i32 %inc49, ptr @tests_run, align 4
  %call50 = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  br i1 %call50, label %if.else57, label %do.end54

do.end54:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 189) #10
  tail call void @dump_stack() #10
  br label %do.body62

if.else57:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load i32, ptr @tests_passed, align 4
  %inc58 = add i32 %10, 1
  store i32 %inc58, ptr @tests_passed, align 4
  br label %do.body62

do.body62:                                        ; preds = %if.else57, %do.end54
  %11 = load i32, ptr @tests_run, align 4
  %inc63 = add i32 %11, 1
  store i32 %inc63, ptr @tests_run, align 4
  %add = add i32 %index, 1
  %call64 = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %add, i32 noundef 0) #11
  br i1 %call64, label %do.end68, label %if.else71

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 192) #10
  tail call void @dump_stack() #10
  br label %do.body76

if.else71:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load i32, ptr @tests_passed, align 4
  %inc72 = add i32 %12, 1
  store i32 %inc72, ptr @tests_passed, align 4
  br label %do.body76

do.body76:                                        ; preds = %if.else71, %do.end68
  %13 = load i32, ptr @tests_run, align 4
  %inc77 = add i32 %13, 1
  store i32 %inc77, ptr @tests_run, align 4
  %call78 = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 1) #11
  br i1 %call78, label %do.end82, label %if.else85

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 193) #10
  tail call void @dump_stack() #10
  br label %do.end89

if.else85:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i32, ptr @tests_passed, align 4
  %inc86 = add i32 %14, 1
  store i32 %inc86, ptr @tests_passed, align 4
  br label %do.end89

do.end89:                                         ; preds = %if.else85, %do.end82
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %index)
  %15 = load i32, ptr @tests_run, align 4
  %inc91 = add i32 %15, 1
  store i32 %inc91, ptr @tests_run, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %16, null
  br i1 %cmp.i, label %if.else99, label %do.end96

do.end96:                                         ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 197) #10
  tail call void @dump_stack() #10
  br label %do.body104

if.else99:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i32, ptr @tests_passed, align 4
  %inc100 = add i32 %17, 1
  store i32 %inc100, ptr @tests_passed, align 4
  br label %do.body104

do.body104:                                       ; preds = %if.else99, %do.end96
  %18 = load i32, ptr @tests_run, align 4
  %inc105 = add i32 %18, 1
  store i32 %inc105, ptr @tests_run, align 4
  %call106 = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  br i1 %call106, label %do.end110, label %if.else113

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 198) #10
  tail call void @dump_stack() #10
  br label %do.end117

if.else113:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load i32, ptr @tests_passed, align 4
  %inc114 = add i32 %19, 1
  store i32 %inc114, ptr @tests_passed, align 4
  br label %do.end117

do.end117:                                        ; preds = %if.else113, %do.end110
  tail call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  %20 = load i32, ptr @tests_run, align 4
  %inc119 = add i32 %20, 1
  store i32 %inc119, ptr @tests_run, align 4
  %call120 = tail call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %index, i32 noundef 0) #11
  br i1 %call120, label %do.end124, label %if.else127

do.end124:                                        ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 200) #10
  tail call void @dump_stack() #10
  br label %do.body132

if.else127:                                       ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load i32, ptr @tests_passed, align 4
  %inc128 = add i32 %21, 1
  store i32 %inc128, ptr @tests_passed, align 4
  br label %do.body132

do.body132:                                       ; preds = %if.else127, %do.end124
  %rem = and i32 %index, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp133.not = icmp eq i32 %rem, 0
  br i1 %cmp133.not, label %do.body350, label %do.body136, !prof !973

do.body136:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/test_xarray.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #11, !srcloc !974
  unreachable

do.body350:                                       ; preds = %do.body132
  %22 = load i32, ptr @tests_run, align 4
  %inc351 = add i32 %22, 1
  store i32 %inc351, ptr @tests_run, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i1 = icmp eq ptr %23, null
  br i1 %cmp.i1, label %if.else359, label %do.end356

do.end356:                                        ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #9
  %call358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, i32 noundef 251) #10
  tail call void @dump_stack() #10
  br label %do.end363

if.else359:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #9
  %24 = load i32, ptr @tests_passed, align 4
  %inc360 = add i32 %24, 1
  store i32 %inc360, ptr @tests_passed, align 4
  br label %do.end363

do.end363:                                        ; preds = %if.else359, %do.end356
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_mark_2() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %4 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @array, ptr %xas, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %call1.i1 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  tail call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef 0, i32 noundef 0) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %call4 = call ptr @xas_load(ptr noundef nonnull %xas) #11
  call void @xas_init_marks(ptr noundef nonnull %xas) #11
  %9 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %10) #11
  %11 = load i32, ptr @tests_run, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr @tests_run, align 4
  %call7 = call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef 0, i32 noundef 0) #11
  br i1 %call7, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97, i32 noundef 267) #10
  call void @dump_stack() #10
  br label %for.body.preheader

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load i32, ptr @tests_passed, align 4
  %inc10 = add i32 %12, 1
  store i32 %inc10, ptr @tests_passed, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else, %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %index.012 = phi i32 [ %inc15, %for.body.for.body_crit_edge ], [ 3500, %for.body.preheader ]
  %and.i.i = shl nuw nsw i32 %index.012, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %13 = inttoptr i32 %or.i.i.i to ptr
  %call1.i2 = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %index.012, ptr noundef nonnull %13, i32 noundef 3264) #11
  call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef %index.012, i32 noundef 0) #11
  %inc15 = add nuw nsw i32 %index.012, 1
  %exitcond.not = icmp eq i32 %inc15, 4500
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %15 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.end.rcu_read_lock.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.end.rcu_read_lock.exit_crit_edge
  %call16 = call ptr @xas_find_marked(ptr noundef nonnull %xas, i32 noundef -1, i32 noundef 0) #11
  %tobool.not13 = icmp eq ptr %call16, null
  br i1 %tobool.not13, label %rcu_read_lock.exit.for.end22_crit_edge, label %rcu_read_lock.exit.for.body18_crit_edge

rcu_read_lock.exit.for.body18_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %for.body18

rcu_read_lock.exit.for.end22_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %rcu_read_lock.exit.for.body18_crit_edge
  %count.014 = phi i32 [ %inc19, %for.body18.for.body18_crit_edge ], [ 0, %rcu_read_lock.exit.for.body18_crit_edge ]
  %inc19 = add i32 %count.014, 1
  %call21 = call fastcc ptr @xas_next_marked(ptr noundef nonnull %xas, i32 noundef -1)
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %for.body18.for.end22_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.body18.for.end22_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.end22:                                        ; preds = %for.body18.for.end22_crit_edge, %rcu_read_lock.exit.for.end22_crit_edge
  %count.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end22_crit_edge ], [ %inc19, %for.body18.for.end22_crit_edge ]
  %call.i3 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3, label %for.end22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

for.end22.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %for.end22
  %call1.i4 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %for.end22.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %19 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i10 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %23 = load i32, ptr @tests_run, align 4
  %inc24 = add i32 %23, 1
  store i32 %inc24, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.0.lcssa)
  %cmp25.not = icmp eq i32 %count.0.lcssa, 1000
  br i1 %cmp25.not, label %if.else32, label %do.end29

do.end29:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97, i32 noundef 279) #10
  call void @dump_stack() #10
  br label %do.end36

if.else32:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %24 = load i32, ptr @tests_passed, align 4
  %inc33 = add i32 %24, 1
  store i32 %inc33, ptr @tests_passed, align 4
  br label %do.end36

do.end36:                                         ; preds = %if.else32, %do.end29
  %25 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %26) #11
  %call39 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %tobool41.not15 = icmp eq ptr %call39, null
  br i1 %tobool41.not15, label %do.end36.for.end74_crit_edge, label %do.end36.for.body42_crit_edge

do.end36.for.body42_crit_edge:                    ; preds = %do.end36
  br label %for.body42

do.end36.for.end74_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74

for.body42:                                       ; preds = %for.inc72.for.body42_crit_edge, %do.end36.for.body42_crit_edge
  call void @xas_init_marks(ptr noundef nonnull %xas) #11
  %27 = load i32, ptr @tests_run, align 4
  %inc44 = add i32 %27, 1
  store i32 %inc44, ptr @tests_run, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %0, align 4
  %call46 = call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %29, i32 noundef 0) #11
  br i1 %call46, label %if.else53, label %do.end50

do.end50:                                         ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97, i32 noundef 284) #10
  call void @dump_stack() #10
  br label %do.body58

if.else53:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  %30 = load i32, ptr @tests_passed, align 4
  %inc54 = add i32 %30, 1
  store i32 %inc54, ptr @tests_passed, align 4
  br label %do.body58

do.body58:                                        ; preds = %if.else53, %do.end50
  %31 = load i32, ptr @tests_run, align 4
  %inc59 = add i32 %31, 1
  store i32 %inc59, ptr @tests_run, align 4
  %call60 = call zeroext i1 @xas_get_mark(ptr noundef nonnull %xas, i32 noundef 0) #11
  br i1 %call60, label %if.else67, label %do.end64

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97, i32 noundef 285) #10
  call void @dump_stack() #10
  br label %for.inc72

if.else67:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %32 = load i32, ptr @tests_passed, align 4
  %inc68 = add i32 %32, 1
  store i32 %inc68, ptr @tests_passed, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %if.else67, %do.end64
  %call73 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %tobool41.not = icmp eq ptr %call73, null
  br i1 %tobool41.not, label %for.inc72.for.end74_crit_edge, label %for.inc72.for.body42_crit_edge

for.inc72.for.body42_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.inc72.for.end74_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74

for.end74:                                        ; preds = %for.inc72.for.end74_crit_edge, %do.end36.for.end74_crit_edge
  %33 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %34) #11
  call void @xa_destroy(ptr noundef nonnull @array) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xa_get_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_set_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xas_next_marked(ptr noundef %xas, i32 noundef %max) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %0 = ptrtoint ptr %xa_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_node, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %spec.select.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i, label %entry.cleanup.sink.split_crit_edge, label %lor.rhs, !prof !972

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.rhs:                                          ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %lor.rhs.cleanup.sink.split_crit_edge, !prof !973

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.rhs
  %xa_offset.i = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %5 = ptrtoint ptr %xa_offset.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xa_offset.i, align 2
  %conv.i = zext i8 %6 to i32
  %inc.i = add nuw nsw i32 %conv.i, 1
  %7 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 8
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %7, i32 noundef 64, i32 noundef %inc.i) #11
  %conv6 = trunc i32 %call.i to i8
  %8 = ptrtoint ptr %xa_offset.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %xa_offset.i, align 2
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %9 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xa_index, align 4
  %and = and i32 %10, -64
  %add = add i32 %and, %call.i
  store i32 %add, ptr %xa_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max)
  %cmp = icmp ugt i32 %add, %max
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i)
  %cmp12 = icmp eq i32 %call.i, 64
  br i1 %cmp12, label %if.end11.cleanup.sink.split_crit_edge, label %if.end16

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xas, align 4
  %arrayidx.i = getelementptr %struct.xa_node, ptr %1, i32 0, i32 7, i32 %call.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i1 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i1, label %lor.lhs.false.i, label %if.end16.xa_entry.exit_crit_edge

if.end16.xa_entry.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

lor.lhs.false.i:                                  ; preds = %if.end16
  %call4.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.xa_entry.exit_crit_edge

lor.lhs.false.i.xa_entry.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.xa_entry.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.xa_entry.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true8.i.xa_entry.exit_crit_edge, label %if.then.i

land.lhs.true8.i.xa_entry.exit_crit_edge:         ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xa_entry.exit

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xa_entry.exit

xa_entry.exit:                                    ; preds = %if.then.i, %land.lhs.true8.i.xa_entry.exit_crit_edge, %land.lhs.true.i.xa_entry.exit_crit_edge, %lor.lhs.false.i.xa_entry.exit_crit_edge, %if.end16.xa_entry.exit_crit_edge
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %xa_entry.exit.cleanup.sink.split_crit_edge, label %xa_entry.exit.cleanup_crit_edge

xa_entry.exit.cleanup_crit_edge:                  ; preds = %xa_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xa_entry.exit.cleanup.sink.split_crit_edge:       ; preds = %xa_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %xa_entry.exit.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call20 = tail call ptr @xas_find_marked(ptr noundef %xas, i32 noundef %max, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %xa_entry.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %14, %xa_entry.exit.cleanup_crit_edge ], [ %call20, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_init_marks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_get_mark(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_alloc_1(ptr noundef %xa, i32 noundef %base) unnamed_addr #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !971
  %1 = load i32, ptr @tests_run, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @tests_run, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %xa, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 682) #10
  tail call void @dump_stack() #10
  br label %do.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @tests_passed, align 4
  %inc3 = add i32 %4, 1
  store i32 %inc3, ptr @tests_passed, align 4
  br label %do.end5

do.end5:                                          ; preds = %if.else, %do.end
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %base)
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %base)
  %5 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %5, 1
  store i32 %inc7, ptr @tests_run, align 4
  %6 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xa_head.i, align 4
  %cmp.i276 = icmp eq ptr %7, null
  br i1 %cmp.i276, label %if.else15, label %do.end12

do.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 688) #10
  tail call void @dump_stack() #10
  br label %do.end19

if.else15:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc16 = add i32 %8, 1
  store i32 %inc16, ptr @tests_passed, align 4
  br label %do.end19

do.end19:                                         ; preds = %if.else15, %do.end12
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %base)
  %add = add i32 %base, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp284 = icmp ult i32 %add, 128
  br i1 %cmp284, label %do.end19.for.body_crit_edge, label %do.end19.for.cond21.preheader_crit_edge

do.end19.for.cond21.preheader_crit_edge:          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader

do.end19.for.body_crit_edge:                      ; preds = %do.end19
  br label %for.body

for.cond21.preheader:                             ; preds = %for.body.for.cond21.preheader_crit_edge, %do.end19.for.cond21.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %base)
  %cmp22286 = icmp ult i32 %base, 128
  br i1 %cmp22286, label %for.cond21.preheader.for.body23_crit_edge, label %for.cond21.preheader.for.end26_crit_edge

for.cond21.preheader.for.end26_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end26

for.cond21.preheader.for.body23_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body23

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end19.for.body_crit_edge
  %i.0285 = phi i32 [ %inc20, %for.body.for.body_crit_edge ], [ %add, %do.end19.for.body_crit_edge ]
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %i.0285)
  %inc20 = add i32 %i.0285, 1
  %exitcond.not = icmp eq i32 %inc20, 128
  br i1 %exitcond.not, label %for.body.for.cond21.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.cond21.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.cond21.preheader.for.body23_crit_edge
  %i.1287 = phi i32 [ %inc25, %for.body23.for.body23_crit_edge ], [ %base, %for.cond21.preheader.for.body23_crit_edge ]
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %i.1287)
  %inc25 = add i32 %i.1287, 1
  %exitcond289.not = icmp eq i32 %inc25, 128
  br i1 %exitcond289.not, label %for.body23.for.end26_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.body23.for.end26_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end26

for.end26:                                        ; preds = %for.body23.for.end26_crit_edge, %for.cond21.preheader.for.end26_crit_edge
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %base)
  tail call void @xa_destroy(ptr noundef %xa) #11
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %base)
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %add)
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %add)
  %and.i.i = shl i32 %add, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %9 = inttoptr i32 %or.i.i.i to ptr
  %call1.i = tail call ptr @xa_store(ptr noundef %xa, i32 noundef %add, ptr noundef nonnull %9, i32 noundef 3264) #11
  %add31 = add i32 %base, 2
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %add31)
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %base)
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %base)
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %add)
  tail call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %add31)
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.end26
  %i.2288 = phi i32 [ 1, %for.end26 ], [ %inc39, %for.body36.for.body36_crit_edge ]
  %add37 = add i32 %i.2288, %base
  tail call fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %add37)
  %inc39 = add nuw nsw i32 %i.2288, 1
  %exitcond290.not = icmp eq i32 %inc39, 5000
  br i1 %exitcond290.not, label %for.end40, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36

for.end40:                                        ; preds = %for.body36
  tail call void @xa_destroy(ptr noundef %xa) #11
  %10 = load i32, ptr @tests_run, align 4
  %inc42 = add i32 %10, 1
  store i32 %inc42, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 -3 to ptr), [2 x i32] [i32 -1, i32 -2], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45.not = icmp eq i32 %call.i, 0
  br i1 %cmp45.not, label %if.else52, label %do.end49

do.end49:                                         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 730) #10
  call void @dump_stack() #10
  br label %do.body57

if.else52:                                        ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc53 = add i32 %11, 1
  store i32 %inc53, ptr @tests_passed, align 4
  br label %do.body57

do.body57:                                        ; preds = %if.else52, %do.end49
  %12 = load i32, ptr @tests_run, align 4
  %inc58 = add i32 %12, 1
  store i32 %inc58, ptr @tests_run, align 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %14)
  %cmp59.not = icmp eq i32 %14, -2
  br i1 %cmp59.not, label %if.else66, label %do.end63

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 731) #10
  call void @dump_stack() #10
  br label %do.body71

if.else66:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @tests_passed, align 4
  %inc67 = add i32 %15, 1
  store i32 %inc67, ptr @tests_passed, align 4
  br label %do.body71

do.body71:                                        ; preds = %if.else66, %do.end63
  %16 = load i32, ptr @tests_run, align 4
  %inc72 = add i32 %16, 1
  store i32 %inc72, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i277 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 -1 to ptr), [2 x i32] [i32 -1, i32 -2], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %cmp78.not = icmp eq i32 %call.i277, 0
  br i1 %cmp78.not, label %if.else85, label %do.end82

do.end82:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 734) #10
  call void @dump_stack() #10
  br label %do.body90

if.else85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i32, ptr @tests_passed, align 4
  %inc86 = add i32 %17, 1
  store i32 %inc86, ptr @tests_passed, align 4
  br label %do.body90

do.body90:                                        ; preds = %if.else85, %do.end82
  %18 = load i32, ptr @tests_run, align 4
  %inc91 = add i32 %18, 1
  store i32 %inc91, ptr @tests_run, align 4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp92.not = icmp eq i32 %20, -1
  br i1 %cmp92.not, label %if.else99, label %do.end96

do.end96:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 735) #10
  call void @dump_stack() #10
  br label %do.end103

if.else99:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load i32, ptr @tests_passed, align 4
  %inc100 = add i32 %21, 1
  store i32 %inc100, ptr @tests_passed, align 4
  br label %do.end103

do.end103:                                        ; preds = %if.else99, %do.end96
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %id, align 4
  %23 = load i32, ptr @tests_run, align 4
  %inc105 = add i32 %23, 1
  store i32 %inc105, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i278 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 1 to ptr), [2 x i32] [i32 -1, i32 -2], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i278)
  %cmp111.not = icmp eq i32 %call.i278, -16
  br i1 %cmp111.not, label %if.else118, label %do.end115

do.end115:                                        ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 739) #10
  call void @dump_stack() #10
  br label %do.body123

if.else118:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  %24 = load i32, ptr @tests_passed, align 4
  %inc119 = add i32 %24, 1
  store i32 %inc119, ptr @tests_passed, align 4
  br label %do.body123

do.body123:                                       ; preds = %if.else118, %do.end115
  %25 = load i32, ptr @tests_run, align 4
  %inc124 = add i32 %25, 1
  store i32 %inc124, ptr @tests_run, align 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp125.not = icmp eq i32 %27, 3
  br i1 %cmp125.not, label %if.else132, label %do.end129

do.end129:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 740) #10
  call void @dump_stack() #10
  br label %do.end136

if.else132:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  %28 = load i32, ptr @tests_passed, align 4
  %inc133 = add i32 %28, 1
  store i32 %inc133, ptr @tests_passed, align 4
  br label %do.end136

do.end136:                                        ; preds = %if.else132, %do.end129
  call void @xa_destroy(ptr noundef %xa) #11
  %29 = load i32, ptr @tests_run, align 4
  %inc138 = add i32 %29, 1
  store i32 %inc138, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i279 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 21 to ptr), [2 x i32] [i32 5, i32 10], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i279)
  %cmp144.not = icmp eq i32 %call.i279, -16
  br i1 %cmp144.not, label %if.else151, label %do.end148

do.end148:                                        ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 744) #10
  call void @dump_stack() #10
  br label %do.body156

if.else151:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  %30 = load i32, ptr @tests_passed, align 4
  %inc152 = add i32 %30, 1
  store i32 %inc152, ptr @tests_passed, align 4
  br label %do.body156

do.body156:                                       ; preds = %if.else151, %do.end148
  %31 = load i32, ptr @tests_run, align 4
  %inc157 = add i32 %31, 1
  store i32 %inc157, ptr @tests_run, align 4
  %call1.i280 = call ptr @xa_store(ptr noundef %xa, i32 noundef 3, ptr noundef nonnull inttoptr (i32 7 to ptr), i32 noundef 3264) #11
  %cmp159.not = icmp eq ptr %call1.i280, null
  br i1 %cmp159.not, label %if.else166, label %do.end163

do.end163:                                        ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #9
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 745) #10
  call void @dump_stack() #10
  br label %do.body171

if.else166:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #9
  %32 = load i32, ptr @tests_passed, align 4
  %inc167 = add i32 %32, 1
  store i32 %inc167, ptr @tests_passed, align 4
  br label %do.body171

do.body171:                                       ; preds = %if.else166, %do.end163
  %33 = load i32, ptr @tests_run, align 4
  %inc172 = add i32 %33, 1
  store i32 %inc172, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i281 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 21 to ptr), [2 x i32] [i32 5, i32 10], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i281)
  %cmp178.not = icmp eq i32 %call.i281, -16
  br i1 %cmp178.not, label %if.else185, label %do.end182

do.end182:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 747) #10
  call void @dump_stack() #10
  br label %do.end189

if.else185:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  %34 = load i32, ptr @tests_passed, align 4
  %inc186 = add i32 %34, 1
  store i32 %inc186, ptr @tests_passed, align 4
  br label %do.end189

do.end189:                                        ; preds = %if.else185, %do.end182
  call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef 3)
  %35 = load i32, ptr @tests_run, align 4
  %inc191 = add i32 %35, 1
  store i32 %inc191, ptr @tests_run, align 4
  %36 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xa_head.i, align 4
  %cmp.i283 = icmp eq ptr %37, null
  br i1 %cmp.i283, label %if.else199, label %do.end196

do.end196:                                        ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #9
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.233, i32 noundef 749) #10
  call void @dump_stack() #10
  br label %do.end203

if.else199:                                       ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i32, ptr @tests_passed, align 4
  %inc200 = add i32 %38, 1
  store i32 %inc200, ptr @tests_passed, align 4
  br label %do.end203

do.end203:                                        ; preds = %if.else199, %do.end196
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_alloc_2(ptr noundef %xa, i32 noundef %base) unnamed_addr #2 align 64 {
entry:
  %id = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !971
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !971
  %2 = load i32, ptr @tests_run, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @tests_run, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %xa, i32 0, i32 2
  %3 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 759) #10
  tail call void @dump_stack() #10
  br label %do.body7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %5, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.else, %do.end
  %6 = load i32, ptr @tests_run, align 4
  %inc8 = add i32 %6, 1
  store i32 %inc8, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef null, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.else16, label %do.end13

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 760) #10
  call void @dump_stack() #10
  br label %do.body21

if.else16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.else16, %do.end13
  %8 = load i32, ptr @tests_run, align 4
  %inc22 = add i32 %8, 1
  store i32 %inc22, ptr @tests_run, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %base)
  %cmp23.not = icmp eq i32 %10, %base
  br i1 %cmp23.not, label %if.else30, label %do.end27

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 761) #10
  call void @dump_stack() #10
  br label %do.body35

if.else30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc31 = add i32 %11, 1
  store i32 %inc31, ptr @tests_passed, align 4
  br label %do.body35

do.body35:                                        ; preds = %if.else30, %do.end27
  %12 = load i32, ptr @tests_run, align 4
  %inc36 = add i32 %12, 1
  store i32 %inc36, ptr @tests_run, align 4
  %13 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xa_head.i, align 4
  %cmp.i450 = icmp eq ptr %14, null
  br i1 %cmp.i450, label %do.end41, label %if.else44

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 762) #10
  call void @dump_stack() #10
  br label %do.body49

if.else44:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @tests_passed, align 4
  %inc45 = add i32 %15, 1
  store i32 %inc45, ptr @tests_passed, align 4
  br label %do.body49

do.body49:                                        ; preds = %if.else44, %do.end41
  %16 = load i32, ptr @tests_run, align 4
  %inc50 = add i32 %16, 1
  store i32 %inc50, ptr @tests_run, align 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %call51 = call ptr @xa_erase(ptr noundef %xa, i32 noundef %18) #11
  %cmp52.not = icmp eq ptr %call51, null
  br i1 %cmp52.not, label %if.else59, label %do.end56

do.end56:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 763) #10
  call void @dump_stack() #10
  br label %do.body64

if.else59:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load i32, ptr @tests_passed, align 4
  %inc60 = add i32 %19, 1
  store i32 %inc60, ptr @tests_passed, align 4
  br label %do.body64

do.body64:                                        ; preds = %if.else59, %do.end56
  %20 = load i32, ptr @tests_run, align 4
  %inc65 = add i32 %20, 1
  store i32 %inc65, ptr @tests_run, align 4
  %21 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xa_head.i, align 4
  %cmp.i452 = icmp eq ptr %22, null
  br i1 %cmp.i452, label %if.else73, label %do.end70

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 764) #10
  call void @dump_stack() #10
  br label %do.body78

if.else73:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %23 = load i32, ptr @tests_passed, align 4
  %inc74 = add i32 %23, 1
  store i32 %inc74, ptr @tests_passed, align 4
  br label %do.body78

do.body78:                                        ; preds = %if.else73, %do.end70
  %24 = load i32, ptr @tests_run, align 4
  %inc79 = add i32 %24, 1
  store i32 %inc79, ptr @tests_run, align 4
  %25 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xa_head.i, align 4
  %cmp.i454 = icmp eq ptr %26, null
  br i1 %cmp.i454, label %if.else87, label %do.end84

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 767) #10
  call void @dump_stack() #10
  br label %do.body92

if.else87:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %27 = load i32, ptr @tests_passed, align 4
  %inc88 = add i32 %27, 1
  store i32 %inc88, ptr @tests_passed, align 4
  br label %do.body92

do.body92:                                        ; preds = %if.else87, %do.end84
  %28 = load i32, ptr @tests_run, align 4
  %inc93 = add i32 %28, 1
  store i32 %inc93, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i455 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef null, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455)
  %cmp98.not = icmp eq i32 %call.i455, 0
  br i1 %cmp98.not, label %if.else105, label %do.end102

do.end102:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 768) #10
  call void @dump_stack() #10
  br label %do.body110

if.else105:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %29 = load i32, ptr @tests_passed, align 4
  %inc106 = add i32 %29, 1
  store i32 %inc106, ptr @tests_passed, align 4
  br label %do.body110

do.body110:                                       ; preds = %if.else105, %do.end102
  %30 = load i32, ptr @tests_run, align 4
  %inc111 = add i32 %30, 1
  store i32 %inc111, ptr @tests_run, align 4
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %base)
  %cmp112.not = icmp eq i32 %32, %base
  br i1 %cmp112.not, label %if.else119, label %do.end116

do.end116:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 769) #10
  call void @dump_stack() #10
  br label %do.body124

if.else119:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %33 = load i32, ptr @tests_passed, align 4
  %inc120 = add i32 %33, 1
  store i32 %inc120, ptr @tests_passed, align 4
  br label %do.body124

do.body124:                                       ; preds = %if.else119, %do.end116
  %34 = load i32, ptr @tests_run, align 4
  %inc125 = add i32 %34, 1
  store i32 %inc125, ptr @tests_run, align 4
  %35 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xa_head.i, align 4
  %cmp.i457 = icmp eq ptr %36, null
  br i1 %cmp.i457, label %do.end130, label %if.else133

do.end130:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 770) #10
  call void @dump_stack() #10
  br label %do.end137

if.else133:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  %37 = load i32, ptr @tests_passed, align 4
  %inc134 = add i32 %37, 1
  store i32 %inc134, ptr @tests_passed, align 4
  br label %do.end137

do.end137:                                        ; preds = %if.else133, %do.end130
  call void @xa_destroy(ptr noundef %xa) #11
  %38 = load i32, ptr @tests_run, align 4
  %inc139 = add i32 %38, 1
  store i32 %inc139, ptr @tests_run, align 4
  %39 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xa_head.i, align 4
  %cmp.i459 = icmp eq ptr %40, null
  br i1 %cmp.i459, label %if.else147, label %do.end144

do.end144:                                        ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #9
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 772) #10
  call void @dump_stack() #10
  br label %do.end151

if.else147:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #9
  %41 = load i32, ptr @tests_passed, align 4
  %inc148 = add i32 %41, 1
  store i32 %inc148, ptr @tests_passed, align 4
  br label %do.end151

do.end151:                                        ; preds = %if.else147, %do.end144
  %add = add i32 %base, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %base)
  %cmp152468 = icmp ult i32 %base, -10
  br i1 %cmp152468, label %do.end151.do.body153_crit_edge, label %do.end151.do.body186_crit_edge

do.end151.do.body186_crit_edge:                   ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body186

do.end151.do.body153_crit_edge:                   ; preds = %do.end151
  br label %do.body153

do.body153:                                       ; preds = %for.inc.do.body153_crit_edge, %do.end151.do.body153_crit_edge
  %i.0469 = phi i32 [ %inc185, %for.inc.do.body153_crit_edge ], [ %base, %do.end151.do.body153_crit_edge ]
  %42 = load i32, ptr @tests_run, align 4
  %inc154 = add i32 %42, 1
  store i32 %inc154, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i460 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef null, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i460)
  %cmp159.not = icmp eq i32 %call.i460, 0
  br i1 %cmp159.not, label %if.else166, label %do.end163

do.end163:                                        ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 776) #10
  call void @dump_stack() #10
  br label %do.body171

if.else166:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  %43 = load i32, ptr @tests_passed, align 4
  %inc167 = add i32 %43, 1
  store i32 %inc167, ptr @tests_passed, align 4
  br label %do.body171

do.body171:                                       ; preds = %if.else166, %do.end163
  %44 = load i32, ptr @tests_run, align 4
  %inc172 = add i32 %44, 1
  store i32 %inc172, ptr @tests_run, align 4
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %i.0469)
  %cmp173.not = icmp eq i32 %46, %i.0469
  br i1 %cmp173.not, label %if.else180, label %do.end177

do.end177:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 777) #10
  call void @dump_stack() #10
  br label %for.inc

if.else180:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  %47 = load i32, ptr @tests_passed, align 4
  %inc181 = add i32 %47, 1
  store i32 %inc181, ptr @tests_passed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else180, %do.end177
  %inc185 = add nuw i32 %i.0469, 1
  %cmp152 = icmp ult i32 %inc185, %add
  br i1 %cmp152, label %for.inc.do.body153_crit_edge, label %for.inc.do.body186_crit_edge

for.inc.do.body186_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body186

for.inc.do.body153_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

do.body186:                                       ; preds = %for.inc.do.body186_crit_edge, %do.end151.do.body186_crit_edge
  %48 = load i32, ptr @tests_run, align 4
  %inc187 = add i32 %48, 1
  store i32 %inc187, ptr @tests_run, align 4
  %call189 = call ptr @xa_store(ptr noundef %xa, i32 noundef 3, ptr noundef nonnull inttoptr (i32 7 to ptr), i32 noundef 3264) #11
  %cmp190.not = icmp eq ptr %call189, null
  br i1 %cmp190.not, label %if.else197, label %do.end194

do.end194:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #9
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 780) #10
  call void @dump_stack() #10
  br label %do.body202

if.else197:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #9
  %49 = load i32, ptr @tests_passed, align 4
  %inc198 = add i32 %49, 1
  store i32 %inc198, ptr @tests_passed, align 4
  br label %do.body202

do.body202:                                       ; preds = %if.else197, %do.end194
  %50 = load i32, ptr @tests_run, align 4
  %inc203 = add i32 %50, 1
  store i32 %inc203, ptr @tests_run, align 4
  %call205 = call ptr @xa_store(ptr noundef %xa, i32 noundef 4, ptr noundef nonnull inttoptr (i32 9 to ptr), i32 noundef 3264) #11
  %cmp206.not = icmp eq ptr %call205, null
  br i1 %cmp206.not, label %if.else213, label %do.end210

do.end210:                                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  %call212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 781) #10
  call void @dump_stack() #10
  br label %do.body218

if.else213:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  %51 = load i32, ptr @tests_passed, align 4
  %inc214 = add i32 %51, 1
  store i32 %inc214, ptr @tests_passed, align 4
  br label %do.body218

do.body218:                                       ; preds = %if.else213, %do.end210
  %52 = load i32, ptr @tests_run, align 4
  %inc219 = add i32 %52, 1
  store i32 %inc219, ptr @tests_run, align 4
  %call220 = call ptr @xa_store(ptr noundef %xa, i32 noundef 4, ptr noundef null, i32 noundef 3264) #11
  %cmp222.not = icmp eq ptr %call220, inttoptr (i32 9 to ptr)
  br i1 %cmp222.not, label %if.else229, label %do.end226

do.end226:                                        ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #9
  %call228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 782) #10
  call void @dump_stack() #10
  br label %do.body234

if.else229:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #9
  %53 = load i32, ptr @tests_passed, align 4
  %inc230 = add i32 %53, 1
  store i32 %inc230, ptr @tests_passed, align 4
  br label %do.body234

do.body234:                                       ; preds = %if.else229, %do.end226
  %54 = load i32, ptr @tests_run, align 4
  %inc235 = add i32 %54, 1
  store i32 %inc235, ptr @tests_run, align 4
  %call236 = call ptr @xa_erase(ptr noundef %xa, i32 noundef 5) #11
  %cmp237.not = icmp eq ptr %call236, null
  br i1 %cmp237.not, label %if.else244, label %do.end241

do.end241:                                        ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #9
  %call243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 783) #10
  call void @dump_stack() #10
  br label %do.body249

if.else244:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #9
  %55 = load i32, ptr @tests_passed, align 4
  %inc245 = add i32 %55, 1
  store i32 %inc245, ptr @tests_passed, align 4
  br label %do.body249

do.body249:                                       ; preds = %if.else244, %do.end241
  %56 = load i32, ptr @tests_run, align 4
  %inc250 = add i32 %56, 1
  store i32 %inc250, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i461 = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef null, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i461)
  %cmp255.not = icmp eq i32 %call.i461, 0
  br i1 %cmp255.not, label %if.else262, label %do.end259

do.end259:                                        ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #9
  %call261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 784) #10
  call void @dump_stack() #10
  br label %do.body267

if.else262:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #9
  %57 = load i32, ptr @tests_passed, align 4
  %inc263 = add i32 %57, 1
  store i32 %inc263, ptr @tests_passed, align 4
  br label %do.body267

do.body267:                                       ; preds = %if.else262, %do.end259
  %58 = load i32, ptr @tests_run, align 4
  %inc268 = add i32 %58, 1
  store i32 %inc268, ptr @tests_run, align 4
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %60)
  %cmp269.not = icmp eq i32 %60, 5
  br i1 %cmp269.not, label %if.else276, label %do.end273

do.end273:                                        ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #9
  %call275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 785) #10
  call void @dump_stack() #10
  br label %do.end280

if.else276:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #9
  %61 = load i32, ptr @tests_passed, align 4
  %inc277 = add i32 %61, 1
  store i32 %inc277, ptr @tests_passed, align 4
  br label %do.end280

do.end280:                                        ; preds = %if.else276, %do.end273
  %62 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %index, align 4
  %call281 = call ptr @xa_find(ptr noundef %xa, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not470 = icmp eq ptr %call281, null
  br i1 %tobool.not470, label %do.end280.for.cond287.preheader_crit_edge, label %do.end280.for.body283_crit_edge

do.end280.for.body283_crit_edge:                  ; preds = %do.end280
  br label %for.body283

do.end280.for.cond287.preheader_crit_edge:        ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond287.preheader

for.cond287.preheader:                            ; preds = %for.body283.for.cond287.preheader_crit_edge, %do.end280.for.cond287.preheader_crit_edge
  %add288 = add i32 %base, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %base)
  %cmp289471 = icmp ult i32 %base, -9
  br i1 %cmp289471, label %for.cond287.preheader.do.body291_crit_edge, label %for.cond287.preheader.do.body323_crit_edge

for.cond287.preheader.do.body323_crit_edge:       ; preds = %for.cond287.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body323

for.cond287.preheader.do.body291_crit_edge:       ; preds = %for.cond287.preheader
  br label %do.body291

for.body283:                                      ; preds = %for.body283.for.body283_crit_edge, %do.end280.for.body283_crit_edge
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index, align 4
  call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %64)
  %call285 = call ptr @xa_find_after(ptr noundef %xa, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call285, null
  br i1 %tobool.not, label %for.body283.for.cond287.preheader_crit_edge, label %for.body283.for.body283_crit_edge

for.body283.for.body283_crit_edge:                ; preds = %for.body283
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body283

for.body283.for.cond287.preheader_crit_edge:      ; preds = %for.body283
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond287.preheader

do.body291:                                       ; preds = %for.inc320.do.body291_crit_edge, %for.cond287.preheader.do.body291_crit_edge
  %i.1472 = phi i32 [ %inc321, %for.inc320.do.body291_crit_edge ], [ %base, %for.cond287.preheader.do.body291_crit_edge ]
  %65 = load i32, ptr @tests_run, align 4
  %inc292 = add i32 %65, 1
  store i32 %inc292, ptr @tests_run, align 4
  %call293 = call ptr @xa_erase(ptr noundef %xa, i32 noundef %i.1472) #11
  %cmp294.not = icmp eq ptr %call293, null
  br i1 %cmp294.not, label %if.else301, label %do.end298

do.end298:                                        ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #9
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 792) #10
  call void @dump_stack() #10
  br label %do.body306

if.else301:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #9
  %66 = load i32, ptr @tests_passed, align 4
  %inc302 = add i32 %66, 1
  store i32 %inc302, ptr @tests_passed, align 4
  br label %do.body306

do.body306:                                       ; preds = %if.else301, %do.end298
  %67 = load i32, ptr @tests_run, align 4
  %inc307 = add i32 %67, 1
  store i32 %inc307, ptr @tests_run, align 4
  %68 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xa_head.i, align 4
  %cmp.i463 = icmp eq ptr %69, null
  br i1 %cmp.i463, label %do.end312, label %if.else315

do.end312:                                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  %call314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 793) #10
  call void @dump_stack() #10
  br label %for.inc320

if.else315:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  %70 = load i32, ptr @tests_passed, align 4
  %inc316 = add i32 %70, 1
  store i32 %inc316, ptr @tests_passed, align 4
  br label %for.inc320

for.inc320:                                       ; preds = %if.else315, %do.end312
  %inc321 = add nuw i32 %i.1472, 1
  %cmp289 = icmp ult i32 %inc321, %add288
  br i1 %cmp289, label %for.inc320.do.body291_crit_edge, label %for.inc320.do.body323_crit_edge

for.inc320.do.body323_crit_edge:                  ; preds = %for.inc320
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body323

for.inc320.do.body291_crit_edge:                  ; preds = %for.inc320
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body291

do.body323:                                       ; preds = %for.inc320.do.body323_crit_edge, %for.cond287.preheader.do.body323_crit_edge
  %71 = load i32, ptr @tests_run, align 4
  %inc324 = add i32 %71, 1
  store i32 %inc324, ptr @tests_run, align 4
  %call325 = call ptr @xa_erase(ptr noundef %xa, i32 noundef 8) #11
  %cmp326.not = icmp eq ptr %call325, null
  br i1 %cmp326.not, label %if.else333, label %do.end330

do.end330:                                        ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #9
  %call332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 795) #10
  call void @dump_stack() #10
  br label %do.body338

if.else333:                                       ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #9
  %72 = load i32, ptr @tests_passed, align 4
  %inc334 = add i32 %72, 1
  store i32 %inc334, ptr @tests_passed, align 4
  br label %do.body338

do.body338:                                       ; preds = %if.else333, %do.end330
  %73 = load i32, ptr @tests_run, align 4
  %inc339 = add i32 %73, 1
  store i32 %inc339, ptr @tests_run, align 4
  %74 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xa_head.i, align 4
  %cmp.i465 = icmp eq ptr %75, null
  br i1 %cmp.i465, label %do.end344, label %if.else347

do.end344:                                        ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #9
  %call346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 796) #10
  call void @dump_stack() #10
  br label %do.body352

if.else347:                                       ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #9
  %76 = load i32, ptr @tests_passed, align 4
  %inc348 = add i32 %76, 1
  store i32 %inc348, ptr @tests_passed, align 4
  br label %do.body352

do.body352:                                       ; preds = %if.else347, %do.end344
  %77 = load i32, ptr @tests_run, align 4
  %inc353 = add i32 %77, 1
  store i32 %inc353, ptr @tests_run, align 4
  %call355 = call ptr @xa_erase(ptr noundef %xa, i32 noundef %add288) #11
  %cmp356.not = icmp eq ptr %call355, null
  br i1 %cmp356.not, label %if.else363, label %do.end360

do.end360:                                        ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #9
  %call362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 797) #10
  call void @dump_stack() #10
  br label %do.body368

if.else363:                                       ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #9
  %78 = load i32, ptr @tests_passed, align 4
  %inc364 = add i32 %78, 1
  store i32 %inc364, ptr @tests_passed, align 4
  br label %do.body368

do.body368:                                       ; preds = %if.else363, %do.end360
  %79 = load i32, ptr @tests_run, align 4
  %inc369 = add i32 %79, 1
  store i32 %inc369, ptr @tests_run, align 4
  %80 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xa_head.i, align 4
  %cmp.i467 = icmp eq ptr %81, null
  br i1 %cmp.i467, label %if.else377, label %do.end374

do.end374:                                        ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #9
  %call376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.260, i32 noundef 798) #10
  call void @dump_stack() #10
  br label %do.end381

if.else377:                                       ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #9
  %82 = load i32, ptr @tests_passed, align 4
  %inc378 = add i32 %82, 1
  store i32 %inc378, ptr @tests_passed, align 4
  br label %do.end381

do.end381:                                        ; preds = %if.else377, %do.end374
  call void @xa_destroy(ptr noundef %xa) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_xa_alloc_3(ptr noundef %xa, i32 noundef %base) unnamed_addr #2 align 64 {
entry:
  %next = alloca i32, align 4
  %id = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #11
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %next, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !971
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !971
  %3 = load i32, ptr @tests_run, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @tests_run, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i = call i32 @__xa_alloc_cyclic(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 3 to ptr), [2 x i32] [i32 16383, i32 1], ptr noundef nonnull %next, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 812) #10
  call void @dump_stack() #10
  br label %do.body8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @tests_passed, align 4
  %inc5 = add i32 %4, 1
  store i32 %inc5, ptr @tests_passed, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.else, %do.end
  %5 = load i32, ptr @tests_run, align 4
  %inc9 = add i32 %5, 1
  store i32 %inc9, ptr @tests_run, align 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10.not = icmp eq i32 %7, 1
  br i1 %cmp10.not, label %if.else17, label %do.end14

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 813) #10
  call void @dump_stack() #10
  br label %do.end21

if.else17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc18 = add i32 %8, 1
  store i32 %inc18, ptr @tests_passed, align 4
  br label %do.end21

do.end21:                                         ; preds = %if.else17, %do.end14
  %9 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16381, ptr %next, align 4
  %10 = load i32, ptr @tests_run, align 4
  %inc23 = add i32 %10, 1
  store i32 %inc23, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i295 = call i32 @__xa_alloc_cyclic(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 32763 to ptr), [2 x i32] [i32 16383, i32 1], ptr noundef nonnull %next, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %cmp26.not = icmp eq i32 %call.i295, 0
  br i1 %cmp26.not, label %if.else33, label %do.end30

do.end30:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 817) #10
  call void @dump_stack() #10
  br label %do.body38

if.else33:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc34 = add i32 %11, 1
  store i32 %inc34, ptr @tests_passed, align 4
  br label %do.body38

do.body38:                                        ; preds = %if.else33, %do.end30
  %12 = load i32, ptr @tests_run, align 4
  %inc39 = add i32 %12, 1
  store i32 %inc39, ptr @tests_run, align 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16381, i32 %14)
  %cmp40.not = icmp eq i32 %14, 16381
  br i1 %cmp40.not, label %if.else47, label %do.end44

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 818) #10
  call void @dump_stack() #10
  br label %do.end51

if.else47:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load i32, ptr @tests_passed, align 4
  %inc48 = add i32 %15, 1
  store i32 %inc48, ptr @tests_passed, align 4
  br label %do.end51

do.end51:                                         ; preds = %if.else47, %do.end44
  call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef 16381)
  call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef 1)
  %16 = load i32, ptr @tests_run, align 4
  %inc53 = add i32 %16, 1
  store i32 %inc53, ptr @tests_run, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %xa, i32 0, i32 2
  %17 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %18, null
  br i1 %cmp.i, label %if.else61, label %do.end58

do.end58:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 821) #10
  call void @dump_stack() #10
  br label %for.body.preheader

if.else61:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load i32, ptr @tests_passed, align 4
  %inc62 = add i32 %19, 1
  store i32 %inc62, ptr @tests_passed, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else61, %do.end58
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0310 = phi i32 [ %inc106, %for.inc.for.body_crit_edge ], [ 16382, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %i.0310)
  %cmp67 = icmp ult i32 %i.0310, 16384
  %and.i = shl nuw i32 %i.0310, 1
  %and.i296 = add nsw i32 %and.i, -32766
  %entry1.0.v.v = select i1 %cmp67, i32 %and.i, i32 %and.i296
  %entry1.0.v = or i32 %entry1.0.v.v, 1
  %entry1.0 = inttoptr i32 %entry1.0.v to ptr
  %20 = load i32, ptr @tests_run, align 4
  %inc74 = add i32 %20, 1
  store i32 %inc74, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i298 = call i32 @__xa_alloc_cyclic(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull %entry1.0, [2 x i32] [i32 16383, i32 1], ptr noundef nonnull %next, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp76 = icmp eq i32 %22, 1
  %conv = zext i1 %cmp76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i298, i32 %conv)
  %cmp77.not = icmp eq i32 %call.i298, %conv
  br i1 %cmp77.not, label %if.else85, label %do.end82

do.end82:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 829) #10
  call void @dump_stack() #10
  br label %do.body90

if.else85:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = load i32, ptr @tests_passed, align 4
  %inc86 = add i32 %23, 1
  store i32 %inc86, ptr @tests_passed, align 4
  br label %do.body90

do.body90:                                        ; preds = %if.else85, %do.end82
  %24 = load i32, ptr @tests_run, align 4
  %inc91 = add i32 %24, 1
  store i32 %inc91, ptr @tests_run, align 4
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %and.i299 = shl i32 %26, 1
  %or.i.i300 = or i32 %and.i299, 1
  %27 = inttoptr i32 %or.i.i300 to ptr
  %cmp93.not = icmp eq ptr %27, %entry1.0
  br i1 %cmp93.not, label %if.else101, label %do.end98

do.end98:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 830) #10
  call void @dump_stack() #10
  br label %for.inc

if.else101:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %28 = load i32, ptr @tests_passed, align 4
  %inc102 = add i32 %28, 1
  store i32 %inc102, ptr @tests_passed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else101, %do.end98
  %inc106 = add nuw nsw i32 %i.0310, 1
  %exitcond.not = icmp eq i32 %inc106, 16387
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base)
  %cmp107.not = icmp eq i32 %base, 0
  br i1 %cmp107.not, label %for.end.if.end110_crit_edge, label %if.then109

for.end.if.end110_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then109:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef 1)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %for.end.if.end110_crit_edge
  %add = add i32 %base, 1
  call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %add)
  %29 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %next, align 4
  %30 = load i32, ptr @tests_run, align 4
  %inc112 = add i32 %30, 1
  store i32 %inc112, ptr @tests_run, align 4
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i301 = call i32 @__xa_alloc_cyclic(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull inttoptr (i32 -1 to ptr), [2 x i32] [i32 -1, i32 0], ptr noundef nonnull %next, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %cmp115.not = icmp eq i32 %call.i301, 0
  br i1 %cmp115.not, label %if.else123, label %do.end120

do.end120:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 839) #10
  call void @dump_stack() #10
  br label %do.body128

if.else123:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %31 = load i32, ptr @tests_passed, align 4
  %inc124 = add i32 %31, 1
  store i32 %inc124, ptr @tests_passed, align 4
  br label %do.body128

do.body128:                                       ; preds = %if.else123, %do.end120
  %32 = load i32, ptr @tests_run, align 4
  %inc129 = add i32 %32, 1
  store i32 %inc129, ptr @tests_run, align 4
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp130.not = icmp eq i32 %34, -1
  br i1 %cmp130.not, label %if.else138, label %do.end135

do.end135:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 840) #10
  call void @dump_stack() #10
  br label %do.body143

if.else138:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %35 = load i32, ptr @tests_passed, align 4
  %inc139 = add i32 %35, 1
  store i32 %inc139, ptr @tests_passed, align 4
  br label %do.body143

do.body143:                                       ; preds = %if.else138, %do.end135
  %36 = load i32, ptr @tests_run, align 4
  %inc144 = add i32 %36, 1
  store i32 %inc144, ptr @tests_run, align 4
  %and.i302 = shl i32 %base, 1
  %or.i.i303 = or i32 %and.i302, 1
  %37 = inttoptr i32 %or.i.i303 to ptr
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i304 = call i32 @__xa_alloc_cyclic(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull %37, [2 x i32] [i32 -1, i32 0], ptr noundef nonnull %next, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i304)
  %cmp150.not = icmp eq i32 %call.i304, 1
  br i1 %cmp150.not, label %if.else158, label %do.end155

do.end155:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 842) #10
  call void @dump_stack() #10
  br label %do.body163

if.else158:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  %38 = load i32, ptr @tests_passed, align 4
  %inc159 = add i32 %38, 1
  store i32 %inc159, ptr @tests_passed, align 4
  br label %do.body163

do.body163:                                       ; preds = %if.else158, %do.end155
  %39 = load i32, ptr @tests_run, align 4
  %inc164 = add i32 %39, 1
  store i32 %inc164, ptr @tests_run, align 4
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %base)
  %cmp165.not = icmp eq i32 %41, %base
  br i1 %cmp165.not, label %if.else173, label %do.end170

do.end170:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 843) #10
  call void @dump_stack() #10
  br label %do.body178

if.else173:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  %42 = load i32, ptr @tests_passed, align 4
  %inc174 = add i32 %42, 1
  store i32 %inc174, ptr @tests_passed, align 4
  br label %do.body178

do.body178:                                       ; preds = %if.else173, %do.end170
  %43 = load i32, ptr @tests_run, align 4
  %inc179 = add i32 %43, 1
  store i32 %inc179, ptr @tests_run, align 4
  %and.i305 = shl i32 %add, 1
  %or.i.i306 = or i32 %and.i305, 1
  %44 = inttoptr i32 %or.i.i306 to ptr
  call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i307 = call i32 @__xa_alloc_cyclic(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull %44, [2 x i32] [i32 -1, i32 0], ptr noundef nonnull %next, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %cmp186.not = icmp eq i32 %call.i307, 0
  br i1 %cmp186.not, label %if.else194, label %do.end191

do.end191:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #9
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 845) #10
  call void @dump_stack() #10
  br label %do.body199

if.else194:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #9
  %45 = load i32, ptr @tests_passed, align 4
  %inc195 = add i32 %45, 1
  store i32 %inc195, ptr @tests_passed, align 4
  br label %do.body199

do.body199:                                       ; preds = %if.else194, %do.end191
  %46 = load i32, ptr @tests_run, align 4
  %inc200 = add i32 %46, 1
  store i32 %inc200, ptr @tests_run, align 4
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add)
  %cmp202.not = icmp eq i32 %48, %add
  br i1 %cmp202.not, label %if.else210, label %do.end207

do.end207:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  %call209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 846) #10
  call void @dump_stack() #10
  br label %do.end214

if.else210:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  %49 = load i32, ptr @tests_passed, align 4
  %inc211 = add i32 %49, 1
  store i32 %inc211, ptr @tests_passed, align 4
  br label %do.end214

do.end214:                                        ; preds = %if.else210, %do.end207
  %50 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %index, align 4
  %call215 = call ptr @xa_find(ptr noundef %xa, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not311 = icmp eq ptr %call215, null
  br i1 %tobool.not311, label %do.end214.do.body221_crit_edge, label %do.end214.for.body217_crit_edge

do.end214.for.body217_crit_edge:                  ; preds = %do.end214
  br label %for.body217

do.end214.do.body221_crit_edge:                   ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body221

for.body217:                                      ; preds = %for.body217.for.body217_crit_edge, %do.end214.for.body217_crit_edge
  %51 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index, align 4
  call fastcc void @xa_erase_index(ptr noundef %xa, i32 noundef %52)
  %call219 = call ptr @xa_find_after(ptr noundef %xa, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call219, null
  br i1 %tobool.not, label %for.body217.do.body221_crit_edge, label %for.body217.for.body217_crit_edge

for.body217.for.body217_crit_edge:                ; preds = %for.body217
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body217

for.body217.do.body221_crit_edge:                 ; preds = %for.body217
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body221

do.body221:                                       ; preds = %for.body217.do.body221_crit_edge, %do.end214.do.body221_crit_edge
  %53 = load i32, ptr @tests_run, align 4
  %inc222 = add i32 %53, 1
  store i32 %inc222, ptr @tests_run, align 4
  %54 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xa_head.i, align 4
  %cmp.i309 = icmp eq ptr %55, null
  br i1 %cmp.i309, label %if.else230, label %do.end227

do.end227:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #9
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.309, i32 noundef 851) #10
  call void @dump_stack() #10
  br label %do.end234

if.else230:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #9
  %56 = load i32, ptr @tests_passed, align 4
  %inc231 = add i32 %56, 1
  store i32 %inc231, ptr @tests_passed, align 4
  br label %do.end234

do.end234:                                        ; preds = %if.else230, %do.end227
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xa_alloc_index(ptr noundef %xa, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !971
  %1 = load i32, ptr @tests_run, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @tests_run, align 4
  %and.i = shl i32 %index, 1
  %or.i.i = or i32 %and.i, 1
  %2 = inttoptr i32 %or.i.i to ptr
  tail call void @_raw_spin_lock(ptr noundef %xa) #11
  %call.i = call i32 @__xa_alloc(ptr noundef %xa, ptr noundef nonnull %id, ptr noundef nonnull %2, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef %xa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.256, i32 noundef 56) #10
  call void @dump_stack() #10
  br label %do.body7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %3, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.else, %do.end
  %4 = load i32, ptr @tests_run, align 4
  %inc8 = add i32 %4, 1
  store i32 %inc8, ptr @tests_run, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %index)
  %cmp9.not = icmp eq i32 %6, %index
  br i1 %cmp9.not, label %if.else16, label %do.end13

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.256, i32 noundef 57) #10
  call void @dump_stack() #10
  br label %do.end20

if.else16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.end20

do.end20:                                         ; preds = %if.else16, %do.end13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc_cyclic(ptr noundef, ptr noundef, ptr noundef, [2 x i32], ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_find_1() unnamed_addr #2 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1008) #10
  tail call void @dump_stack() #10
  br label %do.body6.preheader

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @tests_passed, align 4
  br label %do.body6.preheader

do.body6.preheader:                               ; preds = %if.else, %do.end
  br label %do.body6

do.body6:                                         ; preds = %for.inc191.do.body6_crit_edge, %do.body6.preheader
  %i.011 = phi i32 [ %inc192, %for.inc191.do.body6_crit_edge ], [ 0, %do.body6.preheader ]
  %3 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %3, 1
  store i32 %inc7, ptr @tests_run, align 4
  %and.i.i = shl nuw nsw i32 %i.011, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %4 = inttoptr i32 %or.i.i.i to ptr
  %call1.i = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %i.011, ptr noundef nonnull %4, i32 noundef 3264) #11
  %cmp9.not = icmp eq ptr %call1.i, null
  br i1 %cmp9.not, label %if.else16, label %do.end13

do.end13:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1015) #10
  call void @dump_stack() #10
  br label %do.end20

if.else16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %5, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.end20

do.end20:                                         ; preds = %if.else16, %do.end13
  call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef %i.011, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011)
  %cmp229.not = icmp eq i32 %i.011, 0
  br i1 %cmp229.not, label %do.end20.for.end176_crit_edge, label %do.end20.do.body24_crit_edge

do.end20.do.body24_crit_edge:                     ; preds = %do.end20
  br label %do.body24

do.end20.for.end176_crit_edge:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end176

do.body24:                                        ; preds = %for.inc174.do.body24_crit_edge, %do.end20.do.body24_crit_edge
  %j.010 = phi i32 [ %inc175, %for.inc174.do.body24_crit_edge ], [ 0, %do.end20.do.body24_crit_edge ]
  %6 = load i32, ptr @tests_run, align 4
  %inc25 = add i32 %6, 1
  store i32 %inc25, ptr @tests_run, align 4
  %and.i.i1 = shl nuw i32 %j.010, 1
  %or.i.i.i2 = or i32 %and.i.i1, 1
  %7 = inttoptr i32 %or.i.i.i2 to ptr
  %call1.i3 = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %j.010, ptr noundef nonnull %7, i32 noundef 3264) #11
  %cmp27.not = icmp eq ptr %call1.i3, null
  br i1 %cmp27.not, label %if.else34, label %do.end31

do.end31:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1019) #10
  call void @dump_stack() #10
  br label %do.end38

if.else34:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @tests_passed, align 4
  %inc35 = add i32 %8, 1
  store i32 %inc35, ptr @tests_passed, align 4
  br label %do.end38

do.end38:                                         ; preds = %if.else34, %do.end31
  call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef %j.010, i32 noundef 0) #11
  br label %for.body41

for.body41:                                       ; preds = %if.end144.for.body41_crit_edge, %do.end38
  %k.07 = phi i32 [ 0, %do.end38 ], [ %inc145, %if.end144.for.body41_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %k.07, ptr %index, align 4
  %call43 = call ptr @xa_find(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %k.07, i32 %j.010)
  %cmp44.not = icmp ugt i32 %k.07, %j.010
  br i1 %cmp44.not, label %if.else60, label %do.body46

do.body46:                                        ; preds = %for.body41
  %10 = load i32, ptr @tests_run, align 4
  %inc47 = add i32 %10, 1
  store i32 %inc47, ptr @tests_run, align 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %j.010)
  %cmp48.not = icmp eq i32 %12, %j.010
  br i1 %cmp48.not, label %if.else55, label %do.end52

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1026) #10
  call void @dump_stack() #10
  br label %do.body97

if.else55:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @tests_passed, align 4
  %inc56 = add i32 %13, 1
  store i32 %inc56, ptr @tests_passed, align 4
  br label %do.body97

if.else60:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_cmp4(i32 %k.07, i32 %i.011)
  %cmp61.not = icmp ugt i32 %k.07, %i.011
  %14 = load i32, ptr @tests_run, align 4
  %inc79 = add i32 %14, 1
  store i32 %inc79, ptr @tests_run, align 4
  br i1 %cmp61.not, label %do.body78, label %do.body63

do.body63:                                        ; preds = %if.else60
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %i.011)
  %cmp65.not = icmp eq i32 %16, %i.011
  br i1 %cmp65.not, label %if.else72, label %do.end69

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1028) #10
  call void @dump_stack() #10
  br label %do.body114

if.else72:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i32, ptr @tests_passed, align 4
  %inc73 = add i32 %17, 1
  store i32 %inc73, ptr @tests_passed, align 4
  br label %do.body114

do.body78:                                        ; preds = %if.else60
  %cmp80.not = icmp eq ptr %call43, null
  br i1 %cmp80.not, label %if.else87, label %do.end84

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1030) #10
  call void @dump_stack() #10
  br label %do.body129

if.else87:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @tests_passed, align 4
  %inc88 = add i32 %18, 1
  store i32 %inc88, ptr @tests_passed, align 4
  br label %do.body129

do.body97:                                        ; preds = %if.else55, %do.end52
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %k.07, ptr %index, align 4
  %call94 = call ptr @xa_find(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #11
  %20 = load i32, ptr @tests_run, align 4
  %inc98 = add i32 %20, 1
  store i32 %inc98, ptr @tests_run, align 4
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %j.010)
  %cmp99.not = icmp eq i32 %22, %j.010
  br i1 %cmp99.not, label %if.else106, label %do.end103

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1036) #10
  call void @dump_stack() #10
  br label %if.end144

if.else106:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %23 = load i32, ptr @tests_passed, align 4
  %inc107 = add i32 %23, 1
  store i32 %inc107, ptr @tests_passed, align 4
  br label %if.end144

do.body114:                                       ; preds = %if.else72, %do.end69
  %24 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %k.07, ptr %index, align 4
  %call945 = call ptr @xa_find(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #11
  %25 = load i32, ptr @tests_run, align 4
  %inc115 = add i32 %25, 1
  store i32 %inc115, ptr @tests_run, align 4
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %i.011)
  %cmp116.not = icmp eq i32 %27, %i.011
  br i1 %cmp116.not, label %if.else123, label %do.end120

do.end120:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1038) #10
  call void @dump_stack() #10
  br label %if.end144

if.else123:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  %28 = load i32, ptr @tests_passed, align 4
  %inc124 = add i32 %28, 1
  store i32 %inc124, ptr @tests_passed, align 4
  br label %if.end144

do.body129:                                       ; preds = %if.else87, %do.end84
  %29 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %k.07, ptr %index, align 4
  %call94515 = call ptr @xa_find(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #11
  %30 = load i32, ptr @tests_run, align 4
  %inc130 = add i32 %30, 1
  store i32 %inc130, ptr @tests_run, align 4
  %cmp131.not = icmp eq ptr %call94515, null
  br i1 %cmp131.not, label %if.else138, label %do.end135

do.end135:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1040) #10
  call void @dump_stack() #10
  br label %if.end144

if.else138:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  %31 = load i32, ptr @tests_passed, align 4
  %inc139 = add i32 %31, 1
  store i32 %inc139, ptr @tests_passed, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.else138, %do.end135, %if.else123, %do.end120, %if.else106, %do.end103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  %inc145 = add nuw nsw i32 %k.07, 1
  %exitcond.not = icmp eq i32 %inc145, 100
  br i1 %exitcond.not, label %for.end, label %if.end144.for.body41_crit_edge

if.end144.for.body41_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

for.end:                                          ; preds = %if.end144
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %j.010)
  %32 = load i32, ptr @tests_run, align 4
  %inc147 = add i32 %32, 1
  store i32 %inc147, ptr @tests_run, align 4
  %call148 = call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %j.010, i32 noundef 0) #11
  br i1 %call148, label %do.end152, label %if.else155

do.end152:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1043) #10
  call void @dump_stack() #10
  br label %do.body160

if.else155:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %33 = load i32, ptr @tests_passed, align 4
  %inc156 = add i32 %33, 1
  store i32 %inc156, ptr @tests_passed, align 4
  br label %do.body160

do.body160:                                       ; preds = %if.else155, %do.end152
  %34 = load i32, ptr @tests_run, align 4
  %inc161 = add i32 %34, 1
  store i32 %inc161, ptr @tests_run, align 4
  %call162 = call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %i.011, i32 noundef 0) #11
  br i1 %call162, label %if.else169, label %do.end166

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1044) #10
  call void @dump_stack() #10
  br label %for.inc174

if.else169:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  %35 = load i32, ptr @tests_passed, align 4
  %inc170 = add i32 %35, 1
  store i32 %inc170, ptr @tests_passed, align 4
  br label %for.inc174

for.inc174:                                       ; preds = %if.else169, %do.end166
  %inc175 = add nuw nsw i32 %j.010, 1
  %exitcond13.not = icmp eq i32 %inc175, %i.011
  br i1 %exitcond13.not, label %for.inc174.for.end176_crit_edge, label %for.inc174.do.body24_crit_edge

for.inc174.do.body24_crit_edge:                   ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

for.inc174.for.end176_crit_edge:                  ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end176

for.end176:                                       ; preds = %for.inc174.for.end176_crit_edge, %do.end20.for.end176_crit_edge
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %i.011)
  %36 = load i32, ptr @tests_run, align 4
  %inc178 = add i32 %36, 1
  store i32 %inc178, ptr @tests_run, align 4
  %call179 = call zeroext i1 @xa_get_mark(ptr noundef nonnull @array, i32 noundef %i.011, i32 noundef 0) #11
  br i1 %call179, label %do.end183, label %if.else186

do.end183:                                        ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #9
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1047) #10
  call void @dump_stack() #10
  br label %for.inc191

if.else186:                                       ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #9
  %37 = load i32, ptr @tests_passed, align 4
  %inc187 = add i32 %37, 1
  store i32 %inc187, ptr @tests_passed, align 4
  br label %for.inc191

for.inc191:                                       ; preds = %if.else186, %do.end183
  %inc192 = add nuw nsw i32 %i.011, 1
  %exitcond14.not = icmp eq i32 %inc192, 100
  br i1 %exitcond14.not, label %do.body194, label %for.inc191.do.body6_crit_edge

for.inc191.do.body6_crit_edge:                    ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.body194:                                       ; preds = %for.inc191
  %38 = load i32, ptr @tests_run, align 4
  %inc195 = add i32 %38, 1
  store i32 %inc195, ptr @tests_run, align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i4 = icmp eq ptr %39, null
  br i1 %cmp.i4, label %if.else203, label %do.end200

do.end200:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #9
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.336, i32 noundef 1049) #10
  call void @dump_stack() #10
  br label %do.end207

if.else203:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #9
  %40 = load i32, ptr @tests_passed, align 4
  %inc204 = add i32 %40, 1
  store i32 %inc204, ptr @tests_passed, align 4
  br label %do.end207

do.end207:                                        ; preds = %if.else203, %do.end200
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_find_2() unnamed_addr #2 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  %call = call ptr @xa_find(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not1 = icmp eq ptr %call, null
  br i1 %tobool.not1, label %entry.for.body8.preheader_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.body8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.preheader

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %1 = load i32, ptr @tests_run, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @tests_run, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.361, i32 noundef 1058) #10
  call void @dump_stack() #10
  %call6 = call ptr @xa_find_after(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.body.for.body8.preheader_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body.for.body8.preheader_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.preheader

for.body8.preheader:                              ; preds = %do.body.for.body8.preheader_crit_edge, %entry.for.body8.preheader_crit_edge
  br label %for.body8

for.body8:                                        ; preds = %for.inc44.for.body8_crit_edge, %for.body8.preheader
  %i.05 = phi i32 [ %inc45, %for.inc44.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %and.i.i = shl i32 %3, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %4 = inttoptr i32 %or.i.i.i to ptr
  %call1.i = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %3, ptr noundef nonnull %4, i32 noundef 3264) #11
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %index, align 4
  %call10 = call ptr @xa_find(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool12.not2 = icmp eq ptr %call10, null
  br i1 %tobool12.not2, label %for.body8.for.inc44_crit_edge, label %for.body8.do.body14_crit_edge

for.body8.do.body14_crit_edge:                    ; preds = %for.body8
  br label %do.body14

for.body8.for.inc44_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc44

do.body14:                                        ; preds = %for.inc41.do.body14_crit_edge, %for.body8.do.body14_crit_edge
  %entry1.14 = phi ptr [ %call42, %for.inc41.do.body14_crit_edge ], [ %call10, %for.body8.do.body14_crit_edge ]
  %j.03 = phi i32 [ %inc28, %for.inc41.do.body14_crit_edge ], [ 0, %for.body8.do.body14_crit_edge ]
  %6 = load i32, ptr @tests_run, align 4
  %inc15 = add i32 %6, 1
  store i32 %inc15, ptr @tests_run, align 4
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %and.i = shl i32 %8, 1
  %or.i.i = or i32 %and.i, 1
  %9 = inttoptr i32 %or.i.i to ptr
  %cmp17.not = icmp eq ptr %entry1.14, %9
  br i1 %cmp17.not, label %if.else, label %do.end20

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.361, i32 noundef 1065) #10
  call void @dump_stack() #10
  br label %do.body26

if.else:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load i32, ptr @tests_passed, align 4
  %inc23 = add i32 %10, 1
  store i32 %inc23, ptr @tests_passed, align 4
  br label %do.body26

do.body26:                                        ; preds = %if.else, %do.end20
  %11 = load i32, ptr @tests_run, align 4
  %inc27 = add i32 %11, 1
  store i32 %inc27, ptr @tests_run, align 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %inc28 = add i32 %j.03, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %j.03)
  %cmp29.not = icmp eq i32 %13, %j.03
  br i1 %cmp29.not, label %if.else36, label %do.end33

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.361, i32 noundef 1066) #10
  call void @dump_stack() #10
  br label %for.inc41

if.else36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i32, ptr @tests_passed, align 4
  %inc37 = add i32 %14, 1
  store i32 %inc37, ptr @tests_passed, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %if.else36, %do.end33
  %call42 = call ptr @xa_find_after(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool12.not = icmp eq ptr %call42, null
  br i1 %tobool12.not, label %for.inc41.for.inc44_crit_edge, label %for.inc41.do.body14_crit_edge

for.inc41.do.body14_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

for.inc41.for.inc44_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc44

for.inc44:                                        ; preds = %for.inc41.for.inc44_crit_edge, %for.body8.for.inc44_crit_edge
  %inc45 = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc45, 1024
  br i1 %exitcond.not, label %for.end46, label %for.inc44.for.body8_crit_edge

for.inc44.for.body8_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.end46:                                        ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #9
  call void @xa_destroy(ptr noundef nonnull @array) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_find_3() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %4 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @array, ptr %xas, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.end27.for.cond3.preheader_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc30, %for.end27.for.cond3.preheader_crit_edge ]
  br label %for.body5

for.body5:                                        ; preds = %rcu_read_unlock.exit.for.body5_crit_edge, %for.cond3.preheader
  %j.014 = phi i32 [ 0, %for.cond3.preheader ], [ %inc26, %rcu_read_unlock.exit.for.body5_crit_edge ]
  %9 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body5.for.body8.preheader_crit_edge, label %land.lhs.true.i

for.body5.for.body8.preheader_crit_edge:          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.preheader

land.lhs.true.i:                                  ; preds = %for.body5
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body8.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.body8.preheader_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.for.body8.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.for.body8.preheader_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %for.body8.preheader

for.body8.preheader:                              ; preds = %if.then.i, %land.lhs.true2.i.for.body8.preheader_crit_edge, %land.lhs.true.i.for.body8.preheader_crit_edge, %for.body5.for.body8.preheader_crit_edge
  br label %for.body8

for.body8:                                        ; preds = %for.inc22.for.body8_crit_edge, %for.body8.preheader
  %k.012 = phi i32 [ %inc23, %for.inc22.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %j.014, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %call = call ptr @xas_find_marked(ptr noundef nonnull %xas, i32 noundef %k.012, i32 noundef 0) #11
  %tobool.not11 = icmp eq ptr %call, null
  br i1 %tobool.not11, label %for.body8.for.end_crit_edge, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  br label %for.inc

for.body8.for.end_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  %call11 = call fastcc ptr @xas_next_marked(ptr noundef nonnull %xas, i32 noundef %k.012)
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body8.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %j.014, i32 %k.012)
  %cmp12 = icmp ugt i32 %j.014, %k.012
  br i1 %cmp12, label %do.body, label %for.end.for.inc22_crit_edge

for.end.for.inc22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

do.body:                                          ; preds = %for.end
  %15 = load i32, ptr @tests_run, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @tests_run, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %cmp14.not = icmp eq ptr %17, inttoptr (i32 3 to ptr)
  br i1 %cmp14.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.366, i32 noundef 1088) #10
  call void @dump_stack() #10
  br label %for.inc22

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @tests_passed, align 4
  %inc18 = add i32 %18, 1
  store i32 %inc18, ptr @tests_passed, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %if.else, %do.end, %for.end.for.inc22_crit_edge
  %inc23 = add nuw nsw i32 %k.012, 1
  %exitcond.not = icmp eq i32 %inc23, 100
  br i1 %exitcond.not, label %for.end24, label %for.inc22.for.body8_crit_edge

for.inc22.for.body8_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.end24:                                        ; preds = %for.inc22
  %call.i1 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i1, label %for.end24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

for.end24.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %for.end24
  %call1.i2 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %for.end24.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %19 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i8 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc26 = add nuw nsw i32 %j.014, 1
  %exitcond16.not = icmp eq i32 %inc26, 100
  br i1 %exitcond16.not, label %for.end27, label %rcu_read_unlock.exit.for.body5_crit_edge

rcu_read_unlock.exit.for.body5_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.end27:                                        ; preds = %rcu_read_unlock.exit
  %and.i.i = shl nuw i32 %i.015, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %23 = inttoptr i32 %or.i.i.i to ptr
  %call1.i10 = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %i.015, ptr noundef nonnull %23, i32 noundef 3264) #11
  call void @xa_set_mark(ptr noundef nonnull @array, i32 noundef %i.015, i32 noundef 0) #11
  %inc30 = add nuw nsw i32 %i.015, 1
  %exitcond17.not = icmp eq i32 %inc30, 100
  br i1 %exitcond17.not, label %for.end31, label %for.end27.for.cond3.preheader_crit_edge

for.end27.for.cond3.preheader_crit_edge:          ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader

for.end31:                                        ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void @xa_destroy(ptr noundef nonnull @array) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_find_4() unnamed_addr #2 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef -1, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef 3264) #11
  %call2 = call ptr @xa_find_after(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %1 = load i32, ptr @tests_run, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @tests_run, align 4
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.367, i32 noundef 1106) #10
  call void @dump_stack() #10
  br label %do.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc6 = add i32 %2, 1
  store i32 %inc6, ptr @tests_passed, align 4
  br label %do.end8

do.end8:                                          ; preds = %if.else, %do.end
  %call9 = call ptr @xa_find_after(ptr noundef nonnull @array, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %3 = load i32, ptr @tests_run, align 4
  %inc11 = add i32 %3, 1
  store i32 %inc11, ptr @tests_run, align 4
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.else18, label %do.end15

do.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.367, i32 noundef 1109) #10
  call void @dump_stack() #10
  br label %do.end22

if.else18:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @tests_passed, align 4
  %inc19 = add i32 %4, 1
  store i32 %inc19, ptr @tests_passed, align 4
  br label %do.end22

do.end22:                                         ; preds = %if.else18, %do.end15
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef -1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_multi_find_2() unnamed_addr #2 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @array, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %call1.i1 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #11
  %11 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %14 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %15 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %16 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @array, ptr %xas.i, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %12, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 3 to ptr), ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %15, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %22 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_lock(ptr noundef %23) #11
  %call.i2 = call ptr @xas_store(ptr noundef nonnull %xas.i, ptr noundef nonnull inttoptr (i32 3 to ptr)) #11
  %24 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock(ptr noundef %25) #11
  %call10.i = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas.i, i32 noundef 3264) #11
  br i1 %call10.i, label %do.body.i.do.body.i_crit_edge, label %xa_store_order.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

xa_store_order.exit:                              ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #11
  %26 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %xa_store_order.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

xa_store_order.exit.rcu_read_lock.exit_crit_edge: ; preds = %xa_store_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %xa_store_order.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %xa_store_order.exit.rcu_read_lock.exit_crit_edge
  %call8 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %tobool.not12 = icmp eq ptr %call8, null
  br i1 %tobool.not12, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body10_crit_edge

rcu_read_lock.exit.for.body10_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %for.body10

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %rcu_read_lock.exit.for.body10_crit_edge
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 1)
  %call11 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.body10.for.end_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i3 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %for.end
  %call1.i4 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %30 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i10 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 0)
  %34 = load i32, ptr @tests_run, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr @tests_run, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %35, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.370, i32 noundef 985) #10
  call void @dump_stack() #10
  br label %do.end18

if.else:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = load i32, ptr @tests_passed, align 4
  %inc16 = add i32 %36, 1
  store i32 %inc16, ptr @tests_passed, align 4
  br label %do.end18

do.end18:                                         ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xa_find_entry(ptr noundef readnone %item) unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %4 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @array, ptr %xas, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %tobool.not22 = icmp eq ptr %call, null
  br i1 %tobool.not22, label %rcu_read_lock.exit.cond.end.critedge_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.cond.end.critedge_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %entry2.024 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call, %rcu_read_lock.exit.for.body_crit_edge ]
  %checked.023 = phi i32 [ %checked.1, %for.inc.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %magicptr.i = ptrtoint ptr %entry2.024 to i32
  %13 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.551)
  switch i32 %magicptr.i, label %if.end [
    i32 1030, label %for.body.for.inc_crit_edge
    i32 1026, label %if.end4.i
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cmp = icmp eq ptr %entry2.024, %item
  br i1 %cmp, label %cond.true.critedge, label %if.end5

if.end5:                                          ; preds = %if.end
  %inc = add i32 %checked.023, 1
  %rem = and i32 %inc, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp6.not = icmp eq i32 %rem, 0
  br i1 %cmp6.not, label %if.end8, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @xas_pause(ptr noundef nonnull %xas) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.end5.for.inc_crit_edge, %if.end4.i, %for.body.for.inc_crit_edge
  %checked.1 = phi i32 [ %inc, %if.end5.for.inc_crit_edge ], [ %inc, %if.end8 ], [ %checked.023, %if.end4.i ], [ %checked.023, %for.body.for.inc_crit_edge ]
  %call9 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %for.inc.cond.end.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cond.end.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.critedge

cond.true.critedge:                               ; preds = %if.end
  %call.i1 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i1, label %cond.true.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

cond.true.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %cond.true.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %cond.true.critedge
  %call1.i2 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %cond.true.critedge.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %15 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i8 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  br label %cond.end

cond.end.critedge:                                ; preds = %for.inc.cond.end.critedge_crit_edge, %rcu_read_lock.exit.cond.end.critedge_crit_edge
  %call.i10 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %cond.end.critedge.rcu_read_unlock.exit20_crit_edge, label %land.lhs.true.i13

cond.end.critedge.rcu_read_unlock.exit20_crit_edge: ; preds = %cond.end.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit20

land.lhs.true.i13:                                ; preds = %cond.end.critedge
  %call1.i11 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit20_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit20_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit20

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit20_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit20_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit20

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit20

rcu_read_unlock.exit20:                           ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit20_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit20_crit_edge, %cond.end.critedge.rcu_read_unlock.exit20_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %21 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i17 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i19 = add i32 %24, -1
  store volatile i32 %sub.i.i.i19, ptr %preempt_count.i.i.i.i18, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cond.end

cond.end:                                         ; preds = %rcu_read_unlock.exit20, %rcu_read_unlock.exit
  %cond = phi i32 [ %20, %rcu_read_unlock.exit ], [ -1, %rcu_read_unlock.exit20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_move_tiny() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @array, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %0, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %10 = load i32, ptr @tests_run, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @tests_run, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1224) #10
  tail call void @dump_stack() #10
  br label %do.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %12, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.end6

do.end6:                                          ; preds = %if.else, %do.end
  %13 = tail call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end6.rcu_read_lock.exit_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end6.rcu_read_lock.exit_crit_edge
  %17 = load i32, ptr @tests_run, align 4
  %inc8 = add i32 %17, 1
  store i32 %inc8, ptr @tests_run, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i.i = icmp eq ptr %19, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %rcu_read_lock.exit.if.then.i14_crit_edge, label %lor.lhs.false.i, !prof !972

rcu_read_lock.exit.if.then.i14_crit_edge:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i14

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i12 = icmp eq i8 %22, 0
  br i1 %tobool.not.i12, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i14_crit_edge, !prof !973

lor.lhs.false.i.if.then.i14_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i14

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %24)
  %cmp.i13 = icmp eq i8 %24, 63
  br i1 %cmp.i13, label %lor.rhs.i.if.then.i14_crit_edge, label %if.end.i, !prof !972

lor.rhs.i.if.then.i14_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i14

if.then.i14:                                      ; preds = %lor.rhs.i.if.then.i14_crit_edge, %lor.lhs.false.i.if.then.i14_crit_edge, %rcu_read_lock.exit.if.then.i14_crit_edge
  %call5.i = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit

if.end.i:                                         ; preds = %lor.rhs.i
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %0, align 4
  %inc7.i = add i8 %24, 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %inc7.i, ptr %1, align 2
  %28 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %inc7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %19, i32 0, i32 7, i32 %conv9.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 1
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i20.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i20.i, label %lor.lhs.false.i.i, label %if.end.i.xas_next.exit_crit_edge

if.end.i.xas_next.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call4.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_next.exit_crit_edge

lor.lhs.false.i.i.xas_next.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xas_next.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xas_next.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_next.exit_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xas_next.exit_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit

xas_next.exit:                                    ; preds = %if.then.i.i, %land.lhs.true8.i.i.xas_next.exit_crit_edge, %land.lhs.true.i.i.xas_next.exit_crit_edge, %lor.lhs.false.i.i.xas_next.exit_crit_edge, %if.end.i.xas_next.exit_crit_edge, %if.then.i14
  %retval.0.i = phi ptr [ %call5.i, %if.then.i14 ], [ %31, %if.end.i.xas_next.exit_crit_edge ], [ %31, %lor.lhs.false.i.i.xas_next.exit_crit_edge ], [ %31, %land.lhs.true.i.i.xas_next.exit_crit_edge ], [ %31, %land.lhs.true8.i.i.xas_next.exit_crit_edge ], [ %31, %if.then.i.i ]
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %if.else16, label %do.end13

do.end13:                                         ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1226) #10
  call void @dump_stack() #10
  br label %do.body21

if.else16:                                        ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = load i32, ptr @tests_passed, align 4
  %inc17 = add i32 %32, 1
  store i32 %inc17, ptr @tests_passed, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.else16, %do.end13
  %33 = load i32, ptr @tests_run, align 4
  %inc22 = add i32 %33, 1
  store i32 %inc22, ptr @tests_run, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i16 = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16)
  %tobool.not.i.i17 = icmp ne i32 %and.i.i16, 0
  %tobool1.not.i.i18 = icmp eq ptr %35, null
  %spec.select.i.i19 = or i1 %tobool1.not.i.i18, %tobool.not.i.i17
  br i1 %spec.select.i.i19, label %do.body21.if.then.i26_crit_edge, label %lor.lhs.false.i21, !prof !972

do.body21.if.then.i26_crit_edge:                  ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i26

lor.lhs.false.i21:                                ; preds = %do.body21
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i20 = icmp eq i8 %38, 0
  br i1 %tobool.not.i20, label %lor.rhs.i24, label %lor.lhs.false.i21.if.then.i26_crit_edge, !prof !973

lor.lhs.false.i21.if.then.i26_crit_edge:          ; preds = %lor.lhs.false.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i26

lor.rhs.i24:                                      ; preds = %lor.lhs.false.i21
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %40)
  %cmp.i23 = icmp eq i8 %40, 63
  br i1 %cmp.i23, label %lor.rhs.i24.if.then.i26_crit_edge, label %if.end.i35, !prof !972

lor.rhs.i24.if.then.i26_crit_edge:                ; preds = %lor.rhs.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i26

if.then.i26:                                      ; preds = %lor.rhs.i24.if.then.i26_crit_edge, %lor.lhs.false.i21.if.then.i26_crit_edge, %do.body21.if.then.i26_crit_edge
  %call5.i25 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit46

if.end.i35:                                       ; preds = %lor.rhs.i24
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %0, align 4
  %inc.i28 = add i32 %42, 1
  store i32 %inc.i28, ptr %0, align 4
  %inc7.i29 = add i8 %40, 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %inc7.i29, ptr %1, align 2
  %44 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xas, align 4
  %conv9.i30 = zext i8 %inc7.i29 to i32
  %arrayidx.i.i31 = getelementptr %struct.xa_node, ptr %35, i32 0, i32 7, i32 %conv9.i30
  %46 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx.i.i31, align 4
  %dep_map.i.i32 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 1
  %call.i.i.i33 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i32, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33)
  %tobool.not.i20.i34 = icmp eq i32 %call.i.i.i33, 0
  br i1 %tobool.not.i20.i34, label %lor.lhs.false.i.i38, label %if.end.i35.xas_next.exit46_crit_edge

if.end.i35.xas_next.exit46_crit_edge:             ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit46

lor.lhs.false.i.i38:                              ; preds = %if.end.i35
  %call4.i.i36 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i36)
  %tobool5.not.i.i37 = icmp eq i32 %call4.i.i36, 0
  br i1 %tobool5.not.i.i37, label %land.lhs.true.i.i41, label %lor.lhs.false.i.i38.xas_next.exit46_crit_edge

lor.lhs.false.i.i38.xas_next.exit46_crit_edge:    ; preds = %lor.lhs.false.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit46

land.lhs.true.i.i41:                              ; preds = %lor.lhs.false.i.i38
  %call6.i.i39 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i39)
  %tobool7.not.i.i40 = icmp eq i32 %call6.i.i39, 0
  br i1 %tobool7.not.i.i40, label %land.lhs.true.i.i41.xas_next.exit46_crit_edge, label %land.lhs.true8.i.i43

land.lhs.true.i.i41.xas_next.exit46_crit_edge:    ; preds = %land.lhs.true.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit46

land.lhs.true8.i.i43:                             ; preds = %land.lhs.true.i.i41
  %.b13.i.i42 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i42, label %land.lhs.true8.i.i43.xas_next.exit46_crit_edge, label %if.then.i.i44

land.lhs.true8.i.i43.xas_next.exit46_crit_edge:   ; preds = %land.lhs.true8.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit46

if.then.i.i44:                                    ; preds = %land.lhs.true8.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit46

xas_next.exit46:                                  ; preds = %if.then.i.i44, %land.lhs.true8.i.i43.xas_next.exit46_crit_edge, %land.lhs.true.i.i41.xas_next.exit46_crit_edge, %lor.lhs.false.i.i38.xas_next.exit46_crit_edge, %if.end.i35.xas_next.exit46_crit_edge, %if.then.i26
  %retval.0.i45 = phi ptr [ %call5.i25, %if.then.i26 ], [ %47, %if.end.i35.xas_next.exit46_crit_edge ], [ %47, %lor.lhs.false.i.i38.xas_next.exit46_crit_edge ], [ %47, %land.lhs.true.i.i41.xas_next.exit46_crit_edge ], [ %47, %land.lhs.true8.i.i43.xas_next.exit46_crit_edge ], [ %47, %if.then.i.i44 ]
  %cmp24.not = icmp eq ptr %retval.0.i45, null
  br i1 %cmp24.not, label %if.else31, label %do.end28

do.end28:                                         ; preds = %xas_next.exit46
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1227) #10
  call void @dump_stack() #10
  br label %do.end35

if.else31:                                        ; preds = %xas_next.exit46
  call void @__sanitizer_cov_trace_pc() #9
  %48 = load i32, ptr @tests_passed, align 4
  %inc32 = add i32 %48, 1
  store i32 %inc32, ptr @tests_passed, align 4
  br label %do.end35

do.end35:                                         ; preds = %if.else31, %do.end28
  %call.i47 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i47, label %do.end35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

do.end35.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %do.end35
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %do.end35.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %49 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i54 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call1.i56 = call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  %53 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i1 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %preempt_count.i.i.i.i2 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i2, align 4
  %add.i.i.i3 = add i32 %56, 1
  store volatile i32 %add.i.i.i3, ptr %preempt_count.i.i.i.i2, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i4 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4, label %rcu_read_unlock.exit.xas_next.exit90_crit_edge, label %land.lhs.true.i7

rcu_read_unlock.exit.xas_next.exit90_crit_edge:   ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit90

land.lhs.true.i7:                                 ; preds = %rcu_read_unlock.exit
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.xas_next.exit90_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.xas_next.exit90_crit_edge:       ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit90

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.xas_next.exit90_crit_edge, label %if.then.i10

land.lhs.true2.i9.xas_next.exit90_crit_edge:      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit90

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %xas_next.exit90

xas_next.exit90:                                  ; preds = %if.then.i10, %land.lhs.true2.i9.xas_next.exit90_crit_edge, %land.lhs.true.i7.xas_next.exit90_crit_edge, %rcu_read_unlock.exit.xas_next.exit90_crit_edge
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %0, align 4
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %59 = load i32, ptr @tests_run, align 4
  %inc38 = add i32 %59, 1
  store i32 %inc38, ptr @tests_run, align 4
  %call5.i69 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  %cmp41.not = icmp eq ptr %call5.i69, inttoptr (i32 1 to ptr)
  br i1 %cmp41.not, label %if.else48, label %do.end45

do.end45:                                         ; preds = %xas_next.exit90
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1232) #10
  call void @dump_stack() #10
  br label %do.body53

if.else48:                                        ; preds = %xas_next.exit90
  call void @__sanitizer_cov_trace_pc() #9
  %60 = load i32, ptr @tests_passed, align 4
  %inc49 = add i32 %60, 1
  store i32 %inc49, ptr @tests_passed, align 4
  br label %do.body53

do.body53:                                        ; preds = %if.else48, %do.end45
  %61 = load i32, ptr @tests_run, align 4
  %inc54 = add i32 %61, 1
  store i32 %inc54, ptr @tests_run, align 4
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %2, align 4
  %64 = ptrtoint ptr %63 to i32
  %and.i.i92 = and i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92)
  %tobool.not.i.i93 = icmp ne i32 %and.i.i92, 0
  %tobool1.not.i.i94 = icmp eq ptr %63, null
  %spec.select.i.i95 = or i1 %tobool1.not.i.i94, %tobool.not.i.i93
  br i1 %spec.select.i.i95, label %do.body53.if.then.i102_crit_edge, label %lor.lhs.false.i97, !prof !972

do.body53.if.then.i102_crit_edge:                 ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i102

lor.lhs.false.i97:                                ; preds = %do.body53
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i96 = icmp eq i8 %66, 0
  br i1 %tobool.not.i96, label %lor.rhs.i100, label %lor.lhs.false.i97.if.then.i102_crit_edge, !prof !973

lor.lhs.false.i97.if.then.i102_crit_edge:         ; preds = %lor.lhs.false.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i102

lor.rhs.i100:                                     ; preds = %lor.lhs.false.i97
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %68)
  %cmp.i99 = icmp eq i8 %68, 63
  br i1 %cmp.i99, label %lor.rhs.i100.if.then.i102_crit_edge, label %if.end.i111, !prof !972

lor.rhs.i100.if.then.i102_crit_edge:              ; preds = %lor.rhs.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i102

if.then.i102:                                     ; preds = %lor.rhs.i100.if.then.i102_crit_edge, %lor.lhs.false.i97.if.then.i102_crit_edge, %do.body53.if.then.i102_crit_edge
  %call5.i101 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit122

if.end.i111:                                      ; preds = %lor.rhs.i100
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %0, align 4
  %inc.i104 = add i32 %70, 1
  store i32 %inc.i104, ptr %0, align 4
  %inc7.i105 = add i8 %68, 1
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %inc7.i105, ptr %1, align 2
  %72 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xas, align 4
  %conv9.i106 = zext i8 %inc7.i105 to i32
  %arrayidx.i.i107 = getelementptr %struct.xa_node, ptr %63, i32 0, i32 7, i32 %conv9.i106
  %74 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %arrayidx.i.i107, align 4
  %dep_map.i.i108 = getelementptr inbounds %struct.anon, ptr %73, i32 0, i32 1
  %call.i.i.i109 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i108, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i109)
  %tobool.not.i20.i110 = icmp eq i32 %call.i.i.i109, 0
  br i1 %tobool.not.i20.i110, label %lor.lhs.false.i.i114, label %if.end.i111.xas_next.exit122_crit_edge

if.end.i111.xas_next.exit122_crit_edge:           ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit122

lor.lhs.false.i.i114:                             ; preds = %if.end.i111
  %call4.i.i112 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i112)
  %tobool5.not.i.i113 = icmp eq i32 %call4.i.i112, 0
  br i1 %tobool5.not.i.i113, label %land.lhs.true.i.i117, label %lor.lhs.false.i.i114.xas_next.exit122_crit_edge

lor.lhs.false.i.i114.xas_next.exit122_crit_edge:  ; preds = %lor.lhs.false.i.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit122

land.lhs.true.i.i117:                             ; preds = %lor.lhs.false.i.i114
  %call6.i.i115 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i115)
  %tobool7.not.i.i116 = icmp eq i32 %call6.i.i115, 0
  br i1 %tobool7.not.i.i116, label %land.lhs.true.i.i117.xas_next.exit122_crit_edge, label %land.lhs.true8.i.i119

land.lhs.true.i.i117.xas_next.exit122_crit_edge:  ; preds = %land.lhs.true.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit122

land.lhs.true8.i.i119:                            ; preds = %land.lhs.true.i.i117
  %.b13.i.i118 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i118, label %land.lhs.true8.i.i119.xas_next.exit122_crit_edge, label %if.then.i.i120

land.lhs.true8.i.i119.xas_next.exit122_crit_edge: ; preds = %land.lhs.true8.i.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit122

if.then.i.i120:                                   ; preds = %land.lhs.true8.i.i119
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit122

xas_next.exit122:                                 ; preds = %if.then.i.i120, %land.lhs.true8.i.i119.xas_next.exit122_crit_edge, %land.lhs.true.i.i117.xas_next.exit122_crit_edge, %lor.lhs.false.i.i114.xas_next.exit122_crit_edge, %if.end.i111.xas_next.exit122_crit_edge, %if.then.i102
  %retval.0.i121 = phi ptr [ %call5.i101, %if.then.i102 ], [ %75, %if.end.i111.xas_next.exit122_crit_edge ], [ %75, %lor.lhs.false.i.i114.xas_next.exit122_crit_edge ], [ %75, %land.lhs.true.i.i117.xas_next.exit122_crit_edge ], [ %75, %land.lhs.true8.i.i119.xas_next.exit122_crit_edge ], [ %75, %if.then.i.i120 ]
  %cmp56.not = icmp eq ptr %retval.0.i121, null
  br i1 %cmp56.not, label %if.else63, label %do.end60

do.end60:                                         ; preds = %xas_next.exit122
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1233) #10
  call void @dump_stack() #10
  br label %xas_prev.exit

if.else63:                                        ; preds = %xas_next.exit122
  call void @__sanitizer_cov_trace_pc() #9
  %76 = load i32, ptr @tests_passed, align 4
  %inc64 = add i32 %76, 1
  store i32 %inc64, ptr @tests_passed, align 4
  br label %xas_prev.exit

xas_prev.exit:                                    ; preds = %if.else63, %do.end60
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %0, align 4
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %79 = load i32, ptr @tests_run, align 4
  %inc69 = add i32 %79, 1
  store i32 %inc69, ptr @tests_run, align 4
  %call5.i135 = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  %cmp72.not = icmp eq ptr %call5.i135, inttoptr (i32 1 to ptr)
  br i1 %cmp72.not, label %if.else79, label %do.end76

do.end76:                                         ; preds = %xas_prev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1235) #10
  call void @dump_stack() #10
  br label %do.body84

if.else79:                                        ; preds = %xas_prev.exit
  call void @__sanitizer_cov_trace_pc() #9
  %80 = load i32, ptr @tests_passed, align 4
  %inc80 = add i32 %80, 1
  store i32 %inc80, ptr @tests_passed, align 4
  br label %do.body84

do.body84:                                        ; preds = %if.else79, %do.end76
  %81 = load i32, ptr @tests_run, align 4
  %inc85 = add i32 %81, 1
  store i32 %inc85, ptr @tests_run, align 4
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %2, align 4
  %84 = ptrtoint ptr %83 to i32
  %and.i.i155 = and i32 %84, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i155)
  %tobool.not.i.i156 = icmp ne i32 %and.i.i155, 0
  %tobool1.not.i.i157 = icmp eq ptr %83, null
  %spec.select.i.i158 = or i1 %tobool1.not.i.i157, %tobool.not.i.i156
  br i1 %spec.select.i.i158, label %do.body84.if.then.i165_crit_edge, label %lor.lhs.false.i160, !prof !972

do.body84.if.then.i165_crit_edge:                 ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i165

lor.lhs.false.i160:                               ; preds = %do.body84
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %83, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i159 = icmp eq i8 %86, 0
  br i1 %tobool.not.i159, label %lor.rhs.i163, label %lor.lhs.false.i160.if.then.i165_crit_edge, !prof !973

lor.lhs.false.i160.if.then.i165_crit_edge:        ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i165

lor.rhs.i163:                                     ; preds = %lor.lhs.false.i160
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp.i162 = icmp eq i8 %88, 0
  br i1 %cmp.i162, label %lor.rhs.i163.if.then.i165_crit_edge, label %if.end.i174, !prof !972

lor.rhs.i163.if.then.i165_crit_edge:              ; preds = %lor.rhs.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i165

if.then.i165:                                     ; preds = %lor.rhs.i163.if.then.i165_crit_edge, %lor.lhs.false.i160.if.then.i165_crit_edge, %do.body84.if.then.i165_crit_edge
  %call5.i164 = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  br label %xas_prev.exit185

if.end.i174:                                      ; preds = %lor.rhs.i163
  %89 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %0, align 4
  %dec.i167 = add i32 %90, -1
  store i32 %dec.i167, ptr %0, align 4
  %dec7.i168 = add i8 %88, -1
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %dec7.i168, ptr %1, align 2
  %92 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xas, align 4
  %conv9.i169 = zext i8 %dec7.i168 to i32
  %arrayidx.i.i170 = getelementptr %struct.xa_node, ptr %83, i32 0, i32 7, i32 %conv9.i169
  %94 = ptrtoint ptr %arrayidx.i.i170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %arrayidx.i.i170, align 4
  %dep_map.i.i171 = getelementptr inbounds %struct.anon, ptr %93, i32 0, i32 1
  %call.i.i.i172 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i171, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i172)
  %tobool.not.i20.i173 = icmp eq i32 %call.i.i.i172, 0
  br i1 %tobool.not.i20.i173, label %lor.lhs.false.i.i177, label %if.end.i174.xas_prev.exit185_crit_edge

if.end.i174.xas_prev.exit185_crit_edge:           ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit185

lor.lhs.false.i.i177:                             ; preds = %if.end.i174
  %call4.i.i175 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i175)
  %tobool5.not.i.i176 = icmp eq i32 %call4.i.i175, 0
  br i1 %tobool5.not.i.i176, label %land.lhs.true.i.i180, label %lor.lhs.false.i.i177.xas_prev.exit185_crit_edge

lor.lhs.false.i.i177.xas_prev.exit185_crit_edge:  ; preds = %lor.lhs.false.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit185

land.lhs.true.i.i180:                             ; preds = %lor.lhs.false.i.i177
  %call6.i.i178 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i178)
  %tobool7.not.i.i179 = icmp eq i32 %call6.i.i178, 0
  br i1 %tobool7.not.i.i179, label %land.lhs.true.i.i180.xas_prev.exit185_crit_edge, label %land.lhs.true8.i.i182

land.lhs.true.i.i180.xas_prev.exit185_crit_edge:  ; preds = %land.lhs.true.i.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit185

land.lhs.true8.i.i182:                            ; preds = %land.lhs.true.i.i180
  %.b13.i.i181 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i181, label %land.lhs.true8.i.i182.xas_prev.exit185_crit_edge, label %if.then.i.i183

land.lhs.true8.i.i182.xas_prev.exit185_crit_edge: ; preds = %land.lhs.true8.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit185

if.then.i.i183:                                   ; preds = %land.lhs.true8.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_prev.exit185

xas_prev.exit185:                                 ; preds = %if.then.i.i183, %land.lhs.true8.i.i182.xas_prev.exit185_crit_edge, %land.lhs.true.i.i180.xas_prev.exit185_crit_edge, %lor.lhs.false.i.i177.xas_prev.exit185_crit_edge, %if.end.i174.xas_prev.exit185_crit_edge, %if.then.i165
  %retval.0.i184 = phi ptr [ %call5.i164, %if.then.i165 ], [ %95, %if.end.i174.xas_prev.exit185_crit_edge ], [ %95, %lor.lhs.false.i.i177.xas_prev.exit185_crit_edge ], [ %95, %land.lhs.true.i.i180.xas_prev.exit185_crit_edge ], [ %95, %land.lhs.true8.i.i182.xas_prev.exit185_crit_edge ], [ %95, %if.then.i.i183 ]
  %cmp87.not = icmp eq ptr %retval.0.i184, null
  br i1 %cmp87.not, label %if.else94, label %do.end91

do.end91:                                         ; preds = %xas_prev.exit185
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1236) #10
  call void @dump_stack() #10
  br label %do.end98

if.else94:                                        ; preds = %xas_prev.exit185
  call void @__sanitizer_cov_trace_pc() #9
  %96 = load i32, ptr @tests_passed, align 4
  %inc95 = add i32 %96, 1
  store i32 %inc95, ptr @tests_passed, align 4
  br label %do.end98

do.end98:                                         ; preds = %if.else94, %do.end91
  %call.i186 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i186, label %do.end98.rcu_read_unlock.exit196_crit_edge, label %land.lhs.true.i189

do.end98.rcu_read_unlock.exit196_crit_edge:       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit196

land.lhs.true.i189:                               ; preds = %do.end98
  %call1.i187 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i187)
  %tobool.not.i188 = icmp eq i32 %call1.i187, 0
  br i1 %tobool.not.i188, label %land.lhs.true.i189.rcu_read_unlock.exit196_crit_edge, label %land.lhs.true2.i191

land.lhs.true.i189.rcu_read_unlock.exit196_crit_edge: ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit196

land.lhs.true2.i191:                              ; preds = %land.lhs.true.i189
  %.b4.i190 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i190, label %land.lhs.true2.i191.rcu_read_unlock.exit196_crit_edge, label %if.then.i192

land.lhs.true2.i191.rcu_read_unlock.exit196_crit_edge: ; preds = %land.lhs.true2.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit196

if.then.i192:                                     ; preds = %land.lhs.true2.i191
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit196

rcu_read_unlock.exit196:                          ; preds = %if.then.i192, %land.lhs.true2.i191.rcu_read_unlock.exit196_crit_edge, %land.lhs.true.i189.rcu_read_unlock.exit196_crit_edge, %do.end98.rcu_read_unlock.exit196_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %97 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i193 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i193 to ptr
  %preempt_count.i.i.i.i194 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i194 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i194, align 4
  %sub.i.i.i195 = add i32 %100, -1
  store volatile i32 %sub.i.i.i195, ptr %preempt_count.i.i.i.i194, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 0)
  %101 = load i32, ptr @tests_run, align 4
  %inc100 = add i32 %101, 1
  store i32 %inc100, ptr @tests_run, align 4
  %102 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i197 = icmp eq ptr %102, null
  br i1 %cmp.i197, label %if.else108, label %do.end105

do.end105:                                        ; preds = %rcu_read_unlock.exit196
  call void @__sanitizer_cov_trace_pc() #9
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.430, i32 noundef 1239) #10
  call void @dump_stack() #10
  br label %do.end112

if.else108:                                       ; preds = %rcu_read_unlock.exit196
  call void @__sanitizer_cov_trace_pc() #9
  %103 = load i32, ptr @tests_passed, align 4
  %inc109 = add i32 %103, 1
  store i32 %inc109, ptr @tests_passed, align 4
  br label %do.end112

do.end112:                                        ; preds = %if.else108, %do.end105
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_move_max() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %4 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @array, ptr %xas, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %call1.i12 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef -1, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef 3264) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %13 = load i32, ptr @tests_run, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @tests_run, align 4
  %call2 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.445, i32 noundef 1248) #10
  call void @dump_stack() #10
  br label %do.body9

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load i32, ptr @tests_passed, align 4
  %inc6 = add i32 %14, 1
  store i32 %inc6, ptr @tests_passed, align 4
  br label %do.body9

do.body9:                                         ; preds = %if.else, %do.end
  %15 = load i32, ptr @tests_run, align 4
  %inc10 = add i32 %15, 1
  store i32 %inc10, ptr @tests_run, align 4
  %call11 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %cmp12.not = icmp eq ptr %call11, null
  br i1 %cmp12.not, label %if.else19, label %do.end16

do.end16:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.445, i32 noundef 1249) #10
  call void @dump_stack() #10
  br label %do.end23

if.else19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load i32, ptr @tests_passed, align 4
  %inc20 = add i32 %16, 1
  store i32 %inc20, ptr @tests_passed, align 4
  br label %do.end23

do.end23:                                         ; preds = %if.else19, %do.end16
  %call.i13 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i13, label %do.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

do.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %do.end23
  %call1.i14 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %do.end23.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %17 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i20 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 3 to ptr), ptr %1, align 4
  %23 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i1 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %preempt_count.i.i.i.i2 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i2, align 4
  %add.i.i.i3 = add i32 %26, 1
  store volatile i32 %add.i.i.i3, ptr %preempt_count.i.i.i.i2, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i4 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4, label %rcu_read_unlock.exit.rcu_read_lock.exit11_crit_edge, label %land.lhs.true.i7

rcu_read_unlock.exit.rcu_read_lock.exit11_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true.i7:                                 ; preds = %rcu_read_unlock.exit
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_lock.exit11_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit11

rcu_read_lock.exit11:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit11_crit_edge
  %27 = load i32, ptr @tests_run, align 4
  %inc25 = add i32 %27, 1
  store i32 %inc25, ptr @tests_run, align 4
  %call26 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %cmp28.not = icmp eq ptr %call26, inttoptr (i32 -1 to ptr)
  br i1 %cmp28.not, label %if.else35, label %do.end32

do.end32:                                         ; preds = %rcu_read_lock.exit11
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.445, i32 noundef 1254) #10
  call void @dump_stack() #10
  br label %do.end39

if.else35:                                        ; preds = %rcu_read_lock.exit11
  call void @__sanitizer_cov_trace_pc() #9
  %28 = load i32, ptr @tests_passed, align 4
  %inc36 = add i32 %28, 1
  store i32 %inc36, ptr @tests_passed, align 4
  br label %do.end39

do.end39:                                         ; preds = %if.else35, %do.end32
  call void @xas_pause(ptr noundef nonnull %xas) #11
  %29 = load i32, ptr @tests_run, align 4
  %inc41 = add i32 %29, 1
  store i32 %inc41, ptr @tests_run, align 4
  %call42 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #11
  %cmp43.not = icmp eq ptr %call42, null
  br i1 %cmp43.not, label %if.else50, label %do.end47

do.end47:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.445, i32 noundef 1256) #10
  call void @dump_stack() #10
  br label %do.end54

if.else50:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %30 = load i32, ptr @tests_passed, align 4
  %inc51 = add i32 %30, 1
  store i32 %inc51, ptr @tests_passed, align 4
  br label %do.end54

do.end54:                                         ; preds = %if.else50, %do.end47
  %call.i22 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i22, label %do.end54.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true.i25

do.end54.rcu_read_unlock.exit32_crit_edge:        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit32

land.lhs.true.i25:                                ; preds = %do.end54
  %call1.i23 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit32

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit32_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit32

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit32

rcu_read_unlock.exit32:                           ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit32_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit32_crit_edge, %do.end54.rcu_read_unlock.exit32_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %31 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i29 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i31 = add i32 %34, -1
  store volatile i32 %sub.i.i.i31, ptr %preempt_count.i.i.i.i30, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef -1)
  %35 = load i32, ptr @tests_run, align 4
  %inc56 = add i32 %35, 1
  store i32 %inc56, ptr @tests_run, align 4
  %36 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %36, null
  br i1 %cmp.i, label %if.else64, label %do.end61

do.end61:                                         ; preds = %rcu_read_unlock.exit32
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.445, i32 noundef 1260) #10
  call void @dump_stack() #10
  br label %do.end68

if.else64:                                        ; preds = %rcu_read_unlock.exit32
  call void @__sanitizer_cov_trace_pc() #9
  %37 = load i32, ptr @tests_passed, align 4
  %inc65 = add i32 %37, 1
  store i32 %inc65, ptr @tests_passed, align 4
  br label %do.end68

do.end68:                                         ; preds = %if.else64, %do.end61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_move_small(i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @array, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %0, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %call1.i2 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef 0, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 3264) #11
  %and.i.i = shl i32 %idx, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %10 = inttoptr i32 %or.i.i.i to ptr
  %call1.i3 = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %idx, ptr noundef nonnull %10, i32 noundef 3264) #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !969
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mul = shl i32 %idx, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp178.not = icmp eq i32 %mul, 0
  br i1 %cmp178.not, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %i.0179 = phi i32 [ %inc64, %if.end63.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i4 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i = icmp ne i32 %and.i.i4, 0
  %tobool1.not.i.i = icmp eq ptr %16, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %for.body.if.then.i6_crit_edge, label %lor.lhs.false.i, !prof !972

for.body.if.then.i6_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i6

lor.lhs.false.i:                                  ; preds = %for.body
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i5 = icmp eq i8 %19, 0
  br i1 %tobool.not.i5, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i6_crit_edge, !prof !973

lor.lhs.false.i.if.then.i6_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i6

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %21)
  %cmp.i = icmp eq i8 %21, 63
  br i1 %cmp.i, label %lor.rhs.i.if.then.i6_crit_edge, label %if.end.i, !prof !972

lor.rhs.i.if.then.i6_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i6

if.then.i6:                                       ; preds = %lor.rhs.i.if.then.i6_crit_edge, %lor.lhs.false.i.if.then.i6_crit_edge, %for.body.if.then.i6_crit_edge
  %call5.i = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit

if.end.i:                                         ; preds = %lor.rhs.i
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %0, align 4
  %inc7.i = add i8 %21, 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %inc7.i, ptr %1, align 2
  %25 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %inc7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %16, i32 0, i32 7, i32 %conv9.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i20.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i20.i, label %lor.lhs.false.i.i, label %if.end.i.xas_next.exit_crit_edge

if.end.i.xas_next.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call4.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_next.exit_crit_edge

lor.lhs.false.i.i.xas_next.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xas_next.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xas_next.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_next.exit_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xas_next.exit_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit

xas_next.exit:                                    ; preds = %if.then.i.i, %land.lhs.true8.i.i.xas_next.exit_crit_edge, %land.lhs.true.i.i.xas_next.exit_crit_edge, %lor.lhs.false.i.i.xas_next.exit_crit_edge, %if.end.i.xas_next.exit_crit_edge, %if.then.i6
  %retval.0.i = phi ptr [ %call5.i, %if.then.i6 ], [ %28, %if.end.i.xas_next.exit_crit_edge ], [ %28, %lor.lhs.false.i.i.xas_next.exit_crit_edge ], [ %28, %land.lhs.true.i.i.xas_next.exit_crit_edge ], [ %28, %land.lhs.true8.i.i.xas_next.exit_crit_edge ], [ %28, %if.then.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0179, i32 %idx)
  %cmp5.not = icmp ugt i32 %i.0179, %idx
  br i1 %cmp5.not, label %xas_next.exit.do.body15_crit_edge, label %do.body

xas_next.exit.do.body15_crit_edge:                ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

do.body:                                          ; preds = %xas_next.exit
  %29 = load i32, ptr @tests_run, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr @tests_run, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  %cmp7 = icmp eq ptr %31, inttoptr (i32 3 to ptr)
  br i1 %cmp7, label %do.end, label %if.else

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1275) #10
  call void @dump_stack() #10
  br label %do.body15

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %32 = load i32, ptr @tests_passed, align 4
  %inc11 = add i32 %32, 1
  store i32 %inc11, ptr @tests_passed, align 4
  br label %do.body15

do.body15:                                        ; preds = %if.else, %do.end, %xas_next.exit.do.body15_crit_edge
  %33 = load i32, ptr @tests_run, align 4
  %inc16 = add i32 %33, 1
  store i32 %inc16, ptr @tests_run, align 4
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.0179)
  %cmp18.not = icmp eq i32 %35, %i.0179
  br i1 %cmp18.not, label %if.else25, label %do.end22

do.end22:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1276) #10
  call void @dump_stack() #10
  br label %do.end29

if.else25:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %36 = load i32, ptr @tests_passed, align 4
  %inc26 = add i32 %36, 1
  store i32 %inc26, ptr @tests_passed, align 4
  br label %do.end29

do.end29:                                         ; preds = %if.else25, %do.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0179)
  %cmp30 = icmp eq i32 %i.0179, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0179, i32 %idx)
  %cmp31 = icmp eq i32 %i.0179, %idx
  %or.cond = or i1 %cmp30, %cmp31
  %37 = load i32, ptr @tests_run, align 4
  %inc34 = add i32 %37, 1
  store i32 %inc34, ptr @tests_run, align 4
  br i1 %or.cond, label %do.body33, label %do.body49

do.body33:                                        ; preds = %do.end29
  %and.i = shl i32 %i.0179, 1
  %or.i.i = or i32 %and.i, 1
  %38 = inttoptr i32 %or.i.i to ptr
  %cmp36.not = icmp eq ptr %retval.0.i, %38
  br i1 %cmp36.not, label %if.else43, label %do.end40

do.end40:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1278) #10
  call void @dump_stack() #10
  br label %if.end63

if.else43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %39 = load i32, ptr @tests_passed, align 4
  %inc44 = add i32 %39, 1
  store i32 %inc44, ptr @tests_passed, align 4
  br label %if.end63

do.body49:                                        ; preds = %do.end29
  %cmp51.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp51.not, label %if.else58, label %do.end55

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1280) #10
  call void @dump_stack() #10
  br label %if.end63

if.else58:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %40 = load i32, ptr @tests_passed, align 4
  %inc59 = add i32 %40, 1
  store i32 %inc59, ptr @tests_passed, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %do.end55, %if.else43, %do.end40
  %inc64 = add nuw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc64, %mul
  br i1 %exitcond.not, label %if.end63.for.end_crit_edge, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end63.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %43 = ptrtoint ptr %42 to i32
  %and.i.i8 = and i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i8)
  %tobool.not.i.i9 = icmp ne i32 %and.i.i8, 0
  %tobool1.not.i.i10 = icmp eq ptr %42, null
  %spec.select.i.i11 = or i1 %tobool1.not.i.i10, %tobool.not.i.i9
  br i1 %spec.select.i.i11, label %for.end.if.then.i18_crit_edge, label %lor.lhs.false.i13, !prof !972

for.end.if.then.i18_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i18

lor.lhs.false.i13:                                ; preds = %for.end
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i12 = icmp eq i8 %45, 0
  br i1 %tobool.not.i12, label %lor.rhs.i16, label %lor.lhs.false.i13.if.then.i18_crit_edge, !prof !973

lor.lhs.false.i13.if.then.i18_crit_edge:          ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i18

lor.rhs.i16:                                      ; preds = %lor.lhs.false.i13
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %47)
  %cmp.i15 = icmp eq i8 %47, 63
  br i1 %cmp.i15, label %lor.rhs.i16.if.then.i18_crit_edge, label %if.end.i27, !prof !972

lor.rhs.i16.if.then.i18_crit_edge:                ; preds = %lor.rhs.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i18

if.then.i18:                                      ; preds = %lor.rhs.i16.if.then.i18_crit_edge, %lor.lhs.false.i13.if.then.i18_crit_edge, %for.end.if.then.i18_crit_edge
  %call5.i17 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit38

if.end.i27:                                       ; preds = %lor.rhs.i16
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %0, align 4
  %inc.i20 = add i32 %49, 1
  store i32 %inc.i20, ptr %0, align 4
  %inc7.i21 = add i8 %47, 1
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %inc7.i21, ptr %1, align 2
  %51 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xas, align 4
  %conv9.i22 = zext i8 %inc7.i21 to i32
  %arrayidx.i.i23 = getelementptr %struct.xa_node, ptr %42, i32 0, i32 7, i32 %conv9.i22
  %53 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %arrayidx.i.i23, align 4
  %dep_map.i.i24 = getelementptr inbounds %struct.anon, ptr %52, i32 0, i32 1
  %call.i.i.i25 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i24, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i25)
  %tobool.not.i20.i26 = icmp eq i32 %call.i.i.i25, 0
  br i1 %tobool.not.i20.i26, label %lor.lhs.false.i.i30, label %if.end.i27.xas_next.exit38_crit_edge

if.end.i27.xas_next.exit38_crit_edge:             ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit38

lor.lhs.false.i.i30:                              ; preds = %if.end.i27
  %call4.i.i28 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i28)
  %tobool5.not.i.i29 = icmp eq i32 %call4.i.i28, 0
  br i1 %tobool5.not.i.i29, label %land.lhs.true.i.i33, label %lor.lhs.false.i.i30.xas_next.exit38_crit_edge

lor.lhs.false.i.i30.xas_next.exit38_crit_edge:    ; preds = %lor.lhs.false.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit38

land.lhs.true.i.i33:                              ; preds = %lor.lhs.false.i.i30
  %call6.i.i31 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i31)
  %tobool7.not.i.i32 = icmp eq i32 %call6.i.i31, 0
  br i1 %tobool7.not.i.i32, label %land.lhs.true.i.i33.xas_next.exit38_crit_edge, label %land.lhs.true8.i.i35

land.lhs.true.i.i33.xas_next.exit38_crit_edge:    ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit38

land.lhs.true8.i.i35:                             ; preds = %land.lhs.true.i.i33
  %.b13.i.i34 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i34, label %land.lhs.true8.i.i35.xas_next.exit38_crit_edge, label %if.then.i.i36

land.lhs.true8.i.i35.xas_next.exit38_crit_edge:   ; preds = %land.lhs.true8.i.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit38

if.then.i.i36:                                    ; preds = %land.lhs.true8.i.i35
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit38

xas_next.exit38:                                  ; preds = %if.then.i.i36, %land.lhs.true8.i.i35.xas_next.exit38_crit_edge, %land.lhs.true.i.i33.xas_next.exit38_crit_edge, %lor.lhs.false.i.i30.xas_next.exit38_crit_edge, %if.end.i27.xas_next.exit38_crit_edge, %if.then.i18
  %55 = load i32, ptr @tests_run, align 4
  %inc67 = add i32 %55, 1
  store i32 %inc67, ptr @tests_run, align 4
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %mul)
  %cmp69.not = icmp eq i32 %57, %mul
  br i1 %cmp69.not, label %if.else76, label %do.end73

do.end73:                                         ; preds = %xas_next.exit38
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1283) #10
  call void @dump_stack() #10
  br label %do.body81.preheader

if.else76:                                        ; preds = %xas_next.exit38
  call void @__sanitizer_cov_trace_pc() #9
  %58 = load i32, ptr @tests_passed, align 4
  %inc77 = add i32 %58, 1
  store i32 %inc77, ptr @tests_passed, align 4
  br label %do.body81.preheader

do.body81.preheader:                              ; preds = %if.else76, %do.end73
  br label %do.body81

do.body81:                                        ; preds = %if.end151.do.body81_crit_edge, %do.body81.preheader
  %i.1 = phi i32 [ %dec, %if.end151.do.body81_crit_edge ], [ %mul, %do.body81.preheader ]
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %2, align 4
  %61 = ptrtoint ptr %60 to i32
  %and.i.i40 = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i.i41 = icmp ne i32 %and.i.i40, 0
  %tobool1.not.i.i42 = icmp eq ptr %60, null
  %spec.select.i.i43 = or i1 %tobool1.not.i.i42, %tobool.not.i.i41
  br i1 %spec.select.i.i43, label %do.body81.if.then.i50_crit_edge, label %lor.lhs.false.i45, !prof !972

do.body81.if.then.i50_crit_edge:                  ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

lor.lhs.false.i45:                                ; preds = %do.body81
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i44 = icmp eq i8 %63, 0
  br i1 %tobool.not.i44, label %lor.rhs.i48, label %lor.lhs.false.i45.if.then.i50_crit_edge, !prof !973

lor.lhs.false.i45.if.then.i50_crit_edge:          ; preds = %lor.lhs.false.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

lor.rhs.i48:                                      ; preds = %lor.lhs.false.i45
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp.i47 = icmp eq i8 %65, 0
  br i1 %cmp.i47, label %lor.rhs.i48.if.then.i50_crit_edge, label %if.end.i57, !prof !972

lor.rhs.i48.if.then.i50_crit_edge:                ; preds = %lor.rhs.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

if.then.i50:                                      ; preds = %lor.rhs.i48.if.then.i50_crit_edge, %lor.lhs.false.i45.if.then.i50_crit_edge, %do.body81.if.then.i50_crit_edge
  %call5.i49 = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  br label %xas_prev.exit

if.end.i57:                                       ; preds = %lor.rhs.i48
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %0, align 4
  %dec.i = add i32 %67, -1
  store i32 %dec.i, ptr %0, align 4
  %dec7.i = add i8 %65, -1
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %dec7.i, ptr %1, align 2
  %69 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xas, align 4
  %conv9.i52 = zext i8 %dec7.i to i32
  %arrayidx.i.i53 = getelementptr %struct.xa_node, ptr %60, i32 0, i32 7, i32 %conv9.i52
  %71 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %arrayidx.i.i53, align 4
  %dep_map.i.i54 = getelementptr inbounds %struct.anon, ptr %70, i32 0, i32 1
  %call.i.i.i55 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i54, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i55)
  %tobool.not.i20.i56 = icmp eq i32 %call.i.i.i55, 0
  br i1 %tobool.not.i20.i56, label %lor.lhs.false.i.i60, label %if.end.i57.xas_prev.exit_crit_edge

if.end.i57.xas_prev.exit_crit_edge:               ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

lor.lhs.false.i.i60:                              ; preds = %if.end.i57
  %call4.i.i58 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i58)
  %tobool5.not.i.i59 = icmp eq i32 %call4.i.i58, 0
  br i1 %tobool5.not.i.i59, label %land.lhs.true.i.i63, label %lor.lhs.false.i.i60.xas_prev.exit_crit_edge

lor.lhs.false.i.i60.xas_prev.exit_crit_edge:      ; preds = %lor.lhs.false.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

land.lhs.true.i.i63:                              ; preds = %lor.lhs.false.i.i60
  %call6.i.i61 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i61)
  %tobool7.not.i.i62 = icmp eq i32 %call6.i.i61, 0
  br i1 %tobool7.not.i.i62, label %land.lhs.true.i.i63.xas_prev.exit_crit_edge, label %land.lhs.true8.i.i65

land.lhs.true.i.i63.xas_prev.exit_crit_edge:      ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

land.lhs.true8.i.i65:                             ; preds = %land.lhs.true.i.i63
  %.b13.i.i64 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i64, label %land.lhs.true8.i.i65.xas_prev.exit_crit_edge, label %if.then.i.i66

land.lhs.true8.i.i65.xas_prev.exit_crit_edge:     ; preds = %land.lhs.true8.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit

if.then.i.i66:                                    ; preds = %land.lhs.true8.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_prev.exit

xas_prev.exit:                                    ; preds = %if.then.i.i66, %land.lhs.true8.i.i65.xas_prev.exit_crit_edge, %land.lhs.true.i.i63.xas_prev.exit_crit_edge, %lor.lhs.false.i.i60.xas_prev.exit_crit_edge, %if.end.i57.xas_prev.exit_crit_edge, %if.then.i50
  %retval.0.i67 = phi ptr [ %call5.i49, %if.then.i50 ], [ %72, %if.end.i57.xas_prev.exit_crit_edge ], [ %72, %lor.lhs.false.i.i60.xas_prev.exit_crit_edge ], [ %72, %land.lhs.true.i.i63.xas_prev.exit_crit_edge ], [ %72, %land.lhs.true8.i.i65.xas_prev.exit_crit_edge ], [ %72, %if.then.i.i66 ]
  %dec = add i32 %i.1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %idx)
  %cmp84.not = icmp ugt i32 %dec, %idx
  br i1 %cmp84.not, label %xas_prev.exit.do.body102_crit_edge, label %do.body86

xas_prev.exit.do.body102_crit_edge:               ; preds = %xas_prev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

do.body86:                                        ; preds = %xas_prev.exit
  %73 = load i32, ptr @tests_run, align 4
  %inc87 = add i32 %73, 1
  store i32 %inc87, ptr @tests_run, align 4
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %2, align 4
  %cmp89 = icmp eq ptr %75, inttoptr (i32 3 to ptr)
  br i1 %cmp89, label %do.end93, label %if.else96

do.end93:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1289) #10
  call void @dump_stack() #10
  br label %do.body102

if.else96:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %76 = load i32, ptr @tests_passed, align 4
  %inc97 = add i32 %76, 1
  store i32 %inc97, ptr @tests_passed, align 4
  br label %do.body102

do.body102:                                       ; preds = %if.else96, %do.end93, %xas_prev.exit.do.body102_crit_edge
  %77 = load i32, ptr @tests_run, align 4
  %inc103 = add i32 %77, 1
  store i32 %inc103, ptr @tests_run, align 4
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %dec)
  %cmp105.not = icmp eq i32 %79, %dec
  br i1 %cmp105.not, label %if.else112, label %do.end109

do.end109:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1290) #10
  call void @dump_stack() #10
  br label %do.end116

if.else112:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %80 = load i32, ptr @tests_passed, align 4
  %inc113 = add i32 %80, 1
  store i32 %inc113, ptr @tests_passed, align 4
  br label %do.end116

do.end116:                                        ; preds = %if.else112, %do.end109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp117 = icmp eq i32 %dec, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %idx)
  %cmp119 = icmp eq i32 %dec, %idx
  %or.cond1 = or i1 %cmp117, %cmp119
  %81 = load i32, ptr @tests_run, align 4
  %inc122 = add i32 %81, 1
  store i32 %inc122, ptr @tests_run, align 4
  br i1 %or.cond1, label %do.body121, label %do.body137

do.body121:                                       ; preds = %do.end116
  %and.i68 = shl i32 %dec, 1
  %or.i.i69 = or i32 %and.i68, 1
  %82 = inttoptr i32 %or.i.i69 to ptr
  %cmp124.not = icmp eq ptr %retval.0.i67, %82
  br i1 %cmp124.not, label %if.else131, label %do.end128

do.end128:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1292) #10
  call void @dump_stack() #10
  br label %if.end151

if.else131:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  %83 = load i32, ptr @tests_passed, align 4
  %inc132 = add i32 %83, 1
  store i32 %inc132, ptr @tests_passed, align 4
  br label %if.end151

do.body137:                                       ; preds = %do.end116
  %cmp139.not = icmp eq ptr %retval.0.i67, null
  br i1 %cmp139.not, label %if.else146, label %do.end143

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1294) #10
  call void @dump_stack() #10
  br label %if.end151

if.else146:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %84 = load i32, ptr @tests_passed, align 4
  %inc147 = add i32 %84, 1
  store i32 %inc147, ptr @tests_passed, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else146, %do.end143, %if.else131, %do.end128
  br i1 %cmp117, label %xas_next.exit103, label %if.end151.do.body81_crit_edge

if.end151.do.body81_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81

xas_next.exit103:                                 ; preds = %if.end151
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %0, align 4
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %87 = load i32, ptr @tests_run, align 4
  %inc156 = add i32 %87, 1
  store i32 %inc156, ptr @tests_run, align 4
  %call5.i82 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  %cmp158.not = icmp eq ptr %call5.i82, null
  br i1 %cmp158.not, label %if.else165, label %do.end162

do.end162:                                        ; preds = %xas_next.exit103
  call void @__sanitizer_cov_trace_pc() #9
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1298) #10
  call void @dump_stack() #10
  br label %do.body170

if.else165:                                       ; preds = %xas_next.exit103
  call void @__sanitizer_cov_trace_pc() #9
  %88 = load i32, ptr @tests_passed, align 4
  %inc166 = add i32 %88, 1
  store i32 %inc166, ptr @tests_passed, align 4
  br label %do.body170

do.body170:                                       ; preds = %if.else165, %do.end162
  %89 = load i32, ptr @tests_run, align 4
  %inc171 = add i32 %89, 1
  store i32 %inc171, ptr @tests_run, align 4
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %cmp173.not = icmp eq i32 %91, -1
  br i1 %cmp173.not, label %if.else180, label %do.end177

do.end177:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1299) #10
  call void @dump_stack() #10
  br label %do.body185

if.else180:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #9
  %92 = load i32, ptr @tests_passed, align 4
  %inc181 = add i32 %92, 1
  store i32 %inc181, ptr @tests_passed, align 4
  br label %do.body185

do.body185:                                       ; preds = %if.else180, %do.end177
  %93 = load i32, ptr @tests_run, align 4
  %inc186 = add i32 %93, 1
  store i32 %inc186, ptr @tests_run, align 4
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %2, align 4
  %96 = ptrtoint ptr %95 to i32
  %and.i.i105 = and i32 %96, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105)
  %tobool.not.i.i106 = icmp ne i32 %and.i.i105, 0
  %tobool1.not.i.i107 = icmp eq ptr %95, null
  %spec.select.i.i108 = or i1 %tobool1.not.i.i107, %tobool.not.i.i106
  br i1 %spec.select.i.i108, label %do.body185.if.then.i115_crit_edge, label %lor.lhs.false.i110, !prof !972

do.body185.if.then.i115_crit_edge:                ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i115

lor.lhs.false.i110:                               ; preds = %do.body185
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i109 = icmp eq i8 %98, 0
  br i1 %tobool.not.i109, label %lor.rhs.i113, label %lor.lhs.false.i110.if.then.i115_crit_edge, !prof !973

lor.lhs.false.i110.if.then.i115_crit_edge:        ; preds = %lor.lhs.false.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i115

lor.rhs.i113:                                     ; preds = %lor.lhs.false.i110
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %100)
  %cmp.i112 = icmp eq i8 %100, 63
  br i1 %cmp.i112, label %lor.rhs.i113.if.then.i115_crit_edge, label %if.end.i124, !prof !972

lor.rhs.i113.if.then.i115_crit_edge:              ; preds = %lor.rhs.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i115

if.then.i115:                                     ; preds = %lor.rhs.i113.if.then.i115_crit_edge, %lor.lhs.false.i110.if.then.i115_crit_edge, %do.body185.if.then.i115_crit_edge
  %call5.i114 = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %xas_next.exit135

if.end.i124:                                      ; preds = %lor.rhs.i113
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %0, align 4
  %inc.i117 = add i32 %102, 1
  store i32 %inc.i117, ptr %0, align 4
  %inc7.i118 = add i8 %100, 1
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %inc7.i118, ptr %1, align 2
  %104 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xas, align 4
  %conv9.i119 = zext i8 %inc7.i118 to i32
  %arrayidx.i.i120 = getelementptr %struct.xa_node, ptr %95, i32 0, i32 7, i32 %conv9.i119
  %106 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %arrayidx.i.i120, align 4
  %dep_map.i.i121 = getelementptr inbounds %struct.anon, ptr %105, i32 0, i32 1
  %call.i.i.i122 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i121, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i122)
  %tobool.not.i20.i123 = icmp eq i32 %call.i.i.i122, 0
  br i1 %tobool.not.i20.i123, label %lor.lhs.false.i.i127, label %if.end.i124.xas_next.exit135_crit_edge

if.end.i124.xas_next.exit135_crit_edge:           ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit135

lor.lhs.false.i.i127:                             ; preds = %if.end.i124
  %call4.i.i125 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i125)
  %tobool5.not.i.i126 = icmp eq i32 %call4.i.i125, 0
  br i1 %tobool5.not.i.i126, label %land.lhs.true.i.i130, label %lor.lhs.false.i.i127.xas_next.exit135_crit_edge

lor.lhs.false.i.i127.xas_next.exit135_crit_edge:  ; preds = %lor.lhs.false.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit135

land.lhs.true.i.i130:                             ; preds = %lor.lhs.false.i.i127
  %call6.i.i128 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i128)
  %tobool7.not.i.i129 = icmp eq i32 %call6.i.i128, 0
  br i1 %tobool7.not.i.i129, label %land.lhs.true.i.i130.xas_next.exit135_crit_edge, label %land.lhs.true8.i.i132

land.lhs.true.i.i130.xas_next.exit135_crit_edge:  ; preds = %land.lhs.true.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit135

land.lhs.true8.i.i132:                            ; preds = %land.lhs.true.i.i130
  %.b13.i.i131 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i131, label %land.lhs.true8.i.i132.xas_next.exit135_crit_edge, label %if.then.i.i133

land.lhs.true8.i.i132.xas_next.exit135_crit_edge: ; preds = %land.lhs.true8.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_next.exit135

if.then.i.i133:                                   ; preds = %land.lhs.true8.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_next.exit135

xas_next.exit135:                                 ; preds = %if.then.i.i133, %land.lhs.true8.i.i132.xas_next.exit135_crit_edge, %land.lhs.true.i.i130.xas_next.exit135_crit_edge, %lor.lhs.false.i.i127.xas_next.exit135_crit_edge, %if.end.i124.xas_next.exit135_crit_edge, %if.then.i115
  %retval.0.i134 = phi ptr [ %call5.i114, %if.then.i115 ], [ %107, %if.end.i124.xas_next.exit135_crit_edge ], [ %107, %lor.lhs.false.i.i127.xas_next.exit135_crit_edge ], [ %107, %land.lhs.true.i.i130.xas_next.exit135_crit_edge ], [ %107, %land.lhs.true8.i.i132.xas_next.exit135_crit_edge ], [ %107, %if.then.i.i133 ]
  %cmp189.not = icmp eq ptr %retval.0.i134, inttoptr (i32 1 to ptr)
  br i1 %cmp189.not, label %if.else196, label %do.end193

do.end193:                                        ; preds = %xas_next.exit135
  call void @__sanitizer_cov_trace_pc() #9
  %call195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1300) #10
  call void @dump_stack() #10
  br label %do.body201

if.else196:                                       ; preds = %xas_next.exit135
  call void @__sanitizer_cov_trace_pc() #9
  %108 = load i32, ptr @tests_passed, align 4
  %inc197 = add i32 %108, 1
  store i32 %inc197, ptr @tests_passed, align 4
  br label %do.body201

do.body201:                                       ; preds = %if.else196, %do.end193
  %109 = load i32, ptr @tests_run, align 4
  %inc202 = add i32 %109, 1
  store i32 %inc202, ptr @tests_run, align 4
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp204.not = icmp eq i32 %111, 0
  br i1 %cmp204.not, label %if.else211, label %do.end208

do.end208:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #9
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1301) #10
  call void @dump_stack() #10
  br label %do.body216

if.else211:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #9
  %112 = load i32, ptr @tests_passed, align 4
  %inc212 = add i32 %112, 1
  store i32 %inc212, ptr @tests_passed, align 4
  br label %do.body216

do.body216:                                       ; preds = %if.else211, %do.end208
  %113 = load i32, ptr @tests_run, align 4
  %inc217 = add i32 %113, 1
  store i32 %inc217, ptr @tests_run, align 4
  %114 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %2, align 4
  %116 = ptrtoint ptr %115 to i32
  %and.i.i137 = and i32 %116, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i137)
  %tobool.not.i.i138 = icmp ne i32 %and.i.i137, 0
  %tobool1.not.i.i139 = icmp eq ptr %115, null
  %spec.select.i.i140 = or i1 %tobool1.not.i.i139, %tobool.not.i.i138
  br i1 %spec.select.i.i140, label %do.body216.if.then.i147_crit_edge, label %lor.lhs.false.i142, !prof !972

do.body216.if.then.i147_crit_edge:                ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i147

lor.lhs.false.i142:                               ; preds = %do.body216
  %117 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %115, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i141 = icmp eq i8 %118, 0
  br i1 %tobool.not.i141, label %lor.rhs.i145, label %lor.lhs.false.i142.if.then.i147_crit_edge, !prof !973

lor.lhs.false.i142.if.then.i147_crit_edge:        ; preds = %lor.lhs.false.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i147

lor.rhs.i145:                                     ; preds = %lor.lhs.false.i142
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp.i144 = icmp eq i8 %120, 0
  br i1 %cmp.i144, label %lor.rhs.i145.if.then.i147_crit_edge, label %if.end.i156, !prof !972

lor.rhs.i145.if.then.i147_crit_edge:              ; preds = %lor.rhs.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i147

if.then.i147:                                     ; preds = %lor.rhs.i145.if.then.i147_crit_edge, %lor.lhs.false.i142.if.then.i147_crit_edge, %do.body216.if.then.i147_crit_edge
  %call5.i146 = call ptr @__xas_prev(ptr noundef nonnull %xas) #11
  br label %xas_prev.exit167

if.end.i156:                                      ; preds = %lor.rhs.i145
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %0, align 4
  %dec.i149 = add i32 %122, -1
  store i32 %dec.i149, ptr %0, align 4
  %dec7.i150 = add i8 %120, -1
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %dec7.i150, ptr %1, align 2
  %124 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %xas, align 4
  %conv9.i151 = zext i8 %dec7.i150 to i32
  %arrayidx.i.i152 = getelementptr %struct.xa_node, ptr %115, i32 0, i32 7, i32 %conv9.i151
  %126 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %arrayidx.i.i152, align 4
  %dep_map.i.i153 = getelementptr inbounds %struct.anon, ptr %125, i32 0, i32 1
  %call.i.i.i154 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i153, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i154)
  %tobool.not.i20.i155 = icmp eq i32 %call.i.i.i154, 0
  br i1 %tobool.not.i20.i155, label %lor.lhs.false.i.i159, label %if.end.i156.xas_prev.exit167_crit_edge

if.end.i156.xas_prev.exit167_crit_edge:           ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit167

lor.lhs.false.i.i159:                             ; preds = %if.end.i156
  %call4.i.i157 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i157)
  %tobool5.not.i.i158 = icmp eq i32 %call4.i.i157, 0
  br i1 %tobool5.not.i.i158, label %land.lhs.true.i.i162, label %lor.lhs.false.i.i159.xas_prev.exit167_crit_edge

lor.lhs.false.i.i159.xas_prev.exit167_crit_edge:  ; preds = %lor.lhs.false.i.i159
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit167

land.lhs.true.i.i162:                             ; preds = %lor.lhs.false.i.i159
  %call6.i.i160 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i160)
  %tobool7.not.i.i161 = icmp eq i32 %call6.i.i160, 0
  br i1 %tobool7.not.i.i161, label %land.lhs.true.i.i162.xas_prev.exit167_crit_edge, label %land.lhs.true8.i.i164

land.lhs.true.i.i162.xas_prev.exit167_crit_edge:  ; preds = %land.lhs.true.i.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit167

land.lhs.true8.i.i164:                            ; preds = %land.lhs.true.i.i162
  %.b13.i.i163 = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i163, label %land.lhs.true8.i.i164.xas_prev.exit167_crit_edge, label %if.then.i.i165

land.lhs.true8.i.i164.xas_prev.exit167_crit_edge: ; preds = %land.lhs.true8.i.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %xas_prev.exit167

if.then.i.i165:                                   ; preds = %land.lhs.true8.i.i164
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %xas_prev.exit167

xas_prev.exit167:                                 ; preds = %if.then.i.i165, %land.lhs.true8.i.i164.xas_prev.exit167_crit_edge, %land.lhs.true.i.i162.xas_prev.exit167_crit_edge, %lor.lhs.false.i.i159.xas_prev.exit167_crit_edge, %if.end.i156.xas_prev.exit167_crit_edge, %if.then.i147
  %retval.0.i166 = phi ptr [ %call5.i146, %if.then.i147 ], [ %127, %if.end.i156.xas_prev.exit167_crit_edge ], [ %127, %lor.lhs.false.i.i159.xas_prev.exit167_crit_edge ], [ %127, %land.lhs.true.i.i162.xas_prev.exit167_crit_edge ], [ %127, %land.lhs.true8.i.i164.xas_prev.exit167_crit_edge ], [ %127, %if.then.i.i165 ]
  %cmp219.not = icmp eq ptr %retval.0.i166, null
  br i1 %cmp219.not, label %if.else226, label %do.end223

do.end223:                                        ; preds = %xas_prev.exit167
  call void @__sanitizer_cov_trace_pc() #9
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1302) #10
  call void @dump_stack() #10
  br label %do.body231

if.else226:                                       ; preds = %xas_prev.exit167
  call void @__sanitizer_cov_trace_pc() #9
  %128 = load i32, ptr @tests_passed, align 4
  %inc227 = add i32 %128, 1
  store i32 %inc227, ptr @tests_passed, align 4
  br label %do.body231

do.body231:                                       ; preds = %if.else226, %do.end223
  %129 = load i32, ptr @tests_run, align 4
  %inc232 = add i32 %129, 1
  store i32 %inc232, ptr @tests_run, align 4
  %130 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp234.not = icmp eq i32 %131, -1
  br i1 %cmp234.not, label %if.else241, label %do.end238

do.end238:                                        ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #9
  %call240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1303) #10
  call void @dump_stack() #10
  br label %do.end245

if.else241:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #9
  %132 = load i32, ptr @tests_passed, align 4
  %inc242 = add i32 %132, 1
  store i32 %inc242, ptr @tests_passed, align 4
  br label %do.end245

do.end245:                                        ; preds = %if.else241, %do.end238
  %call.i168 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i168, label %do.end245.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i171

do.end245.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i171:                               ; preds = %do.end245
  %call1.i169 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %tobool.not.i170 = icmp eq i32 %call1.i169, 0
  br i1 %tobool.not.i170, label %land.lhs.true.i171.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i173

land.lhs.true.i171.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i173:                              ; preds = %land.lhs.true.i171
  %.b4.i172 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i172, label %land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge, label %if.then.i174

land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i174:                                     ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.40) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i174, %land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i171.rcu_read_unlock.exit_crit_edge, %do.end245.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !970
  %133 = call i32 @llvm.read_register.i32(metadata !960) #11
  %and.i.i.i.i.i175 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i175 to ptr
  %preempt_count.i.i.i.i176 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i176, align 4
  %sub.i.i.i = add i32 %136, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i176, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 0)
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %idx)
  %137 = load i32, ptr @tests_run, align 4
  %inc247 = add i32 %137, 1
  store i32 %inc247, ptr @tests_run, align 4
  %138 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i177 = icmp eq ptr %138, null
  br i1 %cmp.i177, label %if.else255, label %do.end252

do.end252:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.454, i32 noundef 1308) #10
  call void @dump_stack() #10
  br label %do.end259

if.else255:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %139 = load i32, ptr @tests_passed, align 4
  %inc256 = add i32 %139, 1
  store i32 %inc256, ptr @tests_passed, align 4
  br label %do.end259

do.end259:                                        ; preds = %if.else255, %do.end252
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_prev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_create_range_1(i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xa_store_many_order(i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index)
  %cmp1.not = icmp eq i32 %index, -1
  br i1 %cmp1.not, label %entry.do.body_crit_edge, label %for.body.preheader

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %index)
  br label %do.body

do.body:                                          ; preds = %for.body.preheader, %entry.do.body_crit_edge
  %0 = load i32, ptr @tests_run, align 4
  %inc1 = add i32 %0, 1
  store i32 %inc1, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.485, i32 noundef 1411) #10
  tail call void @dump_stack() #10
  br label %do.end6

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc4 = add i32 %2, 1
  store i32 %inc4, ptr @tests_passed, align 4
  br label %do.end6

do.end6:                                          ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_create_range_2() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xa_store_many_order(i32 noundef 0)
  tail call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef 0)
  %0 = load i32, ptr @tests_run, align 4
  %inc7 = add i32 %0, 1
  store i32 %inc7, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.491, i32 noundef 1423) #10
  tail call void @dump_stack() #10
  br label %do.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc10 = add i32 %2, 1
  store i32 %inc10, ptr @tests_passed, align 4
  br label %do.end12

do.end12:                                         ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_create_range_4(i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @array, ptr %xas, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %index, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  %and.i.i = shl i32 %index, 1
  %or.i.i.i = or i32 %and.i.i, 1
  %12 = inttoptr i32 %or.i.i.i to ptr
  %call1.i = tail call ptr @xa_store(ptr noundef nonnull @array, i32 noundef %index, ptr noundef nonnull %12, i32 noundef 3264) #11
  br label %do.body

do.body:                                          ; preds = %unlock.do.body_crit_edge, %entry
  %13 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %14) #11
  call void @xas_create_range(ptr noundef nonnull %xas) #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp ult ptr %16, inttoptr (i32 -16378 to ptr)
  %tobool.not13 = icmp ult ptr %16, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %tobool.not = or i1 %tobool.not13, %not.spec.select.i.i.i
  br i1 %tobool.not, label %for.body, label %do.body.unlock_crit_edge

do.body.unlock_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

for.body:                                         ; preds = %do.body
  %call12 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %12) #11
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %index)
  %cmp14 = icmp eq i32 %19, %index
  %20 = load i32, ptr @tests_run, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr @tests_run, align 4
  br i1 %cmp14, label %do.body17, label %do.body30

do.body17:                                        ; preds = %for.body
  %cmp20.not = icmp eq ptr %call12, %12
  br i1 %cmp20.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.492, i32 noundef 1450) #10
  call void @dump_stack() #10
  br label %if.end45

if.else:                                          ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load i32, ptr @tests_passed, align 4
  %inc25 = add i32 %21, 1
  store i32 %inc25, ptr @tests_passed, align 4
  br label %if.end45

do.body30:                                        ; preds = %for.body
  %cmp32.not = icmp eq ptr %call12, null
  br i1 %cmp32.not, label %if.else40, label %do.end37

do.end37:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.492, i32 noundef 1452) #10
  call void @dump_stack() #10
  br label %if.end45

if.else40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %22 = load i32, ptr @tests_passed, align 4
  %inc41 = add i32 %22, 1
  store i32 %inc41, ptr @tests_passed, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else40, %do.end37, %if.else, %do.end
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i4 = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i = icmp ne i32 %and.i.i4, 0
  %tobool1.not.i.i = icmp eq ptr %24, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %if.end45.if.then.i_crit_edge, label %lor.lhs.false.i, !prof !972

if.end45.if.then.i_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end45
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i_crit_edge, !prof !973

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %29)
  %cmp.i = icmp eq i8 %29, 63
  br i1 %cmp.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.end.i, !prof !972

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end45.if.then.i_crit_edge
  %call5.i = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %unlock

if.end.i:                                         ; preds = %lor.rhs.i
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %0, align 4
  %inc7.i = add i8 %29, 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %inc7.i, ptr %2, align 2
  %33 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %inc7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %24, i32 0, i32 7, i32 %conv9.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i20.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i20.i, label %lor.lhs.false.i.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call4.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.unlock_crit_edge

lor.lhs.false.i.i.unlock_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.unlock_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.unlock_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.unlock_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.unlock_crit_edge:              ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %unlock

unlock:                                           ; preds = %if.then.i.i, %land.lhs.true8.i.i.unlock_crit_edge, %land.lhs.true.i.i.unlock_crit_edge, %lor.lhs.false.i.i.unlock_crit_edge, %if.end.i.unlock_crit_edge, %if.then.i, %do.body.unlock_crit_edge
  %37 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %38) #11
  %call51 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef 3264) #11
  br i1 %call51, label %unlock.do.body_crit_edge, label %do.body53

unlock.do.body_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body53:                                        ; preds = %unlock
  %39 = load i32, ptr @tests_run, align 4
  %inc54 = add i32 %39, 1
  store i32 %inc54, ptr @tests_run, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %42 = ptrtoint ptr %41 to i32
  %and.i.i.i.i6 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i6)
  %cmp.i.i.i.i7 = icmp ne i32 %and.i.i.i.i6, 2
  %cmp.i.i.i8 = icmp ult ptr %41, inttoptr (i32 -16378 to ptr)
  %tobool56.not14 = icmp ult ptr %41, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i9 = or i1 %cmp.i.i.i8, %cmp.i.i.i.i7
  %tobool56.not = or i1 %tobool56.not14, %not.spec.select.i.i.i9
  br i1 %tobool56.not, label %if.else63, label %do.end60

do.end60:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.492, i32 noundef 1459) #10
  call void @dump_stack() #10
  br label %do.end67

if.else63:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %43 = load i32, ptr @tests_passed, align 4
  %inc64 = add i32 %43, 1
  store i32 %inc64, ptr @tests_passed, align 4
  br label %do.end67

do.end67:                                         ; preds = %if.else63, %do.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index)
  %cmp7115.not = icmp eq i32 %index, -1
  br i1 %cmp7115.not, label %do.end67.do.body77_crit_edge, label %for.body73.preheader

do.end67.do.body77_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body77

for.body73.preheader:                             ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %index)
  br label %do.body77

do.body77:                                        ; preds = %for.body73.preheader, %do.end67.do.body77_crit_edge
  %44 = load i32, ptr @tests_run, align 4
  %inc78 = add i32 %44, 1
  store i32 %inc78, ptr @tests_run, align 4
  %45 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i12 = icmp eq ptr %45, null
  br i1 %cmp.i12, label %if.else86, label %do.end83

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.492, i32 noundef 1463) #10
  call void @dump_stack() #10
  br label %do.end90

if.else86:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %46 = load i32, ptr @tests_passed, align 4
  %inc87 = add i32 %46, 1
  store i32 %inc87, ptr @tests_passed, align 4
  br label %do.end90

do.end90:                                         ; preds = %if.else86, %do.end83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_create_range_3() unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = call ptr @memcpy(ptr %xas, ptr @__const.check_create_range_3.xas, i32 24)
  %xa_node.i = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %1 = ptrtoint ptr %xa_node.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -66 to ptr), ptr %xa_node.i, align 4
  call void @xas_create_range(ptr noundef nonnull %xas) #11
  %2 = load i32, ptr @tests_run, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @tests_run, align 4
  %3 = ptrtoint ptr %xa_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xa_node.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %and.i.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp uge ptr %4, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  %shr.i.i.mask = and i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -68, i32 %shr.i.i.mask)
  %cmp.not7 = icmp eq i32 %shr.i.i.mask, -68
  %cmp.not = select i1 %spec.select.i.i.i, i1 %cmp.not7, i1 false
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.499, i32 noundef 1431) #10
  call void @dump_stack() #10
  br label %do.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr @tests_passed, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr @tests_passed, align 4
  br label %do.end5

do.end5:                                          ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xa_store_many_order(i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @array, ptr %xas, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %index, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  %and.i = shl i32 %index, 1
  %or.i.i = or i32 %and.i, 1
  %12 = inttoptr i32 %or.i.i to ptr
  br label %do.body

do.body:                                          ; preds = %unlock.do.body_crit_edge, %entry
  %13 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %14) #11
  %15 = load i32, ptr @tests_run, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @tests_run, align 4
  %call = call ptr @xas_find_conflict(ptr noundef nonnull %xas) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.486, i32 noundef 1388) #10
  call void @dump_stack() #10
  br label %do.end12

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load i32, ptr @tests_passed, align 4
  %inc10 = add i32 %16, 1
  store i32 %inc10, ptr @tests_passed, align 4
  br label %do.end12

do.end12:                                         ; preds = %if.else, %do.end
  call void @xas_create_range(ptr noundef nonnull %xas) #11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp ult ptr %18, inttoptr (i32 -16378 to ptr)
  %tobool14.not9 = icmp ult ptr %18, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %tobool14.not = or i1 %tobool14.not9, %not.spec.select.i.i.i
  br i1 %tobool14.not, label %do.body19, label %do.end12.unlock_crit_edge

do.end12.unlock_crit_edge:                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.body19:                                        ; preds = %do.end12
  %20 = load i32, ptr @tests_run, align 4
  %inc20 = add i32 %20, 1
  store i32 %inc20, ptr @tests_run, align 4
  %call22 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %12) #11
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.else30, label %do.end27

do.end27:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.486, i32 noundef 1393) #10
  call void @dump_stack() #10
  br label %do.end34

if.else30:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load i32, ptr @tests_passed, align 4
  %inc31 = add i32 %21, 1
  store i32 %inc31, ptr @tests_passed, align 4
  br label %do.end34

do.end34:                                         ; preds = %if.else30, %do.end27
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i.i = icmp eq ptr %23, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %do.end34.if.then.i_crit_edge, label %lor.lhs.false.i, !prof !972

do.end34.if.then.i_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end34
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i_crit_edge, !prof !973

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %28)
  %cmp.i = icmp eq i8 %28, 63
  br i1 %cmp.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.end.i, !prof !972

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %do.end34.if.then.i_crit_edge
  %call5.i = call ptr @__xas_next(ptr noundef nonnull %xas) #11
  br label %unlock

if.end.i:                                         ; preds = %lor.rhs.i
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %0, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %0, align 4
  %inc7.i = add i8 %28, 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %inc7.i, ptr %2, align 2
  %32 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %inc7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %23, i32 0, i32 7, i32 %conv9.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i20.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i20.i, label %lor.lhs.false.i.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call4.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.unlock_crit_edge

lor.lhs.false.i.i.unlock_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.unlock_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.unlock_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.unlock_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.unlock_crit_edge:              ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1183, ptr noundef nonnull @.str.39) #11
  br label %unlock

unlock:                                           ; preds = %if.then.i.i, %land.lhs.true8.i.i.unlock_crit_edge, %land.lhs.true.i.i.unlock_crit_edge, %lor.lhs.false.i.i.unlock_crit_edge, %if.end.i.unlock_crit_edge, %if.then.i, %do.end12.unlock_crit_edge
  %36 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %37) #11
  %call40 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef 3264) #11
  br i1 %call40, label %unlock.do.body_crit_edge, label %do.body42

unlock.do.body_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body42:                                        ; preds = %unlock
  %38 = load i32, ptr @tests_run, align 4
  %inc43 = add i32 %38, 1
  store i32 %inc43, ptr @tests_run, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %41 = ptrtoint ptr %40 to i32
  %and.i.i.i.i3 = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i3)
  %cmp.i.i.i.i4 = icmp ne i32 %and.i.i.i.i3, 2
  %cmp.i.i.i5 = icmp ult ptr %40, inttoptr (i32 -16378 to ptr)
  %tobool45.not10 = icmp ult ptr %40, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i6 = or i1 %cmp.i.i.i5, %cmp.i.i.i.i4
  %tobool45.not = or i1 %tobool45.not10, %not.spec.select.i.i.i6
  br i1 %tobool45.not, label %if.else52, label %do.end49

do.end49:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.486, i32 noundef 1400) #10
  call void @dump_stack() #10
  br label %do.end56

if.else52:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %42 = load i32, ptr @tests_passed, align 4
  %inc53 = add i32 %42, 1
  store i32 %inc53, ptr @tests_passed, align 4
  br label %do.end56

do.end56:                                         ; preds = %if.else52, %do.end49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_conflict(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_create_range(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__check_store_range() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.xarray, ptr @array, i32 0, i32 2), align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.500, i32 noundef 1512) #10
  tail call void @dump_stack() #10
  br label %do.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @tests_passed, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @tests_passed, align 4
  br label %do.end4

do.end4:                                          ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__check_store_iter(i32 noundef %start, i32 noundef %present) unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #11
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @array, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %start, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %and.i1 = shl i32 %start, 1
  %or.i.i = or i32 %and.i1, 1
  %11 = inttoptr i32 %or.i.i to ptr
  br label %retry

retry:                                            ; preds = %while.end.retry_crit_edge, %entry
  %12 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock(ptr noundef %13) #11
  %call11 = call ptr @xas_find_conflict(ptr noundef nonnull %xas) #11
  %tobool.not12 = icmp eq ptr %call11, null
  br i1 %tobool.not12, label %retry.while.end_crit_edge, label %retry.do.body_crit_edge

retry.do.body_crit_edge:                          ; preds = %retry
  br label %do.body

retry.while.end_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body:                                          ; preds = %do.end46.do.body_crit_edge, %retry.do.body_crit_edge
  %call14 = phi ptr [ %call, %do.end46.do.body_crit_edge ], [ %call11, %retry.do.body_crit_edge ]
  %count.113 = phi i32 [ %inc47, %do.end46.do.body_crit_edge ], [ 0, %retry.do.body_crit_edge ]
  %14 = load i32, ptr @tests_run, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @tests_run, align 4
  %15 = ptrtoint ptr %call14 to i32
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.else

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.514, i32 noundef 877) #10
  call void @dump_stack() #10
  br label %do.body14

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load i32, ptr @tests_passed, align 4
  %inc11 = add i32 %16, 1
  store i32 %inc11, ptr @tests_passed, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.else, %do.end
  %17 = load i32, ptr @tests_run, align 4
  %inc15 = add i32 %17, 1
  store i32 %inc15, ptr @tests_run, align 4
  %cmp = icmp ult ptr %call14, %11
  br i1 %cmp, label %do.end21, label %if.else24

do.end21:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.514, i32 noundef 878) #10
  call void @dump_stack() #10
  br label %do.body29

if.else24:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @tests_passed, align 4
  %inc25 = add i32 %18, 1
  store i32 %inc25, ptr @tests_passed, align 4
  br label %do.body29

do.body29:                                        ; preds = %if.else24, %do.end21
  %19 = load i32, ptr @tests_run, align 4
  %inc30 = add i32 %19, 1
  store i32 %inc30, ptr @tests_run, align 4
  %cmp34 = icmp ugt ptr %call14, %11
  br i1 %cmp34, label %do.end39, label %if.else42

do.end39:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.514, i32 noundef 879) #10
  call void @dump_stack() #10
  br label %do.end46

if.else42:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %20 = load i32, ptr @tests_passed, align 4
  %inc43 = add i32 %20, 1
  store i32 %inc43, ptr @tests_passed, align 4
  br label %do.end46

do.end46:                                         ; preds = %if.else42, %do.end39
  %inc47 = add i32 %count.113, 1
  %call = call ptr @xas_find_conflict(ptr noundef nonnull %xas) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end46.while.end_crit_edge, label %do.end46.do.body_crit_edge

do.end46.do.body_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end46.while.end_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end46.while.end_crit_edge, %retry.while.end_crit_edge
  %count.1.lcssa = phi i32 [ 0, %retry.while.end_crit_edge ], [ %inc47, %do.end46.while.end_crit_edge ]
  %call49 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %11) #11
  %21 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %22) #11
  %call52 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef 3264) #11
  br i1 %call52, label %while.end.retry_crit_edge, label %do.body55

while.end.retry_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

do.body55:                                        ; preds = %while.end
  %23 = load i32, ptr @tests_run, align 4
  %inc56 = add i32 %23, 1
  store i32 %inc56, ptr @tests_run, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %26 = ptrtoint ptr %25 to i32
  %and.i.i.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp ult ptr %25, inttoptr (i32 -16378 to ptr)
  %tobool58.not10 = icmp ult ptr %25, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %tobool58.not = or i1 %tobool58.not10, %not.spec.select.i.i.i
  br i1 %tobool58.not, label %if.else65, label %do.end62

do.end62:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.514, i32 noundef 888) #10
  call void @dump_stack() #10
  br label %do.body70

if.else65:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %27 = load i32, ptr @tests_passed, align 4
  %inc66 = add i32 %27, 1
  store i32 %inc66, ptr @tests_passed, align 4
  br label %do.body70

do.body70:                                        ; preds = %if.else65, %do.end62
  %28 = load i32, ptr @tests_run, align 4
  %inc71 = add i32 %28, 1
  store i32 %inc71, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.lcssa, i32 %present)
  %cmp72.not = icmp eq i32 %count.1.lcssa, %present
  br i1 %cmp72.not, label %if.else80, label %do.end77

do.end77:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.514, i32 noundef 889) #10
  call void @dump_stack() #10
  br label %do.body85

if.else80:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %29 = load i32, ptr @tests_passed, align 4
  %inc81 = add i32 %29, 1
  store i32 %inc81, ptr @tests_passed, align 4
  br label %do.body85

do.body85:                                        ; preds = %if.else80, %do.end77
  %30 = load i32, ptr @tests_run, align 4
  %inc86 = add i32 %30, 1
  store i32 %inc86, ptr @tests_run, align 4
  %call87 = call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %start) #11
  %cmp89.not = icmp eq ptr %call87, %11
  br i1 %cmp89.not, label %if.else97, label %do.end94

do.end94:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.514, i32 noundef 890) #10
  call void @dump_stack() #10
  br label %do.body102

if.else97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %31 = load i32, ptr @tests_passed, align 4
  %inc98 = add i32 %31, 1
  store i32 %inc98, ptr @tests_passed, align 4
  br label %do.body102

do.body102:                                       ; preds = %if.else97, %do.end94
  %32 = load i32, ptr @tests_run, align 4
  %inc103 = add i32 %32, 1
  store i32 %inc103, ptr @tests_run, align 4
  %call107 = call ptr @xa_load(ptr noundef nonnull @array, i32 noundef %start) #11
  %cmp109.not = icmp eq ptr %call107, %11
  br i1 %cmp109.not, label %if.else117, label %do.end114

do.end114:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.514, i32 noundef 892) #10
  call void @dump_stack() #10
  br label %do.end121

if.else117:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %33 = load i32, ptr @tests_passed, align 4
  %inc118 = add i32 %33, 1
  store i32 %inc118, ptr @tests_passed, align 4
  br label %do.end121

do.end121:                                        ; preds = %if.else117, %do.end114
  call fastcc void @xa_erase_index(ptr noundef nonnull @array, i32 noundef %start)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_align_1(ptr noundef %name) unnamed_addr #1 align 64 {
entry:
  %id = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !971
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !971
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc22, %for.inc.do.body_crit_edge ]
  %2 = load i32, ptr @tests_run, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @tests_run, align 4
  %add.ptr = getelementptr i8, ptr %name, i32 %i.01
  call void @_raw_spin_lock(ptr noundef nonnull @xa0) #11
  %call.i = call i32 @__xa_alloc(ptr noundef nonnull @xa0, ptr noundef nonnull %id, ptr noundef %add.ptr, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef nonnull @xa0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, 0
  br i1 %cmp2.not, label %if.else, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.527, i32 noundef 1585) #10
  call void @dump_stack() #10
  br label %do.body8

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr @tests_passed, align 4
  %inc5 = add i32 %3, 1
  store i32 %inc5, ptr @tests_passed, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.else, %do.end
  %4 = load i32, ptr @tests_run, align 4
  %inc9 = add i32 %4, 1
  store i32 %inc9, ptr @tests_run, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %i.01)
  %cmp10.not = icmp eq i32 %6, %i.01
  br i1 %cmp10.not, label %if.else17, label %do.end14

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.527, i32 noundef 1586) #10
  call void @dump_stack() #10
  br label %for.inc

if.else17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @tests_passed, align 4
  %inc18 = add i32 %7, 1
  store i32 %inc18, ptr @tests_passed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else17, %do.end14
  %inc22 = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc22, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %for.inc
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %index, align 4
  %call23 = call ptr @xa_find(ptr noundef nonnull @xa0, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not2 = icmp eq ptr %call23, null
  br i1 %tobool.not2, label %for.end.for.end42_crit_edge, label %for.end.do.body26_crit_edge

for.end.do.body26_crit_edge:                      ; preds = %for.end
  br label %do.body26

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

do.body26:                                        ; preds = %for.inc40.do.body26_crit_edge, %for.end.do.body26_crit_edge
  %entry1.03 = phi ptr [ %call41, %for.inc40.do.body26_crit_edge ], [ %call23, %for.end.do.body26_crit_edge ]
  %9 = load i32, ptr @tests_run, align 4
  %inc27 = add i32 %9, 1
  store i32 %inc27, ptr @tests_run, align 4
  %10 = ptrtoint ptr %entry1.03 to i32
  %and.i.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 2
  %cmp.i = icmp uge ptr %entry1.03, inttoptr (i32 -16378 to ptr)
  %spec.select.i = and i1 %cmp.i, %cmp.i.i
  br i1 %spec.select.i, label %do.end32, label %if.else35

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.527, i32 noundef 1589) #10
  call void @dump_stack() #10
  br label %for.inc40

if.else35:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @tests_passed, align 4
  %inc36 = add i32 %11, 1
  store i32 %inc36, ptr @tests_passed, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %if.else35, %do.end32
  %call41 = call ptr @xa_find_after(ptr noundef nonnull @xa0, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call41, null
  br i1 %tobool.not, label %for.inc40.for.end42_crit_edge, label %for.inc40.do.body26_crit_edge

for.inc40.do.body26_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %for.end.for.end42_crit_edge
  call void @xa_destroy(ptr noundef nonnull @xa0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_update_node(ptr noundef %node) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %count = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %nr_values = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 3
  %2 = ptrtoint ptr %nr_values to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_values, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %cmp.i.not = icmp eq ptr %6, %4
  br i1 %cmp.i.not, label %if.then6, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @shadow_nodes, ptr noundef %4, ptr noundef %4) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @shadow_nodes, ptr %prev1.i.i, align 4
  store ptr %4, ptr @shadow_nodes, align 4
  store ptr %4, ptr getelementptr inbounds (%struct.list_head, ptr @shadow_nodes, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr @shadow_nodes, ptr %4, align 4
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %9 = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %cmp.i18.not = icmp eq ptr %11, %9
  br i1 %cmp.i18.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.else
  %call.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #11
  br i1 %call.i.i20, label %if.end.i.i21, label %if.then9.list_del_init.exit_crit_edge

if.then9.list_del_init.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i21:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i21, %if.then9.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.xa_node, ptr %node, i32 0, i32 6, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %prev.i3.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %list_del_init.exit, %if.else.if.end11_crit_edge, %if.end.i.i, %if.then6.if.end11_crit_edge, %if.then.if.end11_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shadow_remove() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @array) #11
  %0 = load volatile ptr, ptr @shadow_nodes, align 4
  %cmp.not2 = icmp eq ptr %0, @shadow_nodes
  %add.ptr3 = getelementptr i8, ptr %0, i32 -12
  %tobool.not14 = icmp eq ptr %add.ptr3, null
  %tobool.not5 = or i1 %cmp.not2, %tobool.not14
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body3:                                         ; preds = %list_del_init.exit.do.body3_crit_edge, %entry.do.body3_crit_edge
  %add.ptr6 = phi ptr [ %add.ptr, %list_del_init.exit.do.body3_crit_edge ], [ %add.ptr3, %entry.do.body3_crit_edge ]
  %1 = phi ptr [ %14, %list_del_init.exit.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %2 = load i32, ptr @tests_run, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @tests_run, align 4
  %array = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %array, align 4
  %cmp4.not = icmp eq ptr %4, @array
  br i1 %cmp4.not, label %if.else, label %do.end7

do.end7:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.550, i32 noundef 1648) #10
  tail call void @dump_stack() #10
  br label %do.end11

if.else:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @tests_passed, align 4
  %inc9 = add i32 %5, 1
  store i32 %inc9, ptr @tests_passed, align 4
  br label %do.end11

do.end11:                                         ; preds = %if.else, %do.end7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end11.list_del_init.exit_crit_edge

do.end11.list_del_init.exit_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end11.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @xa_delete_node(ptr noundef nonnull %add.ptr6, ptr noundef nonnull @test_update_node) #11
  %14 = load volatile ptr, ptr @shadow_nodes, align 4
  %cmp.not = icmp eq ptr %14, @shadow_nodes
  %add.ptr = getelementptr i8, ptr %14, i32 -12
  %tobool.not1 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp.not, %tobool.not1
  br i1 %tobool.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.do.body3_crit_edge

list_del_init.exit.do.body3_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @array) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 344)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 344)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !251, !253, !254, !256, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !390, !392, !393, !395, !396, !398, !399, !400, !402, !403, !405, !406, !407, !409, !410, !412, !413, !415, !416, !418, !419, !421, !422, !424, !425, !427, !428, !430, !431, !433, !434, !436, !437, !439, !440, !442, !443, !444, !446, !447, !449, !450, !452, !453, !454, !456, !457, !459, !460, !462, !463, !465, !466, !468, !469, !471, !472, !474, !475, !477, !478, !480, !481, !483, !484, !486, !487, !489, !490, !492, !493, !495, !496, !498, !499, !501, !502, !504, !505, !507, !508, !510, !511, !513, !514, !516, !517, !519, !520, !522, !523, !525, !526, !528, !529, !530, !532, !533, !535, !536, !538, !539, !541, !542, !544, !545, !547, !548, !550, !551, !553, !554, !556, !557, !559, !560, !562, !563, !565, !566, !568, !569, !571, !572, !573, !575, !576, !578, !579, !581, !582, !584, !585, !587, !588, !590, !591, !593, !594, !596, !597, !599, !600, !602, !603, !605, !606, !608, !609, !611, !612, !613, !615, !616, !618, !619, !621, !622, !623, !625, !626, !627, !629, !630, !632, !633, !634, !636, !637, !638, !640, !641, !643, !644, !645, !647, !648, !650, !651, !653, !654, !656, !657, !658, !660, !661, !663, !664, !666, !667, !669, !670, !672, !673, !674, !676, !677, !679, !680, !682, !683, !685, !686, !688, !689, !691, !692, !693, !695, !696, !698, !699, !701, !702, !704, !705, !707, !708, !710, !711, !713, !714, !716, !717, !719, !720, !722, !723, !725, !726, !728, !729, !731, !732, !734, !735, !737, !738, !739, !741, !742, !744, !745, !747, !748, !750, !751, !753, !754, !756, !757, !759, !760, !762, !763, !764, !766, !767, !769, !770, !772, !773, !775, !776, !778, !779, !780, !782, !783, !785, !786, !788, !789, !791, !792, !794, !795, !797, !798, !800, !801, !803, !804, !806, !807, !809, !810, !812, !813, !815, !816, !818, !819, !821, !822, !824, !825, !827, !828, !829, !831, !832, !833, !835, !836, !838, !839, !841, !842, !843, !845, !846, !847, !849, !850, !852, !853, !855, !856, !858, !859, !860, !862, !863, !864, !866, !867, !868, !870, !871, !873, !874, !876, !877, !879, !880, !882, !883, !885, !886, !888, !889, !890, !892, !893, !895, !896, !898, !899, !901, !902, !904, !905, !907, !908, !910, !911, !912, !914, !915, !917, !918, !920, !921, !922, !924, !925, !927, !928, !930, !931, !933, !934, !936, !937, !938, !940, !941, !943, !944, !946, !947, !949, !950, !952, !954, !955, !956, !958}
!llvm.named.register.sp = !{!960}
!llvm.module.flags = !{!961, !962, !963, !964, !965, !966, !967}
!llvm.ident = !{!968}

!0 = !{ptr @__initcall__kmod_test_xarray__107_1811_xarray_checks6, !1, !"__initcall__kmod_test_xarray__107_1811_xarray_checks6", i1 false, i1 false}
!1 = !{!"../lib/test_xarray.c", i32 1811, i32 1}
!2 = !{ptr @__exitcall_xarray_exit, !3, !"__exitcall_xarray_exit", i1 false, i1 false}
!3 = !{!"../lib/test_xarray.c", i32 1812, i32 1}
!4 = !{ptr @__UNIQUE_ID_author108, !5, !"__UNIQUE_ID_author108", i1 false, i1 false}
!5 = !{!"../lib/test_xarray.c", i32 1813, i32 1}
!6 = !{ptr @__UNIQUE_ID_file109, !7, !"__UNIQUE_ID_file109", i1 false, i1 false}
!7 = !{!"../lib/test_xarray.c", i32 1814, i32 1}
!8 = !{ptr @__UNIQUE_ID_license110, !7, !"__UNIQUE_ID_license110", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/test_xarray.c", i32 1803, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @xarray_checks._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @xarray_checks._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test_xarray.c", i32 88, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @check_xa_err._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @check_xa_err._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @check_xa_err._entry.5, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../lib/test_xarray.c", i32 89, i32 2}
!22 = !{ptr @check_xa_err._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @check_xa_err._entry.7, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../lib/test_xarray.c", i32 95, i32 2}
!25 = !{ptr @check_xa_err._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @check_xa_err._entry.9, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../lib/test_xarray.c", i32 96, i32 2}
!28 = !{ptr @check_xa_err._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @check_xa_err._entry.11, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../lib/test_xarray.c", i32 97, i32 2}
!31 = !{ptr @check_xa_err._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/xarray.h", i32 54, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/test_xarray.c", i32 1770, i32 8}
!36 = !{ptr @array, !35, !"array", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/test_xarray.c", i32 111, i32 2}
!39 = !{ptr @check_xas_retry._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @check_xas_retry._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @check_xas_retry._entry.16, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../lib/test_xarray.c", i32 113, i32 2}
!43 = !{ptr @check_xas_retry._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @check_xas_retry._entry.18, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../lib/test_xarray.c", i32 114, i32 2}
!46 = !{ptr @check_xas_retry._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @check_xas_retry._entry.20, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../lib/test_xarray.c", i32 115, i32 2}
!49 = !{ptr @check_xas_retry._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @check_xas_retry._entry.22, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../lib/test_xarray.c", i32 117, i32 2}
!52 = !{ptr @check_xas_retry._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @check_xas_retry._entry.24, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../lib/test_xarray.c", i32 118, i32 2}
!55 = !{ptr @check_xas_retry._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @check_xas_retry._entry.26, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../lib/test_xarray.c", i32 119, i32 2}
!58 = !{ptr @check_xas_retry._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @check_xas_retry._entry.28, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../lib/test_xarray.c", i32 122, i32 2}
!61 = !{ptr @check_xas_retry._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @check_xas_retry._entry.30, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../lib/test_xarray.c", i32 125, i32 2}
!64 = !{ptr @check_xas_retry._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @check_xas_retry._entry.32, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../lib/test_xarray.c", i32 127, i32 2}
!67 = !{ptr @check_xas_retry._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/test_xarray.c", i32 62, i32 2}
!74 = !{ptr @xa_erase_index._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @xa_erase_index._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @xa_erase_index._entry.37, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../lib/test_xarray.c", i32 63, i32 2}
!78 = !{ptr @xa_erase_index._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/xarray.h", i32 1166, i32 9}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/test_xarray.c", i32 155, i32 5}
!89 = !{ptr @check_xa_load._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @check_xa_load._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @check_xa_load._entry.42, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../lib/test_xarray.c", i32 157, i32 5}
!93 = !{ptr @check_xa_load._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @check_xa_load._entry.44, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../lib/test_xarray.c", i32 159, i32 3}
!96 = !{ptr @check_xa_load._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @check_xa_load._entry.46, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../lib/test_xarray.c", i32 166, i32 5}
!99 = !{ptr @check_xa_load._entry_ptr.47, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @check_xa_load._entry.48, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../lib/test_xarray.c", i32 168, i32 5}
!102 = !{ptr @check_xa_load._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @check_xa_load._entry.50, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../lib/test_xarray.c", i32 172, i32 2}
!105 = !{ptr @check_xa_load._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/test_xarray.c", i32 181, i32 2}
!108 = !{ptr @check_xa_mark_1._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @check_xa_mark_1._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @check_xa_mark_1._entry.53, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../lib/test_xarray.c", i32 183, i32 2}
!112 = !{ptr @check_xa_mark_1._entry_ptr.54, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @check_xa_mark_1._entry.55, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../lib/test_xarray.c", i32 186, i32 2}
!115 = !{ptr @check_xa_mark_1._entry_ptr.56, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @check_xa_mark_1._entry.57, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../lib/test_xarray.c", i32 187, i32 2}
!118 = !{ptr @check_xa_mark_1._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @check_xa_mark_1._entry.59, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../lib/test_xarray.c", i32 189, i32 2}
!121 = !{ptr @check_xa_mark_1._entry_ptr.60, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @check_xa_mark_1._entry.61, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../lib/test_xarray.c", i32 192, i32 2}
!124 = !{ptr @check_xa_mark_1._entry_ptr.62, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @check_xa_mark_1._entry.63, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../lib/test_xarray.c", i32 193, i32 2}
!127 = !{ptr @check_xa_mark_1._entry_ptr.64, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @check_xa_mark_1._entry.65, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../lib/test_xarray.c", i32 197, i32 2}
!130 = !{ptr @check_xa_mark_1._entry_ptr.66, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @check_xa_mark_1._entry.67, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../lib/test_xarray.c", i32 198, i32 2}
!133 = !{ptr @check_xa_mark_1._entry_ptr.68, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @check_xa_mark_1._entry.69, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../lib/test_xarray.c", i32 200, i32 2}
!136 = !{ptr @check_xa_mark_1._entry_ptr.70, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @check_xa_mark_1._entry.71, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../lib/test_xarray.c", i32 212, i32 3}
!139 = !{ptr @check_xa_mark_1._entry_ptr.72, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @check_xa_mark_1._entry.73, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../lib/test_xarray.c", i32 214, i32 3}
!142 = !{ptr @check_xa_mark_1._entry_ptr.74, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @check_xa_mark_1._entry.75, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../lib/test_xarray.c", i32 216, i32 3}
!145 = !{ptr @check_xa_mark_1._entry_ptr.76, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @check_xa_mark_1._entry.77, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../lib/test_xarray.c", i32 224, i32 4}
!148 = !{ptr @check_xa_mark_1._entry_ptr.78, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @check_xa_mark_1._entry.79, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../lib/test_xarray.c", i32 225, i32 4}
!151 = !{ptr @check_xa_mark_1._entry_ptr.80, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @check_xa_mark_1._entry.81, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../lib/test_xarray.c", i32 226, i32 4}
!154 = !{ptr @check_xa_mark_1._entry_ptr.82, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @check_xa_mark_1._entry.83, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../lib/test_xarray.c", i32 233, i32 4}
!157 = !{ptr @check_xa_mark_1._entry_ptr.84, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @check_xa_mark_1._entry.85, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../lib/test_xarray.c", i32 242, i32 4}
!160 = !{ptr @check_xa_mark_1._entry_ptr.86, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @check_xa_mark_1._entry.87, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../lib/test_xarray.c", i32 244, i32 3}
!163 = !{ptr @check_xa_mark_1._entry_ptr.88, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @check_xa_mark_1._entry.89, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../lib/test_xarray.c", i32 245, i32 3}
!166 = !{ptr @check_xa_mark_1._entry_ptr.90, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @check_xa_mark_1._entry.91, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../lib/test_xarray.c", i32 246, i32 3}
!169 = !{ptr @check_xa_mark_1._entry_ptr.92, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @check_xa_mark_1._entry.93, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../lib/test_xarray.c", i32 249, i32 3}
!172 = !{ptr @check_xa_mark_1._entry_ptr.94, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @check_xa_mark_1._entry.95, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../lib/test_xarray.c", i32 251, i32 2}
!175 = !{ptr @check_xa_mark_1._entry_ptr.96, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.97, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../lib/test_xarray.c", i32 267, i32 2}
!178 = !{ptr @check_xa_mark_2._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @check_xa_mark_2._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @check_xa_mark_2._entry.98, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../lib/test_xarray.c", i32 279, i32 2}
!182 = !{ptr @check_xa_mark_2._entry_ptr.99, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @check_xa_mark_2._entry.100, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../lib/test_xarray.c", i32 284, i32 3}
!185 = !{ptr @check_xa_mark_2._entry_ptr.101, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @check_xa_mark_2._entry.102, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../lib/test_xarray.c", i32 285, i32 3}
!188 = !{ptr @check_xa_mark_2._entry_ptr.103, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.104, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../lib/test_xarray.c", i32 331, i32 2}
!191 = !{ptr @check_xa_shrink._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @check_xa_shrink._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @check_xa_shrink._entry.105, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../lib/test_xarray.c", i32 332, i32 2}
!195 = !{ptr @check_xa_shrink._entry_ptr.106, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @check_xa_shrink._entry.107, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../lib/test_xarray.c", i32 333, i32 2}
!198 = !{ptr @check_xa_shrink._entry_ptr.108, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @check_xa_shrink._entry.109, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../lib/test_xarray.c", i32 340, i32 2}
!201 = !{ptr @check_xa_shrink._entry_ptr.110, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @check_xa_shrink._entry.111, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../lib/test_xarray.c", i32 342, i32 2}
!204 = !{ptr @check_xa_shrink._entry_ptr.112, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @check_xa_shrink._entry.113, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../lib/test_xarray.c", i32 343, i32 2}
!207 = !{ptr @check_xa_shrink._entry_ptr.114, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @check_xa_shrink._entry.115, !209, !"_entry", i1 false, i1 false}
!209 = !{!"../lib/test_xarray.c", i32 344, i32 2}
!210 = !{ptr @check_xa_shrink._entry_ptr.116, !209, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @check_xa_shrink._entry.117, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../lib/test_xarray.c", i32 345, i32 2}
!213 = !{ptr @check_xa_shrink._entry_ptr.118, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @check_xa_shrink._entry.119, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../lib/test_xarray.c", i32 346, i32 2}
!216 = !{ptr @check_xa_shrink._entry_ptr.120, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @check_xa_shrink._entry.121, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../lib/test_xarray.c", i32 347, i32 2}
!219 = !{ptr @check_xa_shrink._entry_ptr.122, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @check_xa_shrink._entry.123, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../lib/test_xarray.c", i32 349, i32 2}
!222 = !{ptr @check_xa_shrink._entry_ptr.124, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @check_xa_shrink._entry.125, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../lib/test_xarray.c", i32 351, i32 2}
!225 = !{ptr @check_xa_shrink._entry_ptr.126, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @check_xa_shrink._entry.127, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../lib/test_xarray.c", i32 356, i32 3}
!228 = !{ptr @check_xa_shrink._entry_ptr.128, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @check_xa_shrink._entry.129, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../lib/test_xarray.c", i32 357, i32 3}
!231 = !{ptr @check_xa_shrink._entry_ptr.130, !230, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @check_xa_shrink._entry.131, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../lib/test_xarray.c", i32 361, i32 3}
!234 = !{ptr @check_xa_shrink._entry_ptr.132, !233, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @check_xa_shrink._entry.133, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../lib/test_xarray.c", i32 364, i32 3}
!237 = !{ptr @check_xa_shrink._entry_ptr.134, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @check_xa_shrink._entry.135, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../lib/test_xarray.c", i32 366, i32 3}
!240 = !{ptr @check_xa_shrink._entry_ptr.136, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @check_xa_shrink._entry.137, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../lib/test_xarray.c", i32 368, i32 3}
!243 = !{ptr @check_xa_shrink._entry_ptr.138, !242, !"_entry_ptr", i1 false, i1 false}
!244 = distinct !{null, !245, !"__warned", i1 false, i1 false}
!245 = !{!"../include/linux/xarray.h", i32 1191, i32 9}
!246 = !{ptr @.str.139, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.140, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../lib/test_xarray.c", i32 521, i32 4}
!249 = !{ptr @check_xas_erase._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @check_xas_erase._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @check_xas_erase._entry.141, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../lib/test_xarray.c", i32 526, i32 3}
!253 = !{ptr @check_xas_erase._entry_ptr.142, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.143, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../lib/test_xarray.c", i32 379, i32 3}
!256 = !{ptr @check_insert._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @check_insert._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @check_insert._entry.144, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../lib/test_xarray.c", i32 380, i32 3}
!260 = !{ptr @check_insert._entry_ptr.145, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @check_insert._entry.146, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../lib/test_xarray.c", i32 386, i32 3}
!263 = !{ptr @check_insert._entry_ptr.147, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @check_insert._entry.148, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../lib/test_xarray.c", i32 387, i32 3}
!266 = !{ptr @check_insert._entry_ptr.149, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @check_insert._entry.150, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../lib/test_xarray.c", i32 391, i32 3}
!269 = !{ptr @check_insert._entry_ptr.151, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @check_insert._entry.152, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../lib/test_xarray.c", i32 392, i32 3}
!272 = !{ptr @check_insert._entry_ptr.153, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @check_insert._entry.154, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../lib/test_xarray.c", i32 397, i32 2}
!275 = !{ptr @check_insert._entry_ptr.155, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @check_insert._entry.156, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../lib/test_xarray.c", i32 398, i32 2}
!278 = !{ptr @check_insert._entry_ptr.157, !277, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @check_insert._entry.158, !280, !"_entry", i1 false, i1 false}
!280 = !{!"../lib/test_xarray.c", i32 401, i32 2}
!281 = !{ptr @check_insert._entry_ptr.159, !280, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.160, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../lib/test_xarray.c", i32 47, i32 2}
!284 = !{ptr @xa_insert_index._entry, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @xa_insert_index._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.161, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../lib/test_xarray.c", i32 410, i32 2}
!288 = !{ptr @check_cmpxchg._entry, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @check_cmpxchg._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @check_cmpxchg._entry.162, !291, !"_entry", i1 false, i1 false}
!291 = !{!"../lib/test_xarray.c", i32 411, i32 2}
!292 = !{ptr @check_cmpxchg._entry_ptr.163, !291, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @check_cmpxchg._entry.164, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../lib/test_xarray.c", i32 412, i32 2}
!295 = !{ptr @check_cmpxchg._entry_ptr.165, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @check_cmpxchg._entry.166, !297, !"_entry", i1 false, i1 false}
!297 = !{!"../lib/test_xarray.c", i32 413, i32 2}
!298 = !{ptr @check_cmpxchg._entry_ptr.167, !297, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @check_cmpxchg._entry.168, !300, !"_entry", i1 false, i1 false}
!300 = !{!"../lib/test_xarray.c", i32 414, i32 2}
!301 = !{ptr @check_cmpxchg._entry_ptr.169, !300, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @check_cmpxchg._entry.170, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../lib/test_xarray.c", i32 415, i32 2}
!304 = !{ptr @check_cmpxchg._entry_ptr.171, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @check_cmpxchg._entry.172, !306, !"_entry", i1 false, i1 false}
!306 = !{!"../lib/test_xarray.c", i32 416, i32 2}
!307 = !{ptr @check_cmpxchg._entry_ptr.173, !306, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @check_cmpxchg._entry.174, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../lib/test_xarray.c", i32 417, i32 2}
!310 = !{ptr @check_cmpxchg._entry_ptr.175, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @check_cmpxchg._entry.176, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../lib/test_xarray.c", i32 418, i32 2}
!313 = !{ptr @check_cmpxchg._entry_ptr.177, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @check_cmpxchg._entry.178, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../lib/test_xarray.c", i32 419, i32 2}
!316 = !{ptr @check_cmpxchg._entry_ptr.179, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @check_cmpxchg._entry.180, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../lib/test_xarray.c", i32 420, i32 2}
!319 = !{ptr @check_cmpxchg._entry_ptr.181, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @check_cmpxchg._entry.182, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../lib/test_xarray.c", i32 423, i32 2}
!322 = !{ptr @check_cmpxchg._entry_ptr.183, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.184, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../lib/test_xarray.c", i32 433, i32 2}
!325 = !{ptr @check_reserve._entry, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @check_reserve._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @check_reserve._entry.185, !328, !"_entry", i1 false, i1 false}
!328 = !{!"../lib/test_xarray.c", i32 434, i32 2}
!329 = !{ptr @check_reserve._entry_ptr.186, !328, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @check_reserve._entry.187, !331, !"_entry", i1 false, i1 false}
!331 = !{!"../lib/test_xarray.c", i32 435, i32 2}
!332 = !{ptr @check_reserve._entry_ptr.188, !331, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @check_reserve._entry.189, !334, !"_entry", i1 false, i1 false}
!334 = !{!"../lib/test_xarray.c", i32 436, i32 2}
!335 = !{ptr @check_reserve._entry_ptr.190, !334, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @check_reserve._entry.191, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../lib/test_xarray.c", i32 438, i32 2}
!338 = !{ptr @check_reserve._entry_ptr.192, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @check_reserve._entry.193, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../lib/test_xarray.c", i32 441, i32 2}
!341 = !{ptr @check_reserve._entry_ptr.194, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @check_reserve._entry.195, !343, !"_entry", i1 false, i1 false}
!343 = !{!"../lib/test_xarray.c", i32 442, i32 2}
!344 = !{ptr @check_reserve._entry_ptr.196, !343, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @check_reserve._entry.197, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../lib/test_xarray.c", i32 445, i32 2}
!347 = !{ptr @check_reserve._entry_ptr.198, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @check_reserve._entry.199, !349, !"_entry", i1 false, i1 false}
!349 = !{!"../lib/test_xarray.c", i32 448, i32 2}
!350 = !{ptr @check_reserve._entry_ptr.200, !349, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @check_reserve._entry.201, !352, !"_entry", i1 false, i1 false}
!352 = !{!"../lib/test_xarray.c", i32 449, i32 2}
!353 = !{ptr @check_reserve._entry_ptr.202, !352, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @check_reserve._entry.203, !355, !"_entry", i1 false, i1 false}
!355 = !{!"../lib/test_xarray.c", i32 453, i32 2}
!356 = !{ptr @check_reserve._entry_ptr.204, !355, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @check_reserve._entry.205, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../lib/test_xarray.c", i32 456, i32 2}
!359 = !{ptr @check_reserve._entry_ptr.206, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @check_reserve._entry.207, !361, !"_entry", i1 false, i1 false}
!361 = !{!"../lib/test_xarray.c", i32 457, i32 2}
!362 = !{ptr @check_reserve._entry_ptr.208, !361, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @check_reserve._entry.209, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../lib/test_xarray.c", i32 459, i32 2}
!365 = !{ptr @check_reserve._entry_ptr.210, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @check_reserve._entry.211, !367, !"_entry", i1 false, i1 false}
!367 = !{!"../lib/test_xarray.c", i32 460, i32 2}
!368 = !{ptr @check_reserve._entry_ptr.212, !367, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @check_reserve._entry.213, !370, !"_entry", i1 false, i1 false}
!370 = !{!"../lib/test_xarray.c", i32 461, i32 2}
!371 = !{ptr @check_reserve._entry_ptr.214, !370, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @check_reserve._entry.215, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../lib/test_xarray.c", i32 465, i32 2}
!374 = !{ptr @check_reserve._entry_ptr.216, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @check_reserve._entry.217, !376, !"_entry", i1 false, i1 false}
!376 = !{!"../lib/test_xarray.c", i32 470, i32 3}
!377 = !{ptr @check_reserve._entry_ptr.218, !376, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @check_reserve._entry.219, !379, !"_entry", i1 false, i1 false}
!379 = !{!"../lib/test_xarray.c", i32 473, i32 2}
!380 = !{ptr @check_reserve._entry_ptr.220, !379, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @check_reserve._entry.221, !382, !"_entry", i1 false, i1 false}
!382 = !{!"../lib/test_xarray.c", i32 479, i32 3}
!383 = !{ptr @check_reserve._entry_ptr.222, !382, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @check_reserve._entry.223, !385, !"_entry", i1 false, i1 false}
!385 = !{!"../lib/test_xarray.c", i32 481, i32 3}
!386 = !{ptr @check_reserve._entry_ptr.224, !385, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @check_reserve._entry.225, !388, !"_entry", i1 false, i1 false}
!388 = !{!"../lib/test_xarray.c", i32 484, i32 3}
!389 = !{ptr @check_reserve._entry_ptr.226, !388, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @check_reserve._entry.227, !391, !"_entry", i1 false, i1 false}
!391 = !{!"../lib/test_xarray.c", i32 486, i32 3}
!392 = !{ptr @check_reserve._entry_ptr.228, !391, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.229, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../lib/test_xarray.c", i32 854, i32 8}
!395 = !{ptr @xa0, !394, !"xa0", i1 false, i1 false}
!396 = !{ptr @.str.230, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../lib/test_xarray.c", i32 1724, i32 3}
!398 = !{ptr @check_get_order._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @check_get_order._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @check_get_order._entry.231, !401, !"_entry", i1 false, i1 false}
!401 = !{!"../lib/test_xarray.c", i32 1731, i32 5}
!402 = !{ptr @check_get_order._entry_ptr.232, !401, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.233, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../lib/test_xarray.c", i32 682, i32 2}
!405 = !{ptr @check_xa_alloc_1._entry, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @check_xa_alloc_1._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @check_xa_alloc_1._entry.234, !408, !"_entry", i1 false, i1 false}
!408 = !{!"../lib/test_xarray.c", i32 688, i32 2}
!409 = !{ptr @check_xa_alloc_1._entry_ptr.235, !408, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @check_xa_alloc_1._entry.236, !411, !"_entry", i1 false, i1 false}
!411 = !{!"../lib/test_xarray.c", i32 728, i32 2}
!412 = !{ptr @check_xa_alloc_1._entry_ptr.237, !411, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @check_xa_alloc_1._entry.238, !414, !"_entry", i1 false, i1 false}
!414 = !{!"../lib/test_xarray.c", i32 731, i32 2}
!415 = !{ptr @check_xa_alloc_1._entry_ptr.239, !414, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @check_xa_alloc_1._entry.240, !417, !"_entry", i1 false, i1 false}
!417 = !{!"../lib/test_xarray.c", i32 732, i32 2}
!418 = !{ptr @check_xa_alloc_1._entry_ptr.241, !417, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @check_xa_alloc_1._entry.242, !420, !"_entry", i1 false, i1 false}
!420 = !{!"../lib/test_xarray.c", i32 735, i32 2}
!421 = !{ptr @check_xa_alloc_1._entry_ptr.243, !420, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @check_xa_alloc_1._entry.244, !423, !"_entry", i1 false, i1 false}
!423 = !{!"../lib/test_xarray.c", i32 737, i32 2}
!424 = !{ptr @check_xa_alloc_1._entry_ptr.245, !423, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @check_xa_alloc_1._entry.246, !426, !"_entry", i1 false, i1 false}
!426 = !{!"../lib/test_xarray.c", i32 740, i32 2}
!427 = !{ptr @check_xa_alloc_1._entry_ptr.247, !426, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @check_xa_alloc_1._entry.248, !429, !"_entry", i1 false, i1 false}
!429 = !{!"../lib/test_xarray.c", i32 743, i32 2}
!430 = !{ptr @check_xa_alloc_1._entry_ptr.249, !429, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @check_xa_alloc_1._entry.250, !432, !"_entry", i1 false, i1 false}
!432 = !{!"../lib/test_xarray.c", i32 745, i32 2}
!433 = !{ptr @check_xa_alloc_1._entry_ptr.251, !432, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @check_xa_alloc_1._entry.252, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../lib/test_xarray.c", i32 746, i32 2}
!436 = !{ptr @check_xa_alloc_1._entry_ptr.253, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @check_xa_alloc_1._entry.254, !438, !"_entry", i1 false, i1 false}
!438 = !{!"../lib/test_xarray.c", i32 749, i32 2}
!439 = !{ptr @check_xa_alloc_1._entry_ptr.255, !438, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.256, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../lib/test_xarray.c", i32 55, i32 2}
!442 = !{ptr @xa_alloc_index._entry, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @xa_alloc_index._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @xa_alloc_index._entry.257, !445, !"_entry", i1 false, i1 false}
!445 = !{!"../lib/test_xarray.c", i32 57, i32 2}
!446 = !{ptr @xa_alloc_index._entry_ptr.258, !445, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.259, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../lib/test_xarray.c", i32 855, i32 8}
!449 = !{ptr @xa1, !448, !"xa1", i1 false, i1 false}
!450 = !{ptr @.str.260, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../lib/test_xarray.c", i32 759, i32 2}
!452 = !{ptr @check_xa_alloc_2._entry, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @check_xa_alloc_2._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @check_xa_alloc_2._entry.261, !455, !"_entry", i1 false, i1 false}
!455 = !{!"../lib/test_xarray.c", i32 760, i32 2}
!456 = !{ptr @check_xa_alloc_2._entry_ptr.262, !455, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @check_xa_alloc_2._entry.263, !458, !"_entry", i1 false, i1 false}
!458 = !{!"../lib/test_xarray.c", i32 761, i32 2}
!459 = !{ptr @check_xa_alloc_2._entry_ptr.264, !458, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @check_xa_alloc_2._entry.265, !461, !"_entry", i1 false, i1 false}
!461 = !{!"../lib/test_xarray.c", i32 762, i32 2}
!462 = !{ptr @check_xa_alloc_2._entry_ptr.266, !461, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @check_xa_alloc_2._entry.267, !464, !"_entry", i1 false, i1 false}
!464 = !{!"../lib/test_xarray.c", i32 763, i32 2}
!465 = !{ptr @check_xa_alloc_2._entry_ptr.268, !464, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @check_xa_alloc_2._entry.269, !467, !"_entry", i1 false, i1 false}
!467 = !{!"../lib/test_xarray.c", i32 764, i32 2}
!468 = !{ptr @check_xa_alloc_2._entry_ptr.270, !467, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @check_xa_alloc_2._entry.271, !470, !"_entry", i1 false, i1 false}
!470 = !{!"../lib/test_xarray.c", i32 767, i32 2}
!471 = !{ptr @check_xa_alloc_2._entry_ptr.272, !470, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @check_xa_alloc_2._entry.273, !473, !"_entry", i1 false, i1 false}
!473 = !{!"../lib/test_xarray.c", i32 768, i32 2}
!474 = !{ptr @check_xa_alloc_2._entry_ptr.274, !473, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @check_xa_alloc_2._entry.275, !476, !"_entry", i1 false, i1 false}
!476 = !{!"../lib/test_xarray.c", i32 769, i32 2}
!477 = !{ptr @check_xa_alloc_2._entry_ptr.276, !476, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @check_xa_alloc_2._entry.277, !479, !"_entry", i1 false, i1 false}
!479 = !{!"../lib/test_xarray.c", i32 770, i32 2}
!480 = !{ptr @check_xa_alloc_2._entry_ptr.278, !479, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @check_xa_alloc_2._entry.279, !482, !"_entry", i1 false, i1 false}
!482 = !{!"../lib/test_xarray.c", i32 772, i32 2}
!483 = !{ptr @check_xa_alloc_2._entry_ptr.280, !482, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @check_xa_alloc_2._entry.281, !485, !"_entry", i1 false, i1 false}
!485 = !{!"../lib/test_xarray.c", i32 775, i32 3}
!486 = !{ptr @check_xa_alloc_2._entry_ptr.282, !485, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @check_xa_alloc_2._entry.283, !488, !"_entry", i1 false, i1 false}
!488 = !{!"../lib/test_xarray.c", i32 777, i32 3}
!489 = !{ptr @check_xa_alloc_2._entry_ptr.284, !488, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @check_xa_alloc_2._entry.285, !491, !"_entry", i1 false, i1 false}
!491 = !{!"../lib/test_xarray.c", i32 780, i32 2}
!492 = !{ptr @check_xa_alloc_2._entry_ptr.286, !491, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @check_xa_alloc_2._entry.287, !494, !"_entry", i1 false, i1 false}
!494 = !{!"../lib/test_xarray.c", i32 781, i32 2}
!495 = !{ptr @check_xa_alloc_2._entry_ptr.288, !494, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @check_xa_alloc_2._entry.289, !497, !"_entry", i1 false, i1 false}
!497 = !{!"../lib/test_xarray.c", i32 782, i32 2}
!498 = !{ptr @check_xa_alloc_2._entry_ptr.290, !497, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @check_xa_alloc_2._entry.291, !500, !"_entry", i1 false, i1 false}
!500 = !{!"../lib/test_xarray.c", i32 783, i32 2}
!501 = !{ptr @check_xa_alloc_2._entry_ptr.292, !500, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @check_xa_alloc_2._entry.293, !503, !"_entry", i1 false, i1 false}
!503 = !{!"../lib/test_xarray.c", i32 784, i32 2}
!504 = !{ptr @check_xa_alloc_2._entry_ptr.294, !503, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @check_xa_alloc_2._entry.295, !506, !"_entry", i1 false, i1 false}
!506 = !{!"../lib/test_xarray.c", i32 785, i32 2}
!507 = !{ptr @check_xa_alloc_2._entry_ptr.296, !506, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @check_xa_alloc_2._entry.297, !509, !"_entry", i1 false, i1 false}
!509 = !{!"../lib/test_xarray.c", i32 792, i32 3}
!510 = !{ptr @check_xa_alloc_2._entry_ptr.298, !509, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @check_xa_alloc_2._entry.299, !512, !"_entry", i1 false, i1 false}
!512 = !{!"../lib/test_xarray.c", i32 793, i32 3}
!513 = !{ptr @check_xa_alloc_2._entry_ptr.300, !512, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @check_xa_alloc_2._entry.301, !515, !"_entry", i1 false, i1 false}
!515 = !{!"../lib/test_xarray.c", i32 795, i32 2}
!516 = !{ptr @check_xa_alloc_2._entry_ptr.302, !515, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @check_xa_alloc_2._entry.303, !518, !"_entry", i1 false, i1 false}
!518 = !{!"../lib/test_xarray.c", i32 796, i32 2}
!519 = !{ptr @check_xa_alloc_2._entry_ptr.304, !518, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @check_xa_alloc_2._entry.305, !521, !"_entry", i1 false, i1 false}
!521 = !{!"../lib/test_xarray.c", i32 797, i32 2}
!522 = !{ptr @check_xa_alloc_2._entry_ptr.306, !521, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @check_xa_alloc_2._entry.307, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../lib/test_xarray.c", i32 798, i32 2}
!525 = !{ptr @check_xa_alloc_2._entry_ptr.308, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.309, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../lib/test_xarray.c", i32 811, i32 2}
!528 = !{ptr @check_xa_alloc_3._entry, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @check_xa_alloc_3._entry_ptr, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @check_xa_alloc_3._entry.310, !531, !"_entry", i1 false, i1 false}
!531 = !{!"../lib/test_xarray.c", i32 813, i32 2}
!532 = !{ptr @check_xa_alloc_3._entry_ptr.311, !531, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @check_xa_alloc_3._entry.312, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../lib/test_xarray.c", i32 816, i32 2}
!535 = !{ptr @check_xa_alloc_3._entry_ptr.313, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @check_xa_alloc_3._entry.314, !537, !"_entry", i1 false, i1 false}
!537 = !{!"../lib/test_xarray.c", i32 818, i32 2}
!538 = !{ptr @check_xa_alloc_3._entry_ptr.315, !537, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @check_xa_alloc_3._entry.316, !540, !"_entry", i1 false, i1 false}
!540 = !{!"../lib/test_xarray.c", i32 821, i32 2}
!541 = !{ptr @check_xa_alloc_3._entry_ptr.317, !540, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @check_xa_alloc_3._entry.318, !543, !"_entry", i1 false, i1 false}
!543 = !{!"../lib/test_xarray.c", i32 828, i32 3}
!544 = !{ptr @check_xa_alloc_3._entry_ptr.319, !543, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @check_xa_alloc_3._entry.320, !546, !"_entry", i1 false, i1 false}
!546 = !{!"../lib/test_xarray.c", i32 830, i32 3}
!547 = !{ptr @check_xa_alloc_3._entry_ptr.321, !546, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @check_xa_alloc_3._entry.322, !549, !"_entry", i1 false, i1 false}
!549 = !{!"../lib/test_xarray.c", i32 838, i32 2}
!550 = !{ptr @check_xa_alloc_3._entry_ptr.323, !549, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @check_xa_alloc_3._entry.324, !552, !"_entry", i1 false, i1 false}
!552 = !{!"../lib/test_xarray.c", i32 840, i32 2}
!553 = !{ptr @check_xa_alloc_3._entry_ptr.325, !552, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @check_xa_alloc_3._entry.326, !555, !"_entry", i1 false, i1 false}
!555 = !{!"../lib/test_xarray.c", i32 841, i32 2}
!556 = !{ptr @check_xa_alloc_3._entry_ptr.327, !555, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @check_xa_alloc_3._entry.328, !558, !"_entry", i1 false, i1 false}
!558 = !{!"../lib/test_xarray.c", i32 843, i32 2}
!559 = !{ptr @check_xa_alloc_3._entry_ptr.329, !558, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @check_xa_alloc_3._entry.330, !561, !"_entry", i1 false, i1 false}
!561 = !{!"../lib/test_xarray.c", i32 844, i32 2}
!562 = !{ptr @check_xa_alloc_3._entry_ptr.331, !561, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @check_xa_alloc_3._entry.332, !564, !"_entry", i1 false, i1 false}
!564 = !{!"../lib/test_xarray.c", i32 846, i32 2}
!565 = !{ptr @check_xa_alloc_3._entry_ptr.333, !564, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @check_xa_alloc_3._entry.334, !567, !"_entry", i1 false, i1 false}
!567 = !{!"../lib/test_xarray.c", i32 851, i32 2}
!568 = !{ptr @check_xa_alloc_3._entry_ptr.335, !567, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @.str.336, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../lib/test_xarray.c", i32 1008, i32 2}
!571 = !{ptr @check_find_1._entry, !570, !"_entry", i1 false, i1 false}
!572 = !{ptr @check_find_1._entry_ptr, !570, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @check_find_1._entry.337, !574, !"_entry", i1 false, i1 false}
!574 = !{!"../lib/test_xarray.c", i32 1015, i32 3}
!575 = !{ptr @check_find_1._entry_ptr.338, !574, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @check_find_1._entry.339, !577, !"_entry", i1 false, i1 false}
!577 = !{!"../lib/test_xarray.c", i32 1018, i32 4}
!578 = !{ptr @check_find_1._entry_ptr.340, !577, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @check_find_1._entry.341, !580, !"_entry", i1 false, i1 false}
!580 = !{!"../lib/test_xarray.c", i32 1026, i32 6}
!581 = !{ptr @check_find_1._entry_ptr.342, !580, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @check_find_1._entry.343, !583, !"_entry", i1 false, i1 false}
!583 = !{!"../lib/test_xarray.c", i32 1028, i32 6}
!584 = !{ptr @check_find_1._entry_ptr.344, !583, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @check_find_1._entry.345, !586, !"_entry", i1 false, i1 false}
!586 = !{!"../lib/test_xarray.c", i32 1030, i32 6}
!587 = !{ptr @check_find_1._entry_ptr.346, !586, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @check_find_1._entry.347, !589, !"_entry", i1 false, i1 false}
!589 = !{!"../lib/test_xarray.c", i32 1036, i32 6}
!590 = !{ptr @check_find_1._entry_ptr.348, !589, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @check_find_1._entry.349, !592, !"_entry", i1 false, i1 false}
!592 = !{!"../lib/test_xarray.c", i32 1038, i32 6}
!593 = !{ptr @check_find_1._entry_ptr.350, !592, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @check_find_1._entry.351, !595, !"_entry", i1 false, i1 false}
!595 = !{!"../lib/test_xarray.c", i32 1040, i32 6}
!596 = !{ptr @check_find_1._entry_ptr.352, !595, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @check_find_1._entry.353, !598, !"_entry", i1 false, i1 false}
!598 = !{!"../lib/test_xarray.c", i32 1043, i32 4}
!599 = !{ptr @check_find_1._entry_ptr.354, !598, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @check_find_1._entry.355, !601, !"_entry", i1 false, i1 false}
!601 = !{!"../lib/test_xarray.c", i32 1044, i32 4}
!602 = !{ptr @check_find_1._entry_ptr.356, !601, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @check_find_1._entry.357, !604, !"_entry", i1 false, i1 false}
!604 = !{!"../lib/test_xarray.c", i32 1047, i32 3}
!605 = !{ptr @check_find_1._entry_ptr.358, !604, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @check_find_1._entry.359, !607, !"_entry", i1 false, i1 false}
!607 = !{!"../lib/test_xarray.c", i32 1049, i32 2}
!608 = !{ptr @check_find_1._entry_ptr.360, !607, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @.str.361, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../lib/test_xarray.c", i32 1058, i32 3}
!611 = !{ptr @check_find_2._entry, !610, !"_entry", i1 false, i1 false}
!612 = !{ptr @check_find_2._entry_ptr, !610, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @check_find_2._entry.362, !614, !"_entry", i1 false, i1 false}
!614 = !{!"../lib/test_xarray.c", i32 1065, i32 4}
!615 = !{ptr @check_find_2._entry_ptr.363, !614, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @check_find_2._entry.364, !617, !"_entry", i1 false, i1 false}
!617 = !{!"../lib/test_xarray.c", i32 1066, i32 4}
!618 = !{ptr @check_find_2._entry_ptr.365, !617, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.366, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../lib/test_xarray.c", i32 1087, i32 6}
!621 = !{ptr @check_find_3._entry, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @check_find_3._entry_ptr, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @.str.367, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../lib/test_xarray.c", i32 1106, i32 2}
!625 = !{ptr @check_find_4._entry, !624, !"_entry", i1 false, i1 false}
!626 = !{ptr @check_find_4._entry_ptr, !624, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @check_find_4._entry.368, !628, !"_entry", i1 false, i1 false}
!628 = !{!"../lib/test_xarray.c", i32 1109, i32 2}
!629 = !{ptr @check_find_4._entry_ptr.369, !628, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.370, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../lib/test_xarray.c", i32 985, i32 4}
!632 = !{ptr @check_multi_find_2._entry, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @check_multi_find_2._entry_ptr, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.371, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../lib/test_xarray.c", i32 997, i32 3}
!636 = !{ptr @check_multi_find_3._entry, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @check_multi_find_3._entry_ptr, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @check_multi_find_3._entry.372, !639, !"_entry", i1 false, i1 false}
!639 = !{!"../lib/test_xarray.c", i32 999, i32 3}
!640 = !{ptr @check_multi_find_3._entry_ptr.373, !639, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.374, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../lib/test_xarray.c", i32 1176, i32 2}
!643 = !{ptr @check_find_entry._entry, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @check_find_entry._entry_ptr, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @check_find_entry._entry.375, !646, !"_entry", i1 false, i1 false}
!646 = !{!"../lib/test_xarray.c", i32 1178, i32 2}
!647 = !{ptr @check_find_entry._entry_ptr.376, !646, !"_entry_ptr", i1 false, i1 false}
!648 = !{ptr @check_find_entry._entry.377, !649, !"_entry", i1 false, i1 false}
!649 = !{!"../lib/test_xarray.c", i32 1179, i32 2}
!650 = !{ptr @check_find_entry._entry_ptr.378, !649, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @check_find_entry._entry.379, !652, !"_entry", i1 false, i1 false}
!652 = !{!"../lib/test_xarray.c", i32 1181, i32 2}
!653 = !{ptr @check_find_entry._entry_ptr.380, !652, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.381, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../lib/test_xarray.c", i32 1193, i32 3}
!656 = !{ptr @check_pause._entry, !655, !"_entry", i1 false, i1 false}
!657 = !{ptr @check_pause._entry_ptr, !655, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @check_pause._entry.382, !659, !"_entry", i1 false, i1 false}
!659 = !{!"../lib/test_xarray.c", i32 1200, i32 3}
!660 = !{ptr @check_pause._entry_ptr.383, !659, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @check_pause._entry.384, !662, !"_entry", i1 false, i1 false}
!662 = !{!"../lib/test_xarray.c", i32 1204, i32 2}
!663 = !{ptr @check_pause._entry_ptr.385, !662, !"_entry_ptr", i1 false, i1 false}
!664 = !{ptr @check_pause._entry.386, !665, !"_entry", i1 false, i1 false}
!665 = !{!"../lib/test_xarray.c", i32 1210, i32 3}
!666 = !{ptr @check_pause._entry_ptr.387, !665, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @check_pause._entry.388, !668, !"_entry", i1 false, i1 false}
!668 = !{!"../lib/test_xarray.c", i32 1215, i32 2}
!669 = !{ptr @check_pause._entry_ptr.389, !668, !"_entry_ptr", i1 false, i1 false}
!670 = !{ptr @.str.390, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../lib/test_xarray.c", i32 1741, i32 2}
!672 = !{ptr @check_destroy._entry, !671, !"_entry", i1 false, i1 false}
!673 = !{ptr @check_destroy._entry_ptr, !671, !"_entry_ptr", i1 false, i1 false}
!674 = !{ptr @check_destroy._entry.391, !675, !"_entry", i1 false, i1 false}
!675 = !{!"../lib/test_xarray.c", i32 1745, i32 2}
!676 = !{ptr @check_destroy._entry_ptr.392, !675, !"_entry_ptr", i1 false, i1 false}
!677 = !{ptr @check_destroy._entry.393, !678, !"_entry", i1 false, i1 false}
!678 = !{!"../lib/test_xarray.c", i32 1750, i32 3}
!679 = !{ptr @check_destroy._entry_ptr.394, !678, !"_entry_ptr", i1 false, i1 false}
!680 = !{ptr @check_destroy._entry.395, !681, !"_entry", i1 false, i1 false}
!681 = !{!"../lib/test_xarray.c", i32 1752, i32 3}
!682 = !{ptr @check_destroy._entry_ptr.396, !681, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @check_destroy._entry.397, !684, !"_entry", i1 false, i1 false}
!684 = !{!"../lib/test_xarray.c", i32 1757, i32 2}
!685 = !{ptr @check_destroy._entry_ptr.398, !684, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @check_destroy._entry.399, !687, !"_entry", i1 false, i1 false}
!687 = !{!"../lib/test_xarray.c", i32 1759, i32 2}
!688 = !{ptr @check_destroy._entry_ptr.400, !687, !"_entry_ptr", i1 false, i1 false}
!689 = !{ptr @.str.401, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../lib/test_xarray.c", i32 1317, i32 3}
!691 = !{ptr @check_move._entry, !690, !"_entry", i1 false, i1 false}
!692 = !{ptr @check_move._entry_ptr, !690, !"_entry_ptr", i1 false, i1 false}
!693 = !{ptr @check_move._entry.402, !694, !"_entry", i1 false, i1 false}
!694 = !{!"../lib/test_xarray.c", i32 1323, i32 3}
!695 = !{ptr @check_move._entry_ptr.403, !694, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @check_move._entry.404, !697, !"_entry", i1 false, i1 false}
!697 = !{!"../lib/test_xarray.c", i32 1324, i32 3}
!698 = !{ptr @check_move._entry_ptr.405, !697, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @check_move._entry.406, !700, !"_entry", i1 false, i1 false}
!700 = !{!"../lib/test_xarray.c", i32 1327, i32 2}
!701 = !{ptr @check_move._entry_ptr.407, !700, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @check_move._entry.408, !703, !"_entry", i1 false, i1 false}
!703 = !{!"../lib/test_xarray.c", i32 1328, i32 2}
!704 = !{ptr @check_move._entry_ptr.409, !703, !"_entry_ptr", i1 false, i1 false}
!705 = !{ptr @check_move._entry.410, !706, !"_entry", i1 false, i1 false}
!706 = !{!"../lib/test_xarray.c", i32 1332, i32 3}
!707 = !{ptr @check_move._entry_ptr.411, !706, !"_entry_ptr", i1 false, i1 false}
!708 = !{ptr @check_move._entry.412, !709, !"_entry", i1 false, i1 false}
!709 = !{!"../lib/test_xarray.c", i32 1333, i32 3}
!710 = !{ptr @check_move._entry_ptr.413, !709, !"_entry_ptr", i1 false, i1 false}
!711 = !{ptr @check_move._entry.414, !712, !"_entry", i1 false, i1 false}
!712 = !{!"../lib/test_xarray.c", i32 1348, i32 4}
!713 = !{ptr @check_move._entry_ptr.415, !712, !"_entry_ptr", i1 false, i1 false}
!714 = !{ptr @check_move._entry.416, !715, !"_entry", i1 false, i1 false}
!715 = !{!"../lib/test_xarray.c", i32 1350, i32 4}
!716 = !{ptr @check_move._entry_ptr.417, !715, !"_entry_ptr", i1 false, i1 false}
!717 = !{ptr @check_move._entry.418, !718, !"_entry", i1 false, i1 false}
!718 = !{!"../lib/test_xarray.c", i32 1351, i32 3}
!719 = !{ptr @check_move._entry_ptr.419, !718, !"_entry_ptr", i1 false, i1 false}
!720 = !{ptr @check_move._entry.420, !721, !"_entry", i1 false, i1 false}
!721 = !{!"../lib/test_xarray.c", i32 1354, i32 2}
!722 = !{ptr @check_move._entry_ptr.421, !721, !"_entry_ptr", i1 false, i1 false}
!723 = !{ptr @check_move._entry.422, !724, !"_entry", i1 false, i1 false}
!724 = !{!"../lib/test_xarray.c", i32 1355, i32 2}
!725 = !{ptr @check_move._entry_ptr.423, !724, !"_entry_ptr", i1 false, i1 false}
!726 = !{ptr @check_move._entry.424, !727, !"_entry", i1 false, i1 false}
!727 = !{!"../lib/test_xarray.c", i32 1360, i32 4}
!728 = !{ptr @check_move._entry_ptr.425, !727, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @check_move._entry.426, !730, !"_entry", i1 false, i1 false}
!730 = !{!"../lib/test_xarray.c", i32 1362, i32 4}
!731 = !{ptr @check_move._entry_ptr.427, !730, !"_entry_ptr", i1 false, i1 false}
!732 = !{ptr @check_move._entry.428, !733, !"_entry", i1 false, i1 false}
!733 = !{!"../lib/test_xarray.c", i32 1363, i32 3}
!734 = !{ptr @check_move._entry_ptr.429, !733, !"_entry_ptr", i1 false, i1 false}
!735 = !{ptr @.str.430, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../lib/test_xarray.c", i32 1224, i32 2}
!737 = !{ptr @check_move_tiny._entry, !736, !"_entry", i1 false, i1 false}
!738 = !{ptr @check_move_tiny._entry_ptr, !736, !"_entry_ptr", i1 false, i1 false}
!739 = !{ptr @check_move_tiny._entry.431, !740, !"_entry", i1 false, i1 false}
!740 = !{!"../lib/test_xarray.c", i32 1226, i32 2}
!741 = !{ptr @check_move_tiny._entry_ptr.432, !740, !"_entry_ptr", i1 false, i1 false}
!742 = !{ptr @check_move_tiny._entry.433, !743, !"_entry", i1 false, i1 false}
!743 = !{!"../lib/test_xarray.c", i32 1227, i32 2}
!744 = !{ptr @check_move_tiny._entry_ptr.434, !743, !"_entry_ptr", i1 false, i1 false}
!745 = !{ptr @check_move_tiny._entry.435, !746, !"_entry", i1 false, i1 false}
!746 = !{!"../lib/test_xarray.c", i32 1232, i32 2}
!747 = !{ptr @check_move_tiny._entry_ptr.436, !746, !"_entry_ptr", i1 false, i1 false}
!748 = !{ptr @check_move_tiny._entry.437, !749, !"_entry", i1 false, i1 false}
!749 = !{!"../lib/test_xarray.c", i32 1233, i32 2}
!750 = !{ptr @check_move_tiny._entry_ptr.438, !749, !"_entry_ptr", i1 false, i1 false}
!751 = !{ptr @check_move_tiny._entry.439, !752, !"_entry", i1 false, i1 false}
!752 = !{!"../lib/test_xarray.c", i32 1235, i32 2}
!753 = !{ptr @check_move_tiny._entry_ptr.440, !752, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @check_move_tiny._entry.441, !755, !"_entry", i1 false, i1 false}
!755 = !{!"../lib/test_xarray.c", i32 1236, i32 2}
!756 = !{ptr @check_move_tiny._entry_ptr.442, !755, !"_entry_ptr", i1 false, i1 false}
!757 = !{ptr @check_move_tiny._entry.443, !758, !"_entry", i1 false, i1 false}
!758 = !{!"../lib/test_xarray.c", i32 1239, i32 2}
!759 = !{ptr @check_move_tiny._entry_ptr.444, !758, !"_entry_ptr", i1 false, i1 false}
!760 = !{ptr @.str.445, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../lib/test_xarray.c", i32 1248, i32 2}
!762 = !{ptr @check_move_max._entry, !761, !"_entry", i1 false, i1 false}
!763 = !{ptr @check_move_max._entry_ptr, !761, !"_entry_ptr", i1 false, i1 false}
!764 = !{ptr @check_move_max._entry.446, !765, !"_entry", i1 false, i1 false}
!765 = !{!"../lib/test_xarray.c", i32 1249, i32 2}
!766 = !{ptr @check_move_max._entry_ptr.447, !765, !"_entry_ptr", i1 false, i1 false}
!767 = !{ptr @check_move_max._entry.448, !768, !"_entry", i1 false, i1 false}
!768 = !{!"../lib/test_xarray.c", i32 1254, i32 2}
!769 = !{ptr @check_move_max._entry_ptr.449, !768, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @check_move_max._entry.450, !771, !"_entry", i1 false, i1 false}
!771 = !{!"../lib/test_xarray.c", i32 1256, i32 2}
!772 = !{ptr @check_move_max._entry_ptr.451, !771, !"_entry_ptr", i1 false, i1 false}
!773 = !{ptr @check_move_max._entry.452, !774, !"_entry", i1 false, i1 false}
!774 = !{!"../lib/test_xarray.c", i32 1260, i32 2}
!775 = !{ptr @check_move_max._entry_ptr.453, !774, !"_entry_ptr", i1 false, i1 false}
!776 = !{ptr @.str.454, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../lib/test_xarray.c", i32 1275, i32 4}
!778 = !{ptr @check_move_small._entry, !777, !"_entry", i1 false, i1 false}
!779 = !{ptr @check_move_small._entry_ptr, !777, !"_entry_ptr", i1 false, i1 false}
!780 = !{ptr @check_move_small._entry.455, !781, !"_entry", i1 false, i1 false}
!781 = !{!"../lib/test_xarray.c", i32 1276, i32 3}
!782 = !{ptr @check_move_small._entry_ptr.456, !781, !"_entry_ptr", i1 false, i1 false}
!783 = !{ptr @check_move_small._entry.457, !784, !"_entry", i1 false, i1 false}
!784 = !{!"../lib/test_xarray.c", i32 1278, i32 4}
!785 = !{ptr @check_move_small._entry_ptr.458, !784, !"_entry_ptr", i1 false, i1 false}
!786 = !{ptr @check_move_small._entry.459, !787, !"_entry", i1 false, i1 false}
!787 = !{!"../lib/test_xarray.c", i32 1280, i32 4}
!788 = !{ptr @check_move_small._entry_ptr.460, !787, !"_entry_ptr", i1 false, i1 false}
!789 = !{ptr @check_move_small._entry.461, !790, !"_entry", i1 false, i1 false}
!790 = !{!"../lib/test_xarray.c", i32 1283, i32 2}
!791 = !{ptr @check_move_small._entry_ptr.462, !790, !"_entry_ptr", i1 false, i1 false}
!792 = !{ptr @check_move_small._entry.463, !793, !"_entry", i1 false, i1 false}
!793 = !{!"../lib/test_xarray.c", i32 1289, i32 4}
!794 = !{ptr @check_move_small._entry_ptr.464, !793, !"_entry_ptr", i1 false, i1 false}
!795 = !{ptr @check_move_small._entry.465, !796, !"_entry", i1 false, i1 false}
!796 = !{!"../lib/test_xarray.c", i32 1290, i32 3}
!797 = !{ptr @check_move_small._entry_ptr.466, !796, !"_entry_ptr", i1 false, i1 false}
!798 = !{ptr @check_move_small._entry.467, !799, !"_entry", i1 false, i1 false}
!799 = !{!"../lib/test_xarray.c", i32 1292, i32 4}
!800 = !{ptr @check_move_small._entry_ptr.468, !799, !"_entry_ptr", i1 false, i1 false}
!801 = !{ptr @check_move_small._entry.469, !802, !"_entry", i1 false, i1 false}
!802 = !{!"../lib/test_xarray.c", i32 1294, i32 4}
!803 = !{ptr @check_move_small._entry_ptr.470, !802, !"_entry_ptr", i1 false, i1 false}
!804 = !{ptr @check_move_small._entry.471, !805, !"_entry", i1 false, i1 false}
!805 = !{!"../lib/test_xarray.c", i32 1298, i32 2}
!806 = !{ptr @check_move_small._entry_ptr.472, !805, !"_entry_ptr", i1 false, i1 false}
!807 = !{ptr @check_move_small._entry.473, !808, !"_entry", i1 false, i1 false}
!808 = !{!"../lib/test_xarray.c", i32 1299, i32 2}
!809 = !{ptr @check_move_small._entry_ptr.474, !808, !"_entry_ptr", i1 false, i1 false}
!810 = !{ptr @check_move_small._entry.475, !811, !"_entry", i1 false, i1 false}
!811 = !{!"../lib/test_xarray.c", i32 1300, i32 2}
!812 = !{ptr @check_move_small._entry_ptr.476, !811, !"_entry_ptr", i1 false, i1 false}
!813 = !{ptr @check_move_small._entry.477, !814, !"_entry", i1 false, i1 false}
!814 = !{!"../lib/test_xarray.c", i32 1301, i32 2}
!815 = !{ptr @check_move_small._entry_ptr.478, !814, !"_entry_ptr", i1 false, i1 false}
!816 = !{ptr @check_move_small._entry.479, !817, !"_entry", i1 false, i1 false}
!817 = !{!"../lib/test_xarray.c", i32 1302, i32 2}
!818 = !{ptr @check_move_small._entry_ptr.480, !817, !"_entry_ptr", i1 false, i1 false}
!819 = !{ptr @check_move_small._entry.481, !820, !"_entry", i1 false, i1 false}
!820 = !{!"../lib/test_xarray.c", i32 1303, i32 2}
!821 = !{ptr @check_move_small._entry_ptr.482, !820, !"_entry_ptr", i1 false, i1 false}
!822 = !{ptr @check_move_small._entry.483, !823, !"_entry", i1 false, i1 false}
!823 = !{!"../lib/test_xarray.c", i32 1308, i32 2}
!824 = !{ptr @check_move_small._entry_ptr.484, !823, !"_entry_ptr", i1 false, i1 false}
!825 = !{ptr @.str.485, !826, !"<string literal>", i1 false, i1 false}
!826 = !{!"../lib/test_xarray.c", i32 1411, i32 2}
!827 = !{ptr @check_create_range_1._entry, !826, !"_entry", i1 false, i1 false}
!828 = !{ptr @check_create_range_1._entry_ptr, !826, !"_entry_ptr", i1 false, i1 false}
!829 = !{ptr @.str.486, !830, !"<string literal>", i1 false, i1 false}
!830 = !{!"../lib/test_xarray.c", i32 1388, i32 3}
!831 = !{ptr @xa_store_many_order._entry, !830, !"_entry", i1 false, i1 false}
!832 = !{ptr @xa_store_many_order._entry_ptr, !830, !"_entry_ptr", i1 false, i1 false}
!833 = !{ptr @xa_store_many_order._entry.487, !834, !"_entry", i1 false, i1 false}
!834 = !{!"../lib/test_xarray.c", i32 1393, i32 4}
!835 = !{ptr @xa_store_many_order._entry_ptr.488, !834, !"_entry_ptr", i1 false, i1 false}
!836 = !{ptr @xa_store_many_order._entry.489, !837, !"_entry", i1 false, i1 false}
!837 = !{!"../lib/test_xarray.c", i32 1400, i32 2}
!838 = !{ptr @xa_store_many_order._entry_ptr.490, !837, !"_entry_ptr", i1 false, i1 false}
!839 = !{ptr @.str.491, !840, !"<string literal>", i1 false, i1 false}
!840 = !{!"../lib/test_xarray.c", i32 1423, i32 2}
!841 = !{ptr @check_create_range_2._entry, !840, !"_entry", i1 false, i1 false}
!842 = !{ptr @check_create_range_2._entry_ptr, !840, !"_entry_ptr", i1 false, i1 false}
!843 = !{ptr @.str.492, !844, !"<string literal>", i1 false, i1 false}
!844 = !{!"../lib/test_xarray.c", i32 1450, i32 5}
!845 = !{ptr @check_create_range_4._entry, !844, !"_entry", i1 false, i1 false}
!846 = !{ptr @check_create_range_4._entry_ptr, !844, !"_entry_ptr", i1 false, i1 false}
!847 = !{ptr @check_create_range_4._entry.493, !848, !"_entry", i1 false, i1 false}
!848 = !{!"../lib/test_xarray.c", i32 1452, i32 5}
!849 = !{ptr @check_create_range_4._entry_ptr.494, !848, !"_entry_ptr", i1 false, i1 false}
!850 = !{ptr @check_create_range_4._entry.495, !851, !"_entry", i1 false, i1 false}
!851 = !{!"../lib/test_xarray.c", i32 1459, i32 2}
!852 = !{ptr @check_create_range_4._entry_ptr.496, !851, !"_entry_ptr", i1 false, i1 false}
!853 = !{ptr @check_create_range_4._entry.497, !854, !"_entry", i1 false, i1 false}
!854 = !{!"../lib/test_xarray.c", i32 1463, i32 2}
!855 = !{ptr @check_create_range_4._entry_ptr.498, !854, !"_entry_ptr", i1 false, i1 false}
!856 = !{ptr @.str.499, !857, !"<string literal>", i1 false, i1 false}
!857 = !{!"../lib/test_xarray.c", i32 1431, i32 2}
!858 = !{ptr @check_create_range_3._entry, !857, !"_entry", i1 false, i1 false}
!859 = !{ptr @check_create_range_3._entry_ptr, !857, !"_entry_ptr", i1 false, i1 false}
!860 = !{ptr @.str.500, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../lib/test_xarray.c", i32 1512, i32 2}
!862 = !{ptr @__check_store_range._entry, !861, !"_entry", i1 false, i1 false}
!863 = !{ptr @__check_store_range._entry_ptr, !861, !"_entry_ptr", i1 false, i1 false}
!864 = !{ptr @.str.501, !865, !"<string literal>", i1 false, i1 false}
!865 = !{!"../lib/test_xarray.c", i32 905, i32 3}
!866 = !{ptr @check_store_iter._entry, !865, !"_entry", i1 false, i1 false}
!867 = !{ptr @check_store_iter._entry_ptr, !865, !"_entry_ptr", i1 false, i1 false}
!868 = !{ptr @check_store_iter._entry.502, !869, !"_entry", i1 false, i1 false}
!869 = !{!"../lib/test_xarray.c", i32 907, i32 3}
!870 = !{ptr @check_store_iter._entry_ptr.503, !869, !"_entry_ptr", i1 false, i1 false}
!871 = !{ptr @check_store_iter._entry.504, !872, !"_entry", i1 false, i1 false}
!872 = !{!"../lib/test_xarray.c", i32 911, i32 3}
!873 = !{ptr @check_store_iter._entry_ptr.505, !872, !"_entry_ptr", i1 false, i1 false}
!874 = !{ptr @check_store_iter._entry.506, !875, !"_entry", i1 false, i1 false}
!875 = !{!"../lib/test_xarray.c", i32 914, i32 3}
!876 = !{ptr @check_store_iter._entry_ptr.507, !875, !"_entry_ptr", i1 false, i1 false}
!877 = !{ptr @check_store_iter._entry.508, !878, !"_entry", i1 false, i1 false}
!878 = !{!"../lib/test_xarray.c", i32 919, i32 3}
!879 = !{ptr @check_store_iter._entry_ptr.509, !878, !"_entry_ptr", i1 false, i1 false}
!880 = !{ptr @check_store_iter._entry.510, !881, !"_entry", i1 false, i1 false}
!881 = !{!"../lib/test_xarray.c", i32 923, i32 3}
!882 = !{ptr @check_store_iter._entry_ptr.511, !881, !"_entry_ptr", i1 false, i1 false}
!883 = !{ptr @check_store_iter._entry.512, !884, !"_entry", i1 false, i1 false}
!884 = !{!"../lib/test_xarray.c", i32 931, i32 2}
!885 = !{ptr @check_store_iter._entry_ptr.513, !884, !"_entry_ptr", i1 false, i1 false}
!886 = !{ptr @.str.514, !887, !"<string literal>", i1 false, i1 false}
!887 = !{!"../lib/test_xarray.c", i32 877, i32 3}
!888 = !{ptr @__check_store_iter._entry, !887, !"_entry", i1 false, i1 false}
!889 = !{ptr @__check_store_iter._entry_ptr, !887, !"_entry_ptr", i1 false, i1 false}
!890 = !{ptr @__check_store_iter._entry.515, !891, !"_entry", i1 false, i1 false}
!891 = !{!"../lib/test_xarray.c", i32 878, i32 3}
!892 = !{ptr @__check_store_iter._entry_ptr.516, !891, !"_entry_ptr", i1 false, i1 false}
!893 = !{ptr @__check_store_iter._entry.517, !894, !"_entry", i1 false, i1 false}
!894 = !{!"../lib/test_xarray.c", i32 879, i32 3}
!895 = !{ptr @__check_store_iter._entry_ptr.518, !894, !"_entry_ptr", i1 false, i1 false}
!896 = !{ptr @__check_store_iter._entry.519, !897, !"_entry", i1 false, i1 false}
!897 = !{!"../lib/test_xarray.c", i32 888, i32 2}
!898 = !{ptr @__check_store_iter._entry_ptr.520, !897, !"_entry_ptr", i1 false, i1 false}
!899 = !{ptr @__check_store_iter._entry.521, !900, !"_entry", i1 false, i1 false}
!900 = !{!"../lib/test_xarray.c", i32 889, i32 2}
!901 = !{ptr @__check_store_iter._entry_ptr.522, !900, !"_entry_ptr", i1 false, i1 false}
!902 = !{ptr @__check_store_iter._entry.523, !903, !"_entry", i1 false, i1 false}
!903 = !{!"../lib/test_xarray.c", i32 890, i32 2}
!904 = !{ptr @__check_store_iter._entry_ptr.524, !903, !"_entry_ptr", i1 false, i1 false}
!905 = !{ptr @__check_store_iter._entry.525, !906, !"_entry", i1 false, i1 false}
!906 = !{!"../lib/test_xarray.c", i32 891, i32 2}
!907 = !{ptr @__check_store_iter._entry_ptr.526, !906, !"_entry_ptr", i1 false, i1 false}
!908 = !{ptr @.str.527, !909, !"<string literal>", i1 false, i1 false}
!909 = !{!"../lib/test_xarray.c", i32 1584, i32 3}
!910 = !{ptr @check_align_1._entry, !909, !"_entry", i1 false, i1 false}
!911 = !{ptr @check_align_1._entry_ptr, !909, !"_entry_ptr", i1 false, i1 false}
!912 = !{ptr @check_align_1._entry.528, !913, !"_entry", i1 false, i1 false}
!913 = !{!"../lib/test_xarray.c", i32 1586, i32 3}
!914 = !{ptr @check_align_1._entry_ptr.529, !913, !"_entry_ptr", i1 false, i1 false}
!915 = !{ptr @check_align_1._entry.530, !916, !"_entry", i1 false, i1 false}
!916 = !{!"../lib/test_xarray.c", i32 1589, i32 3}
!917 = !{ptr @check_align_1._entry_ptr.531, !916, !"_entry_ptr", i1 false, i1 false}
!918 = !{ptr @.str.532, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../lib/test_xarray.c", i32 1601, i32 2}
!920 = !{ptr @check_align_2._entry, !919, !"_entry", i1 false, i1 false}
!921 = !{ptr @check_align_2._entry_ptr, !919, !"_entry_ptr", i1 false, i1 false}
!922 = !{ptr @check_align_2._entry.533, !923, !"_entry", i1 false, i1 false}
!923 = !{!"../lib/test_xarray.c", i32 1604, i32 3}
!924 = !{ptr @check_align_2._entry_ptr.534, !923, !"_entry_ptr", i1 false, i1 false}
!925 = !{ptr @check_align_2._entry.535, !926, !"_entry", i1 false, i1 false}
!926 = !{!"../lib/test_xarray.c", i32 1609, i32 3}
!927 = !{ptr @check_align_2._entry_ptr.536, !926, !"_entry_ptr", i1 false, i1 false}
!928 = !{ptr @check_align_2._entry.537, !929, !"_entry", i1 false, i1 false}
!929 = !{!"../lib/test_xarray.c", i32 1610, i32 3}
!930 = !{ptr @check_align_2._entry_ptr.538, !929, !"_entry_ptr", i1 false, i1 false}
!931 = !{ptr @check_align_2._entry.539, !932, !"_entry", i1 false, i1 false}
!932 = !{!"../lib/test_xarray.c", i32 1614, i32 2}
!933 = !{ptr @check_align_2._entry_ptr.540, !932, !"_entry_ptr", i1 false, i1 false}
!934 = !{ptr @.str.541, !935, !"<string literal>", i1 false, i1 false}
!935 = !{!"../lib/test_xarray.c", i32 1668, i32 2}
!936 = !{ptr @check_workingset._entry, !935, !"_entry", i1 false, i1 false}
!937 = !{ptr @check_workingset._entry_ptr, !935, !"_entry_ptr", i1 false, i1 false}
!938 = !{ptr @check_workingset._entry.542, !939, !"_entry", i1 false, i1 false}
!939 = !{!"../lib/test_xarray.c", i32 1673, i32 2}
!940 = !{ptr @check_workingset._entry_ptr.543, !939, !"_entry_ptr", i1 false, i1 false}
!941 = !{ptr @check_workingset._entry.544, !942, !"_entry", i1 false, i1 false}
!942 = !{!"../lib/test_xarray.c", i32 1677, i32 2}
!943 = !{ptr @check_workingset._entry_ptr.545, !942, !"_entry_ptr", i1 false, i1 false}
!944 = !{ptr @check_workingset._entry.546, !945, !"_entry", i1 false, i1 false}
!945 = !{!"../lib/test_xarray.c", i32 1680, i32 2}
!946 = !{ptr @check_workingset._entry_ptr.547, !945, !"_entry_ptr", i1 false, i1 false}
!947 = !{ptr @check_workingset._entry.548, !948, !"_entry", i1 false, i1 false}
!948 = !{!"../lib/test_xarray.c", i32 1681, i32 2}
!949 = !{ptr @check_workingset._entry_ptr.549, !948, !"_entry_ptr", i1 false, i1 false}
!950 = !{ptr @shadow_nodes, !951, !"shadow_nodes", i1 false, i1 false}
!951 = !{!"../lib/test_xarray.c", i32 1628, i32 8}
!952 = !{ptr @.str.550, !953, !"<string literal>", i1 false, i1 false}
!953 = !{!"../lib/test_xarray.c", i32 1648, i32 3}
!954 = !{ptr @shadow_remove._entry, !953, !"_entry", i1 false, i1 false}
!955 = !{ptr @shadow_remove._entry_ptr, !953, !"_entry_ptr", i1 false, i1 false}
!956 = !{ptr @tests_passed, !957, !"tests_passed", i1 false, i1 false}
!957 = !{!"../lib/test_xarray.c", i32 13, i32 21}
!958 = !{ptr @tests_run, !959, !"tests_run", i1 false, i1 false}
!959 = !{!"../lib/test_xarray.c", i32 12, i32 21}
!960 = !{!"sp"}
!961 = !{i32 1, !"wchar_size", i32 2}
!962 = !{i32 1, !"min_enum_size", i32 4}
!963 = !{i32 8, !"branch-target-enforcement", i32 0}
!964 = !{i32 8, !"sign-return-address", i32 0}
!965 = !{i32 8, !"sign-return-address-all", i32 0}
!966 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!967 = !{i32 7, !"uwtable", i32 1}
!968 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!969 = !{i64 2149997433}
!970 = !{i64 2149997699}
!971 = !{!"auto-init"}
!972 = !{!"branch_weights", i32 1, i32 2000}
!973 = !{!"branch_weights", i32 2000, i32 1}
!974 = !{i64 2151618305, i64 2151618787, i64 2151618342, i64 2151618398, i64 2151618432, i64 2151618456, i64 2151618497, i64 2151618518, i64 2151618546, i64 2151618580}
