; ModuleID = '/llk/IR_all_yes/kernel/printk/printk_ringbuffer.c_pt.bc'
source_filename = "../kernel/printk/printk_ringbuffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.prb_desc = type { %struct.atomic_t, %struct.prb_data_blk_lpos }
%struct.atomic_t = type { i32 }
%struct.prb_data_blk_lpos = type { i32, i32 }
%struct.prb_reserved_entry = type { ptr, i32, i32, i32 }
%struct.prb_desc_ring = type { i32, ptr, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.printk_info = type { i64, i64, i16, i8, i8, i32, %struct.dev_printk_info }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.printk_record = type { ptr, ptr, i32 }
%struct.printk_ringbuffer = type { %struct.prb_desc_ring, %struct.prb_data_ring, %struct.atomic_t }
%struct.prb_data_ring = type { i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.prb_data_block = type { i32, [0 x i8] }

@prb_reserve_in_last.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kernel/printk/printk_ringbuffer.c\00", [62 x i8] zeroinitializer }, align 32
@prb_reserve_in_last.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@prb_reserve_in_last._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014wrong text_len value (%hu, expecting 0)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"prb_reserve_in_last\00", [44 x i8] zeroinitializer }, align 32
@prb_reserve_in_last._entry_ptr = internal global ptr @prb_reserve_in_last._entry, section ".printk_index", align 4
@prb_reserve_in_last.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@prb_reserve_in_last.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@prb_reserve_in_last._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014wrong text_len value (%hu, expecting <=%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@prb_reserve_in_last._entry_ptr.8 = internal global ptr @prb_reserve_in_last._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@get_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_data.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_data.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_data.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@desc_reserve.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@desc_reserve.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@_prb_commit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1385, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1386, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1409, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [37 x i8] c"../kernel/printk/printk_ringbuffer.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1212, i32 11 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @prb_reserve_in_last._entry, ptr @prb_reserve_in_last._entry.6, ptr @prb_reserve_in_last._entry_ptr, ptr @prb_reserve_in_last._entry_ptr.8, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prb_reserve_in_last._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prb_reserve_in_last._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_reserve_in_last(ptr nocapture noundef %e, ptr noundef %rb, ptr nocapture noundef %r, i32 noundef %caller_id, i32 noundef %max_size) local_unnamed_addr #0 align 64 {
entry:
  %head_lpos.i = alloca i32, align 4
  %prev_state_val.i = alloca i32, align 4
  %desc.i = alloca %struct.prb_desc, align 4
  %cid.i = alloca i32, align 4
  %data_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size) #8
  %0 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data_size, align 4, !annotation !41
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !42
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 1
  %2 = ptrtoint ptr %irqflags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %irqflags, align 4
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_state_val.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desc.i) #8
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %desc.i, align 4, !annotation !41
  %4 = getelementptr inbounds %struct.prb_desc, ptr %desc.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !41
  %6 = getelementptr inbounds %struct.prb_desc, ptr %desc.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid.i) #8
  %8 = ptrtoint ptr %cid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cid.i, align 4, !annotation !41
  %head_id.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head_id.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %head_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %head_id.i, align 4
  %call1.i = call fastcc i32 @desc_read(ptr noundef %rb, i32 noundef %10, ptr noundef nonnull %desc.i, ptr noundef null, ptr noundef nonnull %cid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.end12.desc_reopen_last.exit.thread_crit_edge

do.end12.desc_reopen_last.exit.thread_crit_edge:  ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_reopen_last.exit.thread

lor.lhs.false.i:                                  ; preds = %do.end12
  %11 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %caller_id)
  %cmp2.not.i = icmp eq i32 %12, %caller_id
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.desc_reopen_last.exit.thread_crit_edge

lor.lhs.false.i.desc_reopen_last.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_reopen_last.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %descs.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 1
  %13 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %descs.i.i, align 4
  %15 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rb, align 4
  %notmask.i.i = shl nsw i32 -1, %16
  %sub.i.i = xor i32 %notmask.i.i, -1
  %idxprom.i.i = and i32 %10, %sub.i.i
  %arrayidx.i.i = getelementptr %struct.prb_desc, ptr %14, i32 %idxprom.i.i
  %or.i = or i32 %10, 1073741824
  %17 = ptrtoint ptr %prev_state_val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %prev_state_val.i, align 4
  %call.i.i20.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #8
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prev_state_val.i, i32 noundef 4) #8
  %18 = ptrtoint ptr %prev_state_val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prev_state_val.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end.i
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 %19, i32 %10, ptr elementtype(i32) %arrayidx.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i.i, i32 %19)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %19
  br i1 %cmp.not.i.i.i.i, label %desc_reopen_last.exit, label %arch_atomic_cmpxchg.exit.i.i.i.i.desc_reopen_last.exit.thread_crit_edge, !prof !46

arch_atomic_cmpxchg.exit.i.i.i.i.desc_reopen_last.exit.thread_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_reopen_last.exit.thread

desc_reopen_last.exit.thread:                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.desc_reopen_last.exit.thread_crit_edge, %lor.lhs.false.i.desc_reopen_last.exit.thread_crit_edge, %do.end12.desc_reopen_last.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_state_val.i) #8
  br label %do.body16

desc_reopen_last.exit:                            ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_state_val.i) #8
  %tobool14.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool14.not, label %desc_reopen_last.exit.do.body16_crit_edge, label %if.end49

desc_reopen_last.exit.do.body16_crit_edge:        ; preds = %desc_reopen_last.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

do.body16:                                        ; preds = %desc_reopen_last.exit.do.body16_crit_edge, %desc_reopen_last.exit.thread
  %21 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irqflags, align 4
  %and.i352 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i352)
  %tobool25.not = icmp eq i32 %and.i352, 0
  br i1 %tobool25.not, label %if.then26, label %do.body16.do.body28_crit_edge

do.body16.do.body28_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

if.then26:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  call void @trace_hardirqs_on() #8
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %do.body16.do.body28_crit_edge
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !47
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !48

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  %24 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irqflags, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #8, !srcloc !49
  br label %fail_reopen

if.end49:                                         ; preds = %desc_reopen_last.exit
  %infos.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 2
  %26 = ptrtoint ptr %infos.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %infos.i, align 4
  %28 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rb, align 4
  %notmask.i = shl nsw i32 -1, %29
  %sub.i = xor i32 %notmask.i, -1
  %idxprom.i = and i32 %10, %sub.i
  %arrayidx.i = getelementptr %struct.printk_info, ptr %27, i32 %idxprom.i
  %30 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rb, ptr %e, align 4
  %id53 = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 2
  %31 = ptrtoint ptr %id53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %10, ptr %id53, align 4
  %caller_id54 = getelementptr %struct.printk_info, ptr %27, i32 %idxprom.i, i32 5
  %32 = ptrtoint ptr %caller_id54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caller_id54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %caller_id)
  %cmp55.not = icmp eq i32 %33, %caller_id
  br i1 %cmp55.not, label %if.end58, label %if.end49.fail_crit_edge

if.end49.fail_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end58:                                         ; preds = %if.end49
  %text_blk_lpos = getelementptr %struct.prb_desc, ptr %14, i32 %idxprom.i.i, i32 1
  %34 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %text_blk_lpos, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.end58.if.else_crit_edge, label %land.lhs.true

if.end58.if.else_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end58
  %next = getelementptr %struct.prb_desc, ptr %14, i32 %idxprom.i.i, i32 1, i32 1
  %36 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next, align 4
  %and61 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %land.lhs.true.if.else_crit_edge, label %if.then63

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then63:                                        ; preds = %land.lhs.true
  %text_len = getelementptr %struct.printk_info, ptr %27, i32 %idxprom.i, i32 2
  %38 = ptrtoint ptr %text_len to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %text_len, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp65.not = icmp eq i16 %39, 0
  br i1 %cmp65.not, label %if.then63.if.end149_crit_edge, label %land.rhs

if.then63.if.end149_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

land.rhs:                                         ; preds = %if.then63
  %.b349 = load i1, ptr @prb_reserve_in_last.__already_done, align 1
  br i1 %.b349, label %land.rhs.land.end125_crit_edge, label %if.then82, !prof !46

land.rhs.land.end125_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end125

if.then82:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @prb_reserve_in_last.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #8
  br label %land.end125

land.end125:                                      ; preds = %if.then82, %land.rhs.land.end125_crit_edge
  %.b343348 = load i1, ptr @prb_reserve_in_last.__already_done.1, align 1
  br i1 %.b343348, label %land.end125.if.end140_crit_edge, label %if.then132, !prof !46

land.end125.if.end140_crit_edge:                  ; preds = %land.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then132:                                       ; preds = %land.end125
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @prb_reserve_in_last.__already_done.1, align 1
  %40 = ptrtoint ptr %text_len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %text_len, align 8
  %conv138 = zext i16 %41 to i32
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv138) #11
  br label %if.end140

if.end140:                                        ; preds = %if.then132, %land.end125.if.end140_crit_edge
  %42 = ptrtoint ptr %text_len to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %text_len, align 8
  br label %if.end149

if.end149:                                        ; preds = %if.end140, %if.then63.if.end149_crit_edge
  %text_buf_size = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %43 = ptrtoint ptr %text_buf_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %text_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i = icmp eq i32 %44, 0
  br i1 %cmp.i, label %if.end149.if.end157_crit_edge, label %data_check_size.exit

if.end149.if.end157_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

data_check_size.exit:                             ; preds = %if.end149
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  %add1.i.i = add i32 %44, 7
  %and.i.i353 = and i32 %add1.i.i, -4
  %45 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %text_data_ring, align 4
  %shl.i = shl nuw i32 1, %46
  %sub.i354 = add i32 %shl.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i353, i32 %sub.i354)
  %cmp1.i = icmp ugt i32 %and.i.i353, %sub.i354
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %max_size)
  %cmp154 = icmp ugt i32 %44, %max_size
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp154
  br i1 %or.cond, label %data_check_size.exit.fail_crit_edge, label %data_check_size.exit.if.end157_crit_edge

data_check_size.exit.if.end157_crit_edge:         ; preds = %data_check_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

data_check_size.exit.fail_crit_edge:              ; preds = %data_check_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end157:                                        ; preds = %data_check_size.exit.if.end157_crit_edge, %if.end149.if.end157_crit_edge
  %call160 = call fastcc ptr @data_alloc(ptr noundef %rb, i32 noundef %44, ptr noundef %text_blk_lpos, i32 noundef %10)
  br label %if.end277

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end58.if.else_crit_edge
  %text_data_ring161 = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  %call163 = call fastcc ptr @get_data(ptr noundef %text_data_ring161, ptr noundef %text_blk_lpos, ptr noundef nonnull %data_size)
  %tobool164.not = icmp eq ptr %call163, null
  br i1 %tobool164.not, label %if.else.fail_crit_edge, label %if.end166

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end166:                                        ; preds = %if.else
  %text_len168 = getelementptr %struct.printk_info, ptr %27, i32 %idxprom.i, i32 2
  %47 = ptrtoint ptr %text_len168 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %text_len168, align 8
  %conv169 = zext i16 %48 to i32
  %49 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv169)
  %cmp170 = icmp ult i32 %50, %conv169
  br i1 %cmp170, label %land.rhs179, label %if.end166.if.end259_crit_edge

if.end166.if.end259_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

land.rhs179:                                      ; preds = %if.end166
  %.b344347 = load i1, ptr @prb_reserve_in_last.__already_done.4, align 1
  br i1 %.b344347, label %land.rhs179.land.end234_crit_edge, label %if.then190, !prof !46

land.rhs179.land.end234_crit_edge:                ; preds = %land.rhs179
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end234

if.then190:                                       ; preds = %land.rhs179
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @prb_reserve_in_last.__already_done.4, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1408, i32 noundef 9, ptr noundef null) #8
  br label %land.end234

land.end234:                                      ; preds = %if.then190, %land.rhs179.land.end234_crit_edge
  %.b345346 = load i1, ptr @prb_reserve_in_last.__already_done.5, align 1
  br i1 %.b345346, label %land.end234.if.end249_crit_edge, label %if.then241, !prof !46

land.end234.if.end249_crit_edge:                  ; preds = %land.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end249

if.then241:                                       ; preds = %land.end234
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @prb_reserve_in_last.__already_done.5, align 1
  %51 = ptrtoint ptr %text_len168 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %text_len168, align 8
  %conv247 = zext i16 %52 to i32
  %call248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv247, i32 noundef %50) #11
  br label %if.end249

if.end249:                                        ; preds = %if.then241, %land.end234.if.end249_crit_edge
  %conv257 = trunc i32 %50 to i16
  %53 = ptrtoint ptr %text_len168 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv257, ptr %text_len168, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.end249, %if.end166.if.end259_crit_edge
  %54 = ptrtoint ptr %text_len168 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %text_len168, align 8
  %conv261 = zext i16 %55 to i32
  %text_buf_size262 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %56 = ptrtoint ptr %text_buf_size262 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %text_buf_size262, align 4
  %add = add i32 %57, %conv261
  store i32 %add, ptr %text_buf_size262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp.i357 = icmp eq i32 %add, 0
  br i1 %cmp.i357, label %if.end259.if.end272_crit_edge, label %data_check_size.exit365

if.end259.if.end272_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

