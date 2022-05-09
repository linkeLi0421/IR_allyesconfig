; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_si_hotmod.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_si_hotmod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hotmod_vals = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipmi_plat_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@__param_str_hotmod = internal constant [15 x i8] c"ipmi_si.hotmod\00", align 1
@__param_ops_hotmod = internal constant %struct.kernel_param_ops { i32 0, ptr @hotmod_handler, ptr null, ptr null }, align 4
@__param_hotmod = internal constant %struct.kernel_param { ptr @__param_str_hotmod, ptr null, ptr @__param_ops_hotmod, i16 128, i8 -1, i8 0, %union.anon.62 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_hotmod227 = internal constant [130 x i8] c"ipmi_si.parm=hotmod:Add and remove interfaces.  See Documentation/driver-api/ipmi.rst in the kernel sources for the gory details.\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hotmod-ipmi-si\00", [17 x i8] zeroinitializer }, align 32
@hotmod_nr = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@hotmod_ops = internal constant { [3 x %struct.hotmod_vals], [40 x i8] } { [3 x %struct.hotmod_vals] [%struct.hotmod_vals { ptr @.str.20, i32 0 }, %struct.hotmod_vals { ptr @.str.21, i32 1 }, %struct.hotmod_vals zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"operation\00", [22 x i8] zeroinitializer }, align 32
@hotmod_si = internal constant { [4 x %struct.hotmod_vals], [32 x i8] } { [4 x %struct.hotmod_vals] [%struct.hotmod_vals { ptr @.str.22, i32 1 }, %struct.hotmod_vals { ptr @.str.23, i32 2 }, %struct.hotmod_vals { ptr @.str.24, i32 3 }, %struct.hotmod_vals zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"interface type\00", [17 x i8] zeroinitializer }, align 32
@hotmod_as = internal constant { [3 x %struct.hotmod_vals], [40 x i8] } { [3 x %struct.hotmod_vals] [%struct.hotmod_vals { ptr @.str.25, i32 1 }, %struct.hotmod_vals { ptr @.str.26, i32 0 }, %struct.hotmod_vals zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"address space\00", [18 x i8] zeroinitializer }, align 32
@parse_hotmod_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014ipmi_hotmod: Invalid hotmod address '%s': %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parse_hotmod_str\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/ipmi/ipmi_si_hotmod.c\00", [61 x i8] zeroinitializer }, align 32
@parse_hotmod_str._entry_ptr = internal global ptr @parse_hotmod_str._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsp\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsi\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsh\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipmb\00", [27 x i8] zeroinitializer }, align 32
@parse_hotmod_str._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014ipmi_hotmod: Invalid hotmod option '%s'\0A\00", [53 x i8] zeroinitializer }, align 32
@parse_hotmod_str._entry_ptr.14 = internal global ptr @parse_hotmod_str._entry.12, section ".printk_index", align 4
@parse_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014ipmi_hotmod: No hotmod %s given\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parse_str\00", [22 x i8] zeroinitializer }, align 32
@parse_str._entry_ptr = internal global ptr @parse_str._entry, section ".printk_index", align 4
@parse_str._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014ipmi_hotmod: Invalid hotmod %s '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_str._entry_ptr.19 = internal global ptr @parse_str._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kcs\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smic\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bt\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i/o\00", [28 x i8] zeroinitializer }, align 32
@check_hotmod_int_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014ipmi_hotmod: No option given for '%s'\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_hotmod_int_op\00", [44 x i8] zeroinitializer }, align 32
@check_hotmod_int_op._entry_ptr = internal global ptr @check_hotmod_int_op._entry, section ".printk_index", align 4
@check_hotmod_int_op._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.6, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014ipmi_hotmod: Bad option given for '%s'\0A\00", [54 x i8] zeroinitializer }, align 32
@check_hotmod_int_op._entry_ptr.31 = internal global ptr @check_hotmod_int_op._entry.29, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 236, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"hotmod_nr\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 183, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"hotmod_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 39, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 111, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"hotmod_si\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 45, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 116, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"hotmod_as\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 52, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 121, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 133, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 149, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 154, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 159, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 164, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 169, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 175, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 66, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 79, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 40, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 41, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 46, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 47, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 48, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 53, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 54, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 90, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [38 x i8] c"../drivers/char/ipmi/ipmi_si_hotmod.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 95, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_hotmod227, ptr @__param_hotmod, ptr @check_hotmod_int_op._entry, ptr @check_hotmod_int_op._entry.29, ptr @check_hotmod_int_op._entry_ptr, ptr @check_hotmod_int_op._entry_ptr.31, ptr @parse_hotmod_str._entry, ptr @parse_hotmod_str._entry.12, ptr @parse_hotmod_str._entry_ptr, ptr @parse_hotmod_str._entry_ptr.14, ptr @parse_str._entry, ptr @parse_str._entry.17, ptr @parse_str._entry_ptr, ptr @parse_str._entry_ptr.19, ptr @.str, ptr @hotmod_nr, ptr @hotmod_ops, ptr @.str.1, ptr @hotmod_si, ptr @.str.2, ptr @hotmod_as, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotmod_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotmod_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotmod_si to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotmod_as to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_hotmod_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_hotmod_str._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_str._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_hotmod_int_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_hotmod_int_op._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_si_hotmod_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipmi_remove_platform_device_by_name(ptr noundef nonnull @.str) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_remove_platform_device_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hotmod_handler(ptr noundef %val, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  %n.i = alloca ptr, align 4
  %n.i200.i = alloca ptr, align 4
  %n.i184.i = alloca ptr, align 4
  %n.i168.i = alloca ptr, align 4
  %n.i.i = alloca ptr, align 4
  %h = alloca %struct.ipmi_plat_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %h) #6
  %0 = call ptr @memset(ptr %h, i32 255, i32 40)
  %call = tail call noalias ptr @kstrdup(ptr noundef %val, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @strim(ptr noundef nonnull %call) #6
  %tobool2.not129 = icmp eq ptr %call.i, null
  br i1 %tobool2.not129, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %type.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 1
  %space.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 2
  %addr.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 3
  %regspacing.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 4
  %regsize.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 5
  %regshift.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 6
  %irq.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 7
  %slave_addr.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 8
  %addr_source.i = getelementptr inbounds %struct.ipmi_plat_data, ptr %h, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %curr.0130 = phi ptr [ %call.i, %for.body.lr.ph ], [ %next.0, %cleanup.for.body_crit_edge ]
  %call3 = call ptr @strchr(ptr noundef nonnull %curr.0130, i32 noundef 58)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body.if.end6_crit_edge, label %if.then5

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call3, align 1
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %next.0 = phi ptr [ %incdec.ptr, %if.then5 ], [ null, %for.body.if.end6_crit_edge ]
  %2 = call ptr @memset(ptr %h, i32 0, i32 40)
  %call.i.i43 = call ptr @strchr(ptr noundef nonnull %curr.0130, i32 noundef 44) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i43, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #9
  br label %out

if.end.i.i:                                       ; preds = %if.end6
  %3 = ptrtoint ptr %call.i.i43 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call.i.i43, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i.i43, i32 1
  %call6.i.i = call i32 @strcmp(ptr noundef nonnull %curr.0130, ptr noundef nonnull dereferenceable(4) @.str.20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i_crit_edge, label %for.inc.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  %call6.i.1.i = call i32 @strcmp(ptr noundef nonnull %curr.0130, ptr noundef nonnull dereferenceable(7) @.str.21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.1.i)
  %cmp.i.1.i = icmp eq i32 %call6.i.1.i, 0
  br i1 %cmp.i.1.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.1.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, ptr noundef nonnull %curr.0130) #9
  br label %out

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %i.031.i.lcssa.i = phi i32 [ 0, %if.end.i.i.if.end.i_crit_edge ], [ 1, %for.inc.i.i.if.end.i_crit_edge ]
  %val9.i.i = getelementptr %struct.hotmod_vals, ptr @hotmod_ops, i32 %i.031.i.lcssa.i, i32 1
  %4 = ptrtoint ptr %val9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val9.i.i, align 4
  %call.i121.i = call ptr @strchr(ptr noundef %incdec.ptr.i.i, i32 noundef 44) #6
  %tobool.not.i122.i = icmp eq ptr %call.i121.i, null
  br i1 %tobool.not.i122.i, label %do.end.i124.i, label %if.end.i126.i

do.end.i124.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #9
  br label %out

if.end.i126.i:                                    ; preds = %if.end.i
  %6 = ptrtoint ptr %call.i121.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call.i121.i, align 1
  %incdec.ptr.i125.i = getelementptr i8, ptr %call.i121.i, i32 1
  %call6.i128.i = call i32 @strcmp(ptr noundef %incdec.ptr.i.i, ptr noundef nonnull dereferenceable(4) @.str.22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i128.i)
  %cmp.i129.i = icmp eq i32 %call6.i128.i, 0
  br i1 %cmp.i129.i, label %if.end.i126.i.if.end4.i_crit_edge, label %for.inc.i136.i

if.end.i126.i.if.end4.i_crit_edge:                ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.i136.i:                                   ; preds = %if.end.i126.i
  %call6.i128.1.i = call i32 @strcmp(ptr noundef %incdec.ptr.i.i, ptr noundef nonnull dereferenceable(5) @.str.23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i128.1.i)
  %cmp.i129.1.i = icmp eq i32 %call6.i128.1.i, 0
  br i1 %cmp.i129.1.i, label %for.inc.i136.i.if.end4.i_crit_edge, label %for.inc.i136.1.i

for.inc.i136.i.if.end4.i_crit_edge:               ; preds = %for.inc.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.i136.1.i:                                 ; preds = %for.inc.i136.i
  %call6.i128.2.i = call i32 @strcmp(ptr noundef %incdec.ptr.i.i, ptr noundef nonnull dereferenceable(3) @.str.24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i128.2.i)
  %cmp.i129.2.i = icmp eq i32 %call6.i128.2.i, 0
  br i1 %cmp.i129.2.i, label %for.inc.i136.1.i.if.end4.i_crit_edge, label %for.inc.i136.2.i

for.inc.i136.1.i.if.end4.i_crit_edge:             ; preds = %for.inc.i136.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.i136.2.i:                                 ; preds = %for.inc.i136.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef %incdec.ptr.i.i) #9
  br label %out

if.end4.i:                                        ; preds = %for.inc.i136.1.i.if.end4.i_crit_edge, %for.inc.i136.i.if.end4.i_crit_edge, %if.end.i126.i.if.end4.i_crit_edge
  %i.031.i127.lcssa.i = phi i32 [ 0, %if.end.i126.i.if.end4.i_crit_edge ], [ 1, %for.inc.i136.i.if.end4.i_crit_edge ], [ 2, %for.inc.i136.1.i.if.end4.i_crit_edge ]
  %val9.i131.i = getelementptr %struct.hotmod_vals, ptr @hotmod_si, i32 %i.031.i127.lcssa.i, i32 1
  %7 = ptrtoint ptr %val9.i131.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val9.i131.i, align 4
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type.i, align 4
  %call.i141.i = call ptr @strchr(ptr noundef %incdec.ptr.i125.i, i32 noundef 44) #6
  %tobool.not.i142.i = icmp eq ptr %call.i141.i, null
  br i1 %tobool.not.i142.i, label %do.end.i144.i, label %if.end.i146.i

do.end.i144.i:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i143.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3) #9
  br label %out

if.end.i146.i:                                    ; preds = %if.end4.i
  %10 = ptrtoint ptr %call.i141.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call.i141.i, align 1
  %incdec.ptr.i145.i = getelementptr i8, ptr %call.i141.i, i32 1
  %call6.i148.i = call i32 @strcmp(ptr noundef %incdec.ptr.i125.i, ptr noundef nonnull dereferenceable(4) @.str.25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i148.i)
  %cmp.i149.i = icmp eq i32 %call6.i148.i, 0
  br i1 %cmp.i149.i, label %if.end.i146.i.if.end8.i_crit_edge, label %for.inc.i156.i

if.end.i146.i.if.end8.i_crit_edge:                ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.inc.i156.i:                                   ; preds = %if.end.i146.i
  %call6.i148.1.i = call i32 @strcmp(ptr noundef %incdec.ptr.i125.i, ptr noundef nonnull dereferenceable(4) @.str.26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i148.1.i)
  %cmp.i149.1.i = icmp eq i32 %call6.i148.1.i, 0
  br i1 %cmp.i149.1.i, label %for.inc.i156.i.if.end8.i_crit_edge, label %for.inc.i156.1.i

for.inc.i156.i.if.end8.i_crit_edge:               ; preds = %for.inc.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.inc.i156.1.i:                                 ; preds = %for.inc.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i157.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %incdec.ptr.i125.i) #9
  br label %out

