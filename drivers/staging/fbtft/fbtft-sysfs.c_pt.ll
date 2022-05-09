; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fbtft-sysfs.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fbtft-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fbtft_par = type { ptr, ptr, ptr, ptr, ptr, [16 x i32], %struct.anon.79, ptr, i8, %struct.fbtft_ops, %struct.spinlock, i32, i32, %struct.anon.80, ptr, %struct.anon.81, i32, i8, i64, i8, ptr, i8 }
%struct.anon.79 = type { ptr, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.80 = type { ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.anon.81 = type { %struct.mutex, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.78 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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

@fbtft_gamma_parse_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s() str=\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fbtft_gamma_parse_str\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/fbtft/fbtft-sysfs.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry_ptr = internal global ptr @fbtft_gamma_parse_str._entry, section ".printk_index", align 4
@fbtft_gamma_parse_str._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry_ptr.7 = internal global ptr @fbtft_gamma_parse_str._entry.5, section ".printk_index", align 4
@fbtft_gamma_parse_str._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 56, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Gamma: Too many curves\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry_ptr.11 = internal global ptr @fbtft_gamma_parse_str._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 65, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Gamma: Too many values\0A\00", [40 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry_ptr.15 = internal global ptr @fbtft_gamma_parse_str._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 79, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Gamma: Too few values\0A\00", [41 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry_ptr.19 = internal global ptr @fbtft_gamma_parse_str._entry.17, section ".printk_index", align 4
@fbtft_gamma_parse_str._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 86, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Gamma: Too few curves\0A\00", [41 x i8] zeroinitializer }, align 32
@fbtft_gamma_parse_str._entry_ptr.22 = internal global ptr @fbtft_gamma_parse_str._entry.20, section ".printk_index", align 4
@debug_device_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_debug, ptr @store_debug }, [36 x i8] zeroinitializer }, align 32
@gamma_device_attrs = internal global { [1 x %struct.device_attribute], [36 x i8] } { [1 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.25, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_gamma_curve, ptr @store_gamma_curve }], [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gamma\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x \00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.27 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 30, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 35, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 56, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 60, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 64, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 69, i32 41 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 79, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 86, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"debug_device_attr\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 205, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"gamma_device_attrs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 149, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 206, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 202, i32 25 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 150, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [39 x i8] c"../drivers/staging/fbtft/fbtft-sysfs.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 106, i32 9 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @fbtft_gamma_parse_str._entry, ptr @fbtft_gamma_parse_str._entry.13, ptr @fbtft_gamma_parse_str._entry.17, ptr @fbtft_gamma_parse_str._entry.20, ptr @fbtft_gamma_parse_str._entry.5, ptr @fbtft_gamma_parse_str._entry.8, ptr @fbtft_gamma_parse_str._entry_ptr, ptr @fbtft_gamma_parse_str._entry_ptr.11, ptr @fbtft_gamma_parse_str._entry_ptr.15, ptr @fbtft_gamma_parse_str._entry_ptr.19, ptr @fbtft_gamma_parse_str._entry_ptr.22, ptr @fbtft_gamma_parse_str._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @debug_device_attr, ptr @gamma_device_attrs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_gamma_parse_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_gamma_parse_str._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_gamma_parse_str._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_gamma_parse_str._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_gamma_parse_str._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_gamma_parse_str._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_device_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_device_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbtft_gamma_parse_str(ptr nocapture noundef readonly %par, ptr noundef writeonly %curves, ptr noundef %str, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %str_p = alloca ptr, align 4
  %curve_p = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str_p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curve_p) #5
  %0 = ptrtoint ptr %curve_p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %curve_p, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val, align 4
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !54

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool6.not = icmp eq ptr %str, null
  %tobool7.not = icmp eq ptr %curves, null
  %or.cond = or i1 %tobool7.not, %tobool6.not
  br i1 %or.cond, label %do.end5.cleanup_crit_edge, label %do.body10

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body10:                                        ; preds = %do.end5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 8
  %and12 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body10.do.end28_crit_edge, label %do.end23, !prof !54

do.body10.do.end28_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end23:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %info24 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %10 = ptrtoint ptr %info24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info24, align 8
  %device25 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %device25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull %str) #8
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %do.body10.do.end28_crit_edge
  %add = add i32 %size, 1
  %call = tail call ptr @kmemdup(ptr noundef nonnull %str, i32 noundef %add, i32 noundef 3264) #5
  %tobool29.not = icmp eq ptr %call, null
  br i1 %tobool29.not, label %do.end28.cleanup_crit_edge, label %do.end28.while.cond_crit_edge

do.end28.while.cond_crit_edge:                    ; preds = %do.end28
  br label %while.cond

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond:                                       ; preds = %if.end40, %do.end28.while.cond_crit_edge
  %storemerge = phi ptr [ %incdec.ptr, %if.end40 ], [ %call, %do.end28.while.cond_crit_edge ]
  %14 = ptrtoint ptr %str_p to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %storemerge, ptr %str_p, align 4
  %15 = ptrtoint ptr %storemerge to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %storemerge, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %while.cond.if.end35_crit_edge [
    i8 0, label %while.end
    i8 44, label %if.then34
  ]

while.cond.if.end35_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then34:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %storemerge to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %storemerge, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %while.cond.if.end35_crit_edge
  %19 = ptrtoint ptr %str_p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %str_p, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %22)
  %cmp37 = icmp eq i8 %22, 59
  br i1 %cmp37, label %if.then39, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 10, ptr %20, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35.if.end40_crit_edge
  %24 = ptrtoint ptr %str_p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %str_p, align 4
  %incdec.ptr = getelementptr i8, ptr %25, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call41 = tail call ptr @strim(ptr noundef nonnull %call) #5
  %26 = ptrtoint ptr %str_p to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call41, ptr %str_p, align 4
  %tobool43.not143 = icmp eq ptr %call41, null
  br i1 %tobool43.not143, label %while.end.while.end88_crit_edge, label %while.body44.lr.ph

