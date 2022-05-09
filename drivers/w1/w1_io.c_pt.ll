; ModuleID = '/llk/IR_all_yes/drivers/w1/w1_io.c_pt.bc'
source_filename = "../drivers/w1/w1_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+w1_touch_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_touch_bit\09\09\09\09"
module asm "\09.long\09__crc_w1_touch_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_touch_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_touch_bit\22\09\09\09\09\09"
module asm "__kstrtabns_w1_touch_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_write_8\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_write_8\09\09\09\09"
module asm "\09.long\09__crc_w1_write_8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_write_8:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_write_8\22\09\09\09\09\09"
module asm "__kstrtabns_w1_write_8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_triplet\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_triplet\09\09\09\09"
module asm "\09.long\09__crc_w1_triplet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_triplet:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_triplet\22\09\09\09\09\09"
module asm "__kstrtabns_w1_triplet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_read_8\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_read_8\09\09\09\09"
module asm "\09.long\09__crc_w1_read_8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_read_8:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_read_8\22\09\09\09\09\09"
module asm "__kstrtabns_w1_read_8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_write_block\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_write_block\09\09\09\09"
module asm "\09.long\09__crc_w1_write_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_write_block:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_write_block\22\09\09\09\09\09"
module asm "__kstrtabns_w1_write_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_touch_block\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_touch_block\09\09\09\09"
module asm "\09.long\09__crc_w1_touch_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_touch_block:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_touch_block\22\09\09\09\09\09"
module asm "__kstrtabns_w1_touch_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_read_block\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_read_block\09\09\09\09"
module asm "\09.long\09__crc_w1_read_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_read_block:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_read_block\22\09\09\09\09\09"
module asm "__kstrtabns_w1_read_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_reset_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_reset_bus\09\09\09\09"
module asm "\09.long\09__crc_w1_reset_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_reset_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_reset_bus\22\09\09\09\09\09"
module asm "__kstrtabns_w1_reset_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_calc_crc8\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_calc_crc8\09\09\09\09"
module asm "\09.long\09__crc_w1_calc_crc8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_calc_crc8:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_calc_crc8\22\09\09\09\09\09"
module asm "__kstrtabns_w1_calc_crc8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_reset_select_slave\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_reset_select_slave\09\09\09\09"
module asm "\09.long\09__crc_w1_reset_select_slave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_reset_select_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_reset_select_slave\22\09\09\09\09\09"
module asm "__kstrtabns_w1_reset_select_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_reset_resume_command\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_reset_resume_command\09\09\09\09"
module asm "\09.long\09__crc_w1_reset_resume_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_reset_resume_command:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_reset_resume_command\22\09\09\09\09\09"
module asm "__kstrtabns_w1_reset_resume_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+w1_next_pullup\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_next_pullup\09\09\09\09"
module asm "\09.long\09__crc_w1_next_pullup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_next_pullup:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_next_pullup\22\09\09\09\09\09"
module asm "__kstrtabns_w1_next_pullup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }

