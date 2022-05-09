; ModuleID = '/llk/IR_all_yes/net/nfc/nci/spi.c_pt.bc'
source_filename = "../net/nfc/nci/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nci_spi_send\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_spi_send\09\09\09\09"
module asm "\09.long\09__crc_nci_spi_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_spi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_spi_send\22\09\09\09\09\09"
module asm "__kstrtabns_nci_spi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nci_spi_allocate_spi\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_spi_allocate_spi\09\09\09\09"
module asm "\09.long\09__crc_nci_spi_allocate_spi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_spi_allocate_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_spi_allocate_spi\22\09\09\09\09\09"
module asm "__kstrtabns_nci_spi_allocate_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nci_spi_read\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_spi_read\09\09\09\09"
module asm "\09.long\09__crc_nci_spi_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_spi_read\22\09\09\09\09\09"
module asm "__kstrtabns_nci_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nci_spi = type { ptr, ptr, i32, i32, i8, %struct.completion, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }

@__kstrtab_nci_spi_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_spi_send = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_spi_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_spi_send to i32), ptr @__kstrtab_nci_spi_send, ptr @__kstrtabns_nci_spi_send }, section "___ksymtab_gpl+nci_spi_send", align 4
@__kstrtab_nci_spi_allocate_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_spi_allocate_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_spi_allocate_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_spi_allocate_spi to i32), ptr @__kstrtab_nci_spi_allocate_spi, ptr @__kstrtabns_nci_spi_allocate_spi }, section "___ksymtab_gpl+nci_spi_allocate_spi", align 4
@__kstrtab_nci_spi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_spi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_spi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_spi_read to i32), ptr @__kstrtab_nci_spi_read, ptr @__kstrtabns_nci_spi_read }, section "___ksymtab_gpl+nci_spi_read", align 4
@__UNIQUE_ID_file277 = internal constant [33 x i8] c"nci_spi.file=net/nfc/nci/nci_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [20 x i8] c"nci_spi.license=GPL\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [21 x i8] c"../net/nfc/nci/spi.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 87, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__ksymtab_nci_spi_allocate_spi, ptr @__ksymtab_nci_spi_read, ptr @__ksymtab_nci_spi_send, ptr @init_completion.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nci_spi_send(ptr noundef %nspi, ptr noundef %write_handshake_completion, ptr noundef %skb) #0 align 64 {
entry:
  %m.i71 = alloca %struct.spi_message, align 4
  %t.i72 = alloca %struct.spi_transfer, align 4
  %m.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #3
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %call, align 1
  %acknowledge_mode = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 4
  %3 = ptrtoint ptr %acknowledge_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %acknowledge_mode, align 4
  %arrayidx1 = getelementptr i8, ptr %call, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx1, align 1
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  %arrayidx2 = getelementptr i8, ptr %call, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx2, align 1
  %conv3 = trunc i32 %1 to i8
  %arrayidx4 = getelementptr i8, ptr %call, i32 3
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %arrayidx4, align 1
  %8 = load i8, ptr %acknowledge_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %call9 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %10, i32 noundef %12) #3
  %13 = lshr i16 %call9, 8
  %conv12 = trunc i16 %13 to i8
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #3
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12, ptr %call.i, align 1
  %conv15 = trunc i16 %call9 to i8
  %call.i69 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #3
  %15 = ptrtoint ptr %call.i69 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15, ptr %call.i69, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %write_handshake_completion, null
  br i1 %tobool.not, label %if.end.if.end27_crit_edge, label %if.then16

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #3
  %16 = getelementptr inbounds i8, ptr %t.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %t.i, ptr %t.i, align 4
  %cs_change4.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 7
  %19 = ptrtoint ptr %cs_change4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 64, ptr %cs_change4.i, align 4
  %xfer_udelay.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 2
  %20 = ptrtoint ptr %xfer_udelay.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xfer_udelay.i, align 4
  %conv.i = trunc i32 %21 to i16
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 9
  %22 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %delay.i, align 2
  %xfer_speed_hz.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 3
  %23 = ptrtoint ptr %xfer_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xfer_speed_hz.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 12
  %25 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %speed_hz.i, align 4
  %26 = getelementptr inbounds i8, ptr %m.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then16.__nci_spi_send.exit_crit_edge

if.then16.__nci_spi_send.exit_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %__nci_spi_send.exit

if.end.i.i.i.i:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %35 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %__nci_spi_send.exit