while.end.while.end88_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end88

while.body44.lr.ph:                               ; preds = %while.end
  %num_curves = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 3
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  br label %while.body44

while.body44:                                     ; preds = %if.end86.while.body44_crit_edge, %while.body44.lr.ph
  %curve_counter.0144 = phi i32 [ 0, %while.body44.lr.ph ], [ %inc87, %if.end86.while.body44_crit_edge ]
  %27 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_curves, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %curve_counter.0144, i32 %28)
  %cmp45 = icmp eq i32 %curve_counter.0144, %28
  br i1 %cmp45, label %while.body44.out.sink.split_crit_edge, label %if.end53

while.body44.out.sink.split_crit_edge:            ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end53:                                         ; preds = %while.body44
  %call54 = call ptr @strsep(ptr noundef nonnull %str_p, ptr noundef nonnull @.str.12) #5
  %29 = ptrtoint ptr %curve_p to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call54, ptr %curve_p, align 4
  %tobool56.not141 = icmp eq ptr %call54, null
  br i1 %tobool56.not141, label %if.end53.while.end75_crit_edge, label %if.end53.while.body57_crit_edge

if.end53.while.body57_crit_edge:                  ; preds = %if.end53
  br label %while.body57

if.end53.while.end75_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end75

while.body57:                                     ; preds = %if.end71.while.body57_crit_edge, %if.end53.while.body57_crit_edge
  %value_counter.0142 = phi i32 [ %inc, %if.end71.while.body57_crit_edge ], [ 0, %if.end53.while.body57_crit_edge ]
  %30 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_values, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %value_counter.0142, i32 %31)
  %cmp59 = icmp eq i32 %value_counter.0142, %31
  br i1 %cmp59, label %while.body57.out.sink.split_crit_edge, label %if.end.i

