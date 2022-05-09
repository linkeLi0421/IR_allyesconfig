; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/codec_h264.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/codec_h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amvdec_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_fract = type { i32, i32 }
%struct.amvdec_session = type { ptr, %struct.v4l2_fh, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.v4l2_fract, %struct.atomic_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, ptr, i32, i32, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i64, i32, i32, [32 x i32], i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.amvdec_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.codec_h264 = type { ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32 }

@codec_h264_ops = dso_local global { %struct.amvdec_codec_ops, [52 x i8] } { %struct.amvdec_codec_ops { ptr @codec_h264_start, ptr @codec_h264_stop, ptr @codec_h264_load_extended_firmware, ptr null, ptr @codec_h264_can_recycle, ptr @codec_h264_recycle, ptr null, ptr @codec_h264_resume, ptr @codec_h264_eos_sequence, ptr @codec_h264_isr, ptr @codec_h264_threaded_isr }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@codec_h264_resume.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson_vdec\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"codec_h264_resume\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/staging/media/meson/vdec/codec_h264.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"max_refs = %u; actual_dpb_size = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@eos_sequence = internal constant { <{ [604 x i8], [3492 x i8] }>, [1024 x i8] } { <{ [604 x i8], [3492 x i8] }> <{ [604 x i8] c"\00\00\00\01\06\05\FF\E4\DCE\E9\BD\E6\D9H\B7\96,\D8 \D9#\EE\EFx264 - core 67 r1130 8475977 - H.264/MPEG-4 AVC codec - Copyleft 2003-2009 - http://www.videolan.org/x264.html - options: cabac=1 ref=1 deblock=1:0:0 analyse=0x1:0x111 me=hex subme=6 psy_rd=1.0:0.0 mixed_ref=0 me_range=16 chroma_me=1 trellis=0 8x8dct=0 cqm=0 deadzone=21,11 chroma_qp_offset=-2 threads=1 nr=0 decimate=1 mbaff=0 bframes=0 keyint=250 keyint_min=25 scenecut=40 rc=abr bitrate=10 ratetol=1.0 qcomp=0.60 qpmin=10 qpmax=51 qpstep=4 ip_ratio=1.40 aq=1:1.00\00\80\00\00\00\01gM@\0A\9At\F4 \00\00\03\00 \00\00\06Q\E2D\D4\00\00\00\01h\EE2\C8\00\00\00\01e\88\80 \00\08\7F\EAj\E2\99\B6W\AEI0\F5\FE^F\0BrD\C4\E1\FCb\DA\F1\FB\A2\DB\D6\BE\\\D7$\A3\F5\B9/W\16IuGw\09\\\A1\B4\C3O`+\B0\0C\C8\D6f\BA\9B\82)3\92&\991\1C\7F\9B\00\00\01\FF", [3492 x i8] zeroinitializer }>, [1024 x i8] zeroinitializer }, align 32
@codec_h264_threaded_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 435, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"H.264 decoder fatal error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"codec_h264_threaded_isr\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@codec_h264_threaded_isr._entry_ptr = internal global ptr @codec_h264_threaded_isr._entry, section ".printk_index", align 4
@codec_h264_threaded_isr._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 439, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported video width: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@codec_h264_threaded_isr._entry_ptr.11 = internal global ptr @codec_h264_threaded_isr._entry.9, section ".printk_index", align 4
@codec_h264_threaded_isr._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 443, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported video height: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@codec_h264_threaded_isr._entry_ptr.14 = internal global ptr @codec_h264_threaded_isr._entry.12, section ".printk_index", align 4
@codec_h264_threaded_isr._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 449, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unexpected H264 ISR: %08X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@codec_h264_threaded_isr._entry_ptr.18 = internal global ptr @codec_h264_threaded_isr._entry.15, section ".printk_index", align 4
@codec_h264_src_change.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"codec_h264_src_change\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"frame: %ux%u; crop: %u %u\0A\00", [37 x i8] zeroinitializer }, align 32
@par_table = internal constant { [17 x %struct.v4l2_fract], [56 x i8] } { [17 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 1 }, %struct.v4l2_fract { i32 1, i32 1 }, %struct.v4l2_fract { i32 12, i32 11 }, %struct.v4l2_fract { i32 10, i32 11 }, %struct.v4l2_fract { i32 16, i32 11 }, %struct.v4l2_fract { i32 40, i32 33 }, %struct.v4l2_fract { i32 24, i32 11 }, %struct.v4l2_fract { i32 20, i32 11 }, %struct.v4l2_fract { i32 32, i32 11 }, %struct.v4l2_fract { i32 80, i32 33 }, %struct.v4l2_fract { i32 18, i32 11 }, %struct.v4l2_fract { i32 15, i32 11 }, %struct.v4l2_fract { i32 64, i32 33 }, %struct.v4l2_fract { i32 160, i32 99 }, %struct.v4l2_fract { i32 4, i32 3 }, %struct.v4l2_fract { i32 3, i32 2 }, %struct.v4l2_fract { i32 2, i32 1 }], [56 x i8] zeroinitializer }, align 32
@codec_h264_frames_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 386, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"decoder error(s) happened, count %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"codec_h264_frames_ready\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@codec_h264_frames_ready._entry_ptr = internal global ptr @codec_h264_frames_ready._entry, section ".printk_index", align 4
@codec_h264_frames_ready.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Buffer %d decode error\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"codec_h264_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 475, i32 25 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 295, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"eos_sequence\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 65, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 435, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 439, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 443, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 449, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 352, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"par_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 254, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 385, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [49 x i8] c"../drivers/staging/media/meson/vdec/codec_h264.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 404, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @codec_h264_frames_ready._entry, ptr @codec_h264_frames_ready._entry_ptr, ptr @codec_h264_threaded_isr._entry, ptr @codec_h264_threaded_isr._entry.12, ptr @codec_h264_threaded_isr._entry.15, ptr @codec_h264_threaded_isr._entry.9, ptr @codec_h264_threaded_isr._entry_ptr, ptr @codec_h264_threaded_isr._entry_ptr.11, ptr @codec_h264_threaded_isr._entry_ptr.14, ptr @codec_h264_threaded_isr._entry_ptr.18, ptr @codec_h264_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @eos_sequence, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @par_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_h264_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eos_sequence to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_h264_threaded_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_h264_threaded_isr._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_h264_threaded_isr._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_h264_threaded_isr._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_table to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_h264_frames_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_h264_start(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %workspace_paddr = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 2023424, ptr noundef %workspace_paddr, i32 noundef 3264, i32 noundef 0) #5
  %workspace_vaddr = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %workspace_vaddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %workspace_vaddr, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %sei_paddr = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 8
  %call.i34 = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 8192, ptr noundef %sei_paddr, i32 noundef 3264, i32 noundef 0) #5
  %sei_vaddr = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %sei_vaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i34, ptr %sei_vaddr, align 4
  %tobool6.not = icmp eq ptr %call.i34, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amvdec_write_dos_bits(ptr noundef %1, i32 noundef 12320, i32 noundef 576) #5
  %10 = ptrtoint ptr %workspace_paddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %workspace_paddr, align 4
  %sub = add i32 %11, -16777216
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 9988, i32 noundef %sub) #5
  %ext_fw_paddr = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %ext_fw_paddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ext_fw_paddr, align 4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10048, i32 noundef %13) #5
  %14 = ptrtoint ptr %sei_paddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sei_paddr, align 4
  %sub11 = sub i32 %15, %sub
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10056, i32 noundef %sub11) #5
  %call12 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10044) #5
  %and = and i32 %call12, -189
  %or13 = or i32 %and, 144
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10044, i32 noundef %or13) #5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 9952, i32 noundef 1077950634) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_h264_stop(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %ext_fw_paddr = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ext_fw_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ext_fw_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 20480, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %workspace_vaddr = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %workspace_vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workspace_vaddr, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  %workspace_paddr = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %workspace_paddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %workspace_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 2023424, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %ref_vaddr = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %ref_vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ref_vaddr, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev10, align 4
  %ref_size = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %ref_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref_size, align 4
  %ref_paddr = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %ref_paddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ref_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %sei_vaddr = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %sei_vaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sei_vaddr, align 4
  %tobool13.not = icmp eq ptr %25, null
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.amvdec_core, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15, align 4
  %sei_paddr = getelementptr inbounds %struct.codec_h264, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %sei_paddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sei_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %27, i32 noundef 8192, ptr noundef nonnull %25, i32 noundef %29, i32 noundef 0) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_h264_load_extended_firmware(ptr nocapture noundef %sess, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %len)
  %cmp = icmp ult i32 %len, 20480
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %ext_fw_paddr = getelementptr inbounds %struct.codec_h264, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 20480, ptr noundef %ext_fw_paddr, i32 noundef 3264, i32 noundef 0) #5
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %6 = call ptr @memcpy(ptr %call.i, ptr %data, i32 20480)
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_h264_can_recycle(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amvdec_read_dos(ptr noundef %core, i32 noundef 10012) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @amvdec_read_dos(ptr noundef %core, i32 noundef 10016) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %phi.cast = zext i1 %tobool2.not to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %0 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @codec_h264_recycle(ptr noundef %core, i32 noundef %buf_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amvdec_read_dos(ptr noundef %core, i32 noundef 10012) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %add = add i32 %buf_idx, 1
  %. = select i1 %tobool.not, i32 10012, i32 10016
  tail call void @amvdec_write_dos(ptr noundef %core, i32 noundef %., i32 noundef %add) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @codec_h264_resume(ptr noundef %sess) #0 align 64 {
entry:
  %.compoundliteral = alloca [2 x i32], align 4
  %.compoundliteral2 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9792, ptr %.compoundliteral, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral, i32 1
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayinit.element, align 4
  %6 = ptrtoint ptr %.compoundliteral2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %.compoundliteral2, align 4
  %arrayinit.element4 = getelementptr inbounds i32, ptr %.compoundliteral2, i32 1
  %7 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayinit.element4, align 4
  %call = call i32 @amvdec_set_canvases(ptr noundef %sess, ptr noundef nonnull %.compoundliteral, ptr noundef nonnull %.compoundliteral2) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_h264_resume.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_h264_resume, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %max_refs = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %max_refs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_refs, align 4
  %num_dst_bufs = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 25
  %12 = ptrtoint ptr %num_dst_bufs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_dst_bufs, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @codec_h264_resume.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mb_width9 = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %mb_width9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mb_width9, align 4
  %add = add i32 %15, 3
  %and = and i32 %add, -4
  %mb_height10 = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %mb_height10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mb_height10, align 4
  %add11 = add i32 %17, 3
  %and12 = and i32 %add11, -4
  %max_refs14 = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %max_refs14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_refs14, align 4
  %mul = mul i32 %and, 96
  %mul13 = mul i32 %mul, %19
  %mul15 = mul i32 %mul13, %and12
  %ref_size = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %ref_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul15, ptr %ref_size, align 4
  %dev16 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev16, align 4
  %ref_paddr = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 5
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %22, i32 noundef %mul15, ptr noundef %ref_paddr, i32 noundef 3264, i32 noundef 0) #5
  %ref_vaddr = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %ref_vaddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %ref_vaddr, align 4
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @amvdec_abort(ptr noundef %sess) #5
  br label %cleanup

if.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ref_paddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ref_paddr, align 4
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 9988, i32 noundef %25) #5
  %26 = ptrtoint ptr %ref_paddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_paddr, align 4
  %28 = ptrtoint ptr %ref_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ref_size, align 4
  %add26 = add i32 %29, %27
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10000, i32 noundef %add26) #5
  %30 = ptrtoint ptr %max_refs14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_refs14, align 4
  %shl = shl i32 %31, 24
  %num_dst_bufs28 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 25
  %32 = ptrtoint ptr %num_dst_bufs28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_dst_bufs28, align 8
  %shl29 = shl i32 %33, 16
  %or = or i32 %shl29, %shl
  %sub = shl i32 %31, 8
  %shl31 = add i32 %sub, -256
  %or32 = or i32 %or, %shl31
  call void @amvdec_write_dos(ptr noundef %1, i32 noundef 9984, i32 noundef %or32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal nonnull ptr @codec_h264_eos_sequence(ptr nocapture noundef writeonly %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %len, align 4
  ret ptr @eos_sequence
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_h264_isr(ptr nocapture noundef readonly %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 468, i32 noundef 1) #5
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codec_h264_threaded_isr(ptr noundef %sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 9984) #5
  %conv2 = and i32 %call, 255
  %trunc = trunc i32 %call to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end22 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb3
    i8 6, label %do.end
    i8 7, label %sw.bb5
    i8 8, label %sw.bb11
    i8 0, label %entry.sw.epilog_crit_edge
    i8 9, label %entry.sw.epilog_crit_edge53
  ]

entry.sw.epilog_crit_edge53:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @codec_h264_src_change(ptr noundef %sess)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @codec_h264_frames_ready(ptr noundef %sess, i32 noundef %call)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #9
  br label %abort

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 9988) #5
  %add = shl i32 %call6, 4
  %mul = add i32 %add, 16
  %dev10 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %mul) #9
  br label %abort

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 9988) #5
  %add13 = shl i32 %call12, 4
  %mul14 = add i32 %add13, 16
  %dev18 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %mul14) #9
  br label %abort

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %conv2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge53
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv2)
  %switch = icmp ult i32 %conv2, 2
  br i1 %switch, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 9984, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %call28 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10060) #5
  %and29 = and i32 %call28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end.cleanup_crit_edge, label %if.then31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10060, i32 noundef 0) #5
  br label %cleanup