data_check_size.exit365:                          ; preds = %if.end259
  %add1.i.i358 = add i32 %add, 7
  %and.i.i359 = and i32 %add1.i.i358, -4
  %58 = ptrtoint ptr %text_data_ring161 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %text_data_ring161, align 4
  %shl.i360 = shl nuw i32 1, %59
  %sub.i361 = add i32 %shl.i360, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i359, i32 %sub.i361)
  %cmp1.i362 = icmp ugt i32 %and.i.i359, %sub.i361
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_size)
  %cmp269 = icmp ugt i32 %add, %max_size
  %or.cond402 = select i1 %cmp1.i362, i1 true, i1 %cmp269
  br i1 %or.cond402, label %data_check_size.exit365.fail_crit_edge, label %data_check_size.exit365.if.end272_crit_edge

data_check_size.exit365.if.end272_crit_edge:      ; preds = %data_check_size.exit365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

data_check_size.exit365.fail_crit_edge:           ; preds = %data_check_size.exit365
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end272:                                        ; preds = %data_check_size.exit365.if.end272_crit_edge, %if.end259.if.end272_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head_lpos.i) #8
  %head_lpos1.i = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 2
  %call.i.i.i366 = call zeroext i1 @__kasan_check_read(ptr noundef %head_lpos1.i, i32 noundef 4) #8
  %60 = ptrtoint ptr %head_lpos1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %head_lpos1.i, align 4
  %62 = ptrtoint ptr %head_lpos.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %head_lpos.i, align 4
  %next.i = getelementptr %struct.prb_desc, ptr %14, i32 %idxprom.i.i, i32 1, i32 1
  %63 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %next.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %64)
  %cmp.not.i367 = icmp eq i32 %61, %64
  br i1 %cmp.not.i367, label %if.end.i373, label %if.end272.data_realloc.exit_crit_edge

if.end272.data_realloc.exit_crit_edge:            ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_realloc.exit

if.end.i373:                                      ; preds = %if.end272
  %65 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %text_blk_lpos, align 4
  %67 = ptrtoint ptr %text_data_ring161 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %text_data_ring161, align 4
  %shr.i = lshr i32 %66, %68
  %shr4.i = lshr i32 %61, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr4.i)
  %cmp5.not.i = icmp eq i32 %shr.i, %shr4.i
  %add1.i.i368 = add i32 %add, 7
  %and.i.i369 = and i32 %add1.i.i368, -4
  %add.i.i = add i32 %66, %and.i.i369
  %shr2.i.i = lshr i32 %add.i.i, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr2.i.i)
  %cmp.i.i = icmp eq i32 %shr.i, %shr2.i.i
  %notmask.i.i370 = shl nsw i32 -1, %68
  %and.i91.i = and i32 %notmask.i.i370, %add.i.i
  %add4.i.i = add i32 %and.i91.i, %and.i.i369
  %retval.0.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %add4.i.i
  %sub.i371 = sub i32 %61, %retval.0.i.i
  %shl.i372 = shl nuw i32 1, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i371, i32 %shl.i372)
  %cmp10.i = icmp ult i32 %sub.i371, %shl.i372
  br i1 %cmp10.i, label %if.then11.i, label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i373
  call void @__sanitizer_cov_trace_pc() #10
  %data.i93.i = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %data.i93.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i93.i, align 4
  %sub.i95.i = xor i32 %notmask.i.i370, -1
  %and.i96.i = and i32 %66, %sub.i95.i
  %blk.0.idx.i = select i1 %cmp5.not.i, i32 %and.i96.i, i32 0
  %blk.0.i = getelementptr i8, ptr %70, i32 %blk.0.idx.i
  %data.i = getelementptr inbounds %struct.prb_data_block, ptr %blk.0.i, i32 0, i32 1
  br label %data_realloc.exit

if.end17.i:                                       ; preds = %if.end.i373
  %sub20.i = sub i32 %retval.0.i.i, %shl.i372
  %call21.i = call fastcc zeroext i1 @data_push_tail(ptr noundef %rb, i32 noundef %sub20.i) #8
  br i1 %call21.i, label %if.end23.i, label %if.end17.i.data_realloc.exit_crit_edge

if.end17.i.data_realloc.exit_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_realloc.exit

if.end23.i:                                       ; preds = %if.end17.i
  %call.i.i90.i = call zeroext i1 @__kasan_check_write(ptr noundef %head_lpos1.i, i32 noundef 4) #8
  %call.i3.i.i374 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head_lpos.i, i32 noundef 4) #8
  %71 = ptrtoint ptr %head_lpos.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %head_lpos.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %head_lpos1.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i377

do.body.i.i.i.i.i.i377:                           ; preds = %do.body.i.i.i.i.i.i377.do.body.i.i.i.i.i.i377_crit_edge, %if.end23.i
  %73 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %head_lpos1.i, ptr %head_lpos1.i, i32 %72, i32 %retval.0.i.i, ptr elementtype(i32) %head_lpos1.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i375 = extractvalue { i32, i32 } %73, 0
  %tobool.not.i.i.i.i.i.i376 = icmp eq i32 %asmresult.i.i.i.i.i.i375, 0
  br i1 %tobool.not.i.i.i.i.i.i376, label %arch_atomic_cmpxchg.exit.i.i.i.i380, label %do.body.i.i.i.i.i.i377.do.body.i.i.i.i.i.i377_crit_edge

do.body.i.i.i.i.i.i377.do.body.i.i.i.i.i.i377_crit_edge: ; preds = %do.body.i.i.i.i.i.i377
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i377

arch_atomic_cmpxchg.exit.i.i.i.i380:              ; preds = %do.body.i.i.i.i.i.i377
  %asmresult3.i.i.i.i.i.i378 = extractvalue { i32, i32 } %73, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i.i378, i32 %72)
  %cmp.not.i.i.i.i379 = icmp eq i32 %asmresult3.i.i.i.i.i.i378, %72
  br i1 %cmp.not.i.i.i.i379, label %if.end27.i, label %arch_atomic_cmpxchg.exit.i.i.i.i380.data_realloc.exit_crit_edge, !prof !46

arch_atomic_cmpxchg.exit.i.i.i.i380.data_realloc.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i380
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_realloc.exit

if.end27.i:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i380
  %74 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %text_blk_lpos, align 4
  %data.i97.i = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %data.i97.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i97.i, align 4
  %78 = ptrtoint ptr %text_data_ring161 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %text_data_ring161, align 4
  %notmask.i98.i = shl nsw i32 -1, %79
  %sub.i99.i = xor i32 %notmask.i98.i, -1
  %and.i100.i = and i32 %75, %sub.i99.i
  %arrayidx.i101.i = getelementptr i8, ptr %77, i32 %and.i100.i
  %shr32.i = lshr i32 %75, %79
  %shr34.i = lshr i32 %retval.0.i.i, %79
  call void @__sanitizer_cov_trace_cmp4(i32 %shr32.i, i32 %shr34.i)
  %cmp35.not.i = icmp eq i32 %shr32.i, %shr34.i
  br i1 %cmp35.not.i, label %if.end27.i.if.end50.i_crit_edge, label %if.then36.i

if.end27.i.if.end50.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then36.i:                                      ; preds = %if.end27.i
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %10, ptr %77, align 4
  br i1 %cmp5.not.i, label %if.then40.i, label %if.then36.i.if.end50.i_crit_edge

if.then36.i.if.end50.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then40.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  %data41.i = getelementptr inbounds %struct.prb_data_block, ptr %77, i32 0, i32 1
  %data43.i = getelementptr inbounds %struct.prb_data_block, ptr %arrayidx.i101.i, i32 0, i32 1
  %81 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %next.i, align 4
  %83 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %text_blk_lpos, align 4
  %sub47.i = add i32 %82, -4
  %sub48.i = sub i32 %sub47.i, %84
  %85 = call ptr @memcpy(ptr %data41.i, ptr %data43.i, i32 %sub48.i)
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then40.i, %if.then36.i.if.end50.i_crit_edge, %if.end27.i.if.end50.i_crit_edge
  %blk.1.i = phi ptr [ %arrayidx.i101.i, %if.end27.i.if.end50.i_crit_edge ], [ %77, %if.then40.i ], [ %77, %if.then36.i.if.end50.i_crit_edge ]
  %86 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i.i, ptr %next.i, align 4
  %data52.i = getelementptr inbounds %struct.prb_data_block, ptr %blk.1.i, i32 0, i32 1
  br label %data_realloc.exit

data_realloc.exit:                                ; preds = %if.end50.i, %arch_atomic_cmpxchg.exit.i.i.i.i380.data_realloc.exit_crit_edge, %if.end17.i.data_realloc.exit_crit_edge, %if.then11.i, %if.end272.data_realloc.exit_crit_edge
  %retval.0.i381 = phi ptr [ %data.i, %if.then11.i ], [ %data52.i, %if.end50.i ], [ null, %if.end272.data_realloc.exit_crit_edge ], [ null, %if.end17.i.data_realloc.exit_crit_edge ], [ null, %arch_atomic_cmpxchg.exit.i.i.i.i380.data_realloc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head_lpos.i) #8
  br label %if.end277

if.end277:                                        ; preds = %data_realloc.exit, %if.end157
  %retval.0.i381.sink = phi ptr [ %retval.0.i381, %data_realloc.exit ], [ %call160, %if.end157 ]
  %text_buf276 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %87 = ptrtoint ptr %text_buf276 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %retval.0.i381.sink, ptr %text_buf276, align 4
  %text_buf_size278 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %88 = ptrtoint ptr %text_buf_size278 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %text_buf_size278, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool279.not = icmp eq i32 %89, 0
  br i1 %tobool279.not, label %if.end277.if.end284_crit_edge, label %land.lhs.true280

if.end277.if.end284_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

land.lhs.true280:                                 ; preds = %if.end277
  %text_buf281 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %90 = ptrtoint ptr %text_buf281 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %text_buf281, align 4
  %tobool282.not = icmp eq ptr %91, null
  br i1 %tobool282.not, label %land.lhs.true280.fail_crit_edge, label %land.lhs.true280.if.end284_crit_edge

land.lhs.true280.if.end284_crit_edge:             ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

land.lhs.true280.fail_crit_edge:                  ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end284:                                        ; preds = %land.lhs.true280.if.end284_crit_edge, %if.end277.if.end284_crit_edge
  %92 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx.i, ptr %r, align 4
  %text_data_ring286 = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  %93 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %text_blk_lpos, align 4
  %and.i382 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i382)
  %tobool.not.i = icmp eq i32 %and.i382, 0
  br i1 %tobool.not.i, label %if.end284.if.end.i386_crit_edge, label %land.lhs.true.i

if.end284.if.end.i386_crit_edge:                  ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i386

land.lhs.true.i:                                  ; preds = %if.end284
  %next.i383 = getelementptr %struct.prb_desc, ptr %14, i32 %idxprom.i.i, i32 1, i32 1
  %95 = ptrtoint ptr %next.i383 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %next.i383, align 4
  %and1.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i386_crit_edge, label %land.lhs.true.i.space_used.exit_crit_edge

land.lhs.true.i.space_used.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %space_used.exit

land.lhs.true.i.if.end.i386_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i386

if.end.i386:                                      ; preds = %land.lhs.true.i.if.end.i386_crit_edge, %if.end284.if.end.i386_crit_edge
  %97 = ptrtoint ptr %text_data_ring286 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %text_data_ring286, align 4
  %shr.i384 = lshr i32 %94, %98
  %next4.i = getelementptr %struct.prb_desc, ptr %14, i32 %idxprom.i.i, i32 1, i32 1
  %99 = ptrtoint ptr %next4.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %next4.i, align 4
  %shr6.i = lshr i32 %100, %98
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i384, i32 %shr6.i)
  %cmp.i385 = icmp eq i32 %shr.i384, %shr6.i
  br i1 %cmp.i385, label %if.then7.i, label %if.end17.i389

if.then7.i:                                       ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #10
  %notmask.i387 = shl nsw i32 -1, %98
  %sub.i388 = xor i32 %notmask.i387, -1
  %and10.i = and i32 %100, %sub.i388
  %and15.i = and i32 %94, %sub.i388
  %sub16.i = sub i32 %and10.i, %and15.i
  br label %space_used.exit

if.end17.i389:                                    ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #10
  %shl20.i = shl nuw i32 1, %98
  %sub21.i = add i32 %shl20.i, -1
  %and22.i = and i32 %sub21.i, %100
  %add.i = add i32 %and22.i, %shl20.i
  %and29.i = and i32 %sub21.i, %94
  %sub30.i = sub i32 %add.i, %and29.i
  br label %space_used.exit

space_used.exit:                                  ; preds = %if.end17.i389, %if.then7.i, %land.lhs.true.i.space_used.exit_crit_edge
  %retval.0.i390 = phi i32 [ %sub16.i, %if.then7.i ], [ %sub30.i, %if.end17.i389 ], [ 0, %land.lhs.true.i.space_used.exit_crit_edge ]
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 3
  %101 = ptrtoint ptr %text_space to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i390, ptr %text_space, align 4
  br label %cleanup