__nci_spi_send.exit:                              ; preds = %if.end.i.i.i.i, %if.then16.__nci_spi_send.exit_crit_edge
  %spi.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 1
  %36 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi.i, align 4
  %call.i70 = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %m.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool18.not = icmp eq i32 %call.i70, 0
  br i1 %tobool18.not, label %if.end20, label %__nci_spi_send.exit.done_crit_edge

__nci_spi_send.exit.done_crit_edge:               ; preds = %__nci_spi_send.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end20:                                         ; preds = %__nci_spi_send.exit
  %call22 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %write_handshake_completion, i32 noundef 100) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.end20.done_crit_edge, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end27:                                         ; preds = %if.end20.if.end27_crit_edge, %if.end.if.end27_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i71) #3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i72) #3
  %38 = call ptr @memset(ptr %t.i72, i32 0, i32 96)
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = ptrtoint ptr %t.i72 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %t.i72, align 4
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %t.i72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %t.i72, ptr %t.i72, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %43, %if.then.i ]
  %45 = getelementptr inbounds %struct.spi_transfer, ptr %t.i72, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink.i, ptr %45, align 4
  %cs_change4.i73 = getelementptr inbounds %struct.spi_transfer, ptr %t.i72, i32 0, i32 7
  %47 = ptrtoint ptr %cs_change4.i73 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i74 = load i8, ptr %cs_change4.i73, align 4
  %bf.clear.i75 = and i8 %bf.load.i74, -65
  store i8 %bf.clear.i75, ptr %cs_change4.i73, align 4
  %xfer_udelay.i76 = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 2
  %48 = ptrtoint ptr %xfer_udelay.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xfer_udelay.i76, align 4
  %conv.i77 = trunc i32 %49 to i16
  %delay.i78 = getelementptr inbounds %struct.spi_transfer, ptr %t.i72, i32 0, i32 9
  %50 = ptrtoint ptr %delay.i78 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i77, ptr %delay.i78, align 2
  %unit.i79 = getelementptr inbounds %struct.spi_transfer, ptr %t.i72, i32 0, i32 9, i32 1
  %51 = ptrtoint ptr %unit.i79 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %unit.i79, align 4
  %xfer_speed_hz.i80 = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 3
  %52 = ptrtoint ptr %xfer_speed_hz.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xfer_speed_hz.i80, align 4
  %speed_hz.i81 = getelementptr inbounds %struct.spi_transfer, ptr %t.i72, i32 0, i32 12
  %54 = ptrtoint ptr %speed_hz.i81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %speed_hz.i81, align 4
  %55 = getelementptr inbounds i8, ptr %m.i71, i32 8
  %56 = call ptr @memset(ptr %55, i32 0, i32 40)
  %57 = ptrtoint ptr %m.i71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %m.i71, ptr %m.i71, align 4
  %prev.i.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %m.i71, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %m.i71, ptr %prev.i.i.i.i82, align 4
  %resources.i.i.i83 = getelementptr inbounds %struct.spi_message, ptr %m.i71, i32 0, i32 10
  %59 = ptrtoint ptr %resources.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %resources.i.i.i83, ptr %resources.i.i.i83, align 4
  %prev.i2.i.i.i84 = getelementptr inbounds %struct.spi_message, ptr %m.i71, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %prev.i2.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %resources.i.i.i83, ptr %prev.i2.i.i.i84, align 4
  %transfer_list.i.i85 = getelementptr inbounds %struct.spi_transfer, ptr %t.i72, i32 0, i32 18
  %call.i.i.i.i86 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i85, ptr noundef nonnull %m.i71, ptr noundef nonnull %m.i71) #3
  br i1 %call.i.i.i.i86, label %if.end.i.i.i.i88, label %if.end.i.__nci_spi_send.exit91_crit_edge

if.end.i.__nci_spi_send.exit91_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__nci_spi_send.exit91

if.end.i.i.i.i88:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %prev.i.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i.i85, ptr %prev.i.i.i.i82, align 4
  %62 = ptrtoint ptr %transfer_list.i.i85 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %m.i71, ptr %transfer_list.i.i85, align 4
  %prev3.i.i.i.i87 = getelementptr inbounds %struct.spi_transfer, ptr %t.i72, i32 0, i32 18, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %m.i71, ptr %prev3.i.i.i.i87, align 4
  %64 = ptrtoint ptr %m.i71 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i.i85, ptr %m.i71, align 4
  br label %__nci_spi_send.exit91