if.end8.i:                                        ; preds = %for.inc.i156.i.if.end8.i_crit_edge, %if.end.i146.i.if.end8.i_crit_edge
  %i.031.i147.lcssa.i = phi i32 [ 0, %if.end.i146.i.if.end8.i_crit_edge ], [ 1, %for.inc.i156.i.if.end8.i_crit_edge ]
  %val9.i151.i = getelementptr %struct.hotmod_vals, ptr @hotmod_as, i32 %i.031.i147.lcssa.i, i32 1
  %11 = ptrtoint ptr %val9.i151.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val9.i151.i, align 4
  %13 = ptrtoint ptr %space.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %space.i, align 4
  %call9.i = call ptr @strchr(ptr noundef %incdec.ptr.i145.i, i32 noundef 44) #6
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end12.thread.i, label %if.end12.i

if.end12.i:                                       ; preds = %if.end8.i
  %14 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %call9.i, align 1
  %call.i161.i = call i32 @_kstrtoul(ptr noundef %incdec.ptr.i145.i, i32 noundef 0, ptr noundef %addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %tobool14.not.i = icmp eq i32 %call.i161.i, 0
  br i1 %tobool14.not.i, label %while.cond.preheader.i, label %if.end12.i.do.end.i_crit_edge

if.end12.i.do.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end12.thread.i:                                ; preds = %if.end8.i
  %call.i161296.i = call i32 @_kstrtoul(ptr noundef %incdec.ptr.i145.i, i32 noundef 0, ptr noundef %addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161296.i)
  %tobool14.not297.i = icmp eq i32 %call.i161296.i, 0
  br i1 %tobool14.not297.i, label %if.end12.thread.i.if.end10_crit_edge, label %if.end12.thread.i.do.end.i_crit_edge

if.end12.thread.i.do.end.i_crit_edge:             ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end12.thread.i.if.end10_crit_edge:             ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

while.cond.preheader.i:                           ; preds = %if.end12.i
  %incdec.ptr.i = getelementptr i8, ptr %call9.i, i32 1
  %tobool18.not278.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool18.not278.i, label %while.cond.preheader.i.if.end10_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end10_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end.i:                                         ; preds = %if.end12.thread.i.do.end.i_crit_edge, %if.end12.i.do.end.i_crit_edge
  %call.i161299.i = phi i32 [ %call.i161296.i, %if.end12.thread.i.do.end.i_crit_edge ], [ %call.i161.i, %if.end12.i.do.end.i_crit_edge ]
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %incdec.ptr.i145.i, i32 noundef %call.i161299.i) #9
  br label %out

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %s.1279.i = phi ptr [ %s.2.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %incdec.ptr.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call19.i = call ptr @strchr(ptr noundef nonnull %s.1279.i, i32 noundef 44) #6
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %while.body.i.if.end23.i_crit_edge, label %if.then21.i

while.body.i.if.end23.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then21.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call19.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %call19.i, align 1
  %incdec.ptr22.i = getelementptr i8, ptr %call19.i, i32 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %while.body.i.if.end23.i_crit_edge
  %s.2.i = phi ptr [ %incdec.ptr22.i, %if.then21.i ], [ null, %while.body.i.if.end23.i_crit_edge ]
  %call24.i = call ptr @strchr(ptr noundef nonnull %s.1279.i, i32 noundef 61) #6
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end28.i_crit_edge, label %if.then26.i

if.end23.i.if.end28.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call24.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %call24.i, align 1
  %incdec.ptr27.i = getelementptr i8, ptr %call24.i, i32 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end28.i_crit_edge
  %o.0.i = phi ptr [ %incdec.ptr27.i, %if.then26.i ], [ null, %if.end23.i.if.end28.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i.i) #6
  %17 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %n.i.i, align 4, !annotation !83
  %call.i162.i = call i32 @strcmp(ptr noundef nonnull %s.1279.i, ptr noundef nonnull dereferenceable(4) @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i)
  %cmp.i163.i = icmp eq i32 %call.i162.i, 0
  br i1 %cmp.i163.i, label %if.then.i.i, label %if.end34.i

if.then.i.i:                                      ; preds = %if.end28.i
  %tobool.not.i164.i = icmp eq ptr %o.0.i, null
  br i1 %tobool.not.i164.i, label %if.then.i.i.check_hotmod_int_op.exit.thread.i_crit_edge, label %if.end.i166.i

if.then.i.i.check_hotmod_int_op.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit.thread.i

if.end.i166.i:                                    ; preds = %if.then.i.i
  %call3.i.i = call i32 @simple_strtoul(ptr noundef nonnull %o.0.i, ptr noundef nonnull %n.i.i, i32 noundef 0) #6
  %18 = ptrtoint ptr %regspacing.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i.i, ptr %regspacing.i, align 4
  %19 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %n.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp4.not.i.i = icmp eq i8 %22, 0
  br i1 %cmp4.not.i.i, label %lor.lhs.false.i.i, label %if.end.i166.i.check_hotmod_int_op.exit.thread.i_crit_edge

if.end.i166.i.check_hotmod_int_op.exit.thread.i_crit_edge: ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i166.i
  %23 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %o.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp7.i.i = icmp eq i8 %24, 0
  br i1 %cmp7.i.i, label %lor.lhs.false.i.i.check_hotmod_int_op.exit.thread.i_crit_edge, label %if.else.i

lor.lhs.false.i.i.check_hotmod_int_op.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit.thread.i

check_hotmod_int_op.exit.thread.i:                ; preds = %lor.lhs.false.i.i.check_hotmod_int_op.exit.thread.i_crit_edge, %if.end.i166.i.check_hotmod_int_op.exit.thread.i_crit_edge, %if.then.i.i.check_hotmod_int_op.exit.thread.i_crit_edge
  %.str.30.sink = phi ptr [ @.str.27, %if.then.i.i.check_hotmod_int_op.exit.thread.i_crit_edge ], [ @.str.30, %lor.lhs.false.i.i.check_hotmod_int_op.exit.thread.i_crit_edge ], [ @.str.30, %if.end.i166.i.check_hotmod_int_op.exit.thread.i_crit_edge ]
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink, ptr noundef nonnull %s.1279.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #6
  br label %out

if.else.i:                                        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #6
  br label %while.cond.backedge.i

if.end34.i:                                       ; preds = %if.end28.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i168.i) #6
  %25 = ptrtoint ptr %n.i168.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %n.i168.i, align 4, !annotation !83
  %call.i169.i = call i32 @strcmp(ptr noundef nonnull %s.1279.i, ptr noundef nonnull dereferenceable(4) @.str.8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169.i)
  %cmp.i170.i = icmp eq i32 %call.i169.i, 0
  br i1 %cmp.i170.i, label %if.then.i172.i, label %if.end42.i