fail:                                             ; preds = %land.lhs.true280.fail_crit_edge, %data_check_size.exit365.fail_crit_edge, %if.else.fail_crit_edge, %data_check_size.exit.fail_crit_edge, %if.end49.fail_crit_edge
  %102 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %e, align 4
  call fastcc void @_prb_commit(ptr noundef %e, i32 noundef 1) #8
  %head_id2.i = getelementptr inbounds %struct.prb_desc_ring, ptr %103, i32 0, i32 3
  %call.i.i.i391 = call zeroext i1 @__kasan_check_read(ptr noundef %head_id2.i, i32 noundef 4) #8
  %104 = ptrtoint ptr %head_id2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %head_id2.i, align 4
  %106 = ptrtoint ptr %id53 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %id53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp.not.i392 = icmp eq i32 %105, %107
  br i1 %cmp.not.i392, label %fail.fail_reopen_crit_edge, label %if.then.i

fail.fail_reopen_crit_edge:                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_reopen

if.then.i:                                        ; preds = %fail
  %or.i.i = or i32 %107, 1073741824
  %descs.i.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %103, i32 0, i32 1
  %108 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %descs.i.i.i, align 4
  %110 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %103, align 4
  %notmask.i.i.i = shl nsw i32 -1, %111
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %idxprom.i.i.i = and i32 %107, %sub.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.prb_desc, ptr %109, i32 %idxprom.i.i.i
  %or1.i.i = or i32 %107, -2147483648
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then.i
  %112 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i.i, ptr %arrayidx.i.i.i, i32 %or.i.i, i32 %or1.i.i, ptr elementtype(i32) %arrayidx.i.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %112, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.fail_reopen_crit_edge, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i.fail_reopen_crit_edge:          ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_reopen

fail_reopen:                                      ; preds = %do.body.i.i.i.i.i.fail_reopen_crit_edge, %fail.fail_reopen_crit_edge, %do.end43
  %113 = call ptr @memset(ptr %r, i32 0, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %fail_reopen, %space_used.exit
  %retval.0 = phi i1 [ false, %fail_reopen ], [ true, %space_used.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size) #8
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @data_alloc(ptr noundef %rb, i32 noundef %size, ptr nocapture noundef writeonly %blk_lpos, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %begin_lpos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %begin_lpos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %blk_lpos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %blk_lpos, align 4
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %blk_lpos, i32 0, i32 1
  %1 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %next, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add1.i = add i32 %size, 7
  %and.i = and i32 %add1.i, -4
  %head_lpos = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head_lpos, i32 noundef 4) #8
  %2 = ptrtoint ptr %head_lpos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %head_lpos, align 4
  br label %do.body

do.body:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge, %if.end
  %storemerge = phi i32 [ %3, %if.end ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge ]
  %4 = ptrtoint ptr %begin_lpos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %begin_lpos, align 4
  %add.i = add i32 %storemerge, %and.i
  %5 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %text_data_ring, align 4
  %shr.i = lshr i32 %storemerge, %6
  %shr2.i = lshr i32 %add.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr2.i)
  %cmp.i = icmp eq i32 %shr.i, %shr2.i
  %notmask.i = shl nsw i32 -1, %6
  %and.i47 = and i32 %notmask.i, %add.i
  %add4.i = add i32 %and.i47, %and.i
  %retval.0.i = select i1 %cmp.i, i32 %add.i, i32 %add4.i
  %sub = add i32 %retval.0.i, %notmask.i
  %call3 = call fastcc zeroext i1 @data_push_tail(ptr noundef %rb, i32 noundef %sub)
  br i1 %call3, label %do.cond, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %blk_lpos to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %blk_lpos, align 4
  %next6 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %blk_lpos, i32 0, i32 1
  %8 = ptrtoint ptr %next6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %next6, align 4
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %call.i.i46 = call zeroext i1 @__kasan_check_write(ptr noundef %head_lpos, i32 noundef 4) #8
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %begin_lpos, i32 noundef 4) #8
  %9 = ptrtoint ptr %begin_lpos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %begin_lpos, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %head_lpos, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %head_lpos, ptr %head_lpos, i32 %10, i32 %retval.0.i, ptr elementtype(i32) %head_lpos) #8, !srcloc !44
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i, label %do.end, label %arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge, !prof !46

arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %12 = ptrtoint ptr %begin_lpos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %begin_lpos, align 4
  %data.i = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %text_data_ring, align 4
  %notmask.i48 = shl nsw i32 -1, %17
  %sub.i = xor i32 %notmask.i48, -1
  %and.i49 = and i32 %13, %sub.i
  %arrayidx.i = getelementptr i8, ptr %15, i32 %and.i49
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %id, ptr %arrayidx.i, align 4
  %19 = load i32, ptr %begin_lpos, align 4
  %20 = load i32, ptr %text_data_ring, align 4
  %shr = lshr i32 %19, %20
  %shr14 = lshr i32 %retval.0.i, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr14)
  %cmp15.not = icmp eq i32 %shr, %shr14
  br i1 %cmp15.not, label %do.end.if.end19_crit_edge, label %if.then16

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %id, ptr %22, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %do.end.if.end19_crit_edge
  %blk.0 = phi ptr [ %22, %if.then16 ], [ %arrayidx.i, %do.end.if.end19_crit_edge ]
  %24 = ptrtoint ptr %begin_lpos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %begin_lpos, align 4
  %26 = ptrtoint ptr %blk_lpos to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %blk_lpos, align 4
  %next21 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %blk_lpos, i32 0, i32 1
  %27 = ptrtoint ptr %next21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %next21, align 4
  %data = getelementptr inbounds %struct.prb_data_block, ptr %blk.0, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then4, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %data, %if.end19 ], [ null, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %begin_lpos) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_data(ptr nocapture noundef readonly %data_ring, ptr nocapture noundef readonly %blk_lpos, ptr nocapture noundef %data_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk_lpos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blk_lpos, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %blk_lpos, i32 0, i32 1
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next, align 4
  %and1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp6 = icmp eq i32 %3, 3
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data_size, align 4
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %5 = ptrtoint ptr %data_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_ring, align 4
  %shr = lshr i32 %1, %6
  %next10 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %blk_lpos, i32 0, i32 1
  %7 = ptrtoint ptr %next10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next10, align 4
  %shr12 = lshr i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr12)
  %cmp13 = icmp eq i32 %shr, %shr12
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp17 = icmp ugt i32 %8, %1
  %or.cond295 = and i1 %cmp17, %cmp13
  br i1 %or.cond295, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.prb_data_ring, ptr %data_ring, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %notmask.i = shl nsw i32 -1, %6
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %1, %sub.i
  %arrayidx.i = getelementptr i8, ptr %10, i32 %and.i
  %sub = sub i32 %8, %1
  br label %if.end74

if.else:                                          ; preds = %if.end8
  %shl = shl nuw i32 1, %6
  %add = add i32 %shl, %1
  %shr25 = lshr i32 %add, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr25, i32 %shr12)
  %cmp29 = icmp eq i32 %shr25, %shr12
  br i1 %cmp29, label %if.then30, label %land.end

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %data.i300 = getelementptr inbounds %struct.prb_data_ring, ptr %data_ring, i32 0, i32 1
  %11 = ptrtoint ptr %data.i300 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i300, align 4
  %notmask.i301 = shl nsw i32 -1, %6
  %sub35 = xor i32 %notmask.i301, -1
  %and36 = and i32 %8, %sub35
  br label %if.end74

land.end:                                         ; preds = %if.else
  %.b291 = load i1, ptr @get_data.__already_done, align 1
  br i1 %.b291, label %land.end.cleanup_crit_edge, label %if.then43, !prof !46

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1231, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end74:                                         ; preds = %if.then30, %if.then18
  %storemerge = phi i32 [ %and36, %if.then30 ], [ %sub, %if.then18 ]
  %db.0 = phi ptr [ %12, %if.then30 ], [ %arrayidx.i, %if.then18 ]
  %13 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %data_size, align 4
  %14 = ptrtoint ptr %blk_lpos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blk_lpos, align 4
  %add78 = add i32 %15, 3
  %and79 = and i32 %add78, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and79)
  %cmp80.not = icmp eq i32 %15, %and79
  br i1 %cmp80.not, label %lor.lhs.false.critedge, label %land.rhs86

land.rhs86:                                       ; preds = %if.end74
  %.b288294 = load i1, ptr @get_data.__already_done.10, align 1
  br i1 %.b288294, label %land.rhs86.cleanup_crit_edge, label %if.then97, !prof !46

land.rhs86.cleanup_crit_edge:                     ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then97:                                        ; preds = %land.rhs86
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_data.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1236, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %if.end74
  %16 = ptrtoint ptr %next10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next10, align 4
  %add136 = add i32 %17, 3
  %and137 = and i32 %add136, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and137)
  %cmp138.not = icmp eq i32 %17, %and137
  br i1 %cmp138.not, label %if.end193, label %land.rhs145

land.rhs145:                                      ; preds = %lor.lhs.false.critedge
  %.b289293 = load i1, ptr @get_data.__already_done.11, align 1
  br i1 %.b289293, label %land.rhs145.cleanup_crit_edge, label %if.then156, !prof !46

land.rhs145.cleanup_crit_edge:                    ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then156:                                       ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_data.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1237, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end193:                                        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %storemerge)
  %cmp195 = icmp ult i32 %storemerge, 4
  br i1 %cmp195, label %land.rhs202, label %if.end250

land.rhs202:                                      ; preds = %if.end193
  %.b290292 = load i1, ptr @get_data.__already_done.12, align 1
  br i1 %.b290292, label %land.rhs202.cleanup_crit_edge, label %if.then213, !prof !46

land.rhs202.cleanup_crit_edge:                    ; preds = %land.rhs202
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then213:                                       ; preds = %land.rhs202
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_data.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1242, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end250:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  %sub251 = add i32 %storemerge, -4
  %18 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub251, ptr %data_size, align 4
  %data = getelementptr inbounds %struct.prb_data_block, ptr %db.0, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end250, %if.then213, %land.rhs202.cleanup_crit_edge, %if.then156, %land.rhs145.cleanup_crit_edge, %if.then97, %land.rhs86.cleanup_crit_edge, %if.then43, %land.end.cleanup_crit_edge, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ @.str.9, %if.then7 ], [ %data, %if.end250 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then43 ], [ null, %land.end.cleanup_crit_edge ], [ null, %land.rhs145.cleanup_crit_edge ], [ null, %land.rhs86.cleanup_crit_edge ], [ null, %if.then156 ], [ null, %if.then97 ], [ null, %if.then213 ], [ null, %land.rhs202.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prb_commit(ptr nocapture noundef readonly %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  tail call fastcc void @_prb_commit(ptr noundef %e, i32 noundef 1)
  %head_id2 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head_id2, i32 noundef 4) #8
  %2 = ptrtoint ptr %head_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %head_id2, align 4
  %id = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %or.i = or i32 %5, 1073741824
  %descs.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descs.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %notmask.i.i = shl nsw i32 -1, %9
  %sub.i.i = xor i32 %notmask.i.i, -1
  %idxprom.i.i = and i32 %5, %sub.i.i
  %arrayidx.i.i = getelementptr %struct.prb_desc, ptr %7, i32 %idxprom.i.i
  %or1.i = or i32 %5, -2147483648
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 %or.i, i32 %or1.i, ptr elementtype(i32) %arrayidx.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end_crit_edge, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

do.body.i.i.i.i.if.end_crit_edge:                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_reserve(ptr nocapture noundef %e, ptr noundef %rb, ptr nocapture noundef %r) local_unnamed_addr #0 align 64 {
entry:
  %desc.i.i = alloca %struct.prb_desc, align 4
  %prev_state_val.i = alloca i32, align 4
  %head_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  %text_buf_size = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %text_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %text_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.do.body2_crit_edge, label %data_check_size.exit

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

data_check_size.exit:                             ; preds = %entry
  %add1.i.i = add i32 %1, 7
  %and.i.i = and i32 %add1.i.i, -4
  %2 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %text_data_ring, align 4
  %shl.i = shl nuw i32 1, %3
  %sub.i = add i32 %shl.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %sub.i)
  %cmp1.i.not = icmp ugt i32 %and.i.i, %sub.i
  br i1 %cmp1.i.not, label %data_check_size.exit.fail95_crit_edge, label %data_check_size.exit.do.body2_crit_edge

data_check_size.exit.do.body2_crit_edge:          ; preds = %data_check_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

data_check_size.exit.fail95_crit_edge:            ; preds = %data_check_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail95

do.body2:                                         ; preds = %data_check_size.exit.do.body2_crit_edge, %entry.do.body2_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !42
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 1
  %5 = ptrtoint ptr %irqflags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irqflags, align 4
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then12, label %do.body2.do.end15_crit_edge