while.body57.out.sink.split_crit_edge:            ; preds = %while.body57
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end.i:                                         ; preds = %while.body57
  %call.i = call ptr @strsep(ptr noundef nonnull %curve_p, ptr noundef nonnull @.str.16) #5
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.out_crit_edge, label %get_next_ulong.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

get_next_ulong.exit:                              ; preds = %if.end.i
  %call.i.i = call i32 @_kstrtoul(ptr noundef nonnull %call.i, i32 noundef 16, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool69.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool69.not, label %if.end71, label %get_next_ulong.exit.out_crit_edge

get_next_ulong.exit.out_crit_edge:                ; preds = %get_next_ulong.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end71:                                         ; preds = %get_next_ulong.exit
  %32 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_values, align 8
  %mul = mul i32 %33, %curve_counter.0144
  %add74 = add i32 %mul, %value_counter.0142
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %arrayidx = getelementptr i32, ptr %curves, i32 %add74
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx, align 4
  %inc = add i32 %value_counter.0142, 1
  %37 = ptrtoint ptr %curve_p to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr132 = load ptr, ptr %curve_p, align 4
  %tobool56.not = icmp eq ptr %.pr132, null
  br i1 %tobool56.not, label %if.end71.while.end75_crit_edge, label %if.end71.while.body57_crit_edge

if.end71.while.body57_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body57

if.end71.while.end75_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end75

while.end75:                                      ; preds = %if.end71.while.end75_crit_edge, %if.end53.while.end75_crit_edge
  %value_counter.0.lcssa = phi i32 [ 0, %if.end53.while.end75_crit_edge ], [ %inc, %if.end71.while.end75_crit_edge ]
  %38 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_values, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %value_counter.0.lcssa, i32 %39)
  %cmp78.not = icmp eq i32 %value_counter.0.lcssa, %39
  br i1 %cmp78.not, label %if.end86, label %while.end75.out.sink.split_crit_edge

while.end75.out.sink.split_crit_edge:             ; preds = %while.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end86:                                         ; preds = %while.end75
  %inc87 = add i32 %curve_counter.0144, 1
  %40 = ptrtoint ptr %str_p to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load ptr, ptr %str_p, align 4
  %tobool43.not = icmp eq ptr %.pr, null
  br i1 %tobool43.not, label %if.end86.while.end88_crit_edge, label %if.end86.while.body44_crit_edge

if.end86.while.body44_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body44

if.end86.while.end88_crit_edge:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end88

while.end88:                                      ; preds = %if.end86.while.end88_crit_edge, %while.end.while.end88_crit_edge
  %curve_counter.0.lcssa = phi i32 [ 0, %while.end.while.end88_crit_edge ], [ %inc87, %if.end86.while.end88_crit_edge ]
  %num_curves90 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 3
  %41 = ptrtoint ptr %num_curves90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_curves90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %curve_counter.0.lcssa, i32 %42)
  %cmp91.not = icmp eq i32 %curve_counter.0.lcssa, %42
  br i1 %cmp91.not, label %while.end88.out_crit_edge, label %while.end88.out.sink.split_crit_edge

while.end88.out.sink.split_crit_edge:             ; preds = %while.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