if.then.i172.i:                                   ; preds = %if.end34.i
  %tobool.not.i171.i = icmp eq ptr %o.0.i, null
  br i1 %tobool.not.i171.i, label %if.then.i172.i.check_hotmod_int_op.exit183.thread.i_crit_edge, label %if.end.i177.i

if.then.i172.i.check_hotmod_int_op.exit183.thread.i_crit_edge: ; preds = %if.then.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit183.thread.i

if.end.i177.i:                                    ; preds = %if.then.i172.i
  %call3.i175.i = call i32 @simple_strtoul(ptr noundef nonnull %o.0.i, ptr noundef nonnull %n.i168.i, i32 noundef 0) #6
  %26 = ptrtoint ptr %regsize.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call3.i175.i, ptr %regsize.i, align 4
  %27 = ptrtoint ptr %n.i168.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %n.i168.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp4.not.i176.i = icmp eq i8 %30, 0
  br i1 %cmp4.not.i176.i, label %lor.lhs.false.i179.i, label %if.end.i177.i.check_hotmod_int_op.exit183.thread.i_crit_edge

if.end.i177.i.check_hotmod_int_op.exit183.thread.i_crit_edge: ; preds = %if.end.i177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit183.thread.i

lor.lhs.false.i179.i:                             ; preds = %if.end.i177.i
  %31 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %o.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp7.i178.i = icmp eq i8 %32, 0
  br i1 %cmp7.i178.i, label %lor.lhs.false.i179.i.check_hotmod_int_op.exit183.thread.i_crit_edge, label %if.else38.i

