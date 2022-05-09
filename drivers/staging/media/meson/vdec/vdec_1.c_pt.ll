; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/vdec_1.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/vdec_1.c"
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

@vdec_1_ops = dso_local global { %struct.amvdec_ops, [16 x i8] } { %struct.amvdec_ops { ptr @vdec_1_start, ptr @vdec_1_stop, ptr @vdec_1_conf_esparser, ptr @vdec_1_vififo_level }, [16 x i8] zeroinitializer }, align 32
@vdec_1_load_firmware.mc_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vdec_1_load_firmware.mc_addr_map = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vdec_1_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware size %zu is too small. Expected %u.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vdec_1_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/meson/vdec/vdec_1.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vdec_1_load_firmware._entry_ptr = internal global ptr @vdec_1_load_firmware._entry, section ".printk_index", align 4
@vdec_1_load_firmware._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Firmware load fail (DMA hang?)\0A\00", [32 x i8] zeroinitializer }, align 32
@vdec_1_load_firmware._entry_ptr.7 = internal global ptr @vdec_1_load_firmware._entry.5, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"vdec_1_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 242, i32 19 }
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"mc_addr\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 32, i32 15 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"mc_addr_map\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 33, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 42, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [45 x i8] c"../drivers/staging/media/meson/vdec/vdec_1.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 69, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @vdec_1_load_firmware._entry, ptr @vdec_1_load_firmware._entry.5, ptr @vdec_1_load_firmware._entry_ptr, ptr @vdec_1_load_firmware._entry_ptr.7, ptr @vdec_1_ops, ptr @vdec_1_load_firmware.mc_addr, ptr @vdec_1_load_firmware.mc_addr_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_1_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_1_load_firmware.mc_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_1_load_firmware.mc_addr_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_1_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_1_load_firmware._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_1_start(ptr noundef %sess) #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  %vdec_1_clk = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %vdec_1_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdec_1_clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef 666666666) #4
  %8 = ptrtoint ptr %vdec_1_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdec_1_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
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
  %. = select i1 %cmp, i32 2, i32 12
  %call.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 232, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64512, i32 noundef -4) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64512, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64516, i32 noundef 1023) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64704, i32 noundef 0) #4
  %16 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform, align 4
  %revision11 = getelementptr inbounds %struct.vdec_platform, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %revision11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %revision11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp12 = icmp eq i32 %19, 4
  %regmap_ao14 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %regmap_ao14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_ao14, align 4
  br i1 %cmp12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 236, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end19

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 236, i32 noundef 0) #4
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then13
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64768, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 9740, i32 noundef 1023) #4
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 9784, i32 noundef -2147483648) #4
  %22 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sess, align 8
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12560, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12612, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12320, i32 noundef 16) #4
  %vififo_paddr.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 30
  %24 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vififo_paddr.i, align 8
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12544, i32 noundef %25) #4
  %26 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vififo_paddr.i, align 8
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12548, i32 noundef %27) #4
  %28 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vififo_paddr.i, align 8
  %vififo_size.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 31
  %30 = ptrtoint ptr %vififo_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vififo_size.i, align 4
  %add.i = add i32 %29, -8
  %sub.i = add i32 %add.i, %31
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12552, i32 noundef %sub.i) #4
  tail call void @amvdec_write_dos_bits(ptr noundef %23, i32 noundef 12560, i32 noundef 1) #4
  tail call void @amvdec_clear_dos_bits(ptr noundef %23, i32 noundef 12560, i32 noundef 1) #4
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12576, i32 noundef 2) #4
  %32 = ptrtoint ptr %vififo_paddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vififo_paddr.i, align 8
  tail call void @amvdec_write_dos(ptr noundef %23, i32 noundef 12564, i32 noundef %33) #4
  tail call void @amvdec_write_dos_bits(ptr noundef %23, i32 noundef 12576, i32 noundef 1) #4
  tail call void @amvdec_clear_dos_bits(ptr noundef %23, i32 noundef 12576, i32 noundef 1) #4
  tail call void @amvdec_write_dos_bits(ptr noundef %23, i32 noundef 12560, i32 noundef 1115142) #4
  %34 = ptrtoint ptr %fmt_out to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fmt_out, align 4
  %firmware_path = getelementptr inbounds %struct.amvdec_format, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %firmware_path to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %firmware_path, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #4
  %38 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !27
  %39 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sess, align 8
  %dev_dec.i = getelementptr inbounds %struct.amvdec_core, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %dev_dec.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_dec.i, align 4
  %codec_ops2.i = getelementptr inbounds %struct.amvdec_format, ptr %35, i32 0, i32 7
  %43 = ptrtoint ptr %codec_ops2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %codec_ops2.i, align 4
  %call.i70 = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %37, ptr noundef %42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp.i = icmp slt i32 %call.i70, 0
  br i1 %cmp.i, label %vdec_1_load_firmware.exit.thread, label %if.end.i71