do.body2.do.end15_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.then12:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body2.do.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_state_val.i) #8
  %6 = ptrtoint ptr %prev_state_val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %prev_state_val.i, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head_id.i) #8
  %head_id2.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %head_id2.i, i32 noundef 4) #8
  %7 = ptrtoint ptr %head_id2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %head_id2.i, align 4
  %tail_id.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 4
  %9 = getelementptr inbounds %struct.prb_desc, ptr %desc.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.prb_desc, ptr %desc.i.i, i32 0, i32 1, i32 1
  %descs.i.i.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge, %do.end15
  %storemerge.i = phi i32 [ %8, %do.end15 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge ]
  %11 = ptrtoint ptr %head_id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge.i, ptr %head_id.i, align 4
  %add.i = add i32 %storemerge.i, 1
  %and.i131 = and i32 %add.i, 1073741823
  %12 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rb, align 4
  %shl.neg.i = shl nsw i32 -1, %13
  %sub.i132 = add i32 %shl.neg.i, %add.i
  %and3.i = and i32 %sub.i132, 1073741823
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %call.i.i140.i = call zeroext i1 @__kasan_check_read(ptr noundef %tail_id.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %tail_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tail_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %15)
  %cmp.i133 = icmp eq i32 %and3.i, %15
  br i1 %cmp.i133, label %if.then.i, label %do.body.i.do.cond12.i_crit_edge

do.body.i.do.cond12.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond12.i

if.then.i:                                        ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desc.i.i) #8
  %16 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %desc.i.i, align 4, !annotation !41
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %9, align 4, !annotation !41
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %10, align 4, !annotation !41
  %19 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rb, align 4
  %notmask.i.i.i.i = shl nsw i32 -1, %20
  %sub.i.i.i.i = xor i32 %notmask.i.i.i.i, -1
  %idxprom.i.i.i.i = and i32 %and3.i, %sub.i.i.i.i
  %21 = ptrtoint ptr %descs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %descs.i.i.i.i, align 4
  %arrayidx.i46.i.i.i = getelementptr %struct.prb_desc, ptr %22, i32 %idxprom.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46.i.i.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %arrayidx.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i46.i.i.i, align 4
  %and.i.i.i.i = and i32 %24, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i.i, i32 %and3.i)
  %cmp.not.i.i.i153.i = icmp eq i32 %and.i.i.i.i, %and3.i
  %shr.i.i.i.i = lshr i32 %24, 30
  %retval.0.i.i.i.i = select i1 %cmp.not.i.i.i153.i, i32 %shr.i.i.i.i, i32 -1
  %25 = zext i32 %retval.0.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i.i.i.i, label %do.end.i.i.i [
    i32 -1, label %if.then.i.desc_push_tail.exit.i_crit_edge
    i32 0, label %desc_read.exit.thread82.i.i
  ]

if.then.i.desc_push_tail.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_push_tail.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  %text_blk_lpos12.i.i.i = getelementptr %struct.prb_desc, ptr %22, i32 %idxprom.i.i.i.i, i32 1
  %26 = ptrtoint ptr %text_blk_lpos12.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %text_blk_lpos12.i.i.i, align 4
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %9, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %call.i.i41.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46.i.i.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %arrayidx.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i46.i.i.i, align 4
  %and.i47.i.i.i = and i32 %30, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i47.i.i.i, i32 %and3.i)
  %cmp.not.i48.i.i.i = icmp eq i32 %and.i47.i.i.i, %and3.i
  br i1 %cmp.not.i48.i.i.i, label %desc_read.exit.i.i, label %do.end.i.i.i.desc_push_tail.exit.i_crit_edge

do.end.i.i.i.desc_push_tail.exit.i_crit_edge:     ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_push_tail.exit.i

desc_read.exit.thread82.i.i:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i42.i85.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %desc.i.i, i32 noundef 4) #8
  %31 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %24, ptr %desc.i.i, align 4
  br label %desc_push_tail.exit.thread.i

desc_read.exit.i.i:                               ; preds = %do.end.i.i.i
  %shr.i49.i.i.i = lshr i32 %30, 30
  %call.i.i42.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %desc.i.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %30, ptr %desc.i.i, align 4
  %33 = zext i32 %shr.i49.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i49.i.i.i, label %desc_read.exit.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb5.i.i
    i32 0, label %desc_read.exit.i.i.desc_push_tail.exit.thread.i_crit_edge
    i32 1, label %desc_read.exit.i.i.desc_push_tail.exit.thread.i_crit_edge255
  ]

desc_read.exit.i.i.desc_push_tail.exit.thread.i_crit_edge255: ; preds = %desc_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_push_tail.exit.thread.i

desc_read.exit.i.i.desc_push_tail.exit.thread.i_crit_edge: ; preds = %desc_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_push_tail.exit.thread.i

desc_read.exit.i.i.sw.epilog.i.i_crit_edge:       ; preds = %desc_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %desc_read.exit.i.i
  %or.i.i.i = or i32 %and3.i, -2147483648
  %or1.i.i.i = or i32 %sub.i132, -1073741824
  %34 = ptrtoint ptr %descs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %descs.i.i.i.i, align 4
  %36 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rb, align 4
  %notmask.i.i46.i.i = shl nsw i32 -1, %37
  %sub.i.i47.i.i = xor i32 %notmask.i.i46.i.i, -1
  %idxprom.i.i48.i.i = and i32 %and3.i, %sub.i.i47.i.i
  %arrayidx.i.i49.i.i = getelementptr %struct.prb_desc, ptr %35, i32 %idxprom.i.i48.i.i
  %call.i.i.i50.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i49.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i49.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i53.i.i

do.body.i.i.i.i53.i.i:                            ; preds = %do.body.i.i.i.i53.i.i.do.body.i.i.i.i53.i.i_crit_edge, %sw.bb5.i.i
  %38 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i49.i.i, ptr %arrayidx.i.i49.i.i, i32 %or.i.i.i, i32 %or1.i.i.i, ptr elementtype(i32) %arrayidx.i.i49.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i51.i.i = extractvalue { i32, i32 } %38, 0
  %tobool.not.i.i.i.i52.i.i = icmp eq i32 %asmresult.i.i.i.i51.i.i, 0
  br i1 %tobool.not.i.i.i.i52.i.i, label %do.body.i.i.i.i53.i.i.sw.epilog.i.i_crit_edge, label %do.body.i.i.i.i53.i.i.do.body.i.i.i.i53.i.i_crit_edge

do.body.i.i.i.i53.i.i.do.body.i.i.i.i53.i.i_crit_edge: ; preds = %do.body.i.i.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i53.i.i

do.body.i.i.i.i53.i.i.sw.epilog.i.i_crit_edge:    ; preds = %do.body.i.i.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.body.i.i.i.i53.i.i.sw.epilog.i.i_crit_edge, %desc_read.exit.i.i.sw.epilog.i.i_crit_edge
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %10, align 4
  %call6.i.i = call fastcc zeroext i1 @data_push_tail(ptr noundef %rb, i32 noundef %40) #8
  br i1 %call6.i.i, label %if.end8.i.i, label %sw.epilog.i.i.desc_push_tail.exit.thread.i_crit_edge

sw.epilog.i.i.desc_push_tail.exit.thread.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_push_tail.exit.thread.i

if.end8.i.i:                                      ; preds = %sw.epilog.i.i
  %add.i.i = add i32 %sub.i132, 1
  %and9.i.i = and i32 %add.i.i, 1073741823
  %41 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rb, align 4
  %notmask.i.i55.i.i = shl nsw i32 -1, %42
  %sub.i.i56.i.i = xor i32 %notmask.i.i55.i.i, -1
  %idxprom.i.i57.i.i = and i32 %and9.i.i, %sub.i.i56.i.i
  %43 = ptrtoint ptr %descs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %descs.i.i.i.i, align 4
  %arrayidx.i46.i60.i.i = getelementptr %struct.prb_desc, ptr %44, i32 %idxprom.i.i57.i.i
  %call.i.i.i61.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46.i60.i.i, i32 noundef 4) #8
  %45 = ptrtoint ptr %arrayidx.i46.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i46.i60.i.i, align 4
  %and.i.i62.i.i = and i32 %46, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i62.i.i, i32 %and9.i.i)
  %cmp.not.i.i63.i.i = icmp eq i32 %and.i.i62.i.i, %and9.i.i
  %shr.i.i64.i.i = lshr i32 %46, 30
  %retval.0.i.i65.i.i = select i1 %cmp.not.i.i63.i.i, i32 %shr.i.i64.i.i, i32 -1
  %47 = zext i32 %retval.0.i.i65.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %retval.0.i.i65.i.i, label %do.end.i68.i.i [
    i32 -1, label %if.end8.i.i.do.end.critedge.i.i_crit_edge
    i32 0, label %if.end8.i.i.do.end.critedge.i.i_crit_edge256
  ]

if.end8.i.i.do.end.critedge.i.i_crit_edge256:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.critedge.i.i

if.end8.i.i.do.end.critedge.i.i_crit_edge:        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.critedge.i.i

do.end.i68.i.i:                                   ; preds = %if.end8.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  %text_blk_lpos12.i67.i.i = getelementptr %struct.prb_desc, ptr %44, i32 %idxprom.i.i57.i.i, i32 1
  %48 = ptrtoint ptr %text_blk_lpos12.i67.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %text_blk_lpos12.i67.i.i, align 4
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %9, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %call.i.i41.i69.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46.i60.i.i, i32 noundef 4) #8
  %51 = ptrtoint ptr %arrayidx.i46.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i46.i60.i.i, align 4
  %and.i47.i70.i.i = and i32 %52, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i47.i70.i.i, i32 %and9.i.i)
  %cmp.not.i48.i71.i.i = icmp eq i32 %and.i47.i70.i.i, %and9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %phi.cmp86.i.i = icmp slt i32 %52, 0
  %phi.cmp.i.i = and i1 %phi.cmp86.i.i, %cmp.not.i48.i71.i.i
  %call.i.i42.i77.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %desc.i.i, i32 noundef 4) #8
  %53 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %52, ptr %desc.i.i, align 4
  br i1 %phi.cmp.i.i, label %if.then13.i.i, label %do.end.i68.i.i.do.end.i.i_crit_edge

do.end.i68.i.i.do.end.i.i_crit_edge:              ; preds = %do.end.i68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then13.i.i:                                    ; preds = %do.end.i68.i.i
  %call.i.i43.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tail_id.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %tail_id.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i156.i

do.body.i.i.i.i.i156.i:                           ; preds = %do.body.i.i.i.i.i156.i.do.body.i.i.i.i.i156.i_crit_edge, %if.then13.i.i
  %54 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %tail_id.i, ptr %tail_id.i, i32 %and3.i, i32 %and9.i.i, ptr elementtype(i32) %tail_id.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i154.i = extractvalue { i32, i32 } %54, 0
  %tobool.not.i.i.i.i.i155.i = icmp eq i32 %asmresult.i.i.i.i.i154.i, 0
  br i1 %tobool.not.i.i.i.i.i155.i, label %atomic_long_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i156.i.do.body.i.i.i.i.i156.i_crit_edge

do.body.i.i.i.i.i156.i.do.body.i.i.i.i.i156.i_crit_edge: ; preds = %do.body.i.i.i.i.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i156.i

atomic_long_cmpxchg.exit.i.i:                     ; preds = %do.body.i.i.i.i.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  br label %desc_push_tail.exit.thread160.i

do.end.critedge.i.i:                              ; preds = %if.end8.i.i.do.end.critedge.i.i_crit_edge, %if.end8.i.i.do.end.critedge.i.i_crit_edge256
  %call.i.i42.i77.c.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %desc.i.i, i32 noundef 4) #8
  %55 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %46, ptr %desc.i.i, align 4
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.critedge.i.i, %do.end.i68.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %call.i.i44.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tail_id.i, i32 noundef 4) #8
  %56 = ptrtoint ptr %tail_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %tail_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %and3.i)
  %cmp23.i.i = icmp eq i32 %57, %and3.i
  br i1 %cmp23.i.i, label %do.end.i.i.desc_push_tail.exit.thread.i_crit_edge, label %do.end.i.i.desc_push_tail.exit.thread160.i_crit_edge

do.end.i.i.desc_push_tail.exit.thread160.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_push_tail.exit.thread160.i

do.end.i.i.desc_push_tail.exit.thread.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_push_tail.exit.thread.i

desc_push_tail.exit.thread160.i:                  ; preds = %do.end.i.i.desc_push_tail.exit.thread160.i_crit_edge, %atomic_long_cmpxchg.exit.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i.i) #8
  br label %do.cond12.i

desc_push_tail.exit.thread.i:                     ; preds = %do.end.i.i.desc_push_tail.exit.thread.i_crit_edge, %sw.epilog.i.i.desc_push_tail.exit.thread.i_crit_edge, %desc_read.exit.i.i.desc_push_tail.exit.thread.i_crit_edge, %desc_read.exit.i.i.desc_push_tail.exit.thread.i_crit_edge255, %desc_read.exit.thread82.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i.i) #8
  br label %if.then17

desc_push_tail.exit.i:                            ; preds = %do.end.i.i.i.desc_push_tail.exit.i_crit_edge, %if.then.i.desc_push_tail.exit.i_crit_edge
  %state_val.0.i.ph.i.i = phi i32 [ %30, %do.end.i.i.i.desc_push_tail.exit.i_crit_edge ], [ %24, %if.then.i.desc_push_tail.exit.i_crit_edge ]
  %call.i.i42.i81.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %desc.i.i, i32 noundef 4) #8
  %58 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %state_val.0.i.ph.i.i, ptr %desc.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %desc.i.i, i32 noundef 4) #8
  %59 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %desc.i.i, align 4
  %61 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rb, align 4
  %shl.neg.i.i = shl nsw i32 -1, %62
  %sub.i.i = add i32 %shl.neg.i.i, %sub.i132
  %63 = xor i32 %sub.i.i, %60
  %64 = and i32 %63, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.not.i = icmp eq i32 %64, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i.i) #8
  br i1 %cmp.i.not.i, label %desc_push_tail.exit.i.if.then17_crit_edge, label %desc_push_tail.exit.i.do.cond12.i_crit_edge