while.end88.out_crit_edge:                        ; preds = %while.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out.sink.split:                                   ; preds = %while.end88.out.sink.split_crit_edge, %while.end75.out.sink.split_crit_edge, %while.body57.out.sink.split_crit_edge, %while.body44.out.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %while.end88.out.sink.split_crit_edge ], [ @.str.14, %while.body57.out.sink.split_crit_edge ], [ @.str.9, %while.body44.out.sink.split_crit_edge ], [ @.str.18, %while.end75.out.sink.split_crit_edge ]
  %info97 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %43 = ptrtoint ptr %info97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %info97, align 8
  %device98 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 21
  %45 = ptrtoint ptr %device98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device98, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %.str.21.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %while.end88.out_crit_edge, %get_next_ulong.exit.out_crit_edge, %if.end.i.out_crit_edge
  %ret.2 = phi i32 [ 0, %while.end88.out_crit_edge ], [ -22, %out.sink.split ], [ -22, %if.end.i.out_crit_edge ], [ %call.i.i, %get_next_ulong.exit.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end28.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %do.end5.cleanup_crit_edge ], [ -12, %do.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curve_p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str_p) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fbtft_expand_debug_value(ptr nocapture noundef %debug) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 7
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb9
    i32 7, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %1, 268435456
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or2 = or i32 %1, 268435480
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or4 = or i32 %1, -1132265448
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or6 = or i32 %1, 268459800
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or8 = or i32 %1, -1098711016
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or10 = or i32 %1, -1098686696
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %or4, %sw.bb3 ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ], [ -1, %entry.sw.epilog.sink.split_crit_edge ]
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %debug, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbtft_sysfs_init(ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @debug_device_attr) #5
  %curves = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curves, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_gamma = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 16
  %6 = ptrtoint ptr %set_gamma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_gamma, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 8
  %dev3 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %call4 = tail call i32 @device_create_file(ptr noundef %11, ptr noundef nonnull @gamma_device_attrs) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbtft_sysfs_exit(ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @debug_device_attr) #5
  %curves = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curves, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_gamma = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 16
  %6 = ptrtoint ptr %set_gamma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_gamma, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 8
  %dev3 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  tail call void @device_remove_file(ptr noundef %11, ptr noundef nonnull @gamma_device_attrs) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_debug(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %5) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_debug(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 16
  %call.i = tail call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef %debug) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  %and.i = and i32 %5, 7
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and.i, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb5.i
    i32 5, label %sw.bb7.i
    i32 6, label %sw.bb9.i
    i32 7, label %if.end.sw.epilog.sink.split.i_crit_edge
  ]

if.end.sw.epilog.sink.split.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %5, 268435456
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or2.i = or i32 %5, 268435480
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or4.i = or i32 %5, -1132265448
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or6.i = or i32 %5, 268459800
  br label %sw.epilog.sink.split.i

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or8.i = or i32 %5, -1098711016
  br label %sw.epilog.sink.split.i

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or10.i = or i32 %5, -1098686696
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %if.end.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %or10.i, %sw.bb9.i ], [ %or8.i, %sw.bb7.i ], [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i ], [ %or2.i, %sw.bb1.i ], [ %or.i, %sw.bb.i ], [ -1, %if.end.sw.epilog.sink.split.i_crit_edge ]
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink.i, ptr %debug, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %sw.epilog.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_gamma_curve(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %curves = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curves, align 4
  %gamma.i = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gamma.i, i32 noundef 0) #5
  %num_curves.i = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15, i32 3
  %6 = ptrtoint ptr %num_curves.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_curves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31.not.i = icmp eq i32 %7, 0
  br i1 %cmp31.not.i, label %entry.sprintf_gamma.exit_crit_edge, label %for.cond2.preheader.lr.ph.i

entry.sprintf_gamma.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprintf_gamma.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %entry
  %num_values.i = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15, i32 2
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.end.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %inc12.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %len.032.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %len.1.lcssa.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %8 = ptrtoint ptr %num_values.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_values.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp428.not.i = icmp eq i32 %9, 0
  br i1 %cmp428.not.i, label %for.cond2.preheader.i.for.end.i_crit_edge, label %for.cond2.preheader.i.for.body5.i_crit_edge

for.cond2.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body5.i

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond2.preheader.i.for.body5.i_crit_edge
  %10 = phi i32 [ %14, %for.body5.i.for.body5.i_crit_edge ], [ %9, %for.cond2.preheader.i.for.body5.i_crit_edge ]
  %j.030.i = phi i32 [ %inc.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond2.preheader.i.for.body5.i_crit_edge ]
  %len.129.i = phi i32 [ %add9.i, %for.body5.i.for.body5.i_crit_edge ], [ %len.032.i, %for.cond2.preheader.i.for.body5.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %len.129.i
  %mul.i = mul i32 %10, %i.033.i
  %add.i = add i32 %mul.i, %j.030.i
  %arrayidx8.i = getelementptr i32, ptr %5, i32 %add.i
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx.i, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef %12) #5
  %add9.i = add i32 %call.i, %len.129.i
  %inc.i = add nuw i32 %j.030.i, 1
  %13 = ptrtoint ptr %num_values.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_values.i, align 8
  %cmp4.i = icmp ult i32 %inc.i, %14
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.end.i_crit_edge