lor.lhs.false.i179.i.check_hotmod_int_op.exit183.thread.i_crit_edge: ; preds = %lor.lhs.false.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit183.thread.i

check_hotmod_int_op.exit183.thread.i:             ; preds = %lor.lhs.false.i179.i.check_hotmod_int_op.exit183.thread.i_crit_edge, %if.end.i177.i.check_hotmod_int_op.exit183.thread.i_crit_edge, %if.then.i172.i.check_hotmod_int_op.exit183.thread.i_crit_edge
  %.str.30.sink353 = phi ptr [ @.str.27, %if.then.i172.i.check_hotmod_int_op.exit183.thread.i_crit_edge ], [ @.str.30, %lor.lhs.false.i179.i.check_hotmod_int_op.exit183.thread.i_crit_edge ], [ @.str.30, %if.end.i177.i.check_hotmod_int_op.exit183.thread.i_crit_edge ]
  %call14.i180.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink353, ptr noundef nonnull %s.1279.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i168.i) #6
  br label %out

if.else38.i:                                      ; preds = %lor.lhs.false.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i168.i) #6
  br label %while.cond.backedge.i

if.end42.i:                                       ; preds = %if.end34.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i168.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i184.i) #6
  %33 = ptrtoint ptr %n.i184.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %n.i184.i, align 4, !annotation !83
  %call.i185.i = call i32 @strcmp(ptr noundef nonnull %s.1279.i, ptr noundef nonnull dereferenceable(4) @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.i)
  %cmp.i186.i = icmp eq i32 %call.i185.i, 0
  br i1 %cmp.i186.i, label %if.then.i188.i, label %if.end50.i

