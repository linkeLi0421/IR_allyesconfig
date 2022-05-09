; ModuleID = '/llk/IR_all_yes/drivers/nfc/st95hf/spi.c_pt.bc'
source_filename = "../drivers/nfc/st95hf/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+st95hf_spi_send\22, \22a\22\09"
module asm "\09.weak\09__crc_st95hf_spi_send\09\09\09\09"
module asm "\09.long\09__crc_st95hf_spi_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st95hf_spi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22st95hf_spi_send\22\09\09\09\09\09"
module asm "__kstrtabns_st95hf_spi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+st95hf_spi_recv_response\22, \22a\22\09"
module asm "\09.weak\09__crc_st95hf_spi_recv_response\09\09\09\09"
module asm "\09.long\09__crc_st95hf_spi_recv_response\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st95hf_spi_recv_response:\09\09\09\09\09"
module asm "\09.asciz \09\22st95hf_spi_recv_response\22\09\09\09\09\09"
module asm "__kstrtabns_st95hf_spi_recv_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+st95hf_spi_recv_echo_res\22, \22a\22\09"
module asm "\09.weak\09__crc_st95hf_spi_recv_echo_res\09\09\09\09"
module asm "\09.long\09__crc_st95hf_spi_recv_echo_res\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st95hf_spi_recv_echo_res:\09\09\09\09\09"
module asm "\09.asciz \09\22st95hf_spi_recv_echo_res\22\09\09\09\09\09"
module asm "__kstrtabns_st95hf_spi_recv_echo_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.st95hf_spi_context = type { i8, ptr, %struct.completion, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@st95hf_spi_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: sending cmd to st95hf using SPI = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st95hf_spi_send\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nfc/st95hf/spi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st95hf_spi_send._entry_ptr = internal global ptr @st95hf_spi_send._entry, section ".printk_index", align 4
@st95hf_spi_send._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: response not ready timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@st95hf_spi_send._entry_ptr.7 = internal global ptr @st95hf_spi_send._entry.5, section ".printk_index", align 4
@__kstrtab_st95hf_spi_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_st95hf_spi_send = external dso_local constant [0 x i8], align 1
@__ksymtab_st95hf_spi_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st95hf_spi_send to i32), ptr @__kstrtab_st95hf_spi_send, ptr @__kstrtabns_st95hf_spi_send }, section "___ksymtab_gpl+st95hf_spi_send", align 4
@st95hf_spi_recv_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"spi_recv_resp, data length error = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st95hf_spi_recv_response\00", [39 x i8] zeroinitializer }, align 32
@st95hf_spi_recv_response._entry_ptr = internal global ptr @st95hf_spi_recv_response._entry, section ".printk_index", align 4
@st95hf_spi_recv_response._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"spi_recv_resp, data read error = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@st95hf_spi_recv_response._entry_ptr.12 = internal global ptr @st95hf_spi_recv_response._entry.10, section ".printk_index", align 4
@__kstrtab_st95hf_spi_recv_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_st95hf_spi_recv_response = external dso_local constant [0 x i8], align 1
@__ksymtab_st95hf_spi_recv_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st95hf_spi_recv_response to i32), ptr @__kstrtab_st95hf_spi_recv_response, ptr @__kstrtabns_st95hf_spi_recv_response }, section "___ksymtab_gpl+st95hf_spi_recv_response", align 4
@st95hf_spi_recv_echo_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"recv_echo_res, data read error = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st95hf_spi_recv_echo_res\00", [39 x i8] zeroinitializer }, align 32
@st95hf_spi_recv_echo_res._entry_ptr = internal global ptr @st95hf_spi_recv_echo_res._entry, section ".printk_index", align 4
@__kstrtab_st95hf_spi_recv_echo_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_st95hf_spi_recv_echo_res = external dso_local constant [0 x i8], align 1
@__ksymtab_st95hf_spi_recv_echo_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st95hf_spi_recv_echo_res to i32), ptr @__kstrtab_st95hf_spi_recv_echo_res, ptr @__kstrtabns_st95hf_spi_recv_echo_res }, section "___ksymtab_gpl+st95hf_spi_recv_echo_res", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 39, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 55, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 94, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 120, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [28 x i8] c"../drivers/nfc/st95hf/spi.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 151, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_st95hf_spi_recv_echo_res, ptr @__ksymtab_st95hf_spi_recv_response, ptr @__ksymtab_st95hf_spi_send, ptr @st95hf_spi_recv_echo_res._entry, ptr @st95hf_spi_recv_echo_res._entry_ptr, ptr @st95hf_spi_recv_response._entry, ptr @st95hf_spi_recv_response._entry.10, ptr @st95hf_spi_recv_response._entry_ptr, ptr @st95hf_spi_recv_response._entry_ptr.12, ptr @st95hf_spi_send._entry, ptr @st95hf_spi_send._entry.5, ptr @st95hf_spi_send._entry_ptr, ptr @st95hf_spi_send._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_spi_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_spi_send._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_spi_recv_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_spi_recv_response._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st95hf_spi_recv_echo_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st95hf_spi_send(ptr noundef %spicontext, ptr noundef %buffertx, i32 noundef %datalen, i32 noundef %reqtype) #0 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %tx_transfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #4
  %spidev1 = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 1
  %0 = ptrtoint ptr %spidev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spidev1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx_transfer) #4
  %2 = getelementptr inbounds i8, ptr %tx_transfer, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = ptrtoint ptr %tx_transfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buffertx, ptr %tx_transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tx_transfer, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %datalen, ptr %len, align 4
  %spi_lock = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reqtype)
  %cmp = icmp eq i32 %reqtype, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %spicontext to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %spicontext, align 4
  %done = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 2
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %done, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %spicontext to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %spicontext, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = getelementptr inbounds i8, ptr %m, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tx_transfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx_transfer, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call) #7
  br label %cleanup