vdec_1_load_firmware.exit.thread:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #4
  br label %stop

if.end.i71:                                       ; preds = %if.end19
  %45 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %48)
  %cmp3.i = icmp ult i32 %48, 16384
  br i1 %cmp3.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str, i32 noundef %48, i32 noundef 16384) #7
  br label %vdec_1_load_firmware.exit.thread79

if.end6.i:                                        ; preds = %if.end.i71
  %dev7.i = getelementptr inbounds %struct.amvdec_core, ptr %40, i32 0, i32 3
  %49 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev7.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef 16384, ptr noundef nonnull @vdec_1_load_firmware.mc_addr_map, i32 noundef 3264, i32 noundef 0) #4
  store ptr %call.i.i, ptr @vdec_1_load_firmware.mc_addr, align 4
  %tobool.not.i72 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i72, label %if.end6.i.vdec_1_load_firmware.exit.thread79_crit_edge, label %if.end10.i

if.end6.i.vdec_1_load_firmware.exit.thread79_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdec_1_load_firmware.exit.thread79

if.end10.i:                                       ; preds = %if.end6.i
  %51 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %55 = call ptr @memcpy(ptr %call.i.i, ptr %54, i32 16384)
  call void @amvdec_write_dos(ptr noundef %40, i32 noundef 3076, i32 noundef 0) #4
  call void @amvdec_write_dos(ptr noundef %40, i32 noundef 3204, i32 noundef 0) #4
  call void @amvdec_clear_dos_bits(ptr noundef %40, i32 noundef 9784, i32 noundef -2147483648) #4
  %56 = load i32, ptr @vdec_1_load_firmware.mc_addr_map, align 4
  call void @amvdec_write_dos(ptr noundef %40, i32 noundef 3332, i32 noundef %56) #4
  call void @amvdec_write_dos(ptr noundef %40, i32 noundef 3336, i32 noundef 4096) #4
  call void @amvdec_write_dos(ptr noundef %40, i32 noundef 3328, i32 noundef 491520) #4
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end10.i
  %i.0.i = phi i32 [ 1000, %if.end10.i ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cond.i = icmp eq i32 %dec.i, 0
  br i1 %cond.i, label %do.end18.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %call12.i = call i32 @amvdec_read_dos(ptr noundef %40, i32 noundef 3328) #4
  %and.i = and i32 %call12.i, 32768
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

do.end18.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.6) #7
  br label %vdec_1_load_firmware.exit

if.end19.i:                                       ; preds = %land.rhs.i
  %load_extended_firmware.i = getelementptr inbounds %struct.amvdec_codec_ops, ptr %44, i32 0, i32 2
  %57 = ptrtoint ptr %load_extended_firmware.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %load_extended_firmware.i, align 4
  %tobool20.not.i = icmp eq ptr %58, null
  br i1 %tobool20.not.i, label %if.end19.i.vdec_1_load_firmware.exit_crit_edge, label %if.then21.i

if.end19.i.vdec_1_load_firmware.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdec_1_load_firmware.exit

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw.i, align 4
  %data23.i = getelementptr inbounds %struct.firmware, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %data23.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data23.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 16384
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 4
  %sub.i73 = add i32 %64, -16384
  %call25.i = call i32 %58(ptr noundef %sess, ptr noundef %add.ptr.i, i32 noundef %sub.i73) #4
  br label %vdec_1_load_firmware.exit

vdec_1_load_firmware.exit.thread79:               ; preds = %if.end6.i.vdec_1_load_firmware.exit.thread79_crit_edge, %do.end.i
  %ret.1.i.ph = phi i32 [ -12, %if.end6.i.vdec_1_load_firmware.exit.thread79_crit_edge ], [ -22, %do.end.i ]
  %65 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %66) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #4
  br label %stop

