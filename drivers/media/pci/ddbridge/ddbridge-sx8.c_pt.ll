; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ddbridge/ddbridge-sx8.c_pt.bc'
source_filename = "../drivers/media/pci/ddbridge/ddbridge-sx8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.mci_cfg = type { i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mci = type { ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mci_base = type { %struct.list_head, ptr, ptr, %struct.completion, ptr, %struct.mutex, %struct.mutex, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mci_command = type { %union.anon.146, %union.anon.148 }
%union.anon.146 = type { i32 }
%union.anon.148 = type { [31 x i32] }
%struct.sx8 = type { %struct.mci, i32, i32, %struct.mci_result, i32, i32 }
%struct.mci_result = type { %union.anon.141, %union.anon.143, [4 x i32] }
%union.anon.141 = type { i32 }
%union.anon.143 = type { [27 x i32] }
%struct.sx8_base = type { %struct.mci_base, [4 x i8], [4 x i32], [8 x i32], [8 x i8], i32, i32, i32 }
%struct.anon.147 = type { i8, i8, i8, i8 }
%struct.anon.151 = type { i8, i8, i8, i8, i32, i32, i16 }
%struct.anon.149 = type { i8, i8, i8, i8, i32, i32, i8, [3 x i8], i32, i32 }

@sx8_ops = internal global { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Digital Devices MaxSX8 MCI DVB-S/S2/S2X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 100000, i32 100000000, i32 0, i32 335545857 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tune, ptr @get_algo, ptr null, ptr null, ptr null, ptr @read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@ddb_max_sx8_cfg = dso_local constant { %struct.mci_cfg, [36 x i8] } { %struct.mci_cfg { i32 0, ptr @sx8_ops, i32 340, i32 1200, ptr @init, ptr null, ptr @set_input }, [36 x i8] zeroinitializer }, align 32
@start.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddbridge\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/ddbridge/ddbridge-sx8.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MCI-%d: tuner=%d demod=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@set_input.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_input\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MCI-%d: input=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 15]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2147483648, i64 4294967295]
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"sx8_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 451, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"ddb_max_sx8_cfg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 479, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 286, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [45 x i8] c"../drivers/media/pci/ddbridge/ddbridge-sx8.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 447, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @sx8_ops, ptr @ddb_max_sx8_cfg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_max_sx8_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @init(ptr nocapture noundef writeonly %mci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demod = getelementptr inbounds %struct.mci, ptr %mci, i32 0, i32 3
  %0 = ptrtoint ptr %demod to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %demod, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_input(ptr nocapture noundef readonly %fe, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %input)
  %cmp = icmp sgt i32 %input, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tuner = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tuner to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %input, ptr %tuner, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_input.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_input, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !23

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mci_base, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %nr = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_input.__UNIQUE_ID_ddebug386, ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef %input) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef readonly %fe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %count = getelementptr inbounds %struct.mci_base, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tune(ptr nocapture noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #1 align 64 {
entry:
  %cmd.i.i.i = alloca %struct.mci_command, align 4
  %cmd.i.i = alloca %struct.mci_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %re_tune, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  %started.i = getelementptr inbounds %struct.sx8, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stop(ptr noundef %fe) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %stream_id.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %4 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, -1
  %and.i = lshr i32 %5, 28
  %shr.i = and i32 %and.i, 3
  %iq_mode.0.i = select i1 %cmp.not.i, i32 0, i32 %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iq_mode.0.i)
  %tobool3.not.i = icmp eq i32 %iq_mode.0.i, 0
  %ts_config.0.i = select i1 %tobool3.not.i, i32 1, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %iq_mode.0.i)
  %cmp6.not.i = icmp eq i32 %iq_mode.0.i, 3
  br i1 %cmp6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %modulation.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modulation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %switch.selectcmp.i = icmp eq i32 %7, 10
  %switch.select.i = select i1 %switch.selectcmp.i, i32 7, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %switch.selectcmp28.i = icmp eq i32 %7, 11
  %switch.select29.i = select i1 %switch.selectcmp28.i, i32 15, i32 %switch.select.i
  %call9.i = tail call fastcc i32 @start(ptr noundef %fe, i32 noundef %switch.select29.i, i32 noundef %ts_config.0.i) #6
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %demodulator_priv.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dtv_property_cache.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd.i.i) #6
  %tuner.i.i = getelementptr inbounds %struct.mci, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %tuner.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tuner.i.i, align 4
  %tuner_lock.i.i = getelementptr inbounds %struct.mci_base, ptr %11, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tuner_lock.i.i, i32 noundef 0) #6
  %iq_mode.i.i = getelementptr inbounds %struct.sx8_base, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %iq_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iq_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.body.preheader.i.i, label %if.else.i.unlock.thread.i.i_crit_edge

if.else.i.unlock.thread.i.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread.i.i