__nci_spi_send.exit91:                            ; preds = %if.end.i.i.i.i88, %if.end.i.__nci_spi_send.exit91_crit_edge
  %spi.i89 = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 1
  %65 = ptrtoint ptr %spi.i89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi.i89, align 4
  %call.i90 = call i32 @spi_sync(ptr noundef %66, ptr noundef nonnull %m.i71) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i72) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i71) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp29.not = icmp eq i32 %call.i90, 0
  br i1 %cmp29.not, label %lor.lhs.false, label %__nci_spi_send.exit91.done_crit_edge

__nci_spi_send.exit91.done_crit_edge:             ; preds = %__nci_spi_send.exit91
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

lor.lhs.false:                                    ; preds = %__nci_spi_send.exit91
  %67 = ptrtoint ptr %acknowledge_mode to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %acknowledge_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp33 = icmp eq i8 %68, 0
  br i1 %cmp33, label %lor.lhs.false.done_crit_edge, label %if.end36

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end36:                                         ; preds = %lor.lhs.false
  %req_completion = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 5
  %69 = ptrtoint ptr %req_completion to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %req_completion, align 4
  %call38 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %req_completion, i32 noundef 5000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.end36.if.then45_crit_edge, label %lor.lhs.false41

if.end36.if.then45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

lor.lhs.false41:                                  ; preds = %if.end36
  %req_result = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 6
  %70 = ptrtoint ptr %req_result to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %req_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp43 = icmp eq i8 %71, 2
  br i1 %cmp43, label %lor.lhs.false41.if.then45_crit_edge, label %lor.lhs.false41.done_crit_edge

lor.lhs.false41.done_crit_edge:                   ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

lor.lhs.false41.if.then45_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false41.if.then45_crit_edge, %if.end36.if.then45_crit_edge
  br label %done

done:                                             ; preds = %if.then45, %lor.lhs.false41.done_crit_edge, %lor.lhs.false.done_crit_edge, %__nci_spi_send.exit91.done_crit_edge, %if.end20.done_crit_edge, %__nci_spi_send.exit.done_crit_edge
  %ret.0 = phi i32 [ %call.i70, %__nci_spi_send.exit.done_crit_edge ], [ %call.i90, %__nci_spi_send.exit91.done_crit_edge ], [ 0, %lor.lhs.false.done_crit_edge ], [ -5, %if.then45 ], [ 0, %lor.lhs.false41.done_crit_edge ], [ -62, %if.end20.done_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nci_spi_allocate_spi(ptr noundef %spi, i8 noundef zeroext %acknowledge_mode, i32 noundef %delay, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 80, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %acknowledge_mode1 = getelementptr inbounds %struct.nci_spi, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %acknowledge_mode1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %acknowledge_mode, ptr %acknowledge_mode1, align 4
  %xfer_udelay = getelementptr inbounds %struct.nci_spi, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %xfer_udelay to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %delay, ptr %xfer_udelay, align 4
  %xfer_speed_hz = getelementptr inbounds %struct.nci_spi, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %xfer_speed_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xfer_speed_hz, align 4
  %spi2 = getelementptr inbounds %struct.nci_spi, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %spi2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %spi2, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ndev, ptr %call.i, align 4
  %req_completion = getelementptr inbounds %struct.nci_spi, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %req_completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %req_completion, align 4
  %wait.i = getelementptr inbounds %struct.nci_spi, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nci_spi_read(ptr noundef %nspi) #0 align 64 {
entry:
  %m.i = alloca %struct.spi_message, align 4
  %req.i = alloca [2 x i8], align 1
  %resp_hdr.i = alloca [2 x i8], align 1
  %tx.i = alloca %struct.spi_transfer, align 4
  %rx.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i) #3
  %0 = getelementptr inbounds [2 x i8], ptr %req.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp_hdr.i) #3
  %1 = ptrtoint ptr %resp_hdr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %resp_hdr.i, align 1, !annotation !21
  %2 = getelementptr inbounds [2 x i8], ptr %resp_hdr.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !21
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i) #3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i) #3
  %4 = getelementptr inbounds i8, ptr %m.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %10 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %req.i, align 1
  %acknowledge_mode.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 4
  %13 = ptrtoint ptr %acknowledge_mode.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %acknowledge_mode.i, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %0, align 1
  %16 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %req.i, ptr %tx.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 2
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len.i, align 4
  %xfer_speed_hz.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 3
  %18 = ptrtoint ptr %xfer_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xfer_speed_hz.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 12
  %20 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %speed_hz.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %24 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %25 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 1
  %26 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resp_hdr.i, ptr %rx_buf.i, align 4
  %len3.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 2
  %27 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len3.i, align 4
  %cs_change4.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 7
  %28 = ptrtoint ptr %cs_change4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %cs_change4.i, align 4
  %29 = ptrtoint ptr %xfer_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xfer_speed_hz.i, align 4
  %speed_hz9.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 12
  %31 = ptrtoint ptr %speed_hz9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %speed_hz9.i, align 4
  %transfer_list.i83.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i85.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i83.i, ptr noundef %33, ptr noundef nonnull %m.i) #3
  br i1 %call.i.i.i85.i, label %if.end.i.i.i87.i, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit88.i_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit88.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit88.i