@__param_str_delay_coef = internal constant [16 x i8] c"wire.delay_coef\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@w1_delay_parm = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_delay_coef = internal constant %struct.kernel_param { ptr @__param_str_delay_coef, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @w1_delay_parm } }, section "__param", align 4
@__UNIQUE_ID_delay_coeftype170 = internal constant [29 x i8] c"wire.parmtype=delay_coef:int\00", section ".modinfo", align 1
@__param_str_disable_irqs = internal constant [18 x i8] c"wire.disable_irqs\00", align 1
@w1_disable_irqs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_irqs = internal constant %struct.kernel_param { ptr @__param_str_disable_irqs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @w1_disable_irqs } }, section "__param", align 4
@__UNIQUE_ID_disable_irqstype171 = internal constant [31 x i8] c"wire.parmtype=disable_irqs:int\00", section ".modinfo", align 1
@__kstrtab_w1_touch_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_touch_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_touch_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_touch_bit to i32), ptr @__kstrtab_w1_touch_bit, ptr @__kstrtabns_w1_touch_bit }, section "___ksymtab_gpl+w1_touch_bit", align 4
@__kstrtab_w1_write_8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_write_8 = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_write_8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_write_8 to i32), ptr @__kstrtab_w1_write_8, ptr @__kstrtabns_w1_write_8 }, section "___ksymtab_gpl+w1_write_8", align 4
@__kstrtab_w1_triplet = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_triplet = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_triplet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_triplet to i32), ptr @__kstrtab_w1_triplet, ptr @__kstrtabns_w1_triplet }, section "___ksymtab_gpl+w1_triplet", align 4
@__kstrtab_w1_read_8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_read_8 = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_read_8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_read_8 to i32), ptr @__kstrtab_w1_read_8, ptr @__kstrtabns_w1_read_8 }, section "___ksymtab_gpl+w1_read_8", align 4
@__kstrtab_w1_write_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_write_block = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_write_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_write_block to i32), ptr @__kstrtab_w1_write_block, ptr @__kstrtabns_w1_write_block }, section "___ksymtab_gpl+w1_write_block", align 4
@__kstrtab_w1_touch_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_touch_block = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_touch_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_touch_block to i32), ptr @__kstrtab_w1_touch_block, ptr @__kstrtabns_w1_touch_block }, section "___ksymtab_gpl+w1_touch_block", align 4
@__kstrtab_w1_read_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_read_block = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_read_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_read_block to i32), ptr @__kstrtab_w1_read_block, ptr @__kstrtabns_w1_read_block }, section "___ksymtab_gpl+w1_read_block", align 4
@__kstrtab_w1_reset_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_reset_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_reset_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_reset_bus to i32), ptr @__kstrtab_w1_reset_bus, ptr @__kstrtabns_w1_reset_bus }, section "___ksymtab_gpl+w1_reset_bus", align 4
@w1_crc8_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00^\BC\E2a?\DD\83\C2\9C~ \A3\FD\1FA\9D\C3!\7F\FC\A2@\1E_\01\E3\BD>`\82\DC#}\9F\C1B\1C\FE\A0\E1\BF]\03\80\DE<b\BE\E0\02\\\DF\81c=|\22\C0\9E\1DC\A1\FFF\18\FA\A4'y\9B\C5\84\DA8f\E5\BBY\07\DB\85g9\BA\E4\06X\19G\A5\FBx&\C4\9Ae;\D9\87\04Z\B8\E6\A7\F9\1BE\C6\98z$\F8\A6D\1A\99\C7%{:d\86\D8[\05\E7\B9\8C\D20n\ED\B3Q\0FN\10\F2\AC/q\93\CD\11O\AD\F3p.\CC\92\D3\8Do1\B2\EC\0EP\AF\F1\13M\CE\90r,m3\D1\8F\0CR\B0\EE2l\8E\D0S\0D\EF\B1\F0\AEL\12\91\CF-s\CA\94v(\AB\F5\17I\08V\B4\EAi7\D5\8BW\09\EB\B56h\8A\D4\95\CB)w\F4\AAH\16\E9\B7U\0B\88\D64j+u\97\C9J\14\F6\A8t*\C8\96\15K\A9\F7\B6\E8\0AT\D7\89k5", [64 x i8] zeroinitializer }, align 32
@__kstrtab_w1_calc_crc8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_calc_crc8 = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_calc_crc8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_calc_crc8 to i32), ptr @__kstrtab_w1_calc_crc8, ptr @__kstrtabns_w1_calc_crc8 }, section "___ksymtab_gpl+w1_calc_crc8", align 4
@__kstrtab_w1_reset_select_slave = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_reset_select_slave = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_reset_select_slave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_reset_select_slave to i32), ptr @__kstrtab_w1_reset_select_slave, ptr @__kstrtabns_w1_reset_select_slave }, section "___ksymtab_gpl+w1_reset_select_slave", align 4
@__kstrtab_w1_reset_resume_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_reset_resume_command = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_reset_resume_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_reset_resume_command to i32), ptr @__kstrtab_w1_reset_resume_command, ptr @__kstrtabns_w1_reset_resume_command }, section "___ksymtab_gpl+w1_reset_resume_command", align 4
@__kstrtab_w1_next_pullup = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_next_pullup = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_next_pullup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_next_pullup to i32), ptr @__kstrtab_w1_next_pullup, ptr @__kstrtabns_w1_next_pullup }, section "___ksymtab_gpl+w1_next_pullup", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"w1_delay_parm\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 14, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"w1_disable_irqs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 17, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"w1_crc8_table\00", align 1
@___asan_gen_.8 = private constant [22 x i8] c"../drivers/w1/w1_io.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 20, i32 11 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_delay_coeftype170, ptr @__UNIQUE_ID_disable_irqstype171, ptr @__ksymtab_w1_calc_crc8, ptr @__ksymtab_w1_next_pullup, ptr @__ksymtab_w1_read_8, ptr @__ksymtab_w1_read_block, ptr @__ksymtab_w1_reset_bus, ptr @__ksymtab_w1_reset_resume_command, ptr @__ksymtab_w1_reset_select_slave, ptr @__ksymtab_w1_touch_bit, ptr @__ksymtab_w1_touch_block, ptr @__ksymtab_w1_triplet, ptr @__ksymtab_w1_write_8, ptr @__ksymtab_w1_write_block, ptr @__param_delay_coef, ptr @__param_disable_irqs, ptr @w1_delay_parm, ptr @w1_disable_irqs, ptr @w1_crc8_table], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_delay_parm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_disable_irqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @w1_touch_bit(ptr nocapture noundef readonly %dev, i32 noundef %bit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_master, align 8
  %touch_bit = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %touch_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touch_bit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv = trunc i32 %bit to i8
  %call = tail call zeroext i8 %3(ptr noundef %5, i8 noundef zeroext %conv) #6
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bit)
  %tobool4.not = icmp eq i32 %bit, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then5.do.end11.i_crit_edge

if.then5.do.end11.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %if.then5.do.end11.i_crit_edge
  %7 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_master, align 8
  %write_bit.i = getelementptr inbounds %struct.w1_bus_master, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_bit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_bit.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  tail call void %10(ptr noundef %12, i8 noundef zeroext 0) #6
  %13 = load i32, ptr @w1_delay_parm, align 4
  %mul.i.i = mul i32 %13, 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %mul.i.i) #6
  %15 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_master, align 8
  %write_bit14.i = getelementptr inbounds %struct.w1_bus_master, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_bit14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_bit14.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %20, i8 noundef zeroext 1) #6
  %21 = load i32, ptr @w1_delay_parm, align 4
  %mul.i61.i = mul i32 %21, 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %mul.i61.i) #6
  %23 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_master, align 8
  %read_bit.i = getelementptr inbounds %struct.w1_bus_master, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_bit.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %call20.i = tail call zeroext i8 %26(ptr noundef %28) #6
  br i1 %tobool.not.i, label %if.then31.i, label %do.end11.i.do.body33.i_crit_edge

do.end11.i.do.body33.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33.i

if.then31.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body33.i

do.body33.i:                                      ; preds = %if.then31.i, %do.end11.i.do.body33.i_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !48
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool41.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool41.not.i, label %if.then45.i, label %do.body33.i.do.end48.i_crit_edge, !prof !49

do.body33.i.do.end48.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

if.then45.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %do.body33.i.do.end48.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #6, !srcloc !50
  %30 = load i32, ptr @w1_delay_parm, align 4
  %mul.i70.i = mul i32 %30, 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %mul.i70.i) #6
  %32 = and i8 %call20.i, 1
  br label %return

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @w1_write_bit(ptr noundef %dev, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.else7, %do.end48.i, %if.then
  %retval.0 = phi i8 [ %call, %if.then ], [ %32, %do.end48.i ], [ 0, %if.else7 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w1_write_bit(ptr nocapture noundef readonly %dev, i32 noundef %bit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @w1_disable_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %do.body1

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body1:                                         ; preds = %entry
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %if.then11, label %do.body1.if.end14_crit_edge

do.body1.if.end14_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.body1.if.end14_crit_edge, %entry.if.end14_crit_edge
  %flags.0 = phi i32 [ %1, %do.body1.if.end14_crit_edge ], [ %1, %if.then11 ], [ 0, %entry.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bit)
  %tobool15.not = icmp eq i32 %bit, 0
  %bus_master22 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %2 = ptrtoint ptr %bus_master22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_master22, align 8
  %write_bit23 = getelementptr inbounds %struct.w1_bus_master, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write_bit23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_bit23, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %7, i8 noundef zeroext 0) #6
  %8 = load i32, ptr @w1_delay_parm, align 4
  br i1 %tobool15.not, label %cond.false5.i88, label %cond.false5.i

cond.false5.i:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i32 %8, 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %mul.i) #6
  %10 = ptrtoint ptr %bus_master22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_master22, align 8
  %write_bit19 = getelementptr inbounds %struct.w1_bus_master, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_bit19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_bit19, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %15, i8 noundef zeroext 1) #6
  %16 = load i32, ptr @w1_delay_parm, align 4
  %mul.i74 = shl i32 %16, 6
  br label %if.end30

cond.false5.i88:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i82 = mul i32 %8, 60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %mul.i82) #6
  %18 = ptrtoint ptr %bus_master22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_master22, align 8
  %write_bit27 = getelementptr inbounds %struct.w1_bus_master, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_bit27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_bit27, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  tail call void %21(ptr noundef %23, i8 noundef zeroext 1) #6
  %24 = load i32, ptr @w1_delay_parm, align 4
  %mul.i90 = mul i32 %24, 10
  br label %if.end30

if.end30:                                         ; preds = %cond.false5.i88, %cond.false5.i
  %mul.i90.sink = phi i32 [ %mul.i90, %cond.false5.i88 ], [ %mul.i74, %cond.false5.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %mul.i90.sink) #6
  %26 = load i32, ptr @w1_disable_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool31.not = icmp eq i32 %26, 0
  br i1 %tobool31.not, label %if.end30.if.end64_crit_edge, label %do.body33

if.end30.if.end64_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.body33:                                        ; preds = %if.end30
  %and.i98 = and i32 %flags.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool41.not = icmp eq i32 %and.i98, 0
  br i1 %tobool41.not, label %if.then42, label %do.body33.do.body44_crit_edge

do.body33.do.body44_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.then42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body44

do.body44:                                        ; preds = %if.then42, %do.body33.do.body44_crit_edge
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !48
  %and.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool52.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool52.not, label %if.then56, label %do.body44.do.end59_crit_edge, !prof !49

do.body44.do.end59_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44.do.end59_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.0) #6, !srcloc !50
  br label %if.end64

if.end64:                                         ; preds = %do.end59, %if.end30.if.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_write_8(ptr nocapture noundef %dev, i8 noundef zeroext %byte) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_master, align 8
  %write_byte = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_byte, align 4
  %tobool.not = icmp eq ptr %3, null
  %pullup_duration.i17 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 17
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %enable_pullup.i19 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 16
  %conv = zext i8 %byte to i32
  br label %for.body

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %pullup_duration.i17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pullup_duration.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.w1_pre_write.exit_crit_edge, label %land.lhs.true.i

if.then.w1_pre_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_pre_write.exit

land.lhs.true.i:                                  ; preds = %if.then
  %enable_pullup.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %enable_pullup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_pullup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.w1_pre_write.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.w1_pre_write.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_pre_write.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %set_pullup.i = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %set_pullup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_pullup.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.w1_pre_write.exit_crit_edge, label %if.then.i

land.lhs.true2.i.w1_pre_write.exit_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_pre_write.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %11, i32 noundef %5) #6
  br label %w1_pre_write.exit

w1_pre_write.exit:                                ; preds = %if.then.i, %land.lhs.true2.i.w1_pre_write.exit_crit_edge, %land.lhs.true.i.w1_pre_write.exit_crit_edge, %if.then.w1_pre_write.exit_crit_edge
  %12 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_master, align 8
  %write_byte2 = getelementptr inbounds %struct.w1_bus_master, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write_byte2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_byte2, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %17, i8 noundef zeroext %byte) #6
  br label %if.end6

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader
  %i.038 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.038)
  %cmp4 = icmp eq i32 %i.038, 7
  br i1 %cmp4, label %if.then5, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %for.body
  %18 = ptrtoint ptr %pullup_duration.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pullup_duration.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i18 = icmp eq i32 %19, 0
  br i1 %tobool.not.i18, label %if.then5.if.end_crit_edge, label %land.lhs.true.i21

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i21:                                ; preds = %if.then5
  %20 = ptrtoint ptr %enable_pullup.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable_pullup.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i20 = icmp eq i32 %21, 0
  br i1 %tobool1.not.i20, label %land.lhs.true.i21.if.end_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i21.if.end_crit_edge:               ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i21
  %22 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_master, align 8
  %set_pullup.i23 = getelementptr inbounds %struct.w1_bus_master, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %set_pullup.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_pullup.i23, align 4
  %tobool3.not.i24 = icmp eq ptr %25, null
  br i1 %tobool3.not.i24, label %land.lhs.true2.i25.if.end_crit_edge, label %if.then.i27

land.lhs.true2.i25.if.end_crit_edge:              ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i27:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call.i26 = tail call zeroext i8 %25(ptr noundef %27, i32 noundef %19) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i27, %land.lhs.true2.i25.if.end_crit_edge, %land.lhs.true.i21.if.end_crit_edge, %if.then5.if.end_crit_edge, %for.body.if.end_crit_edge
  %shr = lshr i32 %conv, %i.038
  %and = and i32 %shr, 1
  %call = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef %and)
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end.if.end6_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %w1_pre_write.exit
  %pullup_duration.i29 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 17
  %28 = ptrtoint ptr %pullup_duration.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pullup_duration.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i30 = icmp eq i32 %29, 0
  br i1 %tobool.not.i30, label %if.end6.w1_post_write.exit_crit_edge, label %if.then.i33

if.end6.w1_post_write.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_post_write.exit

if.then.i33:                                      ; preds = %if.end6
  %enable_pullup.i31 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 16
  %30 = ptrtoint ptr %enable_pullup.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %enable_pullup.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not.i32 = icmp eq i32 %31, 0
  br i1 %tobool1.not.i32, label %if.then.i33.if.else.i_crit_edge, label %land.lhs.true.i36

if.then.i33.if.else.i_crit_edge:                  ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i36:                                ; preds = %if.then.i33
  %32 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_master, align 8
  %set_pullup.i35 = getelementptr inbounds %struct.w1_bus_master, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %set_pullup.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_pullup.i35, align 4
  %tobool2.not.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i, label %land.lhs.true.i36.if.else.i_crit_edge, label %if.then3.i

land.lhs.true.i36.if.else.i_crit_edge:            ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %call.i37 = tail call zeroext i8 %35(ptr noundef %37, i32 noundef 0) #6
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i36.if.else.i_crit_edge, %if.then.i33.if.else.i_crit_edge
  tail call void @msleep(i32 noundef %29) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then3.i
  %38 = ptrtoint ptr %pullup_duration.i29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pullup_duration.i29, align 4
  br label %w1_post_write.exit

w1_post_write.exit:                               ; preds = %if.end.i, %if.end6.w1_post_write.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @w1_triplet(ptr nocapture noundef readonly %dev, i32 noundef %bdir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_master, align 8
  %triplet = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %triplet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %triplet, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv = trunc i32 %bdir to i8
  %call = tail call zeroext i8 %3(ptr noundef %5, i8 noundef zeroext %conv) #6
  br label %return

if.else:                                          ; preds = %entry
  %call4 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %call5 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %tobool8.not = icmp eq i8 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5)
  %tobool10.not = icmp eq i8 %call5, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %if.else
  %conv7 = zext i8 %call4 to i32
  %or.cond47 = select i1 %tobool8.not, i1 %tobool10.not, i1 false
  %conv23 = select i1 %tobool8.not, i8 2, i8 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bdir)
  %tobool16.not = icmp eq i32 %bdir, 0
  %conv17 = select i1 %tobool16.not, i8 0, i8 4
  %bdir.addr.0 = select i1 %or.cond47, i32 %bdir, i32 %conv7
  %retval6.0 = select i1 %or.cond47, i8 %conv17, i8 %conv23
  %6 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_master, align 8
  %touch_bit = getelementptr inbounds %struct.w1_bus_master, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %touch_bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %touch_bit, align 4
  %tobool26.not = icmp eq ptr %9, null
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef %bdir.addr.0)
  br label %return

if.else29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @w1_write_bit(ptr noundef %dev, i32 noundef %bdir.addr.0)
  br label %return

return:                                           ; preds = %if.else29, %if.then27, %if.else.return_crit_edge, %if.then
  %retval.1 = phi i8 [ %call, %if.then ], [ 3, %if.else.return_crit_edge ], [ %retval6.0, %if.else29 ], [ %retval6.0, %if.then27 ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @w1_read_8(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_master, align 8
  %read_byte = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_byte, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %call4.1 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %shl.1 = shl i8 %call4.1, 1
  %conv6.1 = or i8 %call4, %shl.1
  %call4.2 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %shl.2 = shl i8 %call4.2, 2
  %conv6.2 = or i8 %conv6.1, %shl.2
  %call4.3 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %shl.3 = shl i8 %call4.3, 3
  %conv6.3 = or i8 %conv6.2, %shl.3
  %call4.4 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %shl.4 = shl i8 %call4.4, 4
  %conv6.4 = or i8 %conv6.3, %shl.4
  %call4.5 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %shl.5 = shl i8 %call4.5, 5
  %conv6.5 = or i8 %conv6.4, %shl.5
  %call4.6 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %shl.6 = shl i8 %call4.6, 6
  %conv6.6 = or i8 %conv6.5, %shl.6
  %call4.7 = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef 1)
  %shl.7 = shl i8 %call4.7, 7
  %conv6.7 = or i8 %conv6.6, %shl.7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call zeroext i8 %3(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.preheader
  %res.1 = phi i8 [ %call, %if.then ], [ %conv6.7, %for.body.preheader ]
  ret i8 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_write_block(ptr nocapture noundef %dev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_master, align 8
  %write_block = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_block, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp22 = icmp sgt i32 %len, 0
  br i1 %cmp22, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  %pullup_duration.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %pullup_duration.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pullup_duration.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.w1_pre_write.exit_crit_edge, label %land.lhs.true.i

if.then.w1_pre_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_pre_write.exit

land.lhs.true.i:                                  ; preds = %if.then
  %enable_pullup.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %enable_pullup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_pullup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.w1_pre_write.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.w1_pre_write.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_pre_write.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %set_pullup.i = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %set_pullup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_pullup.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.w1_pre_write.exit_crit_edge, label %if.then.i

land.lhs.true2.i.w1_pre_write.exit_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_pre_write.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %11, i32 noundef %5) #6
  br label %w1_pre_write.exit

w1_pre_write.exit:                                ; preds = %if.then.i, %land.lhs.true2.i.w1_pre_write.exit_crit_edge, %land.lhs.true.i.w1_pre_write.exit_crit_edge, %if.then.w1_pre_write.exit_crit_edge
  %12 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_master, align 8
  %write_block2 = getelementptr inbounds %struct.w1_bus_master, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %write_block2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_block2, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %17, ptr noundef %buf, i32 noundef %len) #6
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.023
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  tail call void @w1_write_8(ptr noundef %dev, i8 noundef zeroext %19)
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %w1_pre_write.exit, %for.cond.preheader.if.end_crit_edge
  %pullup_duration.i13 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 17
  %20 = ptrtoint ptr %pullup_duration.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pullup_duration.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i14 = icmp eq i32 %21, 0
  br i1 %tobool.not.i14, label %if.end.w1_post_write.exit_crit_edge, label %if.then.i17

if.end.w1_post_write.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %w1_post_write.exit

if.then.i17:                                      ; preds = %if.end
  %enable_pullup.i15 = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 16
  %22 = ptrtoint ptr %enable_pullup.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enable_pullup.i15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.i16 = icmp eq i32 %23, 0
  br i1 %tobool1.not.i16, label %if.then.i17.if.else.i_crit_edge, label %land.lhs.true.i20

if.then.i17.if.else.i_crit_edge:                  ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i20:                                ; preds = %if.then.i17
  %24 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_master, align 8
  %set_pullup.i19 = getelementptr inbounds %struct.w1_bus_master, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %set_pullup.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_pullup.i19, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %land.lhs.true.i20.if.else.i_crit_edge, label %if.then3.i

land.lhs.true.i20.if.else.i_crit_edge:            ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %call.i21 = tail call zeroext i8 %27(ptr noundef %29, i32 noundef 0) #6
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i20.if.else.i_crit_edge, %if.then.i17.if.else.i_crit_edge
  tail call void @msleep(i32 noundef %21) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then3.i
  %30 = ptrtoint ptr %pullup_duration.i13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pullup_duration.i13, align 4
  br label %w1_post_write.exit

w1_post_write.exit:                               ; preds = %if.end.i, %if.end.w1_post_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_touch_block(ptr nocapture noundef readonly %dev, ptr nocapture noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp24 = icmp sgt i32 %len, 0
  br i1 %cmp24, label %for.cond1.preheader.lr.ph, label %entry.for.end11_crit_edge

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end11

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %pullup_duration.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 17
  %enable_pullup.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 16
  %bus_master.i = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.025 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc10, %for.end.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.025
  br label %for.body3

for.body3:                                        ; preds = %if.end.for.body3_crit_edge, %for.cond1.preheader
  %tmp.023 = phi i8 [ 0, %for.cond1.preheader ], [ %conv7, %if.end.for.body3_crit_edge ]
  %j.022 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %if.end.for.body3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %j.022)
  %cmp4 = icmp eq i32 %j.022, 7
  br i1 %cmp4, label %if.then, label %for.body3.if.end_crit_edge

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body3
  %0 = ptrtoint ptr %pullup_duration.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pullup_duration.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %2 = ptrtoint ptr %enable_pullup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_pullup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %4 = ptrtoint ptr %bus_master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_master.i, align 8
  %set_pullup.i = getelementptr inbounds %struct.w1_bus_master, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %set_pullup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_pullup.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %if.then.i

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %9, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %for.body3.if.end_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %shr = lshr i32 %conv, %j.022
  %and = and i32 %shr, 1
  %call = tail call zeroext i8 @w1_touch_bit(ptr noundef %dev, i32 noundef %and)
  %conv5 = zext i8 %call to i32
  %shl = shl nuw nsw i32 %conv5, %j.022
  %12 = trunc i32 %shl to i8
  %conv7 = or i8 %tmp.023, %12
  %inc = add nuw nsw i32 %j.022, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end.for.body3_crit_edge

if.end.for.body3_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.end:                                          ; preds = %if.end
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %arrayidx, align 1
  %inc10 = add nuw nsw i32 %i.025, 1
  %exitcond26.not = icmp eq i32 %inc10, %len
  br i1 %exitcond26.not, label %for.end.for.end11_crit_edge, label %for.end.for.cond1.preheader_crit_edge

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.end.for.end11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end11

for.end11:                                        ; preds = %for.end.for.end11_crit_edge, %entry.for.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @w1_read_block(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_master, align 8
  %read_block = getelementptr inbounds %struct.w1_bus_master, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %read_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_block, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp13 = icmp sgt i32 %len, 0
  br i1 %cmp13, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call zeroext i8 %3(ptr noundef %5, ptr noundef %buf, i32 noundef %len) #6
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call4 = tail call zeroext i8 @w1_read_8(ptr noundef %dev)
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call4, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %conv = trunc i32 %len to i8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %ret.0 = phi i8 [ %call, %if.then ], [ %conv, %for.end ]
  ret i8 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_reset_bus(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @w1_disable_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %do.body1

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body1:                                         ; preds = %entry
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !47
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %if.then11, label %do.body1.if.end14_crit_edge

do.body1.if.end14_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.body1.if.end14_crit_edge, %entry.if.end14_crit_edge
  %flags.0 = phi i32 [ %1, %do.body1.if.end14_crit_edge ], [ %1, %if.then11 ], [ 0, %entry.if.end14_crit_edge ]
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %2 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_master, align 8
  %reset_bus = getelementptr inbounds %struct.w1_bus_master, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %reset_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_bus, align 4
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call20 = tail call zeroext i8 %5(ptr noundef %7) #6
  br label %if.end35

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %write_bit = getelementptr inbounds %struct.w1_bus_master, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %write_bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_bit, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void %9(ptr noundef %11, i8 noundef zeroext 0) #6
  %12 = load i32, ptr @w1_delay_parm, align 4
  %mul.i = mul i32 %12, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %mul.i) #6
  %14 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_master, align 8
  %write_bit26 = getelementptr inbounds %struct.w1_bus_master, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write_bit26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_bit26, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef %19, i8 noundef zeroext 1) #6
  %20 = load i32, ptr @w1_delay_parm, align 4
  %mul.i80 = mul i32 %20, 70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %mul.i80) #6
  %22 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_master, align 8
  %read_bit = getelementptr inbounds %struct.w1_bus_master, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read_bit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_bit, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %call32 = tail call zeroext i8 %25(ptr noundef %27) #6
  tail call void @msleep(i32 noundef 1) #6
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then16
  %result.0.in.in = phi i8 [ %call20, %if.then16 ], [ %call32, %if.else ]
  %28 = load i32, ptr @w1_disable_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not = icmp eq i32 %28, 0
  br i1 %tobool36.not, label %if.end35.if.end69_crit_edge, label %do.body38

if.end35.if.end69_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.body38:                                        ; preds = %if.end35
  %and.i88 = and i32 %flags.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool46.not = icmp eq i32 %and.i88, 0
  br i1 %tobool46.not, label %if.then47, label %do.body38.do.body49_crit_edge

do.body38.do.body49_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

if.then47:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body49

do.body49:                                        ; preds = %if.then47, %do.body38.do.body49_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !48
  %and.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool57.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool57.not, label %if.then61, label %do.body49.do.end64_crit_edge, !prof !49

do.body49.do.end64_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %do.body49.do.end64_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.0) #6, !srcloc !50
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %if.end35.if.end69_crit_edge
  %result.0.in = and i8 %result.0.in.in, 1
  %result.0 = zext i8 %result.0.in to i32
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @w1_calc_crc8(ptr nocapture noundef readonly %data, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not4 = icmp eq i32 %len, 0
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %crc.07 = phi i8 [ %3, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %len.addr.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %data.addr.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %dec = add i32 %len.addr.06, -1
  %incdec.ptr = getelementptr i8, ptr %data.addr.05, i32 1
  %0 = ptrtoint ptr %data.addr.05 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.05, align 1
  %xor3 = xor i8 %1, %crc.07
  %xor = zext i8 %xor3 to i32
  %arrayidx = getelementptr [256 x i8], ptr @w1_crc8_table, i32 0, i32 %xor
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %crc.0.lcssa = phi i8 [ 0, %entry.while.end_crit_edge ], [ %3, %while.body.while.end_crit_edge ]
  ret i8 %crc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @w1_search_devices(ptr noundef %dev, i8 noundef zeroext %search_type, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %attempts = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %attempts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attempts, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %attempts, align 8
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 24
  %2 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_master, align 8
  %search = getelementptr inbounds %struct.w1_bus_master, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %search to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %search, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %7, ptr noundef %dev, i8 noundef zeroext %search_type, ptr noundef %cb) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @w1_search(ptr noundef %dev, i8 noundef zeroext %search_type, ptr noundef %cb) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_search(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_reset_select_slave(ptr nocapture noundef readonly %sl) #0 align 64 {
entry:
  %match = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %call = tail call i32 @w1_reset_bus(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %slave_count = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %slave_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slave_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext -52)
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match) #6
  %6 = ptrtoint ptr %match to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 85, ptr %match, align 1
  %reg_num = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %7 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %reg_num, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %arrayidx = getelementptr inbounds [9 x i8], ptr %match, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %arrayidx, align 1
  call void @w1_write_block(ptr noundef %3, ptr noundef nonnull %match, i32 noundef 9)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match) #6
  br label %return

return:                                           ; preds = %if.else, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ 0, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_reset_resume_command(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_reset_bus(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slave_count = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %slave_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slave_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  %conv = select i1 %cmp, i8 -91, i8 -52
  tail call void @w1_write_8(ptr noundef %dev, i8 noundef zeroext %conv)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @w1_next_pullup(ptr nocapture noundef writeonly %dev, i32 noundef %delay) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pullup_duration = getelementptr inbounds %struct.w1_master, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %pullup_duration to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %delay, ptr %pullup_duration, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__param_delay_coef, !1, !"__param_delay_coef", i1 false, i1 false}
!1 = !{!"../drivers/w1/w1_io.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_delay_coeftype170, !1, !"__UNIQUE_ID_delay_coeftype170", i1 false, i1 false}
!3 = !{ptr @__param_disable_irqs, !4, !"__param_disable_irqs", i1 false, i1 false}
!4 = !{!"../drivers/w1/w1_io.c", i32 18, i32 1}
!5 = !{ptr @__UNIQUE_ID_disable_irqstype171, !4, !"__UNIQUE_ID_disable_irqstype171", i1 false, i1 false}
!6 = !{ptr @__ksymtab_w1_touch_bit, !7, !"__ksymtab_w1_touch_bit", i1 false, i1 false}
!7 = !{!"../drivers/w1/w1_io.c", i32 63, i32 1}
!8 = !{ptr @__ksymtab_w1_write_8, !9, !"__ksymtab_w1_write_8", i1 false, i1 false}
!9 = !{!"../drivers/w1/w1_io.c", i32 150, i32 1}
!10 = !{ptr @__ksymtab_w1_triplet, !11, !"__ksymtab_w1_triplet", i1 false, i1 false}
!11 = !{!"../drivers/w1/w1_io.c", i32 221, i32 1}
!12 = !{ptr @__ksymtab_w1_read_8, !13, !"__ksymtab_w1_read_8", i1 false, i1 false}
!13 = !{!"../drivers/w1/w1_io.c", i32 242, i32 1}
!14 = !{ptr @__ksymtab_w1_write_block, !15, !"__ksymtab_w1_write_block", i1 false, i1 false}
!15 = !{!"../drivers/w1/w1_io.c", i32 263, i32 1}
!16 = !{ptr @__ksymtab_w1_touch_block, !17, !"__ksymtab_w1_touch_block", i1 false, i1 false}
!17 = !{!"../drivers/w1/w1_io.c", i32 287, i32 1}
!18 = !{ptr @__ksymtab_w1_read_block, !19, !"__ksymtab_w1_read_block", i1 false, i1 false}
!19 = !{!"../drivers/w1/w1_io.c", i32 311, i32 1}
!20 = !{ptr @__ksymtab_w1_reset_bus, !21, !"__ksymtab_w1_reset_bus", i1 false, i1 false}
!21 = !{!"../drivers/w1/w1_io.c", i32 353, i32 1}
!22 = !{ptr @__ksymtab_w1_calc_crc8, !23, !"__ksymtab_w1_calc_crc8", i1 false, i1 false}
!23 = !{!"../drivers/w1/w1_io.c", i32 364, i32 1}
!24 = !{ptr @__ksymtab_w1_reset_select_slave, !25, !"__ksymtab_w1_reset_select_slave", i1 false, i1 false}
!25 = !{!"../drivers/w1/w1_io.c", i32 403, i32 1}
!26 = !{ptr @__ksymtab_w1_reset_resume_command, !27, !"__ksymtab_w1_reset_resume_command", i1 false, i1 false}
!27 = !{!"../drivers/w1/w1_io.c", i32 429, i32 1}
!28 = !{ptr @__ksymtab_w1_next_pullup, !29, !"__ksymtab_w1_next_pullup", i1 false, i1 false}
!29 = !{!"../drivers/w1/w1_io.c", i32 449, i32 1}
!30 = !{ptr @__param_str_delay_coef, !1, !"__param_str_delay_coef", i1 false, i1 false}
!31 = !{ptr @w1_delay_parm, !32, !"w1_delay_parm", i1 false, i1 false}
!32 = !{!"../drivers/w1/w1_io.c", i32 14, i32 12}
!33 = !{ptr @__param_str_disable_irqs, !4, !"__param_str_disable_irqs", i1 false, i1 false}
!34 = !{ptr @w1_disable_irqs, !35, !"w1_disable_irqs", i1 false, i1 false}
!35 = !{!"../drivers/w1/w1_io.c", i32 17, i32 12}
!36 = !{ptr @w1_crc8_table, !37, !"w1_crc8_table", i1 false, i1 false}
!37 = !{!"../drivers/w1/w1_io.c", i32 20, i32 11}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 706441, i64 706502}
!48 = !{i64 709173}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 709458}