for.body.preheader.i.i:                           ; preds = %if.else.i
  %arrayidx.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 0
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i.i = icmp ne i8 %17, 0
  %inc.i.i = zext i1 %tobool2.not.i.i to i32
  %arrayidx.1.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.1.i.i = icmp ne i8 %19, 0
  %inc.1.i.i = zext i1 %tobool2.not.1.i.i to i32
  %spec.select.1.i.i = add nuw nsw i32 %inc.1.i.i, %inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.2.i.i = icmp ne i8 %21, 0
  %inc.2.i.i = zext i1 %tobool2.not.2.i.i to i32
  %spec.select.2.i.i = add nuw nsw i32 %spec.select.1.i.i, %inc.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.3.i.i = icmp ne i8 %23, 0
  %inc.3.i.i = zext i1 %tobool2.not.3.i.i to i32
  %spec.select.3.i.i = add nuw nsw i32 %spec.select.2.i.i, %inc.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.4.i.i = icmp ne i8 %25, 0
  %inc.4.i.i = zext i1 %tobool2.not.4.i.i to i32
  %spec.select.4.i.i = add nuw nsw i32 %spec.select.3.i.i, %inc.4.i.i
  %arrayidx.5.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.not.5.i.i = icmp ne i8 %27, 0
  %inc.5.i.i = zext i1 %tobool2.not.5.i.i to i32
  %spec.select.5.i.i = add nuw nsw i32 %spec.select.4.i.i, %inc.5.i.i
  %arrayidx.6.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.6.i.i = icmp ne i8 %29, 0
  %inc.6.i.i = zext i1 %tobool2.not.6.i.i to i32
  %spec.select.6.i.i = add nuw nsw i32 %spec.select.5.i.i, %inc.6.i.i
  %arrayidx.7.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 4, i32 7
  %30 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool2.not.7.i.i = icmp ne i8 %31, 0
  %inc.7.neg.i.i = sext i1 %tobool2.not.7.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.6.i.i, i32 %inc.7.neg.i.i)
  %cmp6.not.i.i = icmp eq i32 %spec.select.6.i.i, %inc.7.neg.i.i
  br i1 %cmp6.not.i.i, label %if.end8.i.i, label %for.body.preheader.i.i.unlock.thread.i.i_crit_edge

for.body.preheader.i.i.unlock.thread.i.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread.i.i

if.end8.i.i:                                      ; preds = %for.body.preheader.i.i
  %demod.i.i = getelementptr inbounds %struct.mci, ptr %9, i32 0, i32 3
  %32 = ptrtoint ptr %demod.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %demod.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.sx8_base, ptr %11, i32 0, i32 1, i32 %13
  %33 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool11.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end8.i.i.if.end22.i.i_crit_edge

if.end8.i.i.if.end22.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %demodulator_priv.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd.i.i.i) #6
  %39 = call ptr @memset(ptr %cmd.i.i.i, i32 0, i32 128)
  %tuner2.i.i.i = getelementptr inbounds %struct.mci, ptr %36, i32 0, i32 4
  %40 = ptrtoint ptr %tuner2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tuner2.i.i.i, align 4
  %conv.i.i.i = trunc i32 %41 to i8
  %tuner3.i.i.i = getelementptr inbounds %struct.anon.147, ptr %cmd.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %tuner3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i.i.i, ptr %tuner3.i.i.i, align 1
  %43 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %cmd.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.sx8_base, ptr %38, i32 0, i32 2, i32 %41
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv7.i.i.i = trunc i32 %45 to i8
  %46 = getelementptr inbounds %struct.mci_command, ptr %cmd.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv7.i.i.i, ptr %46, align 4
  %call.i.i.i = call i32 @ddb_mci_cmd(ptr noundef %36, ptr noundef nonnull %cmd.i.i.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd.i.i.i) #6
  br label %if.end22.i.i

unlock.thread.i.i:                                ; preds = %for.body.preheader.i.i.unlock.thread.i.i_crit_edge, %if.else.i.unlock.thread.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %tuner_lock.i.i) #6
  br label %start_iq.exit.i

