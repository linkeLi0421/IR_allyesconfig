; ModuleID = '/llk/IR_all_yes/drivers/media/firewire/firedtv-ci.c_pt.bc'
source_filename = "../drivers/media/firewire/firedtv-ci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firedtv_tuner_status = type { i24, [12 x i8], i32 }
%struct.firedtv = type { ptr, %struct.list_head, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dvb_net, %struct.dvb_frontend, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i8, %struct.work_struct, ptr, i32, i8, i8, ptr, i32, i32, %struct.mutex, i32, [16 x i16], i32, [512 x i8] }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ca_caps = type { i32, i32, i32, i32 }
%struct.ca_slot_info = type { i32, i32, i32 }
%struct.ca_msg = type { i32, i32, i32, [256 x i8] }

@fdtv_ca = internal constant { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @fdtv_ca_fops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr @fdtv_ca_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fdtv_ca_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CaApplicationInfo is not set\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fdtv_ca_register\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/firewire/firedtv-ci.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fdtv_ca_register._entry_ptr = internal global ptr @fdtv_ca_register._entry, section ".printk_index", align 4
@fdtv_ca_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdtv_ca_io_poll, ptr @dvb_generic_ioctl, ptr null, ptr null, i32 0, ptr @dvb_generic_open, ptr null, ptr @dvb_generic_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fdtv_ca_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 198, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unhandled CA ioctl %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fdtv_ca_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fdtv_ca_ioctl._entry_ptr = internal global ptr @fdtv_ca_ioctl._entry, section ".printk_index", align 4
@fdtv_ca_get_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 114, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unhandled CA message 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fdtv_ca_get_msg\00", [16 x i8] zeroinitializer }, align 32
@fdtv_ca_get_msg._entry_ptr = internal global ptr @fdtv_ca_get_msg._entry, section ".printk_index", align 4
@fdtv_ca_send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fdtv_ca_send_msg\00", [47 x i8] zeroinitializer }, align 32
@fdtv_ca_send_msg._entry_ptr = internal global ptr @fdtv_ca_send_msg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 28544, i64 1091334021, i64 2148298626, i64 2148560769, i64 2165075844]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 10453024, i64 10453040]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 8, i64 9]
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"fdtv_ca\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 222, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 245, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"fdtv_ca_fops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 213, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 198, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 113, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [39 x i8] c"../drivers/media/firewire/firedtv-ci.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 167, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @fdtv_ca_get_msg._entry, ptr @fdtv_ca_get_msg._entry_ptr, ptr @fdtv_ca_ioctl._entry, ptr @fdtv_ca_ioctl._entry_ptr, ptr @fdtv_ca_register._entry, ptr @fdtv_ca_register._entry_ptr, ptr @fdtv_ca_send_msg._entry, ptr @fdtv_ca_send_msg._entry_ptr, ptr @fdtv_ca, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fdtv_ca_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_ca to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_ca_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_ca_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_ca_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_ca_get_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdtv_ca_send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdtv_ca_register(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.firedtv_tuner_status, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat) #6
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_storeN_noabort(i32 %0, i32 3)
  store i24 -1, ptr %stat, align 4, !annotation !36
  %1 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 1
  %2 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 2
  %3 = call ptr @memset(ptr %1, i32 255, i32 16)
  %call = call i32 @avc_tuner_status(ptr noundef %fdtv, ptr noundef nonnull %stat) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %2, align 4
  %5 = and i32 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %5)
  %.not = icmp eq i32 %5, 13
  br i1 %.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %adapter = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 2
  %cadev = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 8
  %call5 = call i32 @dvb_register_device(ptr noundef %adapter, ptr noundef %cadev, ptr noundef nonnull @fdtv_ca, ptr noundef %fdtv, i32 noundef 4, i32 noundef 0) #6
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %2, align 4
  %7 = and i32 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fdtv, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end4.if.end7_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load8 = load i32, ptr %2, align 4
  %11 = and i32 %bf.load8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11.not = icmp eq i32 %11, 0
  br i1 %cmp11.not, label %if.end7.cleanup_crit_edge, label %if.then12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %ca_time_interval = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 10
  %call13 = call i32 @avc_ca_get_time_date(ptr noundef %fdtv, ptr noundef %ca_time_interval) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ %call5, %if.then12 ], [ %call5, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_tuner_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ca_get_time_date(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fdtv_ca_release(ptr nocapture noundef readonly %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cadev = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 8
  %0 = ptrtoint ptr %cadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cadev, align 4
  tail call void @dvb_unregister_device(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fdtv_ca_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  %stat.i19 = alloca %struct.firedtv_tuner_status, align 4
  %stat.i = alloca %struct.firedtv_tuner_status, align 4
  %stat = alloca %struct.firedtv_tuner_status, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat) #6
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_storeN_noabort(i32 %4, i32 3)
  store i24 -1, ptr %stat, align 4, !annotation !36
  %5 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 1
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end [
    i32 28544, label %sw.bb
    i32 -2146406527, label %sw.bb1
    i32 -2146668670, label %sw.bb3
    i32 -2129891452, label %sw.bb5
    i32 1091334021, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @avc_ca_reset(ptr noundef %3) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arg, align 4
  %slot_type.i = getelementptr inbounds %struct.ca_caps, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %slot_type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %slot_type.i, align 4
  %descr_num.i = getelementptr inbounds %struct.ca_caps, ptr %arg, i32 0, i32 2
  %10 = ptrtoint ptr %descr_num.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %descr_num.i, align 4
  %descr_type.i = getelementptr inbounds %struct.ca_caps, ptr %arg, i32 0, i32 3
  %11 = ptrtoint ptr %descr_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %descr_type.i, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat.i) #6
  %12 = ptrtoint ptr %stat.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 3)
  store i24 -1, ptr %stat.i, align 4, !annotation !36
  %13 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat.i, i32 0, i32 2
  %15 = call ptr @memset(ptr %13, i32 255, i32 16)
  %call.i = call i32 @avc_tuner_status(ptr noundef %3, ptr noundef nonnull %stat.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.fdtv_ca_get_slot_info.exit_crit_edge

sw.bb3.fdtv_ca_get_slot_info.exit_crit_edge:      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdtv_ca_get_slot_info.exit

if.end.i:                                         ; preds = %sw.bb3
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.fdtv_ca_get_slot_info.exit_crit_edge

if.end.i.fdtv_ca_get_slot_info.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdtv_ca_get_slot_info.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %type.i = getelementptr inbounds %struct.ca_slot_info, ptr %arg, i32 0, i32 1
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i.i = load i32, ptr %14, align 4
  %20 = lshr i32 %bf.load.i.i, 3
  %.lobit.i.i = and i32 %20, 1
  %21 = and i32 %bf.load.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %.not.i.i = icmp eq i32 %21, 5
  %or14.i.i = or i32 %.lobit.i.i, 2
  %flags.1.i.i = select i1 %.not.i.i, i32 %or14.i.i, i32 %.lobit.i.i
  %flags.i = getelementptr inbounds %struct.ca_slot_info, ptr %arg, i32 0, i32 2
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %flags.1.i.i, ptr %flags.i, align 4
  br label %fdtv_ca_get_slot_info.exit

fdtv_ca_get_slot_info.exit:                       ; preds = %if.end2.i, %if.end.i.fdtv_ca_get_slot_info.exit_crit_edge, %sw.bb3.fdtv_ca_get_slot_info.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ %call.i, %sw.bb3.fdtv_ca_get_slot_info.exit_crit_edge ], [ -13, %if.end.i.fdtv_ca_get_slot_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat.i) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stat.i19) #6
  %23 = ptrtoint ptr %stat.i19 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 3)
  store i24 -1, ptr %stat.i19, align 4, !annotation !36
  %24 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat.i19, i32 0, i32 1
  %25 = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat.i19, i32 0, i32 2
  %ca_last_command.i = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 9
  %26 = call ptr @memset(ptr %24, i32 255, i32 16)
  %27 = ptrtoint ptr %ca_last_command.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ca_last_command.i, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %28, label %sw.default.i [
    i32 10453024, label %sw.bb.i
    i32 10453040, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %msg.i.i = getelementptr inbounds %struct.ca_msg, ptr %arg, i32 0, i32 3
  %length.i.i = getelementptr inbounds %struct.ca_msg, ptr %arg, i32 0, i32 2
  %call.i.i = tail call i32 @avc_ca_app_info(ptr noundef %3, ptr noundef %msg.i.i, ptr noundef %length.i.i) #6
  br label %fdtv_ca_get_msg.exit

sw.bb1.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %msg.i19.i = getelementptr inbounds %struct.ca_msg, ptr %arg, i32 0, i32 3
  %length.i20.i = getelementptr inbounds %struct.ca_msg, ptr %arg, i32 0, i32 2
  %call.i21.i = tail call i32 @avc_ca_info(ptr noundef %3, ptr noundef %msg.i19.i, ptr noundef %length.i20.i) #6
  br label %fdtv_ca_get_msg.exit

sw.default.i:                                     ; preds = %sw.bb5
  %call3.i = call i32 @avc_tuner_status(ptr noundef %3, ptr noundef nonnull %stat.i19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i20 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i20, label %if.end.i22, label %sw.default.i.fdtv_ca_get_msg.exit_crit_edge

sw.default.i.fdtv_ca_get_msg.exit_crit_edge:      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fdtv_ca_get_msg.exit

if.end.i22:                                       ; preds = %sw.default.i
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i = load i32, ptr %25, align 4
  %31 = and i32 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not.i21 = icmp eq i32 %31, 0
  br i1 %cmp.not.i21, label %do.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  %msg.i22.i = getelementptr inbounds %struct.ca_msg, ptr %arg, i32 0, i32 3
  %length.i23.i = getelementptr inbounds %struct.ca_msg, ptr %arg, i32 0, i32 2
  %call.i24.i = call i32 @avc_ca_get_mmi(ptr noundef %3, ptr noundef %msg.i22.i, ptr noundef %length.i23.i) #6
  br label %fdtv_ca_get_msg.exit

do.end.i:                                         ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %34 = ptrtoint ptr %ca_last_command.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ca_last_command.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.8, i32 noundef %35) #9
  br label %fdtv_ca_get_msg.exit

fdtv_ca_get_msg.exit:                             ; preds = %do.end.i, %if.then4.i, %sw.default.i.fdtv_ca_get_msg.exit_crit_edge, %sw.bb1.i, %sw.bb.i
  %err.0.i = phi i32 [ %call3.i, %sw.default.i.fdtv_ca_get_msg.exit_crit_edge ], [ %call.i24.i, %if.then4.i ], [ -13, %do.end.i ], [ %call.i21.i, %sw.bb1.i ], [ %call.i.i, %sw.bb.i ]
  %36 = ptrtoint ptr %ca_last_command.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ca_last_command.i, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat.i19) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %msg1.i = getelementptr inbounds %struct.ca_msg, ptr %arg, i32 0, i32 3
  %37 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %msg1.i, align 4
  %conv.i = zext i8 %38 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx3.i = getelementptr %struct.ca_msg, ptr %arg, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %40 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %add.i = or i32 %shl5.i, %shl.i
  %arrayidx7.i = getelementptr %struct.ca_msg, ptr %arg, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx7.i, align 2
  %conv8.i = zext i8 %42 to i32
  %add9.i = or i32 %add.i, %conv8.i
  %ca_last_command.i23 = getelementptr inbounds %struct.firedtv, ptr %3, i32 0, i32 9
  %43 = ptrtoint ptr %ca_last_command.i23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add9.i, ptr %ca_last_command.i23, align 8
  %44 = add nsw i32 %add9.i, -10453024
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 31) #6
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %45, label %do.end.i26 [
    i32 9, label %sw.bb.i24
    i32 0, label %sw.bb7.sw.epilog_crit_edge
    i32 8, label %sw.bb7.sw.epilog_crit_edge28
    i32 1, label %sw.bb13.i
  ]