if.then.i188.i:                                   ; preds = %if.end42.i
  %tobool.not.i187.i = icmp eq ptr %o.0.i, null
  br i1 %tobool.not.i187.i, label %if.then.i188.i.check_hotmod_int_op.exit199.thread.i_crit_edge, label %if.end.i193.i

if.then.i188.i.check_hotmod_int_op.exit199.thread.i_crit_edge: ; preds = %if.then.i188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit199.thread.i

if.end.i193.i:                                    ; preds = %if.then.i188.i
  %call3.i191.i = call i32 @simple_strtoul(ptr noundef nonnull %o.0.i, ptr noundef nonnull %n.i184.i, i32 noundef 0) #6
  %34 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call3.i191.i, ptr %regshift.i, align 4
  %35 = ptrtoint ptr %n.i184.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %n.i184.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp4.not.i192.i = icmp eq i8 %38, 0
  br i1 %cmp4.not.i192.i, label %lor.lhs.false.i195.i, label %if.end.i193.i.check_hotmod_int_op.exit199.thread.i_crit_edge

if.end.i193.i.check_hotmod_int_op.exit199.thread.i_crit_edge: ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit199.thread.i

lor.lhs.false.i195.i:                             ; preds = %if.end.i193.i
  %39 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %o.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp7.i194.i = icmp eq i8 %40, 0
  br i1 %cmp7.i194.i, label %lor.lhs.false.i195.i.check_hotmod_int_op.exit199.thread.i_crit_edge, label %if.else46.i