if.end22.i.i:                                     ; preds = %if.then12.i.i, %if.end8.i.i.if.end22.i.i_crit_edge
  %48 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx10.i.i, align 1
  %inc16.i.i = add i8 %49, 1
  store i8 %inc16.i.i, ptr %arrayidx10.i.i, align 1
  %not.tobool3.not.i = xor i1 %tobool3.not.i, true
  %conv.i.i = zext i1 %not.tobool3.not.i to i32
  %50 = ptrtoint ptr %iq_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i.i, ptr %iq_mode.i.i, align 4
  call void @mutex_unlock(ptr noundef %tuner_lock.i.i) #6
  %51 = call ptr @memset(ptr %cmd.i.i, i32 0, i32 128)
  %52 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 66, ptr %cmd.i.i, align 4
  %53 = getelementptr inbounds %struct.mci_command, ptr %cmd.i.i, i32 0, i32 1
  %roll_off26.i.i = getelementptr inbounds %struct.anon.151, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %roll_off26.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %roll_off26.i.i, align 1
  %55 = ptrtoint ptr %dtv_property_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dtv_property_cache.i.i, align 4
  %mul.i.i = mul i32 %56, 1000
  %frequency27.i.i = getelementptr inbounds %struct.mci_command, ptr %cmd.i.i, i32 0, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %frequency27.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul.i.i, ptr %frequency27.i.i, align 4
  %symbol_rate.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %58 = ptrtoint ptr %symbol_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %symbol_rate.i.i, align 4
  %symbol_rate28.i.i = getelementptr inbounds %struct.mci_command, ptr %cmd.i.i, i32 0, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %symbol_rate28.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %symbol_rate28.i.i, align 4
  %61 = ptrtoint ptr %tuner.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tuner.i.i, align 4
  %conv31.i.i = trunc i32 %62 to i8
  %tuner32.i.i = getelementptr inbounds %struct.anon.147, ptr %cmd.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %tuner32.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv31.i.i, ptr %tuner32.i.i, align 1
  %64 = ptrtoint ptr %demod.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %demod.i.i, align 4
  %conv35.i.i = trunc i32 %65 to i8
  %demod36.i.i = getelementptr inbounds %struct.anon.147, ptr %cmd.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %demod36.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv35.i.i, ptr %demod36.i.i, align 2
  %call38.i.i = call i32 @ddb_mci_cmd(ptr noundef %9, ptr noundef nonnull %cmd.i.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool39.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end22.i.i.if.end42.i.i_crit_edge, label %if.then40.i.i

if.end22.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

if.then40.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stop(ptr noundef %fe) #6
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then40.i.i, %if.end22.i.i.if.end42.i.i_crit_edge
  %call44.i.i = call i32 @ddb_mci_config(ptr noundef %9, i32 noundef %ts_config.0.i) #6
  br label %start_iq.exit.i

start_iq.exit.i:                                  ; preds = %if.end42.i.i, %unlock.thread.i.i
  %retval.0.i.i = phi i32 [ %call38.i.i, %if.end42.i.i ], [ -16, %unlock.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd.i.i) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %start_iq.exit.i, %if.then7.i
  %stat.0.i = phi i32 [ %call9.i, %if.then7.i ], [ %retval.0.i.i, %start_iq.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.0.i)
  %tobool12.not.i = icmp eq i32 %stat.0.i, 0
  br i1 %tobool12.not.i, label %set_parameters.exit.thread, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

set_parameters.exit.thread:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %started.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %started.i, align 4
  %first_time_lock.i = getelementptr inbounds %struct.sx8, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %first_time_lock.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %first_time_lock.i, align 4
  %signal_info.i = getelementptr inbounds %struct.sx8, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %signal_info.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %signal_info.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %set_parameters.exit.thread, %entry.if.end3_crit_edge
  %call4 = call i32 @read_status(ptr noundef %fe, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %70 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status, align 4
  %and = and i32 %71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10, ptr %delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %stat.0.i, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_algo(ptr nocapture noundef readnone %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_status(ptr nocapture noundef %fe, ptr nocapture noundef writeonly %status) #1 align 64 {
entry:
  %cmd.i = alloca %struct.mci_command, align 4
  %cmd = alloca %struct.mci_command, align 4
  %res = alloca %struct.mci_result, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd) #6
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %res) #6
  %3 = call ptr @memset(ptr %res, i32 255, i32 128)
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %cmd, align 4
  %demod = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %demod, align 4
  %conv = trunc i32 %6 to i8
  %demod1 = getelementptr inbounds %struct.anon.147, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %demod1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %demod1, align 2
  %call = call i32 @ddb_mci_cmd(ptr noundef %1, ptr noundef nonnull %cmd, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status, align 4
  %9 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd.i) #6
  %11 = call ptr @memset(ptr %cmd.i, i32 0, i32 128)
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %cmd.i, align 4
  %demod.i = getelementptr inbounds %struct.mci, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %demod.i, align 4
  %conv.i = trunc i32 %14 to i8
  %demod1.i = getelementptr inbounds %struct.anon.147, ptr %cmd.i, i32 0, i32 2
  %15 = ptrtoint ptr %demod1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %demod1.i, align 2
  %signal_info.i = getelementptr inbounds %struct.sx8, ptr %10, i32 0, i32 3
  %call.i = call i32 @ddb_mci_cmd(ptr noundef %10, ptr noundef nonnull %cmd.i, ptr noundef %signal_info.i) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd.i) #6
  %16 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %demodulator_priv, align 4
  %channel_power.i = getelementptr inbounds %struct.sx8, ptr %17, i32 0, i32 3, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %channel_power.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %channel_power.i, align 4
  %conv.i29 = sext i16 %19 to i32
  %mul.neg.i = mul nsw i32 %conv.i29, -10
  %sub.i = add nsw i32 %mul.neg.i, -8750
  %strength.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %20 = ptrtoint ptr %strength.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %strength.i, align 4
  %stat.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %21 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %stat.i, align 1
  %conv2.i = sext i32 %sub.i to i64
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %conv2.i, ptr %22, align 1
  %24 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %res, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %if.end.cleanup_crit_edge [
    i8 3, label %if.end9.thread
    i8 15, label %if.then14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 15, ptr %status, align 4
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 31, ptr %status, align 4
  %29 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %demodulator_priv, align 4
  %cnr.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %31 = ptrtoint ptr %cnr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %cnr.i, align 1
  %stat.i31 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %32 = ptrtoint ptr %stat.i31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %stat.i31, align 1
  %signal_to_noise.i = getelementptr inbounds %struct.sx8, ptr %30, i32 0, i32 3, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %signal_to_noise.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %signal_to_noise.i, align 4
  %conv.i32 = sext i16 %34 to i64
  %mul.i = mul nsw i64 %conv.i32, 10
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %mul.i, ptr %35, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %res) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop(ptr nocapture noundef readonly %fe) unnamed_addr #1 align 64 {
entry:
  %cmd.i = alloca %struct.mci_command, align 4
  %cmd = alloca %struct.mci_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd) #6
  %tuner = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner, align 4
  %6 = call ptr @memset(ptr %cmd, i32 0, i32 128)
  %demod = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %cmp.not = icmp eq i32 %8, 255
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %cmd, align 4
  %conv = trunc i32 %8 to i8
  %demod5 = getelementptr inbounds %struct.anon.147, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %demod5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %demod5, align 2
  %call = call i32 @ddb_mci_cmd(ptr noundef %1, ptr noundef nonnull %cmd, ptr noundef null) #6
  %iq_mode = getelementptr inbounds %struct.sx8_base, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %iq_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %if.then7

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 69, ptr %cmd, align 4
  %14 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %demod, align 4
  %conv11 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %demod5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11, ptr %demod5, align 2
  %output = getelementptr inbounds %struct.anon.147, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %output, align 1
  %call14 = call i32 @ddb_mci_cmd(ptr noundef %1, ptr noundef nonnull %cmd, ptr noundef null) #6
  %call16 = call i32 @ddb_mci_config(ptr noundef %1, i32 noundef 1) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %tuner_lock = getelementptr inbounds %struct.mci_base, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %tuner_lock, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 1, i32 %5
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %dec = add i8 %19, -1
  store i8 %dec, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool20.not = icmp eq i8 %dec, 0
  br i1 %tobool20.not, label %if.then21, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %demodulator_priv, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd.i) #6
  %24 = call ptr @memset(ptr %cmd.i, i32 0, i32 128)
  %tuner2.i = getelementptr inbounds %struct.mci, ptr %21, i32 0, i32 4
  %25 = ptrtoint ptr %tuner2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tuner2.i, align 4
  %conv.i = trunc i32 %26 to i8
  %tuner3.i = getelementptr inbounds %struct.anon.147, ptr %cmd.i, i32 0, i32 1
  %27 = ptrtoint ptr %tuner3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %tuner3.i, align 1
  %28 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 65, ptr %cmd.i, align 4
  %arrayidx.i = getelementptr %struct.sx8_base, ptr %23, i32 0, i32 2, i32 %26
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %conv7.i = trunc i32 %30 to i8
  %31 = getelementptr inbounds %struct.mci_command, ptr %cmd.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv7.i, ptr %31, align 4
  %call.i = call i32 @ddb_mci_cmd(ptr noundef %21, ptr noundef nonnull %cmd.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd.i) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  %33 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %cmp26 = icmp slt i32 %34, 8
  br i1 %cmp26, label %if.then28, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx31 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %34
  %35 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx31, align 1
  %36 = ptrtoint ptr %demod to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 255, ptr %demod, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end23.if.end34_crit_edge
  %nr = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr, align 4
  %arrayidx36 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 %38
  %39 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx36, align 4
  %iq_mode37 = getelementptr inbounds %struct.sx8_base, ptr %3, i32 0, i32 5
  %40 = ptrtoint ptr %iq_mode37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %iq_mode37, align 4
  call void @mutex_unlock(ptr noundef %tuner_lock) #6
  %started = getelementptr inbounds %struct.sx8, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %started, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start(ptr nocapture noundef readonly %fe, i32 noundef %modmask, i32 noundef %ts_config) unnamed_addr #1 align 64 {