if.end5:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reqtype)
  %cmp6 = icmp eq i32 %reqtype, 1
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %done10 = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 2
  %call12 = call i32 @wait_for_completion_timeout(ptr noundef %done10, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end17, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end5.cleanup_crit_edge ], [ -110, %do.end17 ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %spi_lock) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx_transfer) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st95hf_spi_recv_response(ptr noundef %spicontext, ptr noundef %receivebuff) #0 align 64 {
entry:
  %tx_takedata = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  %readdata_cmd = alloca i8, align 1
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx_takedata) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #4
  %0 = call ptr @memset(ptr %m, i32 255, i32 56)
  %spidev1 = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 1
  %1 = ptrtoint ptr %spidev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spidev1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %readdata_cmd) #4
  %3 = ptrtoint ptr %readdata_cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %readdata_cmd, align 1
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #4
  %4 = getelementptr inbounds i8, ptr %t, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 188)
  %6 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %readdata_cmd, ptr %t, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len2, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %receivebuff, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %9 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len4, align 4
  %cs_change6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 7
  %10 = ptrtoint ptr %cs_change6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %cs_change6, align 4
  %11 = call ptr @memset(ptr %tx_takedata, i32 0, i32 96)
  %spi_lock = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #4
  %12 = getelementptr inbounds i8, ptr %m, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i60 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i62 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i60, ptr noundef %23, ptr noundef nonnull %m) #4
  br i1 %call.i.i.i62, label %if.end.i.i.i64, label %spi_message_add_tail.exit.spi_message_add_tail.exit65_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit65_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit65

if.end.i.i.i64:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i60, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m, ptr %transfer_list.i60, align 4
  %prev3.i.i.i63 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i63, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i60, ptr %23, align 4
  br label %spi_message_add_tail.exit65

spi_message_add_tail.exit65:                      ; preds = %if.end.i.i.i64, %spi_message_add_tail.exit.spi_message_add_tail.exit65_crit_edge
  %call = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %m) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit65
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %call) #7
  call void @mutex_unlock(ptr noundef %spi_lock) #4
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit65
  %28 = ptrtoint ptr %receivebuff to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %receivebuff, align 1
  %30 = and i8 %29, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool12.not = icmp eq i8 %30, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %31 = lshr exact i8 %30, 5
  %32 = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %32, 8
  %arrayidx17 = getelementptr i8, ptr %receivebuff, i32 1
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %34 to i32
  %or = or i32 %shl, %conv18
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx19 = getelementptr i8, ptr %receivebuff, i32 1
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %36 to i32
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13
  %len.0.in = phi i32 [ %or, %if.then13 ], [ %conv20, %if.else ]
  %arrayidx23 = getelementptr i8, ptr %receivebuff, i32 2
  %rx_buf24 = getelementptr inbounds %struct.spi_transfer, ptr %tx_takedata, i32 0, i32 1
  %37 = ptrtoint ptr %rx_buf24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx23, ptr %rx_buf24, align 4
  %len25 = getelementptr inbounds %struct.spi_transfer, ptr %tx_takedata, i32 0, i32 2
  %38 = ptrtoint ptr %len25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %len.0.in, ptr %len25, align 4
  %39 = call ptr @memset(ptr %12, i32 0, i32 40)
  %40 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %m, ptr %m, align 4
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %m, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %43 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i69 = getelementptr inbounds %struct.spi_transfer, ptr %tx_takedata, i32 0, i32 18
  %call.i.i.i71 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i69, ptr noundef nonnull %m, ptr noundef nonnull %m) #4
  br i1 %call.i.i.i71, label %if.end.i.i.i73, label %if.end22.spi_message_add_tail.exit74_crit_edge