desc_push_tail.exit.i.do.cond12.i_crit_edge:      ; preds = %desc_push_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond12.i

desc_push_tail.exit.i.if.then17_crit_edge:        ; preds = %desc_push_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

do.cond12.i:                                      ; preds = %desc_push_tail.exit.i.do.cond12.i_crit_edge, %desc_push_tail.exit.thread160.i, %do.body.i.do.cond12.i_crit_edge
  %call.i.i141.i = call zeroext i1 @__kasan_check_write(ptr noundef %head_id2.i, i32 noundef 4) #8
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head_id.i, i32 noundef 4) #8
  %65 = ptrtoint ptr %head_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %head_id.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %head_id2.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond12.i
  %67 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %head_id2.i, ptr %head_id2.i, i32 %66, i32 %and.i131, ptr elementtype(i32) %head_id2.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %67, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %67, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %66
  br i1 %cmp.not.i.i.i.i, label %do.end15.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge, !prof !46

arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end15.i:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %68 = ptrtoint ptr %descs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %descs.i.i.i.i, align 4
  %70 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rb, align 4
  %notmask.i.i = shl nsw i32 -1, %71
  %sub.i157.i = xor i32 %notmask.i.i, -1
  %idxprom.i.i = and i32 %and.i131, %sub.i157.i
  %arrayidx.i.i = getelementptr %struct.prb_desc, ptr %69, i32 %idxprom.i.i
  %call.i.i142.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #8
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %arrayidx.i.i, align 4
  %74 = ptrtoint ptr %prev_state_val.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %prev_state_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i, label %do.end15.i.if.end62.i_crit_edge, label %land.lhs.true.i

do.end15.i.if.end62.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

land.lhs.true.i:                                  ; preds = %do.end15.i
  %and.i.i134 = and i32 %73, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i134, i32 %and3.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i134, %and3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %73)
  %cmp19.not162.i = icmp ugt i32 %73, -1073741825
  %cmp19.not.i = and i1 %cmp19.not162.i, %cmp.not.i.i
  br i1 %cmp19.not.i, label %land.lhs.true.i.if.end62.i_crit_edge, label %land.end.i

land.lhs.true.i.if.end62.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

land.end.i:                                       ; preds = %land.lhs.true.i
  %.b139.i = load i1, ptr @desc_reserve.__already_done, align 1
  br i1 %.b139.i, label %land.end.i.if.then17_crit_edge, label %if.then29.i, !prof !46

land.end.i.if.then17_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then29.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @desc_reserve.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 974, i32 noundef 9, ptr noundef null) #8
  br label %if.then17

if.end62.i:                                       ; preds = %land.lhs.true.i.if.end62.i_crit_edge, %do.end15.i.if.end62.i_crit_edge
  %call.i.i143.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #8
  %call.i3.i144.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prev_state_val.i, i32 noundef 4) #8
  %75 = ptrtoint ptr %prev_state_val.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %prev_state_val.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i147.i

do.body.i.i.i.i.i147.i:                           ; preds = %do.body.i.i.i.i.i147.i.do.body.i.i.i.i.i147.i_crit_edge, %if.end62.i
  %77 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 %76, i32 %and.i131, ptr elementtype(i32) %arrayidx.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i145.i = extractvalue { i32, i32 } %77, 0
  %tobool.not.i.i.i.i.i146.i = icmp eq i32 %asmresult.i.i.i.i.i145.i, 0
  br i1 %tobool.not.i.i.i.i.i146.i, label %arch_atomic_cmpxchg.exit.i.i.i150.i, label %do.body.i.i.i.i.i147.i.do.body.i.i.i.i.i147.i_crit_edge

do.body.i.i.i.i.i147.i.do.body.i.i.i.i.i147.i_crit_edge: ; preds = %do.body.i.i.i.i.i147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i147.i

arch_atomic_cmpxchg.exit.i.i.i150.i:              ; preds = %do.body.i.i.i.i.i147.i
  %asmresult3.i.i.i.i.i148.i = extractvalue { i32, i32 } %77, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i148.i, i32 %76)
  %cmp.not.i.i.i149.i = icmp eq i32 %asmresult3.i.i.i.i.i148.i, %76
  br i1 %cmp.not.i.i.i149.i, label %if.end51, label %land.end73.i, !prof !46

land.end73.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i150.i
  %78 = ptrtoint ptr %prev_state_val.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %asmresult3.i.i.i.i.i148.i, ptr %prev_state_val.i, align 4
  %.b137138.i = load i1, ptr @desc_reserve.__already_done.13, align 1
  br i1 %.b137138.i, label %land.end73.i.if.then17_crit_edge, label %if.then80.i, !prof !46

land.end73.i.if.then17_crit_edge:                 ; preds = %land.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then80.i:                                      ; preds = %land.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @desc_reserve.__already_done.13, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 988, i32 noundef 9, ptr noundef null) #8
  br label %if.then17

if.then17:                                        ; preds = %if.then80.i, %land.end73.i.if.then17_crit_edge, %if.then29.i, %land.end.i.if.then17_crit_edge, %desc_push_tail.exit.i.if.then17_crit_edge, %desc_push_tail.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head_id.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_state_val.i) #8
  %fail = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fail, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %fail, i32 1, i32 3, i32 1) #8
  %79 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fail, ptr %fail, i32 1, ptr elementtype(i32) %fail) #8, !srcloc !54
  %80 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irqflags, align 4
  %and.i136 = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool27.not = icmp eq i32 %and.i136, 0
  br i1 %tobool27.not, label %if.then28, label %if.then17.do.body30_crit_edge

if.then17.do.body30_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.then28:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  call void @trace_hardirqs_on() #8
  br label %do.body30

do.body30:                                        ; preds = %if.then28, %if.then17.do.body30_crit_edge
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !47
  %and.i.i137 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i137)
  %tobool38.not = icmp eq i32 %and.i.i137, 0
  br i1 %tobool38.not, label %if.then42, label %do.body30.do.end45_crit_edge, !prof !48

do.body30.do.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body30.do.end45_crit_edge
  %83 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irqflags, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %84) #8, !srcloc !49
  br label %fail95

if.end51:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i150.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head_id.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_state_val.i) #8
  %85 = ptrtoint ptr %descs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %descs.i.i.i.i, align 4
  %87 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rb, align 4
  %notmask.i = shl nsw i32 -1, %88
  %sub.i138 = xor i32 %notmask.i, -1
  %idxprom.i = and i32 %and.i131, %sub.i138
  %infos.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 2
  %89 = ptrtoint ptr %infos.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %infos.i, align 4
  %arrayidx.i142 = getelementptr %struct.printk_info, ptr %90, i32 %idxprom.i
  %91 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx.i142, align 8
  %93 = call ptr @memset(ptr %arrayidx.i142, i32 0, i32 88)
  %94 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %rb, ptr %e, align 4
  %id58 = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 2
  %95 = ptrtoint ptr %id58 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and.i131, ptr %id58, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %cmp59 = icmp eq i64 %92, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end51.if.end74_crit_edge

if.end51.if.end74_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true:                                    ; preds = %if.end51
  %96 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rb, align 4
  %notmask = shl nsw i32 -1, %97
  %sub = xor i32 %notmask, -1
  %and = and i32 %and.i131, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp61.not = icmp eq i32 %and, 0
  br i1 %cmp61.not, label %land.lhs.true.if.end74_crit_edge, label %if.end74.thread

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end74.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv68 = zext i32 %and to i64
  %98 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv68, ptr %arrayidx.i142, align 8
  br label %if.then78

if.end74:                                         ; preds = %land.lhs.true.if.end74_crit_edge, %if.end51.if.end74_crit_edge
  %99 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rb, align 4
  %shl71 = shl nuw i32 1, %100
  %conv72 = zext i32 %shl71 to i64
  %add = add i64 %92, %conv72
  %101 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %add, ptr %arrayidx.i142, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp76.not = icmp eq i64 %add, 0
  br i1 %cmp76.not, label %if.end74.if.end81_crit_edge, label %if.end74.if.then78_crit_edge

if.end74.if.then78_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then78:                                        ; preds = %if.end74.if.then78_crit_edge, %if.end74.thread
  %and80 = and i32 %storemerge.i, 1073741823
  %or.i = or i32 %and80, 1073741824
  %102 = ptrtoint ptr %descs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %descs.i.i.i.i, align 4
  %104 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rb, align 4
  %notmask.i.i143 = shl nsw i32 -1, %105
  %sub.i.i144 = xor i32 %notmask.i.i143, -1
  %idxprom.i.i145 = and i32 %and80, %sub.i.i144
  %arrayidx.i.i146 = getelementptr %struct.prb_desc, ptr %103, i32 %idxprom.i.i145
  %or1.i = or i32 %and80, -2147483648
  %call.i.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i146, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i146, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then78
  %106 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i146, ptr %arrayidx.i.i146, i32 %or.i, i32 %or1.i, ptr elementtype(i32) %arrayidx.i.i146) #8, !srcloc !44
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %106, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end81_crit_edge, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

do.body.i.i.i.i.if.end81_crit_edge:               ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.end81:                                         ; preds = %do.body.i.i.i.i.if.end81_crit_edge, %if.end74.if.end81_crit_edge
  %107 = ptrtoint ptr %text_buf_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %text_buf_size, align 4
  %text_blk_lpos = getelementptr %struct.prb_desc, ptr %86, i32 %idxprom.i, i32 1
  %call83 = call fastcc ptr @data_alloc(ptr noundef %rb, i32 noundef %108, ptr noundef %text_blk_lpos, i32 noundef %and.i131)
  %text_buf = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %109 = ptrtoint ptr %text_buf to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call83, ptr %text_buf, align 4
  %110 = ptrtoint ptr %text_buf_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %text_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool85.not = icmp ne i32 %111, 0
  %tobool88.not = icmp eq ptr %call83, null
  %or.cond = select i1 %tobool85.not, i1 %tobool88.not, i1 false
  br i1 %or.cond, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end81
  %112 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %e, align 4
  call fastcc void @_prb_commit(ptr noundef %e, i32 noundef 1) #8
  %head_id2.i148 = getelementptr inbounds %struct.prb_desc_ring, ptr %113, i32 0, i32 3
  %call.i.i.i149 = call zeroext i1 @__kasan_check_read(ptr noundef %head_id2.i148, i32 noundef 4) #8
  %114 = ptrtoint ptr %head_id2.i148 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %head_id2.i148, align 4
  %116 = ptrtoint ptr %id58 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %id58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp.not.i = icmp eq i32 %115, %117
  br i1 %cmp.not.i, label %if.then89.fail95_crit_edge, label %if.then.i151

if.then89.fail95_crit_edge:                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail95

if.then.i151:                                     ; preds = %if.then89
  %or.i.i = or i32 %117, 1073741824
  %descs.i.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %113, i32 0, i32 1
  %118 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %descs.i.i.i, align 4
  %120 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %113, align 4
  %notmask.i.i.i = shl nsw i32 -1, %121
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %idxprom.i.i.i = and i32 %117, %sub.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.prb_desc, ptr %119, i32 %idxprom.i.i.i
  %or1.i.i = or i32 %117, -2147483648
  %call.i.i.i.i150 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then.i151
  %122 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i.i, ptr %arrayidx.i.i.i, i32 %or.i.i, i32 %or1.i.i, ptr elementtype(i32) %arrayidx.i.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %122, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.fail95_crit_edge, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i.fail95_crit_edge:               ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail95

if.end90:                                         ; preds = %if.end81
  %123 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %arrayidx.i142, ptr %r, align 4
  %124 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %text_blk_lpos, align 4
  %and.i153 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i154 = icmp eq i32 %and.i153, 0
  br i1 %tobool.not.i154, label %if.end90.if.end.i157_crit_edge, label %land.lhs.true.i155

if.end90.if.end.i157_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i157

land.lhs.true.i155:                               ; preds = %if.end90
  %next.i = getelementptr %struct.prb_desc, ptr %86, i32 %idxprom.i, i32 1, i32 1
  %126 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %next.i, align 4
  %and1.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i155.if.end.i157_crit_edge, label %land.lhs.true.i155.space_used.exit_crit_edge

land.lhs.true.i155.space_used.exit_crit_edge:     ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %space_used.exit

land.lhs.true.i155.if.end.i157_crit_edge:         ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i157

if.end.i157:                                      ; preds = %land.lhs.true.i155.if.end.i157_crit_edge, %if.end90.if.end.i157_crit_edge
  %128 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %text_data_ring, align 4
  %shr.i = lshr i32 %125, %129
  %next4.i = getelementptr %struct.prb_desc, ptr %86, i32 %idxprom.i, i32 1, i32 1
  %130 = ptrtoint ptr %next4.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %next4.i, align 4
  %shr6.i = lshr i32 %131, %129
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr6.i)
  %cmp.i156 = icmp eq i32 %shr.i, %shr6.i
  br i1 %cmp.i156, label %if.then7.i, label %if.end17.i