entry:
  %cmd.i = alloca %struct.mci_command, align 4
  %cmd = alloca %struct.mci_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd) #6
  %tuner = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %6 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64583332, i32 %7)
  %cmp = icmp ugt i32 %7, 64583332
  %spec.select = select i1 %cmp, i32 2, i32 3
  %and822 = and i32 %modmask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and822)
  %tobool9.not23 = icmp eq i32 %and822, 0
  br i1 %tobool9.not23, label %entry.if.end10_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %tmp.025 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %modmask, %entry.while.body_crit_edge ]
  %bits_per_symbol.024 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %shr = lshr i32 %tmp.025, 1
  %inc = add i32 %bits_per_symbol.024, 1
  %8 = and i32 %tmp.025, 2
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %while.body.if.end10_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %while.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  %bits_per_symbol.0.lcssa = phi i32 [ 1, %entry.if.end10_crit_edge ], [ %inc, %while.body.if.end10_crit_edge ]
  %tuner_lock = getelementptr inbounds %struct.mci_base, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tuner_lock, i32 noundef 0) #6
  %iq_mode = getelementptr inbounds %struct.sx8_base, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %iq_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.unlock.thread_crit_edge

if.end10.unlock.thread_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

if.end13:                                         ; preds = %if.end10
  %direct_mode = getelementptr inbounds %struct.sx8_base, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %direct_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %direct_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %for.body.preheader, label %if.then15

for.body.preheader:                               ; preds = %if.end13
  %arrayidx = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %add.1 = add i32 %16, %14
  %arrayidx.2 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  %add.2 = add i32 %18, %add.1
  %arrayidx.3 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %add.3 = add i32 %20, %add.2
  %arrayidx.4 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4, align 4
  %add.4 = add i32 %22, %add.3
  %arrayidx.5 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.5, align 4
  %add.5 = add i32 %24, %add.4
  %arrayidx.6 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.6, align 4
  %add.6 = add i32 %26, %add.5
  %arrayidx.7 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 7
  %27 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.7, align 4
  %add.7 = add i32 %28, %add.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 719999999, i32 %add.7)
  %cmp37 = icmp ugt i32 %add.7, 719999999
  br i1 %cmp37, label %for.body.preheader.unlock.thread_crit_edge, label %lor.lhs.false