if.end22.spi_message_add_tail.exit74_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit74

if.end.i.i.i73:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i69, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %m, ptr %transfer_list.i69, align 4
  %prev3.i.i.i72 = getelementptr inbounds %struct.spi_transfer, ptr %tx_takedata, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %m, ptr %prev3.i.i.i72, align 4
  %47 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i69, ptr %m, align 4
  br label %spi_message_add_tail.exit74

spi_message_add_tail.exit74:                      ; preds = %if.end.i.i.i73, %if.end22.spi_message_add_tail.exit74_crit_edge
  %call26 = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %m) #4
  call void @mutex_unlock(ptr noundef %spi_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %spi_message_add_tail.exit74
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %call26) #7
  br label %cleanup

if.end34:                                         ; preds = %spi_message_add_tail.exit74
  call void @__sanitizer_cov_trace_pc() #6
  %len.0 = add nuw nsw i32 %len.0.in, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end32, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call26, %do.end32 ], [ %len.0, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %readdata_cmd) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx_takedata) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st95hf_spi_recv_echo_res(ptr noundef %spicontext, ptr noundef %receivebuff) #0 align 64 {
entry:
  %readdata_cmd = alloca i8, align 1
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %readdata_cmd) #4
  %0 = ptrtoint ptr %readdata_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %readdata_cmd, align 1
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #4
  %1 = getelementptr inbounds i8, ptr %t, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 188)
  %3 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %readdata_cmd, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %len, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %receivebuff, ptr %rx_buf, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %6 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #4
  %spidev7 = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 1
  %7 = ptrtoint ptr %spidev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spidev7, align 4
  %spi_lock = getelementptr inbounds %struct.st95hf_spi_context, ptr %spicontext, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #4
  %9 = getelementptr inbounds i8, ptr %m, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i15 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i17 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i15, ptr noundef %20, ptr noundef nonnull %m) #4
  br i1 %call.i.i.i17, label %if.end.i.i.i19, label %spi_message_add_tail.exit.spi_message_add_tail.exit20_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit20_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit20

if.end.i.i.i19:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i15, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m, ptr %transfer_list.i15, align 4
  %prev3.i.i.i18 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i18, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i15, ptr %20, align 4
  br label %spi_message_add_tail.exit20

spi_message_add_tail.exit20:                      ; preds = %if.end.i.i.i19, %spi_message_add_tail.exit.spi_message_add_tail.exit20_crit_edge
  %call = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %m) #4
  call void @mutex_unlock(ptr noundef %spi_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %spi_message_add_tail.exit20.if.end_crit_edge, label %do.end

spi_message_add_tail.exit20.if.end_crit_edge:     ; preds = %spi_message_add_tail.exit20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %spi_message_add_tail.exit20
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_message_add_tail.exit20.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %readdata_cmd) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st95hf/spi.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @st95hf_spi_send._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @st95hf_spi_send._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nfc/st95hf/spi.c", i32 55, i32 3}
!10 = !{ptr @st95hf_spi_send._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @st95hf_spi_send._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_st95hf_spi_send, !13, !"__ksymtab_st95hf_spi_send", i1 false, i1 false}
!13 = !{!"../drivers/nfc/st95hf/spi.c", i32 65, i32 1}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nfc/st95hf/spi.c", i32 94, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @st95hf_spi_recv_response._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @st95hf_spi_recv_response._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/st95hf/spi.c", i32 120, i32 3}
!21 = !{ptr @st95hf_spi_recv_response._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @st95hf_spi_recv_response._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_st95hf_spi_recv_response, !24, !"__ksymtab_st95hf_spi_recv_response", i1 false, i1 false}
!24 = !{!"../drivers/nfc/st95hf/spi.c", i32 127, i32 1}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/nfc/st95hf/spi.c", i32 151, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @st95hf_spi_recv_echo_res._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @st95hf_spi_recv_echo_res._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_st95hf_spi_recv_echo_res, !31, !"__ksymtab_st95hf_spi_recv_echo_res", i1 false, i1 false}
!31 = !{!"../drivers/nfc/st95hf/spi.c", i32 156, i32 1}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