if.then7.i:                                       ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #10
  %notmask.i158 = shl nsw i32 -1, %129
  %sub.i159 = xor i32 %notmask.i158, -1
  %and10.i = and i32 %131, %sub.i159
  %and15.i = and i32 %125, %sub.i159
  %sub16.i = sub i32 %and10.i, %and15.i
  br label %space_used.exit

if.end17.i:                                       ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #10
  %shl20.i = shl nuw i32 1, %129
  %sub21.i = add i32 %shl20.i, -1
  %and22.i = and i32 %sub21.i, %131
  %add.i160 = add i32 %and22.i, %shl20.i
  %and29.i = and i32 %sub21.i, %125
  %sub30.i = sub i32 %add.i160, %and29.i
  br label %space_used.exit

space_used.exit:                                  ; preds = %if.end17.i, %if.then7.i, %land.lhs.true.i155.space_used.exit_crit_edge
  %retval.0.i161 = phi i32 [ %sub16.i, %if.then7.i ], [ %sub30.i, %if.end17.i ], [ 0, %land.lhs.true.i155.space_used.exit_crit_edge ]
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 3
  %132 = ptrtoint ptr %text_space to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %retval.0.i161, ptr %text_space, align 4
  br label %cleanup

fail95:                                           ; preds = %do.body.i.i.i.i.i.fail95_crit_edge, %if.then89.fail95_crit_edge, %do.end45, %data_check_size.exit.fail95_crit_edge
  %133 = call ptr @memset(ptr %r, i32 0, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %fail95, %space_used.exit
  %retval.0 = phi i1 [ true, %space_used.exit ], [ false, %fail95 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_prb_commit(ptr nocapture noundef readonly %e, i32 noundef %state_val) unnamed_addr #0 align 64 {
entry:
  %prev_state_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  %id = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %descs.i = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descs.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  %idxprom.i = and i32 %3, %sub.i
  %arrayidx.i = getelementptr %struct.prb_desc, ptr %5, i32 %idxprom.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_state_val) #8
  %8 = ptrtoint ptr %prev_state_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %prev_state_val, align 4
  %shl = shl i32 %state_val, 30
  %or4 = or i32 %3, %shl
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #8
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prev_state_val, i32 noundef 4) #8
  %9 = ptrtoint ptr %prev_state_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_state_val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %entry
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 %10, i32 %or4, ptr elementtype(i32) %arrayidx.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i, i32 %10)
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.do.body41_crit_edge, label %land.end, !prof !46

arch_atomic_cmpxchg.exit.i.i.i.do.body41_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

land.end:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %12 = ptrtoint ptr %prev_state_val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %asmresult3.i.i.i.i.i, ptr %prev_state_val, align 4
  %.b82 = load i1, ptr @_prb_commit.__already_done, align 1
  br i1 %.b82, label %land.end.do.body41_crit_edge, label %if.then11, !prof !46

land.end.do.body41_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @_prb_commit.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1603, i32 noundef 9, ptr noundef null) #8
  br label %do.body41

do.body41:                                        ; preds = %if.then11, %land.end.do.body41_crit_edge, %arch_atomic_cmpxchg.exit.i.i.i.do.body41_crit_edge
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 1
  %13 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irqflags, align 4
  %and.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool46.not = icmp eq i32 %and.i, 0
  br i1 %tobool46.not, label %if.then47, label %do.body41.do.body49_crit_edge

do.body41.do.body49_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  call void @trace_hardirqs_on() #8
  br label %do.body49

do.body49:                                        ; preds = %if.then47, %do.body41.do.body49_crit_edge
  %15 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !47
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool57.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool57.not, label %if.then66, label %do.body49.do.end69_crit_edge, !prof !48

do.body49.do.end69_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

if.then66:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body49.do.end69_crit_edge
  %16 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqflags, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #8, !srcloc !49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_state_val) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prb_final_commit(ptr nocapture noundef readonly %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_prb_commit(ptr noundef %e, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_read_valid(ptr noundef %rb, i64 noundef %seq, ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  %seq.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %seq.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %seq, ptr %seq.addr, align 8
  %call = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %rb, ptr noundef nonnull %seq.addr, ptr noundef %r, ptr noundef null)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_prb_read_valid(ptr noundef %rb, ptr nocapture noundef %seq, ptr noundef readonly %r, ptr noundef writeonly %line_count) unnamed_addr #0 align 64 {
entry:
  %desc.i12 = alloca %struct.prb_desc, align 4
  %seq.i = alloca i64, align 8
  %s.i44.i = alloca i64, align 8
  %data_size.i.i = alloca i32, align 4
  %s.i.i = alloca i64, align 8
  %desc.i = alloca %struct.prb_desc, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %infos.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 2
  %descs.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 1
  %0 = getelementptr inbounds %struct.prb_desc, ptr %desc.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prb_desc, ptr %desc.i, i32 0, i32 1, i32 1
  %tobool6.not.i = icmp eq ptr %r, null
  %text_buf.i = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %text_buf_size.i = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %tobool2.not.i.i = icmp eq ptr %line_count, null
  %text_data_ring.i = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  %2 = getelementptr inbounds %struct.prb_desc, ptr %desc.i12, i32 0, i32 1
  %3 = getelementptr inbounds %struct.prb_desc, ptr %desc.i12, i32 0, i32 1, i32 1
  %tail_id.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seq, align 8
  %6 = ptrtoint ptr %infos.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %infos.i.i, align 4
  %8 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rb, align 4
  %notmask.i.i = shl nsw i32 -1, %9
  %sub.i.i = xor i32 %notmask.i.i, -1
  %10 = trunc i64 %5 to i32
  %idxprom.i.i = and i32 %sub.i.i, %10
  %arrayidx.i.i = getelementptr %struct.printk_info, ptr %7, i32 %idxprom.i.i
  %11 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %descs.i.i, align 4
  %arrayidx.i39.i = getelementptr %struct.prb_desc, ptr %12, i32 %idxprom.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desc.i) #8
  %13 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %desc.i, align 4, !annotation !41
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %0, align 4, !annotation !41
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %1, align 4, !annotation !41
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i39.i, i32 noundef 4) #8
  %16 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i39.i, align 4
  %and.i = and i32 %17, 1073741823
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.i.i) #8
  %18 = ptrtoint ptr %s.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %s.i.i, align 8, !annotation !41
  %call.i.i = call fastcc i32 @desc_read(ptr noundef %rb, i32 noundef %and.i, ptr noundef nonnull %desc.i, ptr noundef nonnull %s.i.i, ptr noundef null) #8
  %switch.tableidx = add i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 3
  br i1 %19, label %while.cond.desc_read_finalized_seq.exit.thread.i_crit_edge, label %lor.lhs.false4.i.i

while.cond.desc_read_finalized_seq.exit.thread.i_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read_finalized_seq.exit.thread.i

lor.lhs.false4.i.i:                               ; preds = %while.cond
  %20 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %5)
  %cmp5.not.i.i = icmp eq i64 %21, %5
  br i1 %cmp5.not.i.i, label %if.end.i.i, label %lor.lhs.false4.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge

lor.lhs.false4.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read_finalized_seq.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp6.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp6.i.i, label %if.end.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge, label %lor.lhs.false7.i.i

if.end.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read_finalized_seq.exit.thread.i

lor.lhs.false7.i.i:                               ; preds = %if.end.i.i
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp8.i.i = icmp eq i32 %23, 1
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %lor.lhs.false7.i.i.desc_read_finalized_seq.exit.i_crit_edge

lor.lhs.false7.i.i.desc_read_finalized_seq.exit.i_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read_finalized_seq.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false7.i.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp9.i.i = icmp eq i32 %25, 1
  br i1 %cmp9.i.i, label %land.lhs.true.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge, label %land.lhs.true.i.i.desc_read_finalized_seq.exit.i_crit_edge

land.lhs.true.i.i.desc_read_finalized_seq.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read_finalized_seq.exit.i

land.lhs.true.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read_finalized_seq.exit.thread.i

desc_read_finalized_seq.exit.thread.i:            ; preds = %land.lhs.true.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge, %if.end.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge, %lor.lhs.false4.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge, %while.cond.desc_read_finalized_seq.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -2, %if.end.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge ], [ -2, %land.lhs.true.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false4.i.i.desc_read_finalized_seq.exit.thread.i_crit_edge ], [ -22, %while.cond.desc_read_finalized_seq.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.i.i) #8
  br label %prb_read.exit.thread

desc_read_finalized_seq.exit.i:                   ; preds = %land.lhs.true.i.i.desc_read_finalized_seq.exit.i_crit_edge, %lor.lhs.false7.i.i.desc_read_finalized_seq.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.i.i) #8
  br i1 %tobool6.not.i, label %prb_read.exit.thread19, label %if.end.i

prb_read.exit.thread19:                           ; preds = %desc_read_finalized_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %desc_read_finalized_seq.exit.i
  %26 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %r, align 4
  %tobool8.not.i = icmp eq ptr %27, null
  br i1 %tobool8.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then9.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call ptr @memcpy(ptr %27, ptr %arrayidx.i.i, i32 88)
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %text_len.i = getelementptr %struct.printk_info, ptr %7, i32 %idxprom.i.i, i32 2
  %29 = ptrtoint ptr %text_len.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %text_len.i, align 8
  %31 = ptrtoint ptr %text_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %text_buf.i, align 4
  %33 = ptrtoint ptr %text_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %text_buf_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.i.i) #8
  %35 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %data_size.i.i, align 4, !annotation !41
  %tobool.not.i.i = icmp eq ptr %32, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool1.not.i.i = icmp eq i32 %34, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool1.not.i.i
  %or.cond39.i.i = and i1 %tobool2.not.i.i, %or.cond.i.i
  br i1 %or.cond39.i.i, label %if.end11.i.if.end14.i_crit_edge, label %if.end.i41.i

if.end11.i.if.end14.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end.i41.i:                                     ; preds = %if.end11.i
  %call.i40.i = call fastcc ptr @get_data(ptr noundef %text_data_ring.i, ptr noundef %0, ptr noundef nonnull %data_size.i.i) #8
  %tobool3.not.i.i = icmp eq ptr %call.i40.i, null
  br i1 %tobool3.not.i.i, label %if.end.i41.i.copy_data.exit.i_crit_edge, label %if.end5.i.i

if.end.i41.i.copy_data.exit.i_crit_edge:          ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_data.exit.i

if.end5.i.i:                                      ; preds = %if.end.i41.i
  %36 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_size.i.i, align 4
  %conv.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i.i)
  %cmp.i.i = icmp ult i32 %37, %conv.i.i
  br i1 %cmp.i.i, label %if.end5.i.i.copy_data.exit.i_crit_edge, label %if.end8.i.i

if.end5.i.i.copy_data.exit.i_crit_edge:           ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_data.exit.i

if.end8.i.i:                                      ; preds = %if.end5.i.i
  br i1 %tobool2.not.i.i, label %if.end8.i.i.if.end13.i.i_crit_edge, label %if.then10.i.i

if.end8.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not9.i.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not9.i.i.i, label %if.then10.i.i.count_lines.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.then10.i.i.count_lines.exit.i.i_crit_edge:     ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_lines.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.then10.i.i
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %call.i40.i to i32
  %sub.ptr.sub.neg.i.i.i = add i32 %sub.ptr.rhs.cast.i.i.i, %conv.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %next.012.i.i.i = phi ptr [ %call.i40.i, %while.body.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %line_count.011.i.i.i = phi i32 [ 1, %while.body.lr.ph.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %next_size.010.i.i.i = phi i32 [ %conv.i.i, %while.body.lr.ph.i.i.i ], [ %sub.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %call.i.i42.i = call ptr @memchr(ptr noundef %next.012.i.i.i, i32 noundef 10, i32 noundef %next_size.010.i.i.i) #12
  %tobool1.not.i.i.i = icmp eq ptr %call.i.i42.i, null
  br i1 %tobool1.not.i.i.i, label %while.body.i.i.i.count_lines.exit.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.count_lines.exit.i.i_crit_edge:  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_lines.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %inc.i.i.i = add i32 %line_count.011.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %call.i.i42.i, i32 1
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %incdec.ptr.i.i.i to i32
  %sub.i.i.i = sub i32 %sub.ptr.sub.neg.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.count_lines.exit.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

if.end.i.i.i.count_lines.exit.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_lines.exit.i.i

count_lines.exit.i.i:                             ; preds = %if.end.i.i.i.count_lines.exit.i.i_crit_edge, %while.body.i.i.i.count_lines.exit.i.i_crit_edge, %if.then10.i.i.count_lines.exit.i.i_crit_edge
  %line_count.0.lcssa.i.i.i = phi i32 [ 1, %if.then10.i.i.count_lines.exit.i.i_crit_edge ], [ %inc.i.i.i, %if.end.i.i.i.count_lines.exit.i.i_crit_edge ], [ %line_count.011.i.i.i, %while.body.i.i.i.count_lines.exit.i.i_crit_edge ]
  %38 = ptrtoint ptr %line_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %line_count.0.lcssa.i.i.i, ptr %line_count, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %count_lines.exit.i.i, %if.end8.i.i.if.end13.i.i_crit_edge
  br i1 %or.cond.i.i, label %if.end13.i.i.if.end14.i_crit_edge, label %if.end18.i.i

if.end13.i.i.if.end14.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end18.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv20.i.i = and i32 %34, 65535
  %39 = call i32 @llvm.umin.i32(i32 %conv20.i.i, i32 %conv.i.i) #8
  %40 = call ptr @memcpy(ptr %32, ptr %call.i40.i, i32 %39)
  br label %if.end14.i

copy_data.exit.i:                                 ; preds = %if.end5.i.i.copy_data.exit.i_crit_edge, %if.end.i41.i.copy_data.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.i.i) #8
  br label %prb_read.exit.thread

if.end14.i:                                       ; preds = %if.end18.i.i, %if.end13.i.i.if.end14.i_crit_edge, %if.end11.i.if.end14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.i44.i) #8
  %41 = ptrtoint ptr %s.i44.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %s.i44.i, align 8, !annotation !41
  %call.i46.i = call fastcc i32 @desc_read(ptr noundef %rb, i32 noundef %and.i, ptr noundef nonnull %desc.i, ptr noundef nonnull %s.i44.i, ptr noundef null) #8
  %switch.tableidx26 = add i32 %call.i46.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx26)
  %42 = icmp ult i32 %switch.tableidx26, 3
  br i1 %42, label %if.end14.i.prb_read.exit.thread23_crit_edge, label %lor.lhs.false4.i48.i