for.body.preheader.unlock.thread_crit_edge:       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

if.then15:                                        ; preds = %if.end13
  %29 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64583332, i32 %30)
  %cmp17 = icmp ugt i32 %30, 64583332
  %nr = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp20 = icmp sgt i32 %32, 3
  %or.cond32 = select i1 %cmp17, i1 %cmp20, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp74 = icmp slt i32 %32, 0
  %or.cond33 = select i1 %or.cond32, i1 true, i1 %cmp74
  br i1 %or.cond33, label %if.then15.unlock.thread_crit_edge, label %if.then15.if.end77_crit_edge

if.then15.if.end77_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then15.unlock.thread_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

lor.lhs.false:                                    ; preds = %for.body.preheader
  %arrayidx31 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 0
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not = icmp ne i8 %34, 0
  %inc34 = zext i1 %tobool32.not to i32
  %arrayidx31.1 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx31.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool32.not.1 = icmp ne i8 %36, 0
  %inc34.1 = zext i1 %tobool32.not.1 to i32
  %spec.select2.1 = add nuw nsw i32 %inc34, %inc34.1
  %arrayidx31.2 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx31.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool32.not.2 = icmp ne i8 %38, 0
  %inc34.2 = zext i1 %tobool32.not.2 to i32
  %spec.select2.2 = add nuw nsw i32 %spec.select2.1, %inc34.2
  %arrayidx31.3 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx31.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool32.not.3 = icmp ne i8 %40, 0
  %inc34.3 = zext i1 %tobool32.not.3 to i32
  %spec.select2.3 = add nuw nsw i32 %spec.select2.2, %inc34.3
  %arrayidx31.4 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx31.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool32.not.4 = icmp ne i8 %42, 0
  %inc34.4 = zext i1 %tobool32.not.4 to i32
  %spec.select2.4 = add nuw nsw i32 %spec.select2.3, %inc34.4
  %arrayidx31.5 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 5
  %43 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx31.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool32.not.5 = icmp ne i8 %44, 0
  %inc34.5 = zext i1 %tobool32.not.5 to i32
  %spec.select2.5 = add nuw nsw i32 %spec.select2.4, %inc34.5
  %arrayidx31.6 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 6
  %45 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx31.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool32.not.6 = icmp ne i8 %46, 0
  %inc34.6 = zext i1 %tobool32.not.6 to i32
  %spec.select2.6 = add nuw nsw i32 %spec.select2.5, %inc34.6
  %arrayidx31.7 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 7
  %47 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx31.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool32.not.7 = icmp ne i8 %48, 0
  %inc34.7.neg = sext i1 %tobool32.not.7 to i32
  %and38 = and i32 %ts_config, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %cmp39.not = icmp eq i32 %and38, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select2.6, i32 %inc34.7.neg)
  %cmp40.not = icmp eq i32 %spec.select2.6, %inc34.7.neg
  %or.cond = select i1 %cmp39.not, i1 true, i1 %cmp40.not
  br i1 %or.cond, label %if.end42, label %lor.lhs.false.unlock.thread_crit_edge

lor.lhs.false.unlock.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

if.end42:                                         ; preds = %lor.lhs.false
  %sub = sub nuw nsw i32 720000000, %add.7
  %49 = tail call i32 @llvm.umin.i32(i32 %sub, i32 258333333)
  %50 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %symbol_rate, align 4
  br label %while.cond46

while.cond46:                                     ; preds = %while.cond46.while.cond46_crit_edge, %if.end42
  %bits_per_symbol.2 = phi i32 [ %bits_per_symbol.0.lcssa, %if.end42 ], [ %dec, %while.cond46.while.cond46_crit_edge ]
  %mul = mul i32 %51, %bits_per_symbol.2
  %cmp48 = icmp ugt i32 %mul, %49
  %dec = add i32 %bits_per_symbol.2, -1
  br i1 %cmp48, label %while.cond46.while.cond46_crit_edge, label %while.end50

while.cond46.while.cond46_crit_edge:              ; preds = %while.cond46
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond46

while.end50:                                      ; preds = %while.cond46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bits_per_symbol.2)
  %cmp51 = icmp ult i32 %bits_per_symbol.2, 2
  br i1 %cmp51, label %while.end50.unlock.thread_crit_edge, label %if.end53

while.end50.unlock.thread_crit_edge:              ; preds = %while.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

if.end53:                                         ; preds = %while.end50
  %notmask = shl nsw i32 -1, %dec
  %sub55 = xor i32 %notmask, -1
  %and56 = and i32 %sub55, %modmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp60 = icmp eq i32 %and56, 0
  br i1 %cmp60, label %if.end53.unlock.thread_crit_edge, label %if.end62

if.end53.unlock.thread_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

if.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 64583333, i32 %51)
  %cmp64 = icmp ugt i32 %51, 64583333
  %cond = select i1 %cmp64, i32 3, i32 7
  %arrayidx68 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %cond
  %52 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool69.not = icmp eq i8 %53, 0
  br i1 %tobool69.not, label %if.end62.if.end77_crit_edge, label %land.rhs.1

if.end62.if.end77_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

