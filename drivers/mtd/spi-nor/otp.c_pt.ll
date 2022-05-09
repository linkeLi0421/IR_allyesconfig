; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/otp.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/otp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.76, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.76 = type { ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_otp_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.otp_info = type { i32, i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mtd/spi-nor/otp.c\00", [38 x i8] zeroinitializer }, align 32
@spi_nor_otp_lock_bit_cr.lock_bits = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 16, i32 32], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 490, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"lock_bits\00", align 1
@___asan_gen_.5 = private constant [29 x i8] c"../drivers/mtd/spi-nor/otp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 157, i32 19 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @spi_nor_otp_lock_bit_cr.lock_bits], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_otp_lock_bit_cr.lock_bits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_read_secr(ptr noundef %nor, i64 noundef %addr, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %read_opcode1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %0 = ptrtoint ptr %read_opcode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_opcode1, align 2
  %addr_width2 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %2 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_width2, align 4
  %read_dummy3 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %4 = ptrtoint ptr %read_dummy3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_dummy3, align 1
  %read_proto4 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %6 = ptrtoint ptr %read_proto4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_proto4, align 4
  %dirmap = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 22
  %8 = ptrtoint ptr %dirmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dirmap, align 8
  store i8 72, ptr %read_opcode1, align 2
  store i8 8, ptr %read_dummy3, align 1
  store i32 65793, ptr %read_proto4, align 4
  store ptr null, ptr %dirmap, align 8
  %call = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %addr, i32 noundef %len, ptr noundef %buf) #3
  %10 = ptrtoint ptr %read_opcode1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %read_opcode1, align 2
  %11 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %3, ptr %addr_width2, align 4
  %12 = ptrtoint ptr %read_dummy3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %5, ptr %read_dummy3, align 1
  %13 = ptrtoint ptr %read_proto4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %read_proto4, align 4
  %14 = ptrtoint ptr %dirmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %dirmap, align 8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_write_secr(ptr noundef %nor, i64 noundef %addr, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %program_opcode1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %0 = ptrtoint ptr %program_opcode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %program_opcode1, align 8
  %addr_width2 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %2 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_width2, align 4
  %write_proto3 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %4 = ptrtoint ptr %write_proto3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_proto3, align 8
  %wdesc4 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %wdesc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wdesc4, align 4
  store i8 66, ptr %program_opcode1, align 8
  store i32 65793, ptr %write_proto3, align 8
  store ptr null, ptr %wdesc4, align 4
  %call = tail call i32 @spi_nor_write_enable(ptr noundef %nor) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out.thread38

out.thread38:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %program_opcode1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %program_opcode1, align 8
  %9 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %3, ptr %addr_width2, align 4
  %10 = ptrtoint ptr %write_proto3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %write_proto3, align 8
  %11 = ptrtoint ptr %wdesc4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %wdesc4, align 4
  br label %21

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @spi_nor_write_data(ptr noundef %nor, i64 noundef %addr, i32 noundef %len, ptr noundef %buf) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %out.thread, label %out

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %program_opcode1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %1, ptr %program_opcode1, align 8
  %13 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %addr_width2, align 4
  %14 = ptrtoint ptr %write_proto3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %write_proto3, align 8
  %15 = ptrtoint ptr %wdesc4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %wdesc4, align 4
  br label %20

out:                                              ; preds = %if.end
  %call12 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %nor) #3
  %16 = ptrtoint ptr %program_opcode1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %1, ptr %program_opcode1, align 8
  %17 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %3, ptr %addr_width2, align 4
  %18 = ptrtoint ptr %write_proto3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %write_proto3, align 8
  %19 = ptrtoint ptr %wdesc4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %wdesc4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool18.not = icmp eq i32 %call12, 0
  br i1 %tobool18.not, label %out._crit_edge, label %out._crit_edge42

out._crit_edge42:                                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  br label %21

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  br label %20

20:                                               ; preds = %out._crit_edge, %out.thread
  br label %21