abort:                                            ; preds = %sw.bb11, %sw.bb5, %do.end
  tail call void @amvdec_abort(ptr noundef %sess) #5
  br label %cleanup

cleanup:                                          ; preds = %abort, %if.then31, %if.end.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_read_dos(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_set_canvases(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_h264_src_change(ptr noundef %sess) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %priv = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %keyframe_found = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 24
  %4 = ptrtoint ptr %keyframe_found to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %keyframe_found, align 4
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 9988) #5
  %shr = lshr i32 %call, 8
  %and2 = and i32 %call, 255
  %mb_width = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %mb_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %mb_width, align 4
  %div.lhs.trunc = trunc i32 %shr to i16
  %div.rhs.trunc = trunc i32 %and2 to i16
  %div39 = udiv i16 %div.lhs.trunc, %div.rhs.trunc
  %div.zext = zext i16 %div39 to i32
  %mb_height = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %mb_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.zext, ptr %mb_height, align 4
  %shr4 = lshr i32 %call, 24
  %and5 = and i32 %shr4, 127
  %add = add nuw nsw i32 %and5, 1
  %max_refs = getelementptr inbounds %struct.codec_h264, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %max_refs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %max_refs, align 4
  %call6 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10008) #5
  %and7 = and i32 %call6, 255
  %shr8 = lshr i32 %call6, 16
  %and9 = and i32 %shr8, 255
  %8 = ptrtoint ptr %mb_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mb_width, align 4
  %mul = shl i32 %9, 4
  %sub = sub i32 %mul, %and9
  %10 = ptrtoint ptr %mb_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mb_height, align 4
  %mul12 = shl i32 %11, 4
  %sub13 = sub i32 %mul12, %and7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_h264_src_change.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_h264_src_change, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @codec_h264_src_change.__UNIQUE_ID_ddebug299, ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %sub, i32 noundef %sub13, i32 noundef %and9, i32 noundef %and7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sess, align 8
  %call.i = tail call i32 @amvdec_read_dos(ptr noundef %15, i32 noundef 9992) #5
  %shr.i = lshr i32 %call.i, 16
  %and.i = and i32 %shr.i, 255
  %and2.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %do.end.codec_h264_set_par.exit_crit_edge, label %if.end.i