land.rhs.1:                                       ; preds = %if.end62
  %dec71 = add nsw i32 %cond, -1
  %arrayidx68.1 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %dec71
  %54 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx68.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool69.not.1 = icmp eq i8 %55, 0
  br i1 %tobool69.not.1, label %land.rhs.1.if.end77_crit_edge, label %land.rhs.2

land.rhs.1.if.end77_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

land.rhs.2:                                       ; preds = %land.rhs.1
  %dec71.1 = add nsw i32 %cond, -2
  %arrayidx68.2 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %dec71.1
  %56 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx68.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool69.not.2 = icmp eq i8 %57, 0
  br i1 %tobool69.not.2, label %land.rhs.2.if.end77_crit_edge, label %while.body70.2

land.rhs.2.if.end77_crit_edge:                    ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

while.body70.2:                                   ; preds = %land.rhs.2
  %dec71.2 = add nsw i32 %cond, -3
  %arrayidx68.3 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %dec71.2
  %58 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx68.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool69.not.3 = icmp eq i8 %59, 0
  br i1 %tobool69.not.3, label %while.body70.2.if.end77_crit_edge, label %while.body70.3

while.body70.2.if.end77_crit_edge:                ; preds = %while.body70.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

while.body70.3:                                   ; preds = %while.body70.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec71.2)
  %cmp66.3.not = icmp eq i32 %dec71.2, 0
  br i1 %cmp66.3.not, label %while.body70.3.unlock.thread_crit_edge, label %land.rhs.4

while.body70.3.unlock.thread_crit_edge:           ; preds = %while.body70.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

land.rhs.4:                                       ; preds = %while.body70.3
  %dec71.3 = add nsw i32 %cond, -4
  %arrayidx68.4 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %dec71.3
  %60 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx68.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool69.not.4 = icmp eq i8 %61, 0
  br i1 %tobool69.not.4, label %land.rhs.4.if.end77_crit_edge, label %while.body70.4

land.rhs.4.if.end77_crit_edge:                    ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

while.body70.4:                                   ; preds = %land.rhs.4
  br i1 %cmp64, label %while.body70.4.unlock.thread_crit_edge, label %land.rhs.5

while.body70.4.unlock.thread_crit_edge:           ; preds = %while.body70.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

land.rhs.5:                                       ; preds = %while.body70.4
  %dec71.4 = add nsw i32 %cond, -5
  %arrayidx68.5 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %dec71.4
  %62 = ptrtoint ptr %arrayidx68.5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx68.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool69.not.5 = icmp eq i8 %63, 0
  br i1 %tobool69.not.5, label %land.rhs.5.if.end77_crit_edge, label %land.rhs.6.critedge

land.rhs.5.if.end77_crit_edge:                    ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

land.rhs.6.critedge:                              ; preds = %land.rhs.5
  %dec71.5 = add nsw i32 %cond, -6
  %arrayidx68.6 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %dec71.5
  %64 = ptrtoint ptr %arrayidx68.6 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx68.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool69.not.6 = icmp eq i8 %65, 0
  br i1 %tobool69.not.6, label %land.rhs.6.critedge.if.end77_crit_edge, label %land.rhs.7.critedge

land.rhs.6.critedge.if.end77_crit_edge:           ; preds = %land.rhs.6.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

land.rhs.7.critedge:                              ; preds = %land.rhs.6.critedge
  %dec71.6 = add nsw i32 %cond, -7
  %arrayidx68.7 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %dec71.6
  %66 = ptrtoint ptr %arrayidx68.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx68.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool69.not.7 = icmp eq i8 %67, 0
  br i1 %tobool69.not.7, label %land.rhs.7.critedge.if.end77_crit_edge, label %land.rhs.7.critedge.unlock.thread_crit_edge

land.rhs.7.critedge.unlock.thread_crit_edge:      ; preds = %land.rhs.7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