if.end.i.i.i87.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i83.i, ptr %prev.i.i.i.i, align 4
  %35 = ptrtoint ptr %transfer_list.i83.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %m.i, ptr %transfer_list.i83.i, align 4
  %prev3.i.i.i86.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i86.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i83.i, ptr %33, align 4
  br label %spi_message_add_tail.exit88.i

spi_message_add_tail.exit88.i:                    ; preds = %if.end.i.i.i87.i, %spi_message_add_tail.exit.i.spi_message_add_tail.exit88.i_crit_edge
  %spi.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 1
  %38 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %m.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %spi_message_add_tail.exit88.i.__nci_spi_read.exit.thread_crit_edge

spi_message_add_tail.exit88.i.__nci_spi_read.exit.thread_crit_edge: ; preds = %spi_message_add_tail.exit88.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__nci_spi_read.exit.thread

if.end.i:                                         ; preds = %spi_message_add_tail.exit88.i
  %40 = ptrtoint ptr %acknowledge_mode.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %acknowledge_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp.i = icmp eq i8 %41, 1
  %42 = ptrtoint ptr %resp_hdr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %resp_hdr.i, align 1
  br i1 %cmp.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %44 = and i8 %43, 63
  %and.i = zext i8 %44 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %2, align 1
  %conv16.i = zext i8 %46 to i32
  %add.i = or i32 %shl.i, 2
  %add17.i = add nuw nsw i32 %add.i, %conv16.i
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv20.i = zext i8 %43 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 8
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %2, align 1
  %conv23.i = zext i8 %48 to i32
  %or.i = or i32 %shl21.i, %conv23.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then12.i
  %rx_len.0.i = phi i32 [ %add17.i, %if.then12.i ], [ %or.i, %if.else.i ]
  %49 = ptrtoint ptr %nspi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nspi, align 4
  %conv26.i = and i32 %rx_len.0.i, 65535
  %tx_headroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_headroom.i.i, align 4
  %add.i.i = add i32 %52, %conv26.i
  %tx_tailroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %50, i32 0, i32 4
  %53 = ptrtoint ptr %tx_tailroom.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_tailroom.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %54
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add1.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end25.i.__nci_spi_read.exit.thread_crit_edge, label %if.end30.i

if.end25.i.__nci_spi_read.exit.thread_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__nci_spi_read.exit.thread

if.end30.i:                                       ; preds = %if.end25.i
  %55 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_headroom.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 %56
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %60, i32 %56
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %61 = call ptr @memset(ptr %4, i32 0, i32 40)
  %62 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %m.i, ptr %m.i, align 4
  %63 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %64 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %65 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %66 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %call32.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv26.i) #3
  %67 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call32.i, ptr %rx_buf.i, align 4
  %68 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv26.i, ptr %len3.i, align 4
  %69 = ptrtoint ptr %cs_change4.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load37.i = load i8, ptr %cs_change4.i, align 4
  %bf.clear38.i = and i8 %bf.load37.i, -65
  store i8 %bf.clear38.i, ptr %cs_change4.i, align 4
  %xfer_udelay.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 2
  %70 = ptrtoint ptr %xfer_udelay.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xfer_udelay.i, align 4
  %conv40.i = trunc i32 %71 to i16
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 9
  %72 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv40.i, ptr %delay.i, align 2
  %unit.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 9, i32 1
  %73 = ptrtoint ptr %unit.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %unit.i, align 4
  %74 = ptrtoint ptr %xfer_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xfer_speed_hz.i, align 4
  %76 = ptrtoint ptr %speed_hz9.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %speed_hz9.i, align 4
  %77 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i94.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i83.i, ptr noundef %78, ptr noundef nonnull %m.i) #3
  br i1 %call.i.i.i94.i, label %if.end.i.i.i96.i, label %if.end30.i.spi_message_add_tail.exit97.i_crit_edge

