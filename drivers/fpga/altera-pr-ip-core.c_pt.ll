; ModuleID = '/llk/IR_all_yes/drivers/fpga/altera-pr-ip-core.c_pt.bc'
source_filename = "../drivers/fpga/altera-pr-ip-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+alt_pr_register\22, \22a\22\09"
module asm "\09.weak\09__crc_alt_pr_register\09\09\09\09"
module asm "\09.long\09__crc_alt_pr_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alt_pr_register:\09\09\09\09\09"
module asm "\09.asciz \09\22alt_pr_register\22\09\09\09\09\09"
module asm "__kstrtabns_alt_pr_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.fpga_manager_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }
%struct.fpga_image_info = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr }

@alt_pr_register.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"altera_pr_ip_core\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alt_pr_register\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/fpga/altera-pr-ip-core.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s status=%d start=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@alt_pr_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 0, ptr @alt_pr_fpga_state, ptr null, ptr @alt_pr_fpga_write_init, ptr @alt_pr_fpga_write, ptr null, ptr @alt_pr_fpga_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_alt_pr_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_alt_pr_register = external dso_local constant [0 x i8], align 1
@__ksymtab_alt_pr_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alt_pr_register to i32), ptr @__kstrtab_alt_pr_register, ptr @__kstrtabns_alt_pr_register }, section "___ksymtab_gpl+alt_pr_register", align 4
@__UNIQUE_ID_author171 = internal constant [75 x i8] c"altera_pr_ip_core.author=Matthew Gerlach <matthew.gerlach@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [69 x i8] c"altera_pr_ip_core.description=Altera Partial Reconfiguration IP Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [54 x i8] c"altera_pr_ip_core.file=drivers/fpga/altera-pr-ip-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [33 x i8] c"altera_pr_ip_core.license=GPL v2\00", section ".modinfo", align 1
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pr error\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crc error\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad bits\00", [23 x i8] zeroinitializer }, align 32
@alt_pr_fpga_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 73, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"encountered error code %d (%s) in %s()\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alt_pr_fpga_state\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alt_pr_fpga_state._entry_ptr = internal global ptr @alt_pr_fpga_state._entry, section ".printk_index", align 4
@alt_pr_fpga_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 86, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s Partial Reconfiguration flag not set\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alt_pr_fpga_write_init\00", [41 x i8] zeroinitializer }, align 32
@alt_pr_fpga_write_init._entry_ptr = internal global ptr @alt_pr_fpga_write_init._entry, section ".printk_index", align 4
@alt_pr_fpga_write_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 95, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s Partial Reconfiguration already started\0A\00", [52 x i8] zeroinitializer }, align 32
@alt_pr_fpga_write_init._entry_ptr.16 = internal global ptr @alt_pr_fpga_write_init._entry.14, section ".printk_index", align 4
@alt_pr_fpga_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 156, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"successful partial reconfiguration\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"alt_pr_fpga_write_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@alt_pr_fpga_write_complete._entry_ptr = internal global ptr @alt_pr_fpga_write_complete._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@alt_pr_fpga_write_complete._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 165, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"timed out waiting for write to complete\0A\00", [55 x i8] zeroinitializer }, align 32
@alt_pr_fpga_write_complete._entry_ptr.22 = internal global ptr @alt_pr_fpga_write_complete._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 190, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"alt_pr_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 169, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 35, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 48, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 53, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 58, i32 9 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 72, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 85, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 93, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 155, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [36 x i8] c"../drivers/fpga/altera-pr-ip-core.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 165, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_alt_pr_register, ptr @alt_pr_fpga_state._entry, ptr @alt_pr_fpga_state._entry_ptr, ptr @alt_pr_fpga_write_complete._entry, ptr @alt_pr_fpga_write_complete._entry.20, ptr @alt_pr_fpga_write_complete._entry_ptr, ptr @alt_pr_fpga_write_complete._entry_ptr.22, ptr @alt_pr_fpga_write_init._entry, ptr @alt_pr_fpga_write_init._entry.14, ptr @alt_pr_fpga_write_init._entry_ptr, ptr @alt_pr_fpga_write_init._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @alt_pr_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_pr_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_pr_fpga_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_pr_fpga_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_pr_fpga_write_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_pr_fpga_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt_pr_fpga_write_complete._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alt_pr_register(ptr noundef %dev, ptr noundef %reg_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %reg_base, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %reg_base, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alt_pr_register.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alt_pr_register, %if.then10)) #4
          to label %do.end [label %if.then10], !srcloc !62

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = lshr i32 %2, 2
  %shr = and i32 %and, 7
  %and11 = and i32 %2, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alt_pr_register.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %shr, i32 noundef %and11) #4
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i25 = phi ptr [ %6, %if.end.i ], [ %4, %do.end.dev_name.exit_crit_edge ]
  %call14 = tail call ptr @devm_fpga_mgr_register(ptr noundef %dev, ptr noundef %retval.0.i25, ptr noundef nonnull @alt_pr_ops, ptr noundef nonnull %call.i) #4
  %cmp.i.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call14 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fpga_mgr_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alt_pr_fpga_state(ptr noundef %mgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !60
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  %and = and i32 %5, 28
  %6 = lshr exact i32 %and, 2
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.do.end_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb6
    i32 5, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.do.end_crit_edge ], [ 9, %sw.bb5 ], [ 9, %sw.bb4 ], [ 9, %sw.bb3 ]
  %err.0 = phi ptr [ @.str.4, %entry.do.end_crit_edge ], [ @.str.7, %sw.bb5 ], [ @.str.6, %sw.bb4 ], [ @.str.5, %sw.bb3 ]
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %and, ptr noundef nonnull %err.0, ptr noundef nonnull @.str.9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb7, %sw.bb6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 12, %sw.bb7 ], [ 8, %sw.bb6 ], [ 3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alt_pr_fpga_write_init(ptr noundef %mgr, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !60
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev9 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #7
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %or = or i32 %7, 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %8) #4, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %do.body11 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alt_pr_fpga_write(ptr noundef %mgr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp251 = icmp ugt i32 %count, 3
  br i1 %cmp251, label %do.body.preheader, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body.preheader:                                ; preds = %while.cond.preheader
  %2 = add i32 %count, -4
  %3 = lshr i32 %2, 2
  %4 = add nuw nsw i32 %3, 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %i.053 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %count.addr.052 = phi i32 [ %sub, %do.body.do.body_crit_edge ], [ %count, %do.body.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %inc = add nuw nsw i32 %i.053, 1
  %arrayidx = getelementptr i32, ptr %buf, i32 %i.053
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !66
  %sub = add i32 %count.addr.052, -4
  %exitcond.not = icmp eq i32 %i.053, %3
  br i1 %exitcond.not, label %do.body.while.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %count.addr.0.lcssa = phi i32 [ %count, %while.cond.preheader.while.end_crit_edge ], [ %sub, %do.body.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %4, %do.body.while.end_crit_edge ]
  %10 = zext i32 %count.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %count.addr.0.lcssa, label %while.end.cleanup_crit_edge [
    i32 3, label %do.body3
    i32 2, label %do.body10
    i32 1, label %do.body18
    i32 0, label %while.end.sw.epilog_crit_edge
  ]

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body3:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %arrayidx7 = getelementptr i32, ptr %buf, i32 %i.0.lcssa
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %and = and i32 %12, 16777215
  %13 = tail call i32 @llvm.bswap.i32(i32 %and)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !66
  br label %sw.epilog

do.body10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %arrayidx14 = getelementptr i32, ptr %buf, i32 %i.0.lcssa
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %17, 65535
  %18 = tail call i32 @llvm.bswap.i32(i32 %and15)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !66
  br label %sw.epilog

do.body18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %arrayidx22 = getelementptr i32, ptr %buf, i32 %i.0.lcssa
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22, align 4
  %and23 = shl i32 %22, 24
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %and23) #4, !srcloc !66
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body18, %do.body10, %do.body3, %while.end.sw.epilog_crit_edge
  %25 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !60
  %30 = lshr i32 %29, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  %and.i = and i32 %30, 28
  %31 = lshr exact i32 %and.i, 2
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %31, label %sw.epilog.cleanup.sink.split_crit_edge [
    i32 0, label %sw.epilog.cleanup_crit_edge
    i32 1, label %sw.epilog.sw.bb3.i_crit_edge
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.epilog.cleanup_crit_edge55
    i32 5, label %sw.epilog.cleanup_crit_edge56
  ]

sw.epilog.cleanup_crit_edge56:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.cleanup_crit_edge55:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.sw.bb3.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb4.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3.i

sw.bb5.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb5.i, %sw.bb4.i, %sw.epilog.sw.bb3.i_crit_edge
  %err.0.i.ph = phi ptr [ @.str.6, %sw.bb4.i ], [ @.str.7, %sw.bb5.i ], [ @.str.5, %sw.epilog.sw.bb3.i_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3.i, %sw.epilog.cleanup.sink.split_crit_edge
  %err.0.i.ph.sink = phi ptr [ %err.0.i.ph, %sw.bb3.i ], [ @.str.4, %sw.epilog.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %sw.bb3.i ], [ 0, %sw.epilog.cleanup.sink.split_crit_edge ]
  %dev.i49 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i49, ptr noundef nonnull @.str.8, i32 noundef %and.i, ptr noundef nonnull %err.0.i.ph.sink, ptr noundef nonnull @.str.9) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge55, %sw.epilog.cleanup_crit_edge56, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %while.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge55 ], [ 0, %sw.epilog.cleanup_crit_edge56 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alt_pr_fpga_write_complete(ptr noundef %mgr, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  %config_complete_timeout_us = getelementptr inbounds %struct.fpga_image_info, ptr %info, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %sw.epilog.do.body_crit_edge ]
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !60
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  %and.i = and i32 %5, 28
  %6 = lshr exact i32 %and.i, 2
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %6, label %alt_pr_fpga_state.exit [
    i32 0, label %do.body.sw.epilog_crit_edge
    i32 1, label %alt_pr_fpga_state.exit.thread15.loopexit
    i32 2, label %alt_pr_fpga_state.exit.thread15.loopexit41
    i32 3, label %do.body.alt_pr_fpga_state.exit.thread15_crit_edge
    i32 4, label %do.body.sw.epilog_crit_edge52
    i32 5, label %do.end
  ]

do.body.sw.epilog_crit_edge52:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body.alt_pr_fpga_state.exit.thread15_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %alt_pr_fpga_state.exit.thread15

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

alt_pr_fpga_state.exit.thread15.loopexit:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %alt_pr_fpga_state.exit.thread15

alt_pr_fpga_state.exit.thread15.loopexit41:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %alt_pr_fpga_state.exit.thread15

alt_pr_fpga_state.exit.thread15:                  ; preds = %alt_pr_fpga_state.exit.thread15.loopexit41, %alt_pr_fpga_state.exit.thread15.loopexit, %do.body.alt_pr_fpga_state.exit.thread15_crit_edge
  %err.0.i.ph = phi ptr [ @.str.5, %alt_pr_fpga_state.exit.thread15.loopexit ], [ @.str.6, %alt_pr_fpga_state.exit.thread15.loopexit41 ], [ @.str.7, %do.body.alt_pr_fpga_state.exit.thread15_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %and.i, ptr noundef nonnull %err.0.i.ph, ptr noundef nonnull @.str.9) #7
  br label %cleanup

alt_pr_fpga_state.exit:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %and.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #7
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #7
  br label %cleanup

sw.epilog:                                        ; preds = %alt_pr_fpga_state.exit, %do.body.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  %9 = ptrtoint ptr %config_complete_timeout_us to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config_complete_timeout_us, align 4
  %inc = add i32 %i.0, 1
  %cmp = icmp ugt i32 %10, %i.0
  br i1 %cmp, label %sw.epilog.do.body_crit_edge, label %do.end7

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end, %alt_pr_fpga_state.exit.thread15
  %retval.0 = phi i32 [ -110, %do.end7 ], [ 0, %do.end ], [ -5, %alt_pr_fpga_state.exit.thread15 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 190, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @alt_pr_register.__UNIQUE_ID_ddebug170, !1, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!6 = !{ptr @__ksymtab_alt_pr_register, !7, !"__ksymtab_alt_pr_register", i1 false, i1 false}
!7 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 197, i32 1}
!8 = !{ptr @__UNIQUE_ID_author171, !9, !"__UNIQUE_ID_author171", i1 false, i1 false}
!9 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 199, i32 1}
!10 = !{ptr @__UNIQUE_ID_description172, !11, !"__UNIQUE_ID_description172", i1 false, i1 false}
!11 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 200, i32 1}
!12 = !{ptr @__UNIQUE_ID_file173, !13, !"__UNIQUE_ID_file173", i1 false, i1 false}
!13 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 201, i32 1}
!14 = !{ptr @__UNIQUE_ID_license174, !13, !"__UNIQUE_ID_license174", i1 false, i1 false}
!15 = !{ptr @alt_pr_ops, !16, !"alt_pr_ops", i1 false, i1 false}
!16 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 169, i32 38}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 35, i32 20}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 48, i32 9}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 53, i32 9}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 58, i32 9}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 72, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @alt_pr_fpga_state._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @alt_pr_fpga_state._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 85, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @alt_pr_fpga_write_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @alt_pr_fpga_write_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 93, i32 3}
!39 = !{ptr @alt_pr_fpga_write_init._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @alt_pr_fpga_write_init._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 155, i32 4}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @alt_pr_fpga_write_complete._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @alt_pr_fpga_write_complete._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/fpga/altera-pr-ip-core.c", i32 165, i32 2}
!49 = !{ptr @alt_pr_fpga_write_complete._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @alt_pr_fpga_write_complete._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2979684}
!61 = !{i64 2152374851}
!62 = !{i64 2148759574, i64 2148759579, i64 2148759592, i64 2148759636, i64 2148759670, i64 2148759691}
!63 = !{i64 2152361446}
!64 = !{i64 2152365802}
!65 = !{i64 2152368017}
!66 = !{i64 2979266}
!67 = !{i64 2152368511}
!68 = !{i64 2152368951}
!69 = !{i64 2152369430}
!70 = !{i64 2152369909}