land.rhs.7.critedge.if.end77_crit_edge:           ; preds = %land.rhs.7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.end77:                                         ; preds = %land.rhs.7.critedge.if.end77_crit_edge, %land.rhs.6.critedge.if.end77_crit_edge, %land.rhs.5.if.end77_crit_edge, %land.rhs.4.if.end77_crit_edge, %while.body70.2.if.end77_crit_edge, %land.rhs.2.if.end77_crit_edge, %land.rhs.1.if.end77_crit_edge, %if.end62.if.end77_crit_edge, %if.then15.if.end77_crit_edge
  %i.215 = phi i32 [ %32, %if.then15.if.end77_crit_edge ], [ %cond, %if.end62.if.end77_crit_edge ], [ %dec71, %land.rhs.1.if.end77_crit_edge ], [ %dec71.1, %land.rhs.2.if.end77_crit_edge ], [ %dec71.2, %while.body70.2.if.end77_crit_edge ], [ %dec71.3, %land.rhs.4.if.end77_crit_edge ], [ %dec71.4, %land.rhs.5.if.end77_crit_edge ], [ %dec71.5, %land.rhs.6.critedge.if.end77_crit_edge ], [ %dec71.6, %land.rhs.7.critedge.if.end77_crit_edge ]
  %bits_per_symbol.314 = phi i32 [ %bits_per_symbol.0.lcssa, %if.then15.if.end77_crit_edge ], [ %bits_per_symbol.2, %land.rhs.7.critedge.if.end77_crit_edge ], [ %bits_per_symbol.2, %land.rhs.6.critedge.if.end77_crit_edge ], [ %bits_per_symbol.2, %land.rhs.5.if.end77_crit_edge ], [ %bits_per_symbol.2, %land.rhs.4.if.end77_crit_edge ], [ %bits_per_symbol.2, %while.body70.2.if.end77_crit_edge ], [ %bits_per_symbol.2, %land.rhs.2.if.end77_crit_edge ], [ %bits_per_symbol.2, %land.rhs.1.if.end77_crit_edge ], [ %bits_per_symbol.2, %if.end62.if.end77_crit_edge ]
  %modmask.addr.013 = phi i32 [ %modmask, %if.then15.if.end77_crit_edge ], [ %and56, %land.rhs.7.critedge.if.end77_crit_edge ], [ %and56, %land.rhs.6.critedge.if.end77_crit_edge ], [ %and56, %land.rhs.5.if.end77_crit_edge ], [ %and56, %land.rhs.4.if.end77_crit_edge ], [ %and56, %while.body70.2.if.end77_crit_edge ], [ %and56, %land.rhs.2.if.end77_crit_edge ], [ %and56, %land.rhs.1.if.end77_crit_edge ], [ %and56, %if.end62.if.end77_crit_edge ]
  %arrayidx79 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 4, i32 %i.215
  %68 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %arrayidx79, align 1
  %69 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %symbol_rate, align 4
  %mul81 = mul i32 %70, %bits_per_symbol.314
  %nr84 = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %nr84 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr84, align 4
  %arrayidx85 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 3, i32 %72
  %73 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul81, ptr %arrayidx85, align 4
  %demod = getelementptr inbounds %struct.mci, ptr %1, i32 0, i32 3
  %74 = ptrtoint ptr %demod to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %i.215, ptr %demod, align 4
  %arrayidx87 = getelementptr %struct.sx8_base, ptr %3, i32 0, i32 1, i32 %5
  %75 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool88.not = icmp eq i8 %76, 0
  br i1 %tobool88.not, label %if.then89, label %if.end77.if.end100_crit_edge

if.end77.if.end100_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then89:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %demodulator_priv, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cmd.i) #6
  %81 = call ptr @memset(ptr %cmd.i, i32 0, i32 128)
  %tuner2.i = getelementptr inbounds %struct.mci, ptr %78, i32 0, i32 4
  %82 = ptrtoint ptr %tuner2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tuner2.i, align 4
  %conv.i = trunc i32 %83 to i8
  %tuner3.i = getelementptr inbounds %struct.anon.147, ptr %cmd.i, i32 0, i32 1
  %84 = ptrtoint ptr %tuner3.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.i, ptr %tuner3.i, align 1
  %85 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 64, ptr %cmd.i, align 4
  %arrayidx.i = getelementptr %struct.sx8_base, ptr %80, i32 0, i32 2, i32 %83
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %conv7.i = trunc i32 %87 to i8
  %88 = getelementptr inbounds %struct.mci_command, ptr %cmd.i, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv7.i, ptr %88, align 4
  %call.i = call i32 @ddb_mci_cmd(ptr noundef %78, ptr noundef nonnull %cmd.i, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd.i) #6
  br label %if.end100

unlock.thread:                                    ; preds = %land.rhs.7.critedge.unlock.thread_crit_edge, %while.body70.4.unlock.thread_crit_edge, %while.body70.3.unlock.thread_crit_edge, %if.end53.unlock.thread_crit_edge, %while.end50.unlock.thread_crit_edge, %lor.lhs.false.unlock.thread_crit_edge, %if.then15.unlock.thread_crit_edge, %for.body.preheader.unlock.thread_crit_edge, %if.end10.unlock.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %tuner_lock) #6
  br label %cleanup

if.end100:                                        ; preds = %if.then89, %if.end77.if.end100_crit_edge
  %90 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx87, align 1
  %inc93 = add i8 %91, 1
  store i8 %inc93, ptr %arrayidx87, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ts_config)
  %cmp94 = icmp ugt i32 %ts_config, 1
  %conv95 = zext i1 %cmp94 to i32
  %92 = ptrtoint ptr %iq_mode to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv95, ptr %iq_mode, align 4
  call void @mutex_unlock(ptr noundef %tuner_lock) #6
  %93 = call ptr @memset(ptr %cmd, i32 0, i32 128)
  %94 = ptrtoint ptr %iq_mode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool102.not = icmp eq i32 %95, 0
  br i1 %tobool102.not, label %if.end100.if.end112_crit_edge, label %if.then103

if.end100.if.end112_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 68, ptr %cmd, align 4
  %97 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %demod, align 4
  %conv106 = trunc i32 %98 to i8
  %demod107 = getelementptr inbounds %struct.anon.147, ptr %cmd, i32 0, i32 2
  %99 = ptrtoint ptr %demod107 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv106, ptr %demod107, align 2
  %call109 = call i32 @ddb_mci_cmd(ptr noundef %1, ptr noundef nonnull %cmd, ptr noundef null) #6
  %call111 = call i32 @ddb_mci_config(ptr noundef %1, i32 noundef %ts_config) #6
  br label %if.end112

if.end112:                                        ; preds = %if.then103, %if.end100.if.end112_crit_edge
  %stream_id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %100 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %stream_id, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %101, label %if.then119 [
    i32 -1, label %if.end112.do.body_crit_edge
    i32 -2147483648, label %if.end112.do.body_crit_edge36
  ]