if.end30.i.spi_message_add_tail.exit97.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit97.i

if.end.i.i.i96.i:                                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #5
  %79 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %transfer_list.i83.i, ptr %prev.i.i.i.i, align 4
  %80 = ptrtoint ptr %transfer_list.i83.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %m.i, ptr %transfer_list.i83.i, align 4
  %prev3.i.i.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i.i95.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %transfer_list.i83.i, ptr %78, align 4
  br label %spi_message_add_tail.exit97.i

spi_message_add_tail.exit97.i:                    ; preds = %if.end.i.i.i96.i, %if.end30.i.spi_message_add_tail.exit97.i_crit_edge
  %83 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %spi.i, align 4
  %call45.i = call i32 @spi_sync(ptr noundef %84, ptr noundef nonnull %m.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %receive_error.i

if.end48.i:                                       ; preds = %spi_message_add_tail.exit97.i
  %85 = ptrtoint ptr %acknowledge_mode.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %acknowledge_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp51.i = icmp eq i8 %86, 1
  br i1 %cmp51.i, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp_hdr.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #3
  br label %if.end13

receive_error.i:                                  ; preds = %spi_message_add_tail.exit97.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #3
  br label %__nci_spi_read.exit.thread

__nci_spi_read.exit.thread:                       ; preds = %receive_error.i, %if.end25.i.__nci_spi_read.exit.thread_crit_edge, %spi_message_add_tail.exit88.i.__nci_spi_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp_hdr.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #3
  br label %done

if.end:                                           ; preds = %if.end48.i
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %2, align 1
  %call55.i = call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #3
  %89 = ptrtoint ptr %call55.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %call55.i, align 1
  %90 = ptrtoint ptr %resp_hdr.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %resp_hdr.i, align 1
  %call57.i = call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #3
  %92 = ptrtoint ptr %call57.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %call57.i, align 1
  %93 = ptrtoint ptr %acknowledge_mode.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %.pr = load i8, ptr %acknowledge_mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp_hdr.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp = icmp eq i8 %.pr, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %94 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i.i, align 4
  %len.i36 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %96 = ptrtoint ptr %len.i36 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len.i36, align 4
  %sub.i = add i32 %97, -2
  %arrayidx.i = getelementptr i8, ptr %95, i32 %sub.i
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %99 to i32
  %shl.i37 = shl nuw nsw i32 %conv.i, 8
  %sub3.i = add i32 %97, -1
  %arrayidx4.i = getelementptr i8, ptr %95, i32 %sub3.i
  %100 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %101 to i32
  %or.i38 = or i32 %shl.i37, %conv5.i
  %call.i39 = call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %95, i32 noundef %sub.i) #3
  %conv10.i = zext i16 %call.i39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i38, i32 %conv10.i)
  %cmp.i40.not = icmp eq i32 %or.i38, %conv10.i
  %102 = ptrtoint ptr %len.i36 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len.i36, align 4
  %sub14.i = add i32 %103, -2
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub14.i) #3
  br i1 %cmp.i40.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @send_acknowledge(ptr noundef %nspi, i8 noundef zeroext 2)
  br label %done

if.end7:                                          ; preds = %if.then2
  %104 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 1
  %108 = lshr i8 %107, 6
  %call.i42 = call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #3
  %req_result = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 6
  %109 = ptrtoint ptr %req_result to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %req_result, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %107)
  %tobool10.not = icmp ult i8 %107, 64
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %req_completion = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 5
  call void @complete(ptr noundef %req_completion) #3
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge, %if.end.if.end13_crit_edge, %if.end.thread
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %110 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool14.not = icmp eq i32 %111, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #3
  br label %done

if.end16:                                         ; preds = %if.end13
  %112 = ptrtoint ptr %acknowledge_mode.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %acknowledge_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp19 = icmp eq i8 %113, 1
  br i1 %cmp19, label %if.then21, label %if.end16.done_crit_edge

if.end16.done_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @send_acknowledge(ptr noundef %nspi, i8 noundef zeroext 1)
  br label %done