for.body5.i.for.end.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i

for.end.i:                                        ; preds = %for.body5.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %len.1.lcssa.i = phi i32 [ %len.032.i, %for.cond2.preheader.i.for.end.i_crit_edge ], [ %add9.i, %for.body5.i.for.end.i_crit_edge ]
  %sub.i = add i32 %len.1.lcssa.i, -1
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %arrayidx10.i, align 1
  %inc12.i = add nuw i32 %i.033.i, 1
  %16 = ptrtoint ptr %num_curves.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_curves.i, align 4
  %cmp.i = icmp ult i32 %inc12.i, %17
  br i1 %cmp.i, label %for.end.i.for.cond2.preheader.i_crit_edge, label %for.end.i.sprintf_gamma.exit_crit_edge

for.end.i.sprintf_gamma.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprintf_gamma.exit

for.end.i.for.cond2.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond2.preheader.i

sprintf_gamma.exit:                               ; preds = %for.end.i.sprintf_gamma.exit_crit_edge, %entry.sprintf_gamma.exit_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %entry.sprintf_gamma.exit_crit_edge ], [ %len.1.lcssa.i, %for.end.i.sprintf_gamma.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gamma.i) #5
  ret i32 %len.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_gamma_curve(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %tmp_curves = alloca [128 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tmp_curves) #5
  %4 = call ptr @memset(ptr %tmp_curves, i32 255, i32 512)
  %call2 = call i32 @fbtft_gamma_parse_str(ptr noundef %3, ptr noundef nonnull %tmp_curves, ptr noundef %buf, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_gamma = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 9, i32 16
  %5 = ptrtoint ptr %set_gamma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_gamma, align 4
  %call4 = call i32 %6(ptr noundef %3, ptr noundef nonnull %tmp_curves) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %gamma = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %gamma, i32 noundef 0) #5
  %curves = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curves, align 4
  %num_curves = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15, i32 3
  %9 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_curves, align 4
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %3, i32 0, i32 15, i32 2
  %11 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_values, align 8
  %mul = shl i32 %10, 2
  %mul12 = mul i32 %mul, %12
  %13 = call ptr @memcpy(ptr %8, ptr %tmp_curves, i32 %mul12)
  call void @mutex_unlock(ptr noundef %gamma) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp_curves) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 30, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fbtft_gamma_parse_str._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fbtft_gamma_parse_str._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 35, i32 2}
!10 = !{ptr @fbtft_gamma_parse_str._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @fbtft_gamma_parse_str._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 56, i32 4}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fbtft_gamma_parse_str._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @fbtft_gamma_parse_str._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 60, i32 28}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 64, i32 5}
!21 = !{ptr @fbtft_gamma_parse_str._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @fbtft_gamma_parse_str._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 69, i32 41}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 79, i32 4}
!27 = !{ptr @fbtft_gamma_parse_str._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fbtft_gamma_parse_str._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 86, i32 3}
!31 = !{ptr @fbtft_gamma_parse_str._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fbtft_gamma_parse_str._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 206, i32 2}
!35 = !{ptr @debug_device_attr, !36, !"debug_device_attr", i1 false, i1 false}
!36 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 205, i32 32}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 202, i32 25}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 150, i32 2}
!41 = !{ptr @gamma_device_attrs, !42, !"gamma_device_attrs", i1 false, i1 false}
!42 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 149, i32 32}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/fbtft/fbtft-sysfs.c", i32 106, i32 9}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
