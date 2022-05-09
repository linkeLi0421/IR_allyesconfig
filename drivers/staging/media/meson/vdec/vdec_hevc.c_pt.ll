; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/vdec_hevc.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/vdec_hevc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amvdec_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amvdec_session = type { ptr, %struct.v4l2_fh, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.v4l2_fract, %struct.atomic_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, ptr, i32, i32, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i64, i32, i32, [32 x i32], i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_fract = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amvdec_format = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x i32] }
%struct.amvdec_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vdec_platform = type { ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.amvdec_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vdec_hevc_ops = dso_local global { %struct.amvdec_ops, [16 x i8] } { %struct.amvdec_ops { ptr @vdec_hevc_start, ptr @vdec_hevc_stop, ptr @vdec_hevc_conf_esparser, ptr @vdec_hevc_vififo_level }, [16 x i8] zeroinitializer }, align 32
@vdec_hevc_load_firmware.mc_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vdec_hevc_load_firmware.mc_addr_map = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vdec_hevc_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to request firmware %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdec_hevc_load_firmware\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/media/meson/vdec/vdec_hevc.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vdec_hevc_load_firmware._entry_ptr = internal global ptr @vdec_hevc_load_firmware._entry, section ".printk_index", align 4
@vdec_hevc_load_firmware._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware size %zu is too small. Expected %u.\0A\00", [50 x i8] zeroinitializer }, align 32
@vdec_hevc_load_firmware._entry_ptr.7 = internal global ptr @vdec_hevc_load_firmware._entry.5, section ".printk_index", align 4
@vdec_hevc_load_firmware._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Firmware load fail (DMA hang?)\0A\00", [32 x i8] zeroinitializer }, align 32
@vdec_hevc_load_firmware._entry_ptr.10 = internal global ptr @vdec_hevc_load_firmware._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"vdec_hevc_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 226, i32 19 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"mc_addr\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 32, i32 15 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"mc_addr_map\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 33, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 39, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 44, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [48 x i8] c"../drivers/staging/media/meson/vdec/vdec_hevc.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 70, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @vdec_hevc_load_firmware._entry, ptr @vdec_hevc_load_firmware._entry.5, ptr @vdec_hevc_load_firmware._entry.8, ptr @vdec_hevc_load_firmware._entry_ptr, ptr @vdec_hevc_load_firmware._entry_ptr.10, ptr @vdec_hevc_load_firmware._entry_ptr.7, ptr @vdec_hevc_ops, ptr @vdec_hevc_load_firmware.mc_addr, ptr @vdec_hevc_load_firmware.mc_addr_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hevc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hevc_load_firmware.mc_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hevc_load_firmware.mc_addr_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hevc_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hevc_load_firmware._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hevc_load_firmware._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_hevc_start(ptr noundef %sess) #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops2 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops2, align 4
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %revision, align 4
  %.off = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %vdec_hevcf_clk = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %vdec_hevcf_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdec_hevcf_clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 666666666) #5
  %12 = ptrtoint ptr %vdec_hevcf_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdec_hevcf_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9_crit_edge, label %if.then3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %vdec_hevc_clk = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %vdec_hevc_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdec_hevc_clk, align 4
  %call10 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef 666666666) #5
  %16 = ptrtoint ptr %vdec_hevc_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdec_hevc_clk, align 4
  %call.i80 = tail call i32 @clk_prepare(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end.i84, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i84:                                       ; preds = %if.end9
  %call1.i82 = tail call i32 @clk_enable(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool2.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool2.not.i83, label %if.end15, label %if.then3.i85

if.then3.i85:                                     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end.i84
  %18 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform, align 4
  %revision17 = getelementptr inbounds %struct.vdec_platform, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %revision17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %revision17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp18 = icmp eq i32 %21, 4
  %regmap_ao = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap_ao, align 4
  %. = select i1 %cmp18, i32 4, i32 192
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 232, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64720, i32 noundef -1) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64720, i32 noundef 0) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64724, i32 noundef -1) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64716, i32 noundef 0) #5
  %24 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform, align 4
  %revision25 = getelementptr inbounds %struct.vdec_platform, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %revision25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %revision25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp26 = icmp eq i32 %27, 4
  %.sink107 = select i1 %cmp26, i32 4, i32 3072
  %regmap_ao31 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %regmap_ao31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap_ao31, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 236, i32 noundef %.sink107, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64720, i32 noundef -1) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64720, i32 noundef 0) #5
  %30 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sess, align 8
  %call.i92 = tail call i32 @amvdec_read_dos(ptr noundef %31, i32 noundef 50180) #5
  %and.i = and i32 %call.i92, -2
  tail call void @amvdec_write_dos(ptr noundef %31, i32 noundef 50180, i32 noundef %and.i) #5
  %vififo_paddr.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 30
  %32 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vififo_paddr.i, align 8
  tail call void @amvdec_write_dos(ptr noundef %31, i32 noundef 50184, i32 noundef %33) #5
  %34 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vififo_paddr.i, align 8
  %vififo_size.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 31
  %36 = ptrtoint ptr %vififo_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vififo_size.i, align 4
  %add.i = add i32 %37, %35
  tail call void @amvdec_write_dos(ptr noundef %31, i32 noundef 50188, i32 noundef %add.i) #5
  %38 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vififo_paddr.i, align 8
  tail call void @amvdec_write_dos(ptr noundef %31, i32 noundef 50196, i32 noundef %39) #5
  %40 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vififo_paddr.i, align 8
  tail call void @amvdec_write_dos(ptr noundef %31, i32 noundef 50192, i32 noundef %41) #5
  %42 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fmt_out, align 4
  %firmware_path = getelementptr inbounds %struct.amvdec_format, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %firmware_path to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %firmware_path, align 4
  %46 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sess, align 8
  %dev_dec.i = getelementptr inbounds %struct.amvdec_core, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %dev_dec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_dec.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #5
  %50 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !31
  %call.i93 = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %45, ptr noundef %49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i = icmp slt i32 %call.i93, 0
  br i1 %cmp.i, label %vdec_hevc_load_firmware.exit.thread, label %if.end.i94