if.end14.i.prb_read.exit.thread23_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_read.exit.thread23

lor.lhs.false4.i48.i:                             ; preds = %if.end14.i
  %43 = ptrtoint ptr %s.i44.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %s.i44.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %5)
  %cmp5.not.i47.i = icmp eq i64 %44, %5
  br i1 %cmp5.not.i47.i, label %if.end.i50.i, label %lor.lhs.false4.i48.i.prb_read.exit.thread23_crit_edge

lor.lhs.false4.i48.i.prb_read.exit.thread23_crit_edge: ; preds = %lor.lhs.false4.i48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_read.exit.thread23

if.end.i50.i:                                     ; preds = %lor.lhs.false4.i48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i46.i)
  %cmp6.i49.i = icmp eq i32 %call.i46.i, 3
  br i1 %cmp6.i49.i, label %if.end.i50.i.prb_read.exit.thread23_crit_edge, label %lor.lhs.false7.i52.i

if.end.i50.i.prb_read.exit.thread23_crit_edge:    ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_read.exit.thread23

lor.lhs.false7.i52.i:                             ; preds = %if.end.i50.i
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp8.i51.i = icmp eq i32 %46, 1
  br i1 %cmp8.i51.i, label %land.lhs.true.i55.i, label %lor.lhs.false7.i52.i.prb_read.exit_crit_edge

lor.lhs.false7.i52.i.prb_read.exit_crit_edge:     ; preds = %lor.lhs.false7.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_read.exit

land.lhs.true.i55.i:                              ; preds = %lor.lhs.false7.i52.i
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp9.i54.i = icmp eq i32 %48, 1
  br i1 %cmp9.i54.i, label %land.lhs.true.i55.i.prb_read.exit.thread23_crit_edge, label %land.lhs.true.i55.i.prb_read.exit_crit_edge

land.lhs.true.i55.i.prb_read.exit_crit_edge:      ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_read.exit

land.lhs.true.i55.i.prb_read.exit.thread23_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_read.exit.thread23

prb_read.exit.thread:                             ; preds = %copy_data.exit.i, %desc_read_finalized_seq.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %desc_read_finalized_seq.exit.thread.i ], [ -2, %copy_data.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  br label %while.body

prb_read.exit.thread23:                           ; preds = %land.lhs.true.i55.i.prb_read.exit.thread23_crit_edge, %if.end.i50.i.prb_read.exit.thread23_crit_edge, %lor.lhs.false4.i48.i.prb_read.exit.thread23_crit_edge, %if.end14.i.prb_read.exit.thread23_crit_edge
  %retval.0.i57.i.ph = phi i32 [ -2, %if.end.i50.i.prb_read.exit.thread23_crit_edge ], [ -2, %land.lhs.true.i55.i.prb_read.exit.thread23_crit_edge ], [ -22, %lor.lhs.false4.i48.i.prb_read.exit.thread23_crit_edge ], [ -22, %if.end14.i.prb_read.exit.thread23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.i44.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  br label %while.body

prb_read.exit:                                    ; preds = %land.lhs.true.i55.i.prb_read.exit_crit_edge, %lor.lhs.false7.i52.i.prb_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.i44.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  br label %cleanup

while.body:                                       ; preds = %prb_read.exit.thread23, %prb_read.exit.thread
  %retval.0.i16 = phi i32 [ %retval.0.i.ph, %prb_read.exit.thread ], [ %retval.0.i57.i.ph, %prb_read.exit.thread23 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desc.i12) #8
  %49 = ptrtoint ptr %desc.i12 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %desc.i12, align 4, !annotation !41
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %2, align 4, !annotation !41
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %3, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seq.i) #8
  %52 = ptrtoint ptr %seq.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %seq.i, align 8, !annotation !41
  %call.i.i10.i = call zeroext i1 @__kasan_check_read(ptr noundef %tail_id.i, i32 noundef 4) #8
  %53 = ptrtoint ptr %tail_id.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %tail_id.i, align 4
  %call311.i = call fastcc i32 @desc_read(ptr noundef %rb, i32 noundef %54, ptr noundef nonnull %desc.i12, ptr noundef nonnull %seq.i, ptr noundef null) #8
  %55 = and i32 %call311.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch12.i = icmp eq i32 %55, 2
  br i1 %switch12.i, label %while.body.prb_first_seq.exit_crit_edge, label %while.body.do.end.i_crit_edge

while.body.do.end.i_crit_edge:                    ; preds = %while.body
  br label %do.end.i

while.body.prb_first_seq.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_first_seq.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %while.body.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  %call.i.i.i13 = call zeroext i1 @__kasan_check_read(ptr noundef %tail_id.i, i32 noundef 4) #8
  %56 = ptrtoint ptr %tail_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %tail_id.i, align 4
  %call3.i = call fastcc i32 @desc_read(ptr noundef %rb, i32 noundef %57, ptr noundef nonnull %desc.i12, ptr noundef nonnull %seq.i, ptr noundef null) #8
  %58 = and i32 %call3.i, -2
  %switch.i = icmp eq i32 %58, 2
  br i1 %switch.i, label %do.end.i.prb_first_seq.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.prb_first_seq.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prb_first_seq.exit

prb_first_seq.exit:                               ; preds = %do.end.i.prb_first_seq.exit_crit_edge, %while.body.prb_first_seq.exit_crit_edge
  %59 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %seq.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i12) #8
  %61 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %60)
  %cmp = icmp ult i64 %62, %60
  br i1 %cmp, label %prb_first_seq.exit.if.end5_crit_edge, label %if.else

prb_first_seq.exit.if.end5_crit_edge:             ; preds = %prb_first_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.else:                                          ; preds = %prb_first_seq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i16)
  %cmp2 = icmp eq i32 %retval.0.i16, -2
  br i1 %cmp2, label %if.then3, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i64 %62, 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %prb_first_seq.exit.if.end5_crit_edge
  %storemerge = phi i64 [ %inc, %if.then3 ], [ %60, %prb_first_seq.exit.if.end5_crit_edge ]
  %63 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %storemerge, ptr %seq, align 8
  br label %while.cond

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %prb_read.exit, %prb_read.exit.thread19
  %tobool.not18 = phi i1 [ true, %prb_read.exit ], [ true, %prb_read.exit.thread19 ], [ false, %if.else.cleanup_crit_edge ]
  ret i1 %tobool.not18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @prb_read_valid_info(ptr noundef %rb, i64 noundef %seq, ptr noundef %info, ptr noundef %line_count) local_unnamed_addr #0 align 64 {
entry:
  %seq.addr = alloca i64, align 8
  %r = alloca %struct.printk_record, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %seq.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #8
  %1 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %2 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %info, ptr %r, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %2, align 4
  %call = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %rb, ptr noundef nonnull %seq.addr, ptr noundef nonnull %r, ptr noundef %line_count)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #8
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @prb_first_valid_seq(ptr noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seq) #8
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %seq, align 8
  %call = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %rb, ptr noundef nonnull %seq, ptr noundef null, ptr noundef null)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %seq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq) #8
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @prb_next_seq(ptr noundef %rb) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seq) #8
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %seq, align 8
  %call1 = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %rb, ptr noundef nonnull %seq, ptr noundef null, ptr noundef null)
  br i1 %call1, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %seq, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %seq, align 8
  %call = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %rb, ptr noundef nonnull %seq, ptr noundef null, ptr noundef null)
  br i1 %call, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %seq, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seq) #8
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prb_init(ptr noundef %rb, ptr noundef %text_buf, i32 noundef %textbits, ptr noundef %descs, i32 noundef %descbits, ptr noundef %infos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %descbits
  %mul = shl i32 12, %descbits
  %0 = call ptr @memset(ptr %descs, i32 0, i32 %mul)
  %mul2 = shl i32 88, %descbits
  %1 = call ptr @memset(ptr %infos, i32 0, i32 %mul2)
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %descbits, ptr %rb, align 4
  %descs4 = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 1
  %3 = ptrtoint ptr %descs4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %descs, ptr %descs4, align 4
  %infos6 = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 2
  %4 = ptrtoint ptr %infos6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %infos, ptr %infos6, align 4
  %head_id = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 3
  %sub = and i32 %shl, 1073741823
  %and = xor i32 %sub, 1073741823
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %head_id, i32 noundef 4) #8
  %5 = ptrtoint ptr %head_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %and, ptr %head_id, align 4
  %tail_id = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 4
  %call.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tail_id, i32 noundef 4) #8
  %6 = ptrtoint ptr %tail_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %and, ptr %tail_id, align 4
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  %7 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %textbits, ptr %text_data_ring, align 4
  %data = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %text_buf, ptr %data, align 4
  %head_lpos = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 2
  %shl16.neg = shl nsw i32 -1, %textbits
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %head_lpos, i32 noundef 4) #8
  %9 = ptrtoint ptr %head_lpos to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %shl16.neg, ptr %head_lpos, align 4
  %tail_lpos = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 3
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tail_lpos, i32 noundef 4) #8
  %10 = ptrtoint ptr %tail_lpos to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %shl16.neg, ptr %tail_lpos, align 4
  %fail = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 2
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fail, i32 noundef 4) #8
  %11 = ptrtoint ptr %fail to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %fail, align 4
  %sub22 = add i32 %shl, -1
  %arrayidx = getelementptr %struct.prb_desc, ptr %descs, i32 %sub22
  %or = or i32 %and, -1073741824
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %or, ptr %arrayidx, align 4
  %text_blk_lpos = getelementptr %struct.prb_desc, ptr %descs, i32 %sub22, i32 1
  %13 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %text_blk_lpos, align 4
  %next = getelementptr %struct.prb_desc, ptr %descs, i32 %sub22, i32 1, i32 1
  %14 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %next, align 4
  %conv = zext i32 %shl to i64
  %sub35 = sub nsw i64 0, %conv
  %15 = ptrtoint ptr %infos to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %sub35, ptr %infos, align 8
  %arrayidx39 = getelementptr %struct.printk_info, ptr %infos, i32 %sub22
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %arrayidx39, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prb_record_text_space(ptr nocapture noundef readonly %e) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %text_space to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %text_space, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @desc_read(ptr nocapture noundef readonly %desc_ring, i32 noundef %id, ptr noundef %desc_out, ptr noundef writeonly %seq_out, ptr noundef writeonly %caller_id_out) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %infos.i = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring, i32 0, i32 2
  %0 = ptrtoint ptr %infos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %infos.i, align 4
  %2 = ptrtoint ptr %desc_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc_ring, align 4
  %notmask.i = shl nsw i32 -1, %3
  %sub.i = xor i32 %notmask.i, -1
  %idxprom.i = and i32 %sub.i, %id
  %arrayidx.i = getelementptr %struct.printk_info, ptr %1, i32 %idxprom.i
  %descs.i = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring, i32 0, i32 1
  %4 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descs.i, align 4
  %arrayidx.i46 = getelementptr %struct.prb_desc, ptr %5, i32 %idxprom.i
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46, i32 noundef 4) #8
  %6 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i46, align 4
  %and.i = and i32 %7, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %id)
  %cmp.not.i = icmp eq i32 %and.i, %id
  %shr.i = lshr i32 %7, 30
  %retval.0.i = select i1 %cmp.not.i, i32 %shr.i, i32 -1
  %8 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %retval.0.i, label %do.end [
    i32 -1, label %entry.out_crit_edge
    i32 0, label %out.fold.split
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %desc_out, i32 0, i32 1
  %text_blk_lpos12 = getelementptr %struct.prb_desc, ptr %5, i32 %idxprom.i, i32 1
  %9 = ptrtoint ptr %text_blk_lpos12 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %text_blk_lpos12, align 4
  %11 = ptrtoint ptr %text_blk_lpos to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %text_blk_lpos, align 4
  %tobool.not = icmp eq ptr %seq_out, null
  br i1 %tobool.not, label %do.end.if.end14_crit_edge, label %if.then13

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %seq_out to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %seq_out, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.end.if.end14_crit_edge
  %tobool15.not = icmp eq ptr %caller_id_out, null
  br i1 %tobool15.not, label %if.end14.do.end21_crit_edge, label %if.then16

if.end14.do.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %caller_id = getelementptr %struct.printk_info, ptr %1, i32 %idxprom.i, i32 5
  %15 = ptrtoint ptr %caller_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caller_id, align 4
  %17 = ptrtoint ptr %caller_id_out to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %caller_id_out, align 4
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %if.end14.do.end21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46, i32 noundef 4) #8
  %18 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i46, align 4
  %and.i47 = and i32 %19, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i47, i32 %id)
  %cmp.not.i48 = icmp eq i32 %and.i47, %id
  %shr.i49 = lshr i32 %19, 30
  %retval.0.i50 = select i1 %cmp.not.i48, i32 %shr.i49, i32 -1
  br label %out