lor.lhs.false.i195.i.check_hotmod_int_op.exit199.thread.i_crit_edge: ; preds = %lor.lhs.false.i195.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit199.thread.i

check_hotmod_int_op.exit199.thread.i:             ; preds = %lor.lhs.false.i195.i.check_hotmod_int_op.exit199.thread.i_crit_edge, %if.end.i193.i.check_hotmod_int_op.exit199.thread.i_crit_edge, %if.then.i188.i.check_hotmod_int_op.exit199.thread.i_crit_edge
  %.str.30.sink354 = phi ptr [ @.str.27, %if.then.i188.i.check_hotmod_int_op.exit199.thread.i_crit_edge ], [ @.str.30, %lor.lhs.false.i195.i.check_hotmod_int_op.exit199.thread.i_crit_edge ], [ @.str.30, %if.end.i193.i.check_hotmod_int_op.exit199.thread.i_crit_edge ]
  %call14.i196.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink354, ptr noundef nonnull %s.1279.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i184.i) #6
  br label %out

if.else46.i:                                      ; preds = %lor.lhs.false.i195.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i184.i) #6
  br label %while.cond.backedge.i

if.end50.i:                                       ; preds = %if.end42.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i184.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i200.i) #6
  %41 = ptrtoint ptr %n.i200.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %n.i200.i, align 4, !annotation !83
  %call.i201.i = call i32 @strcmp(ptr noundef nonnull %s.1279.i, ptr noundef nonnull dereferenceable(4) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201.i)
  %cmp.i202.i = icmp eq i32 %call.i201.i, 0
  br i1 %cmp.i202.i, label %if.then.i204.i, label %if.end58.i

if.then.i204.i:                                   ; preds = %if.end50.i
  %tobool.not.i203.i = icmp eq ptr %o.0.i, null
  br i1 %tobool.not.i203.i, label %if.then.i204.i.check_hotmod_int_op.exit215.thread.i_crit_edge, label %if.end.i209.i

if.then.i204.i.check_hotmod_int_op.exit215.thread.i_crit_edge: ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit215.thread.i

if.end.i209.i:                                    ; preds = %if.then.i204.i
  %call3.i207.i = call i32 @simple_strtoul(ptr noundef nonnull %o.0.i, ptr noundef nonnull %n.i200.i, i32 noundef 0) #6
  %42 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call3.i207.i, ptr %irq.i, align 4
  %43 = ptrtoint ptr %n.i200.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %n.i200.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp4.not.i208.i = icmp eq i8 %46, 0
  br i1 %cmp4.not.i208.i, label %lor.lhs.false.i211.i, label %if.end.i209.i.check_hotmod_int_op.exit215.thread.i_crit_edge

if.end.i209.i.check_hotmod_int_op.exit215.thread.i_crit_edge: ; preds = %if.end.i209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit215.thread.i