sw.bb7.sw.epilog_crit_edge28:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i24:                                        ; preds = %sw.bb7
  %arrayidx.i.i = getelementptr %struct.ca_msg, ptr %arg, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %48 to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i24.if.end.i.i_crit_edge, label %for.cond.preheader.i.i

sw.bb.i24.if.end.i.i_crit_edge:                   ; preds = %sw.bb.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

for.cond.preheader.i.i:                           ; preds = %sw.bb.i24
  %49 = and i8 %48, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp32.not.i.i = icmp eq i8 %49, 0
  br i1 %cmp32.not.i.i, label %for.cond.preheader.i.i.if.end17.i.i_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.if.end17.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %narrow.i.i = add nuw i8 %49, 4
  %50 = zext i8 %narrow.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %data_length.034.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %data_pos.033.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 4, %for.body.preheader.i.i ]
  %shl.i.i = shl i32 %data_length.034.i.i, 8
  %inc.i.i = add nuw nsw i32 %data_pos.033.i.i, 1
  %arrayidx8.i.i = getelementptr %struct.ca_msg, ptr %arg, i32 0, i32 3, i32 %data_pos.033.i.i
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %52 to i32
  %add.i.i = or i32 %shl.i.i, %conv9.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %50
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %sw.bb.i24.if.end.i.i_crit_edge
  %data_pos.1.i.i = phi i32 [ 4, %sw.bb.i24.if.end.i.i_crit_edge ], [ %50, %for.body.i.i.if.end.i.i_crit_edge ]
  %data_length.1.i.i = phi i32 [ %conv.i.i, %sw.bb.i24.if.end.i.i_crit_edge ], [ %add.i.i, %for.body.i.i.if.end.i.i_crit_edge ]
  %sub.i.i = sub nuw nsw i32 256, %data_pos.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %data_length.1.i.i, i32 %sub.i.i)
  %cmp14.i.i = icmp ugt i32 %data_length.1.i.i, %sub.i.i
  br i1 %cmp14.i.i, label %if.end.i.i.sw.epilog_crit_edge, label %if.end.i.i.if.end17.i.i_crit_edge