do.end.codec_h264_set_par.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %codec_h264_set_par.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 255
  br i1 %cmp.i, label %if.then3.i, label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 @amvdec_read_dos(ptr noundef %15, i32 noundef 9996) #5
  %and5.i = and i32 %call4.i, 65535
  %pixelaspect.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 16
  %16 = ptrtoint ptr %pixelaspect.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and5.i, ptr %pixelaspect.i, align 8
  %shr6.i = lshr i32 %call4.i, 16
  %denominator.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %denominator.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr6.i, ptr %denominator.i, align 4
  br label %codec_h264_set_par.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp10.i = icmp ugt i32 %and.i, 16
  br i1 %cmp10.i, label %if.end9.i.codec_h264_set_par.exit_crit_edge, label %if.end12.i

if.end9.i.codec_h264_set_par.exit_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %codec_h264_set_par.exit

if.end12.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %pixelaspect13.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 16
  %arrayidx.i = getelementptr [17 x %struct.v4l2_fract], ptr @par_table, i32 0, i32 %and.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %pixelaspect13.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %pixelaspect13.i, align 8
  br label %codec_h264_set_par.exit

codec_h264_set_par.exit:                          ; preds = %if.end12.i, %if.end9.i.codec_h264_set_par.exit_crit_edge, %if.then3.i, %do.end.codec_h264_set_par.exit_crit_edge
  %21 = ptrtoint ptr %max_refs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_refs, align 4
  %add18 = add i32 %22, 5
  tail call void @amvdec_src_change(ptr noundef %sess, i32 noundef %sub, i32 noundef %sub13, i32 noundef %add18) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @codec_h264_frames_ready(ptr noundef %sess, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %call = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef 10036) #5
  %shr = lshr i32 %status, 8
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %call) #9
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 10036, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp50.not = icmp eq i32 %and, 0
  br i1 %cmp50.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %dev17 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end21.for.body_crit_edge ]
  %mul = shl i32 %i.051, 2
  %add = add nuw nsw i32 %mul, 9988
  %call2 = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef %add) #5
  %and3 = and i32 %call2, 31
  %shr4 = lshr i32 %call2, 5
  %and5 = and i32 %shr4, 7
  %shr6 = lshr i32 %call2, 16
  %and8 = and i32 %call2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %for.body.if.end21_crit_edge, label %do.body11

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @codec_h264_frames_ready.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@codec_h264_frames_ready, %if.then16)) #5
          to label %if.end21 [label %if.then16], !srcloc !54

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @codec_h264_frames_ready.__UNIQUE_ID_ddebug300, ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %and3) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %do.body11, %for.body.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and5)
  %switch.selectcmp = icmp eq i32 %and5, 6
  %switch.select = select i1 %switch.selectcmp, i32 9, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and5)
  %switch.selectcmp45 = icmp eq i32 %and5, 5
  %switch.select46 = select i1 %switch.selectcmp45, i32 8, i32 %switch.select
  %6 = shl nuw i32 %i.051, 1
  %7 = add nuw nsw i32 %6, 10024
  %add.i = and i32 %7, -4
  %call.i = tail call i32 @amvdec_read_dos(ptr noundef %1, i32 noundef %add.i) #5
  %8 = and i32 %i.051, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %and.i = and i32 %call.i, -65536
  %shl.i = shl i32 %call.i, 16
  %retval.0.i47 = select i1 %tobool.not.i, i32 %shl.i, i32 %and.i
  %or = or i32 %retval.0.i47, %shr6
  tail call void @amvdec_dst_buf_done_idx(ptr noundef %sess, i32 noundef %and3, i32 noundef %or, i32 noundef %switch.select46) #5
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_src_change(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_dst_buf_done_idx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @codec_h264_ops, !1, !"codec_h264_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 475, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 295, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @codec_h264_resume.__UNIQUE_ID_ddebug298, !3, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!8 = !{ptr @eos_sequence, !9, !"eos_sequence", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 65, i32 17}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 435, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @codec_h264_threaded_isr._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @codec_h264_threaded_isr._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 439, i32 3}
!19 = !{ptr @codec_h264_threaded_isr._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @codec_h264_threaded_isr._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 443, i32 3}
!23 = !{ptr @codec_h264_threaded_isr._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @codec_h264_threaded_isr._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 449, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @codec_h264_threaded_isr._entry.15, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @codec_h264_threaded_isr._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 352, i32 2}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @codec_h264_src_change.__UNIQUE_ID_ddebug299, !31, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!34 = !{ptr @par_table, !35, !"par_table", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 254, i32 32}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 385, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @codec_h264_frames_ready._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @codec_h264_frames_ready._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/meson/vdec/codec_h264.c", i32 404, i32 4}
!44 = !{ptr @codec_h264_frames_ready.__UNIQUE_ID_ddebug300, !43, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148814346, i64 2148814351, i64 2148814364, i64 2148814408, i64 2148814442, i64 2148814463}