if.end112.do.body_crit_edge36:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end112.do.body_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then119:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %spec.select, 128
  br label %do.body

do.body:                                          ; preds = %if.then119, %if.end112.do.body_crit_edge, %if.end112.do.body_crit_edge36
  %flags.addr.1 = phi i32 [ %or, %if.then119 ], [ %spec.select, %if.end112.do.body_crit_edge ], [ %spec.select, %if.end112.do.body_crit_edge36 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start, %if.then126)) #6
          to label %do.end [label %if.then126], !srcloc !23

if.then126:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mci_base, ptr %3, i32 0, i32 4
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %105 = ptrtoint ptr %nr84 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nr84, align 4
  %107 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tuner, align 4
  %109 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %demod, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start.__UNIQUE_ID_ddebug385, ptr noundef %104, ptr noundef nonnull @.str.3, i32 noundef %106, i32 noundef %108, i32 noundef %110) #6
  br label %do.end

do.end:                                           ; preds = %if.then126, %do.body
  %111 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 16, ptr %cmd, align 4
  %conv135 = trunc i32 %flags.addr.1 to i8
  %112 = getelementptr inbounds %struct.mci_command, ptr %cmd, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv135, ptr %112, align 4
  %conv137 = trunc i32 %modmask.addr.013 to i8
  %s2_modulation_mask = getelementptr inbounds %struct.anon.149, ptr %112, i32 0, i32 1
  %114 = ptrtoint ptr %s2_modulation_mask to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv137, ptr %s2_modulation_mask, align 1
  %retry = getelementptr inbounds %struct.anon.149, ptr %112, i32 0, i32 3
  %115 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 2, ptr %retry, align 1
  %116 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dtv_property_cache, align 4
  %mul138 = mul i32 %117, 1000
  %frequency139 = getelementptr inbounds %struct.mci_command, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %frequency139 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %mul138, ptr %frequency139, align 4
  %119 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %symbol_rate, align 4
  %symbol_rate141 = getelementptr inbounds %struct.mci_command, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %121 = ptrtoint ptr %symbol_rate141 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %symbol_rate141, align 4
  %scrambling_sequence_index = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 25
  %122 = ptrtoint ptr %scrambling_sequence_index to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %scrambling_sequence_index, align 4
  %or142 = or i32 %123, -2147483648
  %scrambling_sequence_index143 = getelementptr inbounds %struct.mci_command, ptr %cmd, i32 0, i32 1, i32 0, i32 4
  %124 = ptrtoint ptr %scrambling_sequence_index143 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or142, ptr %scrambling_sequence_index143, align 4
  %125 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %stream_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %cmp145.not = icmp eq i32 %126, -1
  %phi.cast = trunc i32 %126 to i8
  %spec.select3 = select i1 %cmp145.not, i8 0, i8 %phi.cast
  %input_stream_id = getelementptr inbounds %struct.mci_command, ptr %cmd, i32 0, i32 1, i32 0, i32 3
  %127 = ptrtoint ptr %input_stream_id to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %spec.select3, ptr %input_stream_id, align 4
  %128 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tuner, align 4
  %conv152 = trunc i32 %129 to i8
  %tuner153 = getelementptr inbounds %struct.anon.147, ptr %cmd, i32 0, i32 1
  %130 = ptrtoint ptr %tuner153 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv152, ptr %tuner153, align 1
  %131 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %demod, align 4
  %conv156 = trunc i32 %132 to i8
  %demod157 = getelementptr inbounds %struct.anon.147, ptr %cmd, i32 0, i32 2
  %133 = ptrtoint ptr %demod157 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv156, ptr %demod157, align 2
  %134 = ptrtoint ptr %nr84 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nr84, align 4
  %conv160 = trunc i32 %135 to i8
  %output161 = getelementptr inbounds %struct.anon.147, ptr %cmd, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %126)
  %cmp163 = icmp eq i32 %126, -2147483648
  %conv169 = or i8 %conv160, -128
  %spec.select20 = select i1 %cmp163, i8 %conv169, i8 %conv160
  %136 = ptrtoint ptr %output161 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %spec.select20, ptr %output161, align 1
  %call172 = call i32 @ddb_mci_cmd(ptr noundef %1, ptr noundef nonnull %cmd, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %do.end.cleanup_crit_edge, label %if.then174

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then174:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stop(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %if.then174, %do.end.cleanup_crit_edge, %unlock.thread
  %retval.0 = phi i32 [ %call172, %if.then174 ], [ 0, %do.end.cleanup_crit_edge ], [ -16, %unlock.thread ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_mci_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddb_mci_config(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @ddb_max_sx8_cfg, !1, !"ddb_max_sx8_cfg", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ddbridge/ddbridge-sx8.c", i32 479, i32 22}
!2 = !{ptr @sx8_ops, !3, !"sx8_ops", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ddbridge/ddbridge-sx8.c", i32 451, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/ddbridge/ddbridge-sx8.c", i32 286, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @start.__UNIQUE_ID_ddebug385, !5, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ddbridge/ddbridge-sx8.c", i32 447, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @set_input.__UNIQUE_ID_ddebug386, !11, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2148742569, i64 2148742574, i64 2148742587, i64 2148742631, i64 2148742665, i64 2148742686}