done:                                             ; preds = %if.then21, %if.end16.done_crit_edge, %if.then15, %if.then5, %__nci_spi_read.exit.thread
  %skb.0 = phi ptr [ %call.i.i.i, %if.then21 ], [ %call.i.i.i, %if.end16.done_crit_edge ], [ null, %if.then15 ], [ %call.i.i.i, %if.then5 ], [ null, %__nci_spi_read.exit.thread ]
  ret ptr %skb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_acknowledge(ptr nocapture noundef readonly %nspi, i8 noundef zeroext %acknowledge) unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nspi, align 4
  %tx_headroom.i = getelementptr inbounds %struct.nci_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_headroom.i, align 4
  %tx_tailroom.i = getelementptr inbounds %struct.nci_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tx_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_tailroom.i, align 4
  %add1.i = add i32 %5, %3
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add1.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #3
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.nci_skb_alloc.exit_crit_edge, label %if.then.i

entry.nci_skb_alloc.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nci_skb_alloc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %nci_skb_alloc.exit

nci_skb_alloc.exit:                               ; preds = %if.then.i, %entry.nci_skb_alloc.exit_crit_edge
  %call1 = tail call ptr @skb_push(ptr noundef %call.i.i, i32 noundef 4) #3
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %call1, align 1
  %arrayidx2 = getelementptr i8, ptr %call1, i32 1
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx2, align 1
  %shl = shl i8 %acknowledge, 6
  %arrayidx4 = getelementptr i8, ptr %call1, i32 2
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %shl, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %call1, i32 3
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx5, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %call6 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %17, i32 noundef %19) #3
  %20 = lshr i16 %call6, 8
  %conv8 = trunc i16 %20 to i8
  %call.i = tail call ptr @skb_put(ptr noundef %call.i.i, i32 noundef 1) #3
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8, ptr %call.i, align 1
  %conv10 = trunc i16 %call6 to i8
  %call.i1 = tail call ptr @skb_put(ptr noundef %call.i.i, i32 noundef 1) #3
  %22 = ptrtoint ptr %call.i1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv10, ptr %call.i1, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #3
  %23 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i3

if.then.i3:                                       ; preds = %nci_skb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %t.i, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %nci_skb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %t.i, ptr %t.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i3
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %28, %if.then.i3 ]
  %30 = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i, ptr %30, align 4
  %cs_change4.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 7
  %32 = ptrtoint ptr %cs_change4.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %cs_change4.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %cs_change4.i, align 4
  %xfer_udelay.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 2
  %33 = ptrtoint ptr %xfer_udelay.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xfer_udelay.i, align 4
  %conv.i = trunc i32 %34 to i16
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 9
  %35 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %delay.i, align 2
  %unit.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %unit.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %unit.i, align 4
  %xfer_speed_hz.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 3
  %37 = ptrtoint ptr %xfer_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xfer_speed_hz.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 12
  %39 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %speed_hz.i, align 4
  %40 = getelementptr inbounds i8, ptr %m.i, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.__nci_spi_send.exit_crit_edge

if.end.i.__nci_spi_send.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__nci_spi_send.exit

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %__nci_spi_send.exit

__nci_spi_send.exit:                              ; preds = %if.end.i.i.i.i, %if.end.i.__nci_spi_send.exit_crit_edge
  %spi.i = getelementptr inbounds %struct.nci_spi, ptr %nspi, i32 0, i32 1
  %50 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi.i, align 4
  %call.i4 = call i32 @spi_sync(ptr noundef %51, ptr noundef nonnull %m.i) #3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #3
  call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_nci_spi_send, !1, !"__ksymtab_nci_spi_send", i1 false, i1 false}
!1 = !{!"../net/nfc/nci/spi.c", i32 112, i32 1}
!2 = !{ptr @__ksymtab_nci_spi_allocate_spi, !3, !"__ksymtab_nci_spi_allocate_spi", i1 false, i1 false}
!3 = !{!"../net/nfc/nci/spi.c", i32 144, i32 1}
!4 = !{ptr @__ksymtab_nci_spi_read, !5, !"__ksymtab_nci_spi_read", i1 false, i1 false}
!5 = !{!"../net/nfc/nci/spi.c", i32 318, i32 1}
!6 = !{ptr @__UNIQUE_ID_file277, !7, !"__UNIQUE_ID_file277", i1 false, i1 false}
!7 = !{!"../net/nfc/nci/spi.c", i32 320, i32 1}
!8 = !{ptr @__UNIQUE_ID_license278, !7, !"__UNIQUE_ID_license278", i1 false, i1 false}
!9 = !{ptr @init_completion.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../include/linux/completion.h", i32 87, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