lor.lhs.false.i211.i:                             ; preds = %if.end.i209.i
  %47 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %o.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp7.i210.i = icmp eq i8 %48, 0
  br i1 %cmp7.i210.i, label %lor.lhs.false.i211.i.check_hotmod_int_op.exit215.thread.i_crit_edge, label %if.else54.i

lor.lhs.false.i211.i.check_hotmod_int_op.exit215.thread.i_crit_edge: ; preds = %lor.lhs.false.i211.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit215.thread.i

check_hotmod_int_op.exit215.thread.i:             ; preds = %lor.lhs.false.i211.i.check_hotmod_int_op.exit215.thread.i_crit_edge, %if.end.i209.i.check_hotmod_int_op.exit215.thread.i_crit_edge, %if.then.i204.i.check_hotmod_int_op.exit215.thread.i_crit_edge
  %.str.30.sink355 = phi ptr [ @.str.27, %if.then.i204.i.check_hotmod_int_op.exit215.thread.i_crit_edge ], [ @.str.30, %lor.lhs.false.i211.i.check_hotmod_int_op.exit215.thread.i_crit_edge ], [ @.str.30, %if.end.i209.i.check_hotmod_int_op.exit215.thread.i_crit_edge ]
  %call14.i212.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink355, ptr noundef nonnull %s.1279.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i200.i) #6
  br label %out

if.else54.i:                                      ; preds = %lor.lhs.false.i211.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i200.i) #6
  br label %while.cond.backedge.i

if.end58.i:                                       ; preds = %if.end50.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i200.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #6
  %49 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %n.i, align 4, !annotation !83
  %call.i44 = call i32 @strcmp(ptr noundef nonnull %s.1279.i, ptr noundef nonnull dereferenceable(5) @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i = icmp eq i32 %call.i44, 0
  br i1 %cmp.i, label %if.then.i, label %do.end69.i

if.then.i:                                        ; preds = %if.end58.i
  %tobool.not.i = icmp eq ptr %o.0.i, null
  br i1 %tobool.not.i, label %if.then.i.check_hotmod_int_op.exit.thread_crit_edge, label %if.end.i46

if.then.i.check_hotmod_int_op.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit.thread

if.end.i46:                                       ; preds = %if.then.i
  %call3.i = call i32 @simple_strtoul(ptr noundef nonnull %o.0.i, ptr noundef nonnull %n.i, i32 noundef 0) #6
  %50 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call3.i, ptr %slave_addr.i, align 4
  %51 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %n.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp4.not.i = icmp eq i8 %54, 0
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %if.end.i46.check_hotmod_int_op.exit.thread_crit_edge

if.end.i46.check_hotmod_int_op.exit.thread_crit_edge: ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i46
  %55 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %o.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp7.i = icmp eq i8 %56, 0
  br i1 %cmp7.i, label %lor.lhs.false.i.check_hotmod_int_op.exit.thread_crit_edge, label %if.else62.i

lor.lhs.false.i.check_hotmod_int_op.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_hotmod_int_op.exit.thread

check_hotmod_int_op.exit.thread:                  ; preds = %lor.lhs.false.i.check_hotmod_int_op.exit.thread_crit_edge, %if.end.i46.check_hotmod_int_op.exit.thread_crit_edge, %if.then.i.check_hotmod_int_op.exit.thread_crit_edge
  %.str.30.sink356 = phi ptr [ @.str.27, %if.then.i.check_hotmod_int_op.exit.thread_crit_edge ], [ @.str.30, %lor.lhs.false.i.check_hotmod_int_op.exit.thread_crit_edge ], [ @.str.30, %if.end.i46.check_hotmod_int_op.exit.thread_crit_edge ]
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink356, ptr noundef nonnull %s.1279.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #6
  br label %out

if.else62.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #6
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else62.i, %if.else54.i, %if.else46.i, %if.else38.i, %if.else.i
  %tobool18.not.i = icmp eq ptr %s.2.i, null
  br i1 %tobool18.not.i, label %while.cond.backedge.i.if.end10_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.cond.backedge.i.if.end10_crit_edge:         ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end69.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #6
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %s.1279.i) #9
  br label %out