21:                                               ; preds = %20, %out._crit_edge42, %out.thread38
  %22 = phi i32 [ %call9, %20 ], [ %call12, %out._crit_edge42 ], [ %call, %out.thread38 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_wait_till_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_erase_secr(ptr noundef %nor, i64 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_opcode1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %0 = ptrtoint ptr %erase_opcode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erase_opcode1, align 1
  %call = tail call i32 @spi_nor_write_enable(ptr noundef %nor) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %erase_opcode1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 68, ptr %erase_opcode1, align 1
  %conv = trunc i64 %addr to i32
  %call3 = tail call i32 @spi_nor_erase_sector(ptr noundef %nor, i32 noundef %conv) #3
  %3 = ptrtoint ptr %erase_opcode1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %1, ptr %erase_opcode1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %nor) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_erase_sector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_lock_sr2(ptr noundef %nor, i32 noundef %region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %region)
  %cmp.i = icmp ugt i32 %region, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %spi_nor_otp_lock_bit_cr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

spi_nor_otp_lock_bit_cr.exit:                     ; preds = %entry
  %arrayidx.i = getelementptr [3 x i32], ptr @spi_nor_otp_lock_bit_cr.lock_bits, i32 0, i32 %region
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call1 = tail call i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge

spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge:   ; preds = %spi_nor_otp_lock_bit_cr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %spi_nor_otp_lock_bit_cr.exit
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %6 = trunc i32 %3 to i8
  %conv9 = or i8 %5, %6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %1, align 1
  %call11 = tail call i32 @spi_nor_write_16bit_cr_and_check(ptr noundef %nor, i8 noundef zeroext %conv9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end6 ], [ %call1, %spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_cr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_16bit_cr_and_check(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_otp_is_locked_sr2(ptr noundef %nor, i32 noundef %region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %region)
  %cmp.i = icmp ugt i32 %region, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %spi_nor_otp_lock_bit_cr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

spi_nor_otp_lock_bit_cr.exit:                     ; preds = %entry
  %arrayidx.i = getelementptr [3 x i32], ptr @spi_nor_otp_lock_bit_cr.lock_bits, i32 0, i32 %region
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call1 = tail call i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge

spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge:   ; preds = %spi_nor_otp_lock_bit_cr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %spi_nor_otp_lock_bit_cr.exit
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %3, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end3 ], [ %call1, %spi_nor_otp_lock_bit_cr.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spi_nor_set_mtd_otp_ops(ptr nocapture noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %ops = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %otp = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otp, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #3, !range !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %if.end28, label %do.end, !prof !14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %_get_user_prot_info = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 31
  %10 = ptrtoint ptr %_get_user_prot_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @spi_nor_mtd_otp_info, ptr %_get_user_prot_info, align 8
  %_read_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 32
  %11 = ptrtoint ptr %_read_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @spi_nor_mtd_otp_read, ptr %_read_user_prot_reg, align 4
  %_write_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 33
  %12 = ptrtoint ptr %_write_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @spi_nor_mtd_otp_write, ptr %_write_user_prot_reg, align 8
  %_lock_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 34
  %13 = ptrtoint ptr %_lock_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @spi_nor_mtd_otp_lock, ptr %_lock_user_prot_reg, align 4
  %_erase_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 35
  %14 = ptrtoint ptr %_erase_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @spi_nor_mtd_otp_erase, ptr %_erase_user_prot_reg, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_info(ptr noundef %mtd, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %otp = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9
  %ops1 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %4 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otp, align 8
  %n_regions4 = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %n_regions4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_regions4, align 8
  %mul = mul i32 %7, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %len)
  %cmp = icmp ugt i32 %mul, %len
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp846.not = icmp eq i32 %7, 0
  br i1 %cmp846.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %is_locked = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %buf.addr.047 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %if.end18.for.body_crit_edge ]
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %otp.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %otp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otp.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %mul.i = mul i32 %13, %i.048
  %14 = ptrtoint ptr %buf.addr.047 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %buf.addr.047, align 4
  %15 = load ptr, ptr %params, align 4
  %otp11 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %otp11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %otp11, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %length = getelementptr inbounds %struct.otp_info, ptr %buf.addr.047, i32 0, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %length, align 4
  %21 = ptrtoint ptr %is_locked to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %is_locked, align 4
  %call14 = tail call i32 %22(ptr noundef %mtd, i32 noundef %i.048) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %for.body.out_crit_edge, label %if.end18

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool19 = icmp ne i32 %call14, 0
  %lnot.ext = zext i1 %tobool19 to i32
  %locked21 = getelementptr inbounds %struct.otp_info, ptr %buf.addr.047, i32 0, i32 2
  %23 = ptrtoint ptr %locked21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %lnot.ext, ptr %locked21, align 4
  %incdec.ptr = getelementptr %struct.otp_info, ptr %buf.addr.047, i32 1
  %inc = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %retlen, align 4
  br label %out

out:                                              ; preds = %for.end, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ %call14, %for.body.out_crit_edge ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -28, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_read(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spi_nor_mtd_otp_read_write(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spi_nor_mtd_otp_read_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_lock(ptr noundef %mtd, i64 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %otp = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9
  %ops1 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %4 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otp, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %from)
  %cmp = icmp slt i64 %from, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add nuw i64 %conv, %from
  %n_regions.i = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %n_regions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_regions.i, align 8
  %mul.i = mul i32 %9, %7
  %conv6 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv6)
  %cmp7 = icmp sgt i64 %add, %conv6
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = add i32 %7, -1
  %and = and i32 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %lor.lhs.false11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end
  %conv12 = zext i32 %7 to i64
  %sub13 = add nsw i64 %conv12, -1
  %and14 = and i64 %sub13, %from
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %cmp15 = icmp eq i64 %and14, 0
  br i1 %cmp15, label %if.end18, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false11
  %call19 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool22.not56 = icmp eq i32 %len, 0
  br i1 %tobool22.not56, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lock = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %3, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %len.addr.058 = phi i32 [ %len, %while.body.lr.ph ], [ %sub28, %if.end27.while.body_crit_edge ]
  %from.addr.057 = phi i64 [ %from, %while.body.lr.ph ], [ %add30, %if.end27.while.body_crit_edge ]
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 4
  %otp.i55 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %otp.i55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otp.i55, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %conv.i = zext i32 %15 to i64
  %call.i = tail call i64 @div64_u64(i64 noundef %from.addr.057, i64 noundef %conv.i) #3
  %conv1.i = trunc i64 %call.i to i32
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %call24 = tail call i32 %17(ptr noundef %mtd, i32 noundef %conv1.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end27:                                         ; preds = %while.body
  %sub28 = sub i32 %len.addr.058, %7
  %add30 = add i64 %from.addr.057, %conv12
  %tobool22.not = icmp eq i32 %sub28, 0
  br i1 %tobool22.not, label %if.end27.out_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out:                                              ; preds = %if.end27.out_crit_edge, %while.body.out_crit_edge, %while.cond.preheader.out_crit_edge
  %ret.1 = phi i32 [ 0, %while.cond.preheader.out_crit_edge ], [ 0, %if.end27.out_crit_edge ], [ %call24, %while.body.out_crit_edge ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end18.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_mtd_otp_erase(ptr noundef %mtd, i64 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %otp = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9
  %ops1 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %4 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otp, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %erase = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %erase, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool5.not = icmp eq i32 %len, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %from)
  %cmp = icmp slt i64 %from, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %conv = zext i32 %len to i64
  %add = add nuw i64 %conv, %from
  %n_regions.i = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %n_regions.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_regions.i, align 8
  %mul.i = mul i32 %11, %7
  %conv9 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv9)
  %cmp10 = icmp sgt i64 %add, %conv9
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %sub = add i32 %7, -1
  %and = and i32 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %lor.lhs.false16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false16:                                  ; preds = %if.end13
  %conv17 = zext i32 %7 to i64
  %sub18 = add nsw i64 %conv17, -1
  %and19 = and i64 %sub18, %from
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %cmp20 = icmp eq i64 %and19, 0
  br i1 %cmp20, label %if.end23, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false16
  %call24 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call fastcc i32 @spi_nor_mtd_otp_range_is_locked(ptr noundef %mtd, i64 noundef %from, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.out_crit_edge, label %if.else

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool32.not = icmp eq i32 %call28, 0
  br i1 %tobool32.not, label %if.else.while.body_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %if.else.while.body_crit_edge
  %len.addr.087 = phi i32 [ %sub44, %if.end43.while.body_crit_edge ], [ %len, %if.else.while.body_crit_edge ]
  %from.addr.086 = phi i64 [ %add46, %if.end43.while.body_crit_edge ], [ %from, %if.else.while.body_crit_edge ]
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params, align 4
  %otp.i80 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %otp.i80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %otp.i80, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %conv.i = zext i32 %17 to i64
  %call.i = tail call i64 @div64_u64(i64 noundef %from.addr.086, i64 noundef %conv.i) #3
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params, align 4
  %otp.i82 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %otp.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %otp.i82, align 8
  %base.i = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %base.i, align 8
  %conv.i83 = and i64 %call.i, 4294967295
  %offset.i = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset.i, align 8
  %mul.i84 = mul i64 %25, %conv.i83
  %add.i = add i64 %mul.i84, %23
  %26 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %erase, align 4
  %call40 = tail call i32 %27(ptr noundef %mtd, i64 noundef %add.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end43:                                         ; preds = %while.body
  %sub44 = sub i32 %len.addr.087, %7
  %add46 = add i64 %from.addr.086, %conv17
  %tobool36.not = icmp eq i32 %sub44, 0
  br i1 %tobool36.not, label %if.end43.out_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out:                                              ; preds = %if.end43.out_crit_edge, %while.body.out_crit_edge, %if.else.out_crit_edge, %if.end27.out_crit_edge
  %ret.1 = phi i32 [ %call28, %if.end27.out_crit_edge ], [ -30, %if.else.out_crit_edge ], [ %call40, %while.body.out_crit_edge ], [ 0, %if.end43.out_crit_edge ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end23.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_lock_and_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_unlock_and_unprep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_mtd_otp_read_write(ptr noundef %mtd, i64 noundef %ofs, i32 noundef %total_len, ptr nocapture noundef %retlen, ptr noundef %buf, i1 noundef zeroext %is_write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %otp = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9
  %ops1 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %4 = ptrtoint ptr %otp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otp, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ofs)
  %cmp = icmp slt i64 %ofs, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %n_regions.i = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %n_regions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_regions.i, align 8
  %mul.i = mul i32 %9, %7
  %conv = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %ofs)
  %cmp6.not = icmp ugt i64 %conv, %ofs
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = trunc i64 %ofs to i32
  %conv10 = sub i32 %mul.i, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %conv10, i32 %total_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  br i1 %is_write, label %if.then20, label %if.end18.while.body.lr.ph_crit_edge

if.end18.while.body.lr.ph_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.lr.ph

if.then20:                                        ; preds = %if.end18
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params, align 4
  %ops1.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %13, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops1.i, align 4
  %otp.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %otp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %otp.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %conv.i.i = zext i32 %19 to i64
  %call.i.i = tail call i64 @div64_u64(i64 noundef %ofs, i64 noundef %conv.i.i) #3
  %conv1.i.i = trunc i64 %call.i.i to i32
  %is_locked.i = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %15, i32 0, i32 4
  %conv.i = zext i32 %11 to i64
  %add.i = add nsw i64 %ofs, -1
  %sub.i = add i64 %add.i, %conv.i
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params, align 4
  %otp.i1519.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %otp.i1519.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %otp.i1519.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %conv.i1620.i = zext i32 %25 to i64
  %call.i1721.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i1620.i) #3
  %conv1.i1822.i = trunc i64 %call.i1721.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv1.i1822.i)
  %cmp.not23.i = icmp ugt i32 %conv1.i.i, %conv1.i1822.i
  br i1 %cmp.not23.i, label %if.then20.while.body.lr.ph_crit_edge, label %if.then20.for.body.i_crit_edge

if.then20.for.body.i_crit_edge:                   ; preds = %if.then20
  br label %for.body.i

if.then20.while.body.lr.ph_crit_edge:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.lr.ph

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %region.024.i, 1
  %26 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %params, align 4
  %otp.i15.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %otp.i15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %otp.i15.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %conv.i16.i = zext i32 %31 to i64
  %call.i17.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i16.i) #3
  %conv1.i18.i = trunc i64 %call.i17.i to i32
  %cmp.not.i = icmp ugt i32 %inc.i, %conv1.i18.i
  br i1 %cmp.not.i, label %for.cond.i.while.body.lr.ph_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.i.while.body.lr.ph_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.lr.ph

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then20.for.body.i_crit_edge
  %region.024.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ %conv1.i.i, %if.then20.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %is_locked.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %is_locked.i, align 4
  %call4.i = tail call i32 %33(ptr noundef %mtd, i32 noundef %region.024.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %spi_nor_mtd_otp_range_is_locked.exit

spi_nor_mtd_otp_range_is_locked.exit:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp22 = icmp slt i32 %call4.i, 0
  %spec.select134 = select i1 %cmp22, i32 %call4.i, i32 -30
  br label %out

while.body.lr.ph:                                 ; preds = %for.cond.i.while.body.lr.ph_crit_edge, %if.then20.while.body.lr.ph_crit_edge, %if.end18.while.body.lr.ph_crit_edge
  %sub33 = add i32 %7, -1
  %conv34 = zext i32 %sub33 to i64
  %write = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %3, i32 0, i32 1
  %write. = select i1 %is_write, ptr %write, ptr %3
  br label %while.body

while.body:                                       ; preds = %if.end59.while.body_crit_edge, %while.body.lr.ph
  %ofs.addr.0140 = phi i64 [ %ofs, %while.body.lr.ph ], [ %add62, %if.end59.while.body_crit_edge ]
  %total_len.addr.0139 = phi i32 [ %11, %while.body.lr.ph ], [ %sub63, %if.end59.while.body_crit_edge ]
  %buf.addr.0137 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end59.while.body_crit_edge ]
  %34 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %params, align 4
  %otp.i121 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %otp.i121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %otp.i121, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %conv.i122 = zext i32 %39 to i64
  %call.i = tail call i64 @div64_u64(i64 noundef %ofs.addr.0140, i64 noundef %conv.i122) #3
  %40 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %params, align 4
  %otp.i124 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %otp.i124 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %otp.i124, align 8
  %base.i = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %base.i, align 8
  %conv.i125 = and i64 %call.i, 4294967295
  %offset.i = getelementptr inbounds %struct.spi_nor_otp_organization, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset.i, align 8
  %mul.i126 = mul i64 %47, %conv.i125
  %add.i127 = add i64 %mul.i126, %45
  %and = and i64 %ofs.addr.0140, %conv34
  %48 = trunc i64 %and to i32
  %conv37 = sub i32 %7, %48
  %49 = tail call i32 @llvm.umin.i32(i32 %total_len.addr.0139, i32 %conv37)
  %50 = ptrtoint ptr %write. to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write., align 4
  %add49 = add i64 %add.i127, %and
  %call50 = tail call i32 %51(ptr noundef %mtd, i64 noundef %add49, i32 noundef %49, ptr noundef %buf.addr.0137) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp52 = icmp eq i32 %call50, 0
  %spec.select = select i1 %cmp52, i32 -5, i32 %call50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp56 = icmp slt i32 %spec.select, 0
  br i1 %cmp56, label %while.body.out_crit_edge, label %if.end59

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end59:                                         ; preds = %while.body
  %52 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %retlen, align 4
  %add60 = add i32 %53, %spec.select
  store i32 %add60, ptr %retlen, align 4
  %conv61133 = zext i32 %spec.select to i64
  %add62 = add i64 %ofs.addr.0140, %conv61133
  %add.ptr = getelementptr i8, ptr %buf.addr.0137, i32 %spec.select
  %sub63 = sub i32 %total_len.addr.0139, %spec.select
  %tobool30.not = icmp eq i32 %sub63, 0
  br i1 %tobool30.not, label %if.end59.out_crit_edge, label %if.end59.while.body_crit_edge

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out:                                              ; preds = %if.end59.out_crit_edge, %while.body.out_crit_edge, %spi_nor_mtd_otp_range_is_locked.exit
  %ret.2 = phi i32 [ %spec.select134, %spi_nor_mtd_otp_range_is_locked.exit ], [ %spec.select, %while.body.out_crit_edge ], [ 0, %if.end59.out_crit_edge ]
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_mtd_otp_range_is_locked(ptr noundef %nor, i64 noundef %ofs, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %ops1 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %otp.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %otp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otp.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %conv.i = zext i32 %7 to i64
  %call.i = tail call i64 @div64_u64(i64 noundef %ofs, i64 noundef %conv.i) #3
  %conv1.i = trunc i64 %call.i to i32
  %is_locked = getelementptr inbounds %struct.spi_nor_otp_ops, ptr %3, i32 0, i32 4
  %conv = zext i32 %len to i64
  %add = add i64 %ofs, -1
  %sub = add i64 %add, %conv
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %otp.i1519 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %otp.i1519 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otp.i1519, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %conv.i1620 = zext i32 %13 to i64
  %call.i1721 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %conv.i1620) #3
  %conv1.i1822 = trunc i64 %call.i1721 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %conv1.i1822)
  %cmp.not23 = icmp ugt i32 %conv1.i, %conv1.i1822
  br i1 %cmp.not23, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %region.024, 1
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %otp.i15 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %otp.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %otp.i15, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %conv.i16 = zext i32 %19 to i64
  %call.i17 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %conv.i16) #3
  %conv1.i18 = trunc i64 %call.i17 to i32
  %cmp.not = icmp ugt i32 %inc, %conv1.i18
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %region.024 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %conv1.i, %entry.for.body_crit_edge ]
  %20 = ptrtoint ptr %is_locked to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %is_locked, align 4
  %call4 = tail call i32 %21(ptr noundef %nor, i32 noundef %region.024) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call4, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/otp.c", i32 490, i32 6}
!2 = !{ptr @spi_nor_otp_lock_bit_cr.lock_bits, !3, !"lock_bits", i1 false, i1 false}
!3 = !{!"../drivers/mtd/spi-nor/otp.c", i32 157, i32 19}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 -102759400, i32 4193255}