vdec_hevc_load_firmware.exit.thread:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str, ptr noundef %45) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %stop

if.end.i94:                                       ; preds = %if.end15
  %51 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %54)
  %cmp2.i = icmp ult i32 %54, 16384
  br i1 %cmp2.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.6, i32 noundef %54, i32 noundef 16384) #8
  br label %vdec_hevc_load_firmware.exit.thread103

if.end8.i:                                        ; preds = %if.end.i94
  %dev9.i = getelementptr inbounds %struct.amvdec_core, ptr %47, i32 0, i32 3
  %55 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev9.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %56, i32 noundef 16384, ptr noundef nonnull @vdec_hevc_load_firmware.mc_addr_map, i32 noundef 3264, i32 noundef 0) #5
  store ptr %call.i.i, ptr @vdec_hevc_load_firmware.mc_addr, align 4
  %tobool.not.i95 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i95, label %if.end8.i.vdec_hevc_load_firmware.exit.thread103_crit_edge, label %if.end12.i

if.end8.i.vdec_hevc_load_firmware.exit.thread103_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdec_hevc_load_firmware.exit.thread103

if.end12.i:                                       ; preds = %if.end8.i
  %57 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i, align 4
  %61 = call ptr @memcpy(ptr %call.i.i, ptr %60, i32 16384)
  call void @amvdec_write_dos(ptr noundef %47, i32 noundef 52228, i32 noundef 0) #5
  call void @amvdec_write_dos(ptr noundef %47, i32 noundef 52356, i32 noundef 0) #5
  %62 = load i32, ptr @vdec_hevc_load_firmware.mc_addr_map, align 4
  call void @amvdec_write_dos(ptr noundef %47, i32 noundef 52484, i32 noundef %62) #5
  call void @amvdec_write_dos(ptr noundef %47, i32 noundef 52488, i32 noundef 4096) #5
  call void @amvdec_write_dos(ptr noundef %47, i32 noundef 52480, i32 noundef 491520) #5
  br label %land.rhs.i

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i.044.i, -1
  %cond.i = icmp eq i32 %dec.i, 0
  br i1 %cond.i, label %do.end21.i, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %if.end12.i
  %i.044.i = phi i32 [ 100, %if.end12.i ], [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ]
  %63 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %47, align 4
  %add.ptr.i = getelementptr i8, ptr %64, i32 52480
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  %66 = and i32 %65, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool16.not.i = icmp eq i32 %66, 0
  br i1 %tobool16.not.i, label %land.rhs.i.vdec_hevc_load_firmware.exit_crit_edge, label %while.cond.i

land.rhs.i.vdec_hevc_load_firmware.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdec_hevc_load_firmware.exit

do.end21.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9) #8
  br label %vdec_hevc_load_firmware.exit

vdec_hevc_load_firmware.exit.thread103:           ; preds = %if.end8.i.vdec_hevc_load_firmware.exit.thread103_crit_edge, %do.end6.i
  %ret.1.i.ph = phi i32 [ -12, %if.end8.i.vdec_hevc_load_firmware.exit.thread103_crit_edge ], [ -22, %do.end6.i ]
  %67 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %68) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  br label %stop

