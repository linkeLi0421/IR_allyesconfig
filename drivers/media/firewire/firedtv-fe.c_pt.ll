; ModuleID = '/llk/IR_all_yes/drivers/media/firewire/firedtv-fe.c_pt.bc'
source_filename = "../drivers/media/firewire/firedtv-fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.firedtv = type { ptr, %struct.list_head, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dvb_net, %struct.dvb_frontend, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i8, %struct.work_struct, ptr, i32, i8, i8, ptr, i32, i32, %struct.mutex, i32, [16 x i16], i32, [512 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.131], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.131 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.132 }>
%union.anon.132 = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.firedtv_tuner_status = type { i24, [12 x i8], i32 }

@fdtv_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no frontend for model type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fdtv_frontend_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/firewire/firedtv-fe.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fdtv_frontend_init._entry_ptr = internal global ptr @fdtv_frontend_init._entry, section ".printk_index", align 4
@fdtv_dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not establish point to point connection\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fdtv_dvb_init\00", [18 x i8] zeroinitializer }, align 32
@fdtv_dvb_init._entry_ptr = internal global ptr @fdtv_dvb_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 243, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [39 x i8] c"../drivers/media/firewire/firedtv-fe.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 30, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @fdtv_dvb_init._entry, ptr @fdtv_dvb_init._entry_ptr, ptr @fdtv_frontend_init._entry, ptr @fdtv_frontend_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fdtv_frontend_init(ptr noundef %fdtv, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 5
  %0 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fdtv_dvb_init, ptr %init, align 4
  %sleep = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 6
  %1 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fdtv_sleep, ptr %sleep, align 4
  %set_frontend = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 12
  %2 = ptrtoint ptr %set_frontend to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fdtv_set_frontend, ptr %set_frontend, align 4
  %read_status = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 15
  %3 = ptrtoint ptr %read_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fdtv_read_status, ptr %read_status, align 4
  %read_ber = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 16
  %4 = ptrtoint ptr %read_ber to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @fdtv_read_ber, ptr %read_ber, align 4
  %read_signal_strength = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 17
  %5 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @fdtv_read_signal_strength, ptr %read_signal_strength, align 4
  %read_snr = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 18
  %6 = ptrtoint ptr %read_snr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fdtv_read_snr, ptr %read_snr, align 4
  %read_ucblocks = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 19
  %7 = ptrtoint ptr %read_ucblocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fdtv_read_uncorrected_blocks, ptr %read_ucblocks, align 4
  %diseqc_send_master_cmd = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 21
  %8 = ptrtoint ptr %diseqc_send_master_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fdtv_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd, align 4
  %diseqc_send_burst = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 23
  %9 = ptrtoint ptr %diseqc_send_burst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fdtv_diseqc_send_burst, ptr %diseqc_send_burst, align 4
  %set_tone = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 24
  %10 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fdtv_set_tone, ptr %set_tone, align 4
  %set_voltage = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 25
  %11 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fdtv_set_voltage, ptr %set_voltage, align 4
  %type = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 16
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 2, label %sw.bb13
    i32 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %delsys = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 1
  %15 = ptrtoint ptr %delsys to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %delsys, align 4
  %frequency_min_hz = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %frequency_min_hz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 950000000, ptr %frequency_min_hz, align 4
  %frequency_max_hz = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %frequency_max_hz to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -2144967296, ptr %frequency_max_hz, align 4
  %frequency_stepsize_hz = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %frequency_stepsize_hz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 125000, ptr %frequency_stepsize_hz, align 4
  %symbol_rate_min = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %symbol_rate_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1000000, ptr %symbol_rate_min, align 4
  %symbol_rate_max = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 6
  %20 = ptrtoint ptr %symbol_rate_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 40000000, ptr %symbol_rate_max, align 4
  %caps = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 8
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1711, ptr %caps, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %delsys3 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 1
  %22 = ptrtoint ptr %delsys3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %delsys3, align 4
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 6, ptr %arrayidx6, align 1
  %frequency_min_hz7 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %frequency_min_hz7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 950000000, ptr %frequency_min_hz7, align 4
  %frequency_max_hz8 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %frequency_max_hz8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2144967296, ptr %frequency_max_hz8, align 4
  %frequency_stepsize_hz9 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %frequency_stepsize_hz9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 125000, ptr %frequency_stepsize_hz9, align 4
  %symbol_rate_min10 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %symbol_rate_min10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1000000, ptr %symbol_rate_min10, align 4
  %symbol_rate_max11 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 6
  %28 = ptrtoint ptr %symbol_rate_max11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 40000000, ptr %symbol_rate_max11, align 4
  %caps12 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 8
  %29 = ptrtoint ptr %caps12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 268437167, ptr %caps12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %delsys14 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 1
  %30 = ptrtoint ptr %delsys14 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %delsys14, align 4
  %frequency_min_hz16 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %frequency_min_hz16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 47000000, ptr %frequency_min_hz16, align 4
  %frequency_max_hz17 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %frequency_max_hz17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 866000000, ptr %frequency_max_hz17, align 4
  %frequency_stepsize_hz18 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %frequency_stepsize_hz18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 62500, ptr %frequency_stepsize_hz18, align 4
  %symbol_rate_min19 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %symbol_rate_min19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 870000, ptr %symbol_rate_min19, align 4
  %symbol_rate_max20 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 6
  %35 = ptrtoint ptr %symbol_rate_max20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6900000, ptr %symbol_rate_max20, align 4
  %caps21 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 8
  %36 = ptrtoint ptr %caps21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 129025, ptr %caps21, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %delsys23 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 1
  %37 = ptrtoint ptr %delsys23 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %delsys23, align 4
  %frequency_min_hz25 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %frequency_min_hz25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 49000000, ptr %frequency_min_hz25, align 4
  %frequency_max_hz26 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %frequency_max_hz26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 861000000, ptr %frequency_max_hz26, align 4
  %frequency_stepsize_hz27 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %frequency_stepsize_hz27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 62500, ptr %frequency_stepsize_hz27, align 4
  %caps28 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1, i32 0, i32 8
  %41 = ptrtoint ptr %caps28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1703941, ptr %caps28, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str, i32 noundef %13) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb22, %sw.bb13, %sw.bb2, %sw.bb
  %ops1 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 1
  %call = tail call i32 @strscpy(ptr noundef %ops1, ptr noundef %name, i32 noundef 128) #6
  %adapter = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 2
  %dvb = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %dvb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %adapter, ptr %dvb, align 4
  %sec_priv = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 6
  %45 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %fdtv, ptr %sec_priv, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_dvb_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %adapter = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adapter, align 4
  %conv = trunc i32 %3 to i8
  %isochannel = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %isochannel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %isochannel, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %subunit, align 8
  %conv1 = zext i8 %6 to i32
  %sext = shl i32 %3, 24
  %conv3 = ashr exact i32 %sext, 24
  %call = tail call i32 @cmp_establish_pp_connection(ptr noundef %1, i32 noundef %conv1, i32 noundef %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @fdtv_start_iso(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  tail call void @fdtv_stop_iso(ptr noundef %1) #6
  %subunit = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %subunit, align 8
  %conv = zext i8 %3 to i32
  %isochannel = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %isochannel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %isochannel, align 1
  %conv1 = sext i8 %5 to i32
  tail call void @cmp_break_pp_connection(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1) #6
  %6 = ptrtoint ptr %isochannel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %isochannel, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %call = tail call i32 @avc_tuner_dsd(ptr noundef %1, ptr noundef %dtv_property_cache) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %stat = alloca %struct.firedtv_tuner_status, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat) #6
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_storeN_noabort(i32 %2, i32 3)
  store i24 -1, ptr %stat, align 4, !annotation !22
  %3 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 1
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %call = call i32 @avc_tuner_status(ptr noundef %1, ptr noundef nonnull %stat) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %stat, align 4
  %6 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  %. = select i1 %tobool1.not, i32 31, i32 0
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %stat = alloca %struct.firedtv_tuner_status, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat) #6
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_storeN_noabort(i32 %2, i32 3)
  store i24 -1, ptr %stat, align 4, !annotation !22
  %3 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 1
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %call = call i32 @avc_tuner_status(ptr noundef %1, ptr noundef nonnull %stat) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 12)
  %bf.load = load i96, ptr %3, align 4
  %bf.lshr = lshr i96 %bf.load, 64
  %bf.cast = trunc i96 %bf.lshr to i32
  %6 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bf.cast, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %stat = alloca %struct.firedtv_tuner_status, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat) #6
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_storeN_noabort(i32 %2, i32 3)
  store i24 -1, ptr %stat, align 4, !annotation !22
  %3 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 1
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %call = call i32 @avc_tuner_status(ptr noundef %1, ptr noundef nonnull %stat) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 12)
  %bf.load = load i96, ptr %3, align 4
  %sh.diff = lshr i96 %bf.load, 48
  %tr.sh.diff = trunc i96 %sh.diff to i16
  %shl = and i16 %tr.sh.diff, -256
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %shl, ptr %strength, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %stat = alloca %struct.firedtv_tuner_status, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat) #6
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_storeN_noabort(i32 %2, i32 3)
  store i24 -1, ptr %stat, align 4, !annotation !22
  %3 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 1
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %call = call i32 @avc_tuner_status(ptr noundef %1, ptr noundef nonnull %stat) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 12)
  %bf.load = load i96, ptr %3, align 4
  %6 = lshr i96 %bf.load, 4
  %7 = trunc i96 %6 to i16
  %conv = mul i16 %7, 257
  %8 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %snr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdtv_read_uncorrected_blocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %ucblocks) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %call = tail call i32 @avc_lnb_control(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 1, ptr noundef %cmd) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdtv_diseqc_send_burst(ptr nocapture noundef readnone %fe, i32 noundef %minicmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdtv_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %tone1 = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %tone1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tone, ptr %tone1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdtv_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %voltage1 = getelementptr inbounds %struct.firedtv, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %voltage1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %voltage, ptr %voltage1, align 8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_establish_pp_connection(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdtv_start_iso(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdtv_stop_iso(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_break_pp_connection(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_tuner_dsd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_tuner_status(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_lnb_control(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/firewire/firedtv-fe.c", i32 243, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fdtv_frontend_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fdtv_frontend_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/firewire/firedtv-fe.c", i32 30, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @fdtv_dvb_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @fdtv_dvb_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