if.end10:                                         ; preds = %while.cond.backedge.i.if.end10_crit_edge, %while.cond.preheader.i.if.end10_crit_edge, %if.end12.thread.i.if.end10_crit_edge
  %57 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %addr_source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hotmod_nr, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @llvm.prefetch.p0(ptr nonnull @hotmod_nr, i32 1, i32 3, i32 1) #6
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hotmod_nr, ptr nonnull @hotmod_nr, i32 1, ptr nonnull elementtype(i32) @hotmod_nr) #6, !srcloc !85
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %58, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !86
  %call13 = call ptr @ipmi_platform_add(ptr noundef nonnull @.str, i32 noundef %asmresult.i.i.i.i, ptr noundef nonnull %h) #6
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %59 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %space.i, align 4
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i, align 4
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr.i, align 4
  %call14 = call ptr @ipmi_si_remove_by_data(i32 noundef %60, i32 noundef %62, i32 noundef %64) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else.if.end22_crit_edge, label %land.lhs.true

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %bus = getelementptr inbounds %struct.device, ptr %call14, i32 0, i32 5
  %65 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus, align 8
  %cmp16 = icmp eq ptr %66, @platform_bus_type
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %call14, i32 -16
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 8
  %call18 = call i32 @strcmp(ptr noundef %68, ptr noundef nonnull dereferenceable(15) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_unregister(ptr noundef %add.ptr) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then17.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.else.if.end22_crit_edge
  call void @put_device(ptr noundef %call14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then11
  %tobool2.not = icmp eq ptr %next.0, null
  br i1 %tobool2.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %call24 = call i32 @strlen(ptr noundef %val) #11
  br label %out

out:                                              ; preds = %for.end, %do.end69.i, %check_hotmod_int_op.exit.thread, %check_hotmod_int_op.exit215.thread.i, %check_hotmod_int_op.exit199.thread.i, %check_hotmod_int_op.exit183.thread.i, %check_hotmod_int_op.exit.thread.i, %do.end.i, %for.inc.i156.1.i, %do.end.i144.i, %for.inc.i136.2.i, %do.end.i124.i, %for.inc.i.1.i, %do.end.i.i
  %rv.0 = phi i32 [ %call24, %for.end ], [ -22, %check_hotmod_int_op.exit.thread ], [ -22, %do.end.i144.i ], [ -22, %for.inc.i156.1.i ], [ -22, %do.end.i124.i ], [ -22, %for.inc.i136.2.i ], [ -22, %do.end.i.i ], [ -22, %for.inc.i.1.i ], [ -22, %check_hotmod_int_op.exit215.thread.i ], [ -22, %check_hotmod_int_op.exit199.thread.i ], [ -22, %check_hotmod_int_op.exit183.thread.i ], [ -22, %check_hotmod_int_op.exit.thread.i ], [ -22, %do.end69.i ], [ %call.i161299.i, %do.end.i ]
  call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup25

cleanup25:                                        ; preds = %out, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ %rv.0, %out ], [ -12, %entry.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %h) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_platform_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_si_remove_by_data(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__param_hotmod, !1, !"__param_hotmod", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_hotmod227, !3, !"__UNIQUE_ID_hotmod227", i1 false, i1 false}
!3 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 20, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 236, i32 38}
!6 = !{ptr @__param_str_hotmod, !1, !"__param_str_hotmod", i1 false, i1 false}
!7 = !{ptr @__param_ops_hotmod, !1, !"__param_ops_hotmod", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 111, i32 36}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 116, i32 35}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 121, i32 35}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 133, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @parse_hotmod_str._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @parse_hotmod_str._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 149, i32 37}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 154, i32 37}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 159, i32 37}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 164, i32 37}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 169, i32 37}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 175, i32 3}
!32 = !{ptr @parse_hotmod_str._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @parse_hotmod_str._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 66, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @parse_str._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @parse_str._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 79, i32 2}
!41 = !{ptr @parse_str._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @parse_str._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 40, i32 4}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 41, i32 4}
!47 = !{ptr @hotmod_ops, !48, !"hotmod_ops", i1 false, i1 false}
!48 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 39, i32 33}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 46, i32 4}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 47, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 48, i32 4}
!55 = !{ptr @hotmod_si, !56, !"hotmod_si", i1 false, i1 false}
!56 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 45, i32 33}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 53, i32 4}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 54, i32 4}
!61 = !{ptr @hotmod_as, !62, !"hotmod_as", i1 false, i1 false}
!62 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 52, i32 33}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 90, i32 4}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @check_hotmod_int_op._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @check_hotmod_int_op._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 95, i32 4}
!70 = !{ptr @check_hotmod_int_op._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @check_hotmod_int_op._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @hotmod_nr, !73, !"hotmod_nr", i1 false, i1 false}
!73 = !{!"../drivers/char/ipmi/ipmi_si_hotmod.c", i32 183, i32 17}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i64 2148333346}
!85 = !{i64 2148248655, i64 2148248687, i64 2148248716, i64 2148248750, i64 2148248781, i64 2148248804}
!86 = !{i64 2148333575}