out.fold.split:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %out.fold.split, %do.end21, %entry.out_crit_edge
  %d_state.0 = phi i32 [ %retval.0.i, %entry.out_crit_edge ], [ %retval.0.i50, %do.end21 ], [ 0, %out.fold.split ]
  %state_val.0 = phi i32 [ %7, %entry.out_crit_edge ], [ %19, %do.end21 ], [ %7, %out.fold.split ]
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %desc_out, i32 noundef 4) #8
  %20 = ptrtoint ptr %desc_out to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %state_val.0, ptr %desc_out, align 4
  ret i32 %d_state.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @data_push_tail(ptr noundef %rb, i32 noundef %lpos) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.prb_desc, align 4
  %tail_lpos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tail_lpos) #8
  %and = and i32 %lpos, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail_lpos1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tail_lpos1, i32 noundef 4) #8
  %0 = ptrtoint ptr %tail_lpos1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tail_lpos1, align 4
  %2 = ptrtoint ptr %tail_lpos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tail_lpos, align 4
  %3 = xor i32 %1, -1
  %sub238 = add i32 %3, %lpos
  %4 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %text_data_ring, align 4
  %sub2.highbits39 = lshr i32 %sub238, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.highbits39)
  %cmp40 = icmp eq i32 %sub2.highbits39, 0
  br i1 %cmp40, label %while.body.lr.ph.i.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph.i.lr.ph:                         ; preds = %if.end
  %6 = getelementptr inbounds %struct.prb_desc, ptr %desc.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.prb_desc, ptr %desc.i, i32 0, i32 1, i32 1
  %data.i.i = getelementptr inbounds %struct.printk_ringbuffer, ptr %rb, i32 0, i32 1, i32 1
  %descs.i.i.i = getelementptr inbounds %struct.prb_desc_ring, ptr %rb, i32 0, i32 1
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.backedge.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.i.lr.ph
  %8 = phi i32 [ %5, %while.body.lr.ph.i.lr.ph ], [ %54, %while.cond.backedge.while.body.lr.ph.i_crit_edge ]
  %9 = phi i32 [ %1, %while.body.lr.ph.i.lr.ph ], [ %storemerge, %while.cond.backedge.while.body.lr.ph.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %desc.i) #8
  %10 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %desc.i, align 4, !annotation !41
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %6, align 4, !annotation !41
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %7, align 4, !annotation !41
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = phi i32 [ %8, %while.body.lr.ph.i ], [ %46, %sw.epilog.i.while.body.i_crit_edge ]
  %lpos_begin.addr.047.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %43, %sw.epilog.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %13
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %lpos_begin.addr.047.i, %sub.i.i
  %arrayidx.i.i = getelementptr i8, ptr %15, i32 %and.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %18 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rb, align 4
  %notmask.i.i.i = shl nsw i32 -1, %19
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %idxprom.i.i.i = and i32 %17, %sub.i.i.i
  %20 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %descs.i.i.i, align 4
  %arrayidx.i46.i.i = getelementptr %struct.prb_desc, ptr %21, i32 %idxprom.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46.i.i, i32 noundef 4) #8
  %22 = ptrtoint ptr %arrayidx.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i46.i.i, align 4
  %and.i.i.i = and i32 %23, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %17)
  %cmp.not.i.i.i30 = icmp eq i32 %and.i.i.i, %17
  %shr.i.i.i = lshr i32 %23, 30
  %retval.0.i.i.i = select i1 %cmp.not.i.i.i30, i32 %shr.i.i.i, i32 -1
  %24 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %retval.0.i.i.i, label %do.end.i.i [
    i32 -1, label %while.body.i.desc_read.exit.thread.i_crit_edge
    i32 0, label %while.body.i.desc_read.exit.thread.i_crit_edge48
  ]

while.body.i.desc_read.exit.thread.i_crit_edge48: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read.exit.thread.i

while.body.i.desc_read.exit.thread.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read.exit.thread.i

do.end.i.i:                                       ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  %text_blk_lpos12.i.i = getelementptr %struct.prb_desc, ptr %21, i32 %idxprom.i.i.i, i32 1
  %25 = ptrtoint ptr %text_blk_lpos12.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %text_blk_lpos12.i.i, align 4
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %6, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %call.i.i41.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i46.i.i, i32 noundef 4) #8
  %28 = ptrtoint ptr %arrayidx.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i46.i.i, align 4
  %and.i47.i.i = and i32 %29, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i47.i.i, i32 %17)
  %cmp.not.i48.i.i = icmp eq i32 %and.i47.i.i, %17
  br i1 %cmp.not.i48.i.i, label %desc_read.exit.i, label %do.end.i.i.desc_read.exit.thread.i_crit_edge

do.end.i.i.desc_read.exit.thread.i_crit_edge:     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_read.exit.thread.i

desc_read.exit.thread.i:                          ; preds = %do.end.i.i.desc_read.exit.thread.i_crit_edge, %while.body.i.desc_read.exit.thread.i_crit_edge, %while.body.i.desc_read.exit.thread.i_crit_edge48
  %state_val.0.i.ph.i = phi i32 [ %29, %do.end.i.i.desc_read.exit.thread.i_crit_edge ], [ %23, %while.body.i.desc_read.exit.thread.i_crit_edge ], [ %23, %while.body.i.desc_read.exit.thread.i_crit_edge48 ]
  %call.i.i42.i36.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %desc.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %state_val.0.i.ph.i, ptr %desc.i, align 4
  br label %do.end

desc_read.exit.i:                                 ; preds = %do.end.i.i
  %shr.i49.i.i = lshr i32 %29, 30
  %call.i.i42.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %desc.i, i32 noundef 4) #8
  %31 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %29, ptr %desc.i, align 4
  %32 = zext i32 %shr.i49.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr.i49.i.i, label %desc_read.exit.unreachabledefault.i [
    i32 3, label %sw.bb7.i
    i32 0, label %desc_read.exit.i.do.end_crit_edge
    i32 1, label %desc_read.exit.i.do.end_crit_edge49
    i32 2, label %sw.bb5.i
  ]

desc_read.exit.i.do.end_crit_edge49:              ; preds = %desc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

desc_read.exit.i.do.end_crit_edge:                ; preds = %desc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb5.i:                                         ; preds = %desc_read.exit.i
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %lpos_begin.addr.047.i)
  %cmp6.not.i = icmp eq i32 %34, %lpos_begin.addr.047.i
  br i1 %cmp6.not.i, label %if.end.i, label %sw.bb5.i.do.end_crit_edge

sw.bb5.i.do.end_crit_edge:                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %sw.bb5.i
  %or.i.i = or i32 %17, -2147483648
  %or1.i.i = or i32 %17, -1073741824
  %35 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %descs.i.i.i, align 4
  %37 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rb, align 4
  %notmask.i.i29.i = shl nsw i32 -1, %38
  %sub.i.i30.i = xor i32 %notmask.i.i29.i, -1
  %idxprom.i.i31.i = and i32 %17, %sub.i.i30.i
  %arrayidx.i.i32.i = getelementptr %struct.prb_desc, ptr %36, i32 %idxprom.i.i31.i
  %call.i.i.i33.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i32.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i32.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i33

do.body.i.i.i.i.i33:                              ; preds = %do.body.i.i.i.i.i33.do.body.i.i.i.i.i33_crit_edge, %if.end.i
  %39 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i32.i, ptr %arrayidx.i.i32.i, i32 %or.i.i, i32 %or1.i.i, ptr elementtype(i32) %arrayidx.i.i32.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i31 = extractvalue { i32, i32 } %39, 0
  %tobool.not.i.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i31, 0
  br i1 %tobool.not.i.i.i.i.i32, label %do.body.i.i.i.i.i33.sw.epilog.i_crit_edge, label %do.body.i.i.i.i.i33.do.body.i.i.i.i.i33_crit_edge

do.body.i.i.i.i.i33.do.body.i.i.i.i.i33_crit_edge: ; preds = %do.body.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i33

do.body.i.i.i.i.i33.sw.epilog.i_crit_edge:        ; preds = %do.body.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %desc_read.exit.i
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %lpos_begin.addr.047.i)
  %cmp9.not.i = icmp eq i32 %41, %lpos_begin.addr.047.i
  br i1 %cmp9.not.i, label %sw.bb7.i.sw.epilog.i_crit_edge, label %sw.bb7.i.do.end_crit_edge

sw.bb7.i.do.end_crit_edge:                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb7.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

desc_read.exit.unreachabledefault.i:              ; preds = %desc_read.exit.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb7.i.sw.epilog.i_crit_edge, %do.body.i.i.i.i.i33.sw.epilog.i_crit_edge
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  %44 = xor i32 %43, -1
  %sub2.i = add i32 %44, %lpos
  %45 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %text_data_ring, align 4
  %sub2.highbits.i = lshr i32 %sub2.i, %46
  %cmp.i = icmp eq i32 %sub2.highbits.i, 0
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %if.end13

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end:                                           ; preds = %sw.bb7.i.do.end_crit_edge, %sw.bb5.i.do.end_crit_edge, %desc_read.exit.i.do.end_crit_edge, %desc_read.exit.i.do.end_crit_edge49, %desc_read.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %call.i.i28 = call zeroext i1 @__kasan_check_read(ptr noundef %tail_lpos1, i32 noundef 4) #8
  %47 = ptrtoint ptr %tail_lpos1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %tail_lpos1, align 4
  %49 = ptrtoint ptr %tail_lpos to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail_lpos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp10 = icmp eq i32 %48, %50
  br i1 %cmp10, label %do.end.cleanup_crit_edge, label %do.end.while.cond.backedge_crit_edge

do.end.while.cond.backedge_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.backedge:                              ; preds = %arch_atomic_cmpxchg.exit.i.i.i.while.cond.backedge_crit_edge, %do.end.while.cond.backedge_crit_edge
  %storemerge = phi i32 [ %48, %do.end.while.cond.backedge_crit_edge ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.while.cond.backedge_crit_edge ]
  %51 = ptrtoint ptr %tail_lpos to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge, ptr %tail_lpos, align 4
  %52 = xor i32 %storemerge, -1
  %sub2 = add i32 %52, %lpos
  %53 = ptrtoint ptr %text_data_ring to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %text_data_ring, align 4
  %sub2.highbits = lshr i32 %sub2, %54
  %cmp = icmp eq i32 %sub2.highbits, 0
  br i1 %cmp, label %while.cond.backedge.while.body.lr.ph.i_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.backedge.while.body.lr.ph.i_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph.i

if.end13:                                         ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %desc.i) #8
  %call.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %tail_lpos1, i32 noundef 4) #8
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tail_lpos, i32 noundef 4) #8
  %55 = ptrtoint ptr %tail_lpos to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tail_lpos, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %tail_lpos1, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end13
  %57 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %tail_lpos1, ptr %tail_lpos1, i32 %56, i32 %43, ptr elementtype(i32) %tail_lpos1) #8, !srcloc !44
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %57, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %57, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i, i32 %56)
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %56
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.while.cond.backedge_crit_edge, !prof !46

arch_atomic_cmpxchg.exit.i.i.i.while.cond.backedge_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %do.end.cleanup_crit_edge ], [ true, %while.cond.backedge.cleanup_crit_edge ], [ true, %arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tail_lpos) #8
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1385, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1386, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @prb_reserve_in_last._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @prb_reserve_in_last._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1408, i32 7}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1409, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @prb_reserve_in_last._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @prb_reserve_in_last._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1212, i32 11}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1231, i32 3}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1236, i32 6}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1237, i32 6}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1242, i32 6}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../kernel/printk/printk_ringbuffer.c", i32 974, i32 3}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../kernel/printk/printk_ringbuffer.c", i32 988, i32 3}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../kernel/printk/printk_ringbuffer.c", i32 1603, i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i64 667875, i64 667936}
!43 = !{i64 2148377217}
!44 = !{i64 759130, i64 759154, i64 759175, i64 759192, i64 759209}
!45 = !{i64 2148377443}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 670607}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 670892}
!50 = !{i64 2150541576}
!51 = !{i64 2150539267}
!52 = !{i64 2150539432}
!53 = !{i64 2150540978}
!54 = !{i64 2148275394, i64 2148275420, i64 2148275449, i64 2148275483, i64 2148275514, i64 2148275537}
!55 = !{i64 2150571252}
!56 = !{i64 2150540048}