if.end.i.i.if.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end17.i.i:                                     ; preds = %if.end.i.i.if.end17.i.i_crit_edge, %for.cond.preheader.i.i.if.end17.i.i_crit_edge
  %data_length.142.i.i = phi i32 [ %data_length.1.i.i, %if.end.i.i.if.end17.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.if.end17.i.i_crit_edge ]
  %data_pos.141.i.i = phi i32 [ %data_pos.1.i.i, %if.end.i.i.if.end17.i.i_crit_edge ], [ 4, %for.cond.preheader.i.i.if.end17.i.i_crit_edge ]
  %arrayidx19.i.i = getelementptr %struct.ca_msg, ptr %arg, i32 0, i32 3, i32 %data_pos.141.i.i
  %call.i.i25 = tail call i32 @avc_ca_pmt(ptr noundef %3, ptr noundef %arrayidx19.i.i, i32 noundef %data_length.142.i.i) #6
  br label %sw.epilog

sw.bb13.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @avc_ca_enter_menu(ptr noundef %3) #6
  br label %sw.epilog

do.end.i26:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.8, i32 noundef %add9.i) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.5, i32 noundef %cmd) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.end.i26, %sw.bb13.i, %if.end17.i.i, %if.end.i.i.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge28, %fdtv_ca_get_msg.exit, %fdtv_ca_get_slot_info.exit, %sw.bb1, %sw.bb
  %err.0 = phi i32 [ -95, %do.end ], [ %err.0.i, %fdtv_ca_get_msg.exit ], [ %retval.0.i, %fdtv_ca_get_slot_info.exit ], [ 0, %sw.bb1 ], [ %call, %sw.bb ], [ -13, %do.end.i26 ], [ %call14.i, %sw.bb13.i ], [ 0, %sw.bb7.sw.epilog_crit_edge ], [ 0, %sw.bb7.sw.epilog_crit_edge28 ], [ %call.i.i25, %if.end17.i.i ], [ -22, %if.end.i.i.sw.epilog_crit_edge ]
  %call9 = call i32 @avc_tuner_status(ptr noundef %3, ptr noundef nonnull %stat) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stat) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fdtv_ca_io_poll(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ca_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ca_app_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ca_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ca_get_mmi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ca_enter_menu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_ca_pmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/firewire/firedtv-ci.c", i32 245, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fdtv_ca_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fdtv_ca_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @fdtv_ca, !9, !"fdtv_ca", i1 false, i1 false}
!9 = !{!"../drivers/media/firewire/firedtv-ci.c", i32 222, i32 32}
!10 = !{ptr @fdtv_ca_fops, !11, !"fdtv_ca_fops", i1 false, i1 false}
!11 = !{!"../drivers/media/firewire/firedtv-ci.c", i32 213, i32 37}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/firewire/firedtv-ci.c", i32 198, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fdtv_ca_ioctl._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @fdtv_ca_ioctl._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/firewire/firedtv-ci.c", i32 113, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fdtv_ca_get_msg._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @fdtv_ca_get_msg._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/firewire/firedtv-ci.c", i32 167, i32 3}
!25 = !{ptr @fdtv_ca_send_msg._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @fdtv_ca_send_msg._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