vdec_hevc_load_firmware.exit:                     ; preds = %do.end21.i, %land.rhs.i.vdec_hevc_load_firmware.exit_crit_edge
  %ret.0.i = phi i32 [ -19, %do.end21.i ], [ %call.i93, %land.rhs.i.vdec_hevc_load_firmware.exit_crit_edge ]
  %69 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev9.i, align 4
  %71 = load ptr, ptr @vdec_hevc_load_firmware.mc_addr, align 4
  %72 = load i32, ptr @vdec_hevc_load_firmware.mc_addr_map, align 4
  call void @dma_free_attrs(ptr noundef %70, i32 noundef 16384, ptr noundef %71, i32 noundef %72, i32 noundef 0) #5
  %73 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %74) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool36.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool36.not, label %if.end38, label %vdec_hevc_load_firmware.exit.stop_crit_edge

vdec_hevc_load_firmware.exit.stop_crit_edge:      ; preds = %vdec_hevc_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stop

if.end38:                                         ; preds = %vdec_hevc_load_firmware.exit
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %5, align 4
  %call39 = call i32 %76(ptr noundef %sess) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.stop_crit_edge

if.end38.stop_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %stop

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64720, i32 noundef 6144) #5
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64720, i32 noundef 0) #5
  %call43 = call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 64720) #5
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 52228, i32 noundef 1) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  br label %cleanup

stop:                                             ; preds = %if.end38.stop_crit_edge, %vdec_hevc_load_firmware.exit.stop_crit_edge, %vdec_hevc_load_firmware.exit.thread103, %vdec_hevc_load_firmware.exit.thread
  %ret.0 = phi i32 [ %ret.0.i, %vdec_hevc_load_firmware.exit.stop_crit_edge ], [ %call39, %if.end38.stop_crit_edge ], [ %call.i93, %vdec_hevc_load_firmware.exit.thread ], [ %ret.1.i.ph, %vdec_hevc_load_firmware.exit.thread103 ]
  %call44 = call i32 @vdec_hevc_stop(ptr noundef %sess)
  br label %cleanup

cleanup:                                          ; preds = %stop, %if.end42, %if.then3.i85, %if.end9.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %stop ], [ 0, %if.end42 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call1.i82, %if.then3.i85 ], [ %call.i80, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_hevc_stop(ptr noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %fmt_out = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 7
  %2 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt_out, align 4
  %codec_ops2 = getelementptr inbounds %struct.amvdec_format, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %codec_ops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_ops2, align 4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 49624, i32 noundef 0) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 52228, i32 noundef 0) #5
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %stop = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop, align 4
  %call = tail call i32 %9(ptr noundef %sess) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp = icmp eq i32 %13, 4
  %regmap_ao = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap_ao, align 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 236, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 236, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64716, i32 noundef -1) #5
  %16 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform, align 4
  %revision9 = getelementptr inbounds %struct.vdec_platform, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %revision9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %revision9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp10 = icmp eq i32 %19, 4
  %regmap_ao12 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %regmap_ao12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_ao12, align 4
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 232, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end17

if.else14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 232, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then11
  %vdec_hevc_clk = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %vdec_hevc_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdec_hevc_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  %24 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform, align 4
  %revision19 = getelementptr inbounds %struct.vdec_platform, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %revision19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %revision19, align 4
  %.off = add i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then24, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %vdec_hevcf_clk = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %vdec_hevcf_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdec_hevcf_clk, align 4
  tail call void @clk_disable(ptr noundef %29) #5
  tail call void @clk_unprepare(ptr noundef %29) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end17.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_hevc_conf_esparser(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64520, i32 noundef 6) #5
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 50180) #5
  %or = or i32 %call, 8
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50180, i32 noundef %or) #5
  %call2 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 50180) #5
  %or3 = or i32 %call2, 1
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50180, i32 noundef %or3) #5
  %call4 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 50204) #5
  %or5 = or i32 %call4, 536870912
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 50204, i32 noundef %or5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_hevc_vififo_level(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 50200
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !32
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_read_dos(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @vdec_hevc_ops, !1, !"vdec_hevc_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/vdec_hevc.c", i32 226, i32 19}
!2 = !{ptr @vdec_hevc_load_firmware.mc_addr, !3, !"mc_addr", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/vdec_hevc.c", i32 32, i32 15}
!4 = !{ptr @vdec_hevc_load_firmware.mc_addr_map, !5, !"mc_addr_map", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/meson/vdec/vdec_hevc.c", i32 33, i32 20}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/meson/vdec/vdec_hevc.c", i32 39, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vdec_hevc_load_firmware._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @vdec_hevc_load_firmware._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/meson/vdec/vdec_hevc.c", i32 44, i32 3}
!16 = !{ptr @vdec_hevc_load_firmware._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vdec_hevc_load_firmware._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/meson/vdec/vdec_hevc.c", i32 70, i32 3}
!20 = !{ptr @vdec_hevc_load_firmware._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @vdec_hevc_load_firmware._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{i64 4287388}
!33 = !{i64 2156502508}