vdec_1_load_firmware.exit:                        ; preds = %if.then21.i, %if.end19.i.vdec_1_load_firmware.exit_crit_edge, %do.end18.i
  %ret.0.i = phi i32 [ -22, %do.end18.i ], [ %call25.i, %if.then21.i ], [ %call.i70, %if.end19.i.vdec_1_load_firmware.exit_crit_edge ]
  %67 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev7.i, align 4
  %69 = load ptr, ptr @vdec_1_load_firmware.mc_addr, align 4
  %70 = load i32, ptr @vdec_1_load_firmware.mc_addr_map, align 4
  call void @dma_free_attrs(ptr noundef %68, i32 noundef 16384, ptr noundef %69, i32 noundef %70, i32 noundef 0) #4
  %71 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %72) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool23.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool23.not, label %if.end25, label %vdec_1_load_firmware.exit.stop_crit_edge

vdec_1_load_firmware.exit.stop_crit_edge:         ; preds = %vdec_1_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop

if.end25:                                         ; preds = %vdec_1_load_firmware.exit
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 4
  %call26 = call i32 %74(ptr noundef %sess) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.stop_crit_edge

if.end25.stop_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop

if.end29:                                         ; preds = %if.end25
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 468, i32 noundef 1) #4
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 472, i32 noundef 1) #4
  %pixfmt_cap = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 8
  %75 = ptrtoint ptr %pixfmt_cap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pixfmt_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091854, i32 %76)
  %cmp30 = icmp eq i32 %76, 842091854
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 9784, i32 noundef 131072) #4
  br label %if.end33

if.else32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 9784, i32 noundef 131072) #4
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 3076, i32 noundef 1) #4
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  br label %cleanup

stop:                                             ; preds = %if.end25.stop_crit_edge, %vdec_1_load_firmware.exit.stop_crit_edge, %vdec_1_load_firmware.exit.thread79, %vdec_1_load_firmware.exit.thread
  %ret.0 = phi i32 [ %ret.0.i, %vdec_1_load_firmware.exit.stop_crit_edge ], [ %call26, %if.end25.stop_crit_edge ], [ -22, %vdec_1_load_firmware.exit.thread ], [ %ret.1.i.ph, %vdec_1_load_firmware.exit.thread79 ]
  %call34 = call i32 @vdec_1_stop(ptr noundef %sess)
  br label %cleanup

cleanup:                                          ; preds = %stop, %if.end33, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %stop ], [ 0, %if.end33 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_1_stop(ptr noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 3076, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 3204, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 472, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64512, i32 noundef 6144) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64512, i32 noundef 0) #4
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 64512) #4
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  %regmap_ao = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_ao, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 236, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 236, i32 noundef 192) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64704, i32 noundef -1) #4
  %12 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform, align 4
  %revision7 = getelementptr inbounds %struct.vdec_platform, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %revision7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %revision7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp8 = icmp eq i32 %15, 4
  %regmap_ao10 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regmap_ao10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap_ao10, align 4
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 232, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end15

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 232, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then9
  %vdec_1_clk = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %vdec_1_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdec_1_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #4
  tail call void @clk_unprepare(ptr noundef %19) #4
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end15.if.end18_crit_edge, label %if.then16

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %stop = getelementptr inbounds %struct.amvdec_codec_ops, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stop, align 4
  %call17 = tail call i32 %23(ptr noundef %sess) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end15.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdec_1_conf_esparser(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 64520, i32 noundef 0) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 12576, i32 noundef 1) #4
  tail call void @amvdec_clear_dos_bits(ptr noundef %1, i32 noundef 12576, i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdec_1_vififo_level(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 12572) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_clear_dos_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_read_dos(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @vdec_1_ops, !1, !"vdec_1_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/vdec_1.c", i32 242, i32 19}
!2 = !{ptr @vdec_1_load_firmware.mc_addr, !3, !"mc_addr", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/vdec_1.c", i32 32, i32 15}
!4 = !{ptr @vdec_1_load_firmware.mc_addr_map, !5, !"mc_addr_map", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/meson/vdec/vdec_1.c", i32 33, i32 20}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/meson/vdec/vdec_1.c", i32 42, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vdec_1_load_firmware._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @vdec_1_load_firmware._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/meson/vdec/vdec_1.c", i32 69, i32 3}
!16 = !{ptr @vdec_1_load_firmware._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vdec_1_load_firmware._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
