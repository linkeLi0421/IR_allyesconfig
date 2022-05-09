; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/bttv-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/bttv-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.bttv_tvnorm = type { i32, ptr, i32, i16, i16, i16, i8, i8, i8, i32, i16, i16, i16, i8, i16, i32, [2 x i16], %struct.v4l2_cropcap }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.bttv_fh = type { %struct.v4l2_fh, ptr, i32, i32, %struct.videobuf_queue, ptr, i32, i32, ptr, %struct.bttv_overlay, i32, %struct.videobuf_queue, %struct.bttv_vbi_fmt }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.bttv_overlay = type { i32, %struct.v4l2_rect, i32, ptr, i32, i32 }
%struct.bttv_vbi_fmt = type { %struct.v4l2_vbi_format, ptr, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.bttv_core = type { %struct.v4l2_device, ptr, %struct.i2c_adapter, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.bttv_buffer = type { %struct.videobuf_buffer, ptr, i32, i32, i32, %struct.bttv_geometry, %struct.btcx_riscmem, %struct.btcx_riscmem, %struct.v4l2_rect, [2 x i32], [2 x i32] }
%struct.bttv_geometry = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i16 }
%struct.btcx_riscmem = type { i32, ptr, ptr, i32 }
%struct.videobuf_dmabuf = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.bttv = type { %struct.bttv_core, i16, i8, ptr, i32, i32, i32, i32, i32, i8, %struct.bttv_pll_info, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, %struct.video_device, %struct.video_device, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, ptr, %struct.IR_i2c_init_data, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.v4l2_framebuffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bttv_tea575x_gpio, %struct.snd_tea575x, i32, i32, i32, [4 x i8], %struct.btcx_riscmem, ptr, %struct.list_head, %struct.list_head, %struct.bttv_buffer_set, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.bttv_suspend_state, i32, i32, i32, i32, i32, %struct.bttv_fh, %struct.work_struct, [2 x %struct.bttv_crop], i32, i32 }
%struct.bttv_pll_info = type { i32, i32, i32, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.91 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.88], %struct.media_entity_enum, i32 }
%struct.anon.88 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.84 }
%struct.anon.84 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bttv_tea575x_gpio = type { i8, i8, i8, i8 }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bttv_buffer_set = type { ptr, ptr, i32, i32 }
%struct.bttv_suspend_state = type { i32, i32, i32, i32, %struct.bttv_buffer_set, ptr }
%struct.bttv_crop = type { %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.87, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.87 = type { i8 }

@__param_str_vbibufs = internal constant [13 x i8] c"bttv.vbibufs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vbibufs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_vbibufs = internal constant %struct.kernel_param { ptr @__param_str_vbibufs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @vbibufs } }, section "__param", align 4
@__UNIQUE_ID_vbibufstype321 = internal constant [26 x i8] c"bttv.parmtype=vbibufs:int\00", section ".modinfo", align 1
@__param_str_vbi_debug = internal constant [15 x i8] c"bttv.vbi_debug\00", align 1
@vbi_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vbi_debug = internal constant %struct.kernel_param { ptr @__param_str_vbi_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @vbi_debug } }, section "__param", align 4
@__UNIQUE_ID_vbi_debugtype322 = internal constant [28 x i8] c"bttv.parmtype=vbi_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbibufs323 = internal constant [63 x i8] c"bttv.parm=vbibufs:number of vbi buffers, range 2-32, default 4\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_debug324 = internal constant [63 x i8] c"bttv.parm=vbi_debug:vbi code debug messages, default is 0 (no)\00", section ".modinfo", align 1
@bttv_vbi_qops = dso_local constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @vbi_buffer_setup, ptr @vbi_buffer_prepare, ptr @vbi_buffer_queue, ptr @vbi_buffer_release }, [16 x i8] zeroinitializer }, align 32
@bttv_tvnorms = external dso_local constant [0 x %struct.bttv_tvnorm], align 4
@vbi_buffer_setup.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bttv\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vbi_buffer_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/bt8xx/bttv-vbi.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d: setup: samples=%u start=%d,%d count=%u,%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bttv: %d: setup: samples=%u start=%d,%d count=%u,%u\0A\00", [43 x i8] zeroinitializer }, align 32
@vbi_buffer_prepare.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vbi_buffer_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d: buf prepare %p: top=%p bottom=%p field=%s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bttv: %d: buf prepare %p: top=%p bottom=%p field=%s\0A\00", [43 x i8] zeroinitializer }, align 32
@v4l2_field_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@vbi_buffer_queue.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vbi_buffer_queue\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: queue %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bttv: %d: queue %p\0A\00", [44 x i8] zeroinitializer }, align 32
@vbi_buffer_release.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vbi_buffer_release\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d: free %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bttv: %d: free %p\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"vbibufs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 47, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"vbi_debug\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 48, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"bttv_vbi_qops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 224, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 81, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 188, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 205, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [38 x i8] c"../drivers/media/pci/bt8xx/bttv-vbi.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 220, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_vbi_debug324, ptr @__UNIQUE_ID_vbi_debugtype322, ptr @__UNIQUE_ID_vbibufs323, ptr @__UNIQUE_ID_vbibufstype321, ptr @__param_vbi_debug, ptr @__param_vbibufs, ptr @vbibufs, ptr @vbi_debug, ptr @bttv_vbi_qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbibufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_vbi_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_buffer_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %count, ptr nocapture noundef writeonly %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %btv1 = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btv1, align 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = load i32, ptr @vbibufs, align 4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count2 = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 5
  %8 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count2, align 4
  %arrayidx6 = getelementptr %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %add = add i32 %11, %9
  %samples_per_line = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 2
  %12 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %samples_per_line, align 4
  %mul = mul i32 %add, %13
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %size, align 4
  %15 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end.do.end36_crit_edge, label %do.body10

if.end.do.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end36

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_buffer_setup.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_buffer_setup, %if.then14)) #4
          to label %do.end36 [label %if.then14], !srcloc !49

if.then14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %nr = getelementptr inbounds %struct.bttv_core, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 8
  %18 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %samples_per_line, align 4
  %start = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 4
  %20 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start, align 4
  %arrayidx24 = getelementptr %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  %24 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count2, align 4
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_buffer_setup.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #4
  br label %do.end36

do.end36:                                         ; preds = %if.then14, %do.body10, %if.end.do.end36_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_buffer_prepare(ptr noundef %q, ptr noundef %vb, i32 noundef %field) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %btv1 = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btv1, align 4
  %count = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 5
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %arrayidx5 = getelementptr %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %7, %5
  %samples_per_line = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 2
  %8 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %samples_per_line, align 4
  %mul = mul i32 %add, %9
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %size, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %11 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %13 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp13 = icmp ult i32 %14, %mul
  br i1 %cmp13, label %land.lhs.true.cleanup189_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup189_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup189

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tvnorm15 = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %tvnorm15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tvnorm15, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.not = icmp eq i32 %18, 0
  br i1 %cmp20.not, label %if.end.if.end29_crit_edge, label %if.then21

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %start = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 4
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start, align 4
  %vbistart = getelementptr inbounds %struct.bttv_tvnorm, ptr %16, i32 0, i32 16
  %21 = ptrtoint ptr %vbistart to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vbistart, align 4
  %conv = zext i16 %22 to i32
  %sub = sub i32 %20, %conv
  %23 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end.if.end29_crit_edge
  %skip_lines0.0 = phi i32 [ %23, %if.then21 ], [ 0, %if.end.if.end29_crit_edge ]
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp34.not = icmp eq i32 %25, 0
  br i1 %cmp34.not, label %if.end29.if.end52_crit_edge, label %if.then36

if.end29.if.end52_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx40 = getelementptr %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr %struct.bttv_tvnorm, ptr %16, i32 0, i32 16, i32 1
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx42, align 2
  %conv43 = zext i16 %29 to i32
  %sub44 = sub i32 %27, %conv43
  %30 = tail call i32 @llvm.smax.i32(i32 %sub44, i32 0)
  br label %if.end52

if.end52:                                         ; preds = %if.then36, %if.end29.if.end52_crit_edge
  %skip_lines1.0 = phi i32 [ %30, %if.then36 ], [ 0, %if.end29.if.end52_crit_edge ]
  %vbi_skip = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 9
  %31 = ptrtoint ptr %vbi_skip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vbi_skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %skip_lines0.0)
  %cmp54.not = icmp eq i32 %32, %skip_lines0.0
  br i1 %cmp54.not, label %lor.lhs.false, label %if.end52.if.end94.thread_crit_edge

if.end52.if.end94.thread_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94.thread

lor.lhs.false:                                    ; preds = %if.end52
  %arrayidx57 = getelementptr %struct.bttv_buffer, ptr %vb, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %skip_lines1.0)
  %cmp58.not = icmp eq i32 %34, %skip_lines1.0
  br i1 %cmp58.not, label %lor.lhs.false60, label %lor.lhs.false.if.end94.thread_crit_edge

lor.lhs.false.if.end94.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94.thread

lor.lhs.false60:                                  ; preds = %lor.lhs.false
  %vbi_count = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 10
  %35 = ptrtoint ptr %vbi_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vbi_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %18)
  %cmp66.not = icmp eq i32 %36, %18
  br i1 %cmp66.not, label %lor.lhs.false68, label %lor.lhs.false60.if.end94.thread_crit_edge

lor.lhs.false60.if.end94.thread_crit_edge:        ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94.thread

lor.lhs.false68:                                  ; preds = %lor.lhs.false60
  %arrayidx70 = getelementptr %struct.bttv_buffer, ptr %vb, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %25)
  %cmp75.not = icmp eq i32 %38, %25
  br i1 %cmp75.not, label %if.end94, label %lor.lhs.false68.if.end94.thread_crit_edge

lor.lhs.false68.if.end94.thread_crit_edge:        ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94.thread

if.end94:                                         ; preds = %lor.lhs.false68
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp96 = icmp eq i32 %40, 0
  br i1 %cmp96, label %if.end94.if.then98_crit_edge, label %if.end94.if.end152_crit_edge

if.end94.if.end152_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end94.if.then98_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then98

if.end94.thread:                                  ; preds = %lor.lhs.false68.if.end94.thread_crit_edge, %lor.lhs.false60.if.end94.thread_crit_edge, %lor.lhs.false.if.end94.thread_crit_edge, %if.end52.if.end94.thread_crit_edge
  %41 = ptrtoint ptr %vbi_skip to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %skip_lines0.0, ptr %vbi_skip, align 4
  %arrayidx81 = getelementptr %struct.bttv_buffer, ptr %vb, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %skip_lines1.0, ptr %arrayidx81, align 4
  %43 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count, align 4
  %vbi_count86 = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 10
  %45 = ptrtoint ptr %vbi_count86 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %vbi_count86, align 4
  %46 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx5, align 4
  %arrayidx93 = getelementptr %struct.bttv_buffer, ptr %vb, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx93, align 4
  %state277 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %49 = ptrtoint ptr %state277 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp96278 = icmp eq i32 %50, 0
  br i1 %cmp96278, label %if.end94.thread.if.then98_crit_edge, label %if.end94.thread.if.then105_crit_edge

if.end94.thread.if.then105_crit_edge:             ; preds = %if.end94.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105

if.end94.thread.if.then98_crit_edge:              ; preds = %if.end94.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then98

if.then98:                                        ; preds = %if.end94.thread.if.then98_crit_edge, %if.end94.if.then98_crit_edge
  %state283 = phi ptr [ %state277, %if.end94.thread.if.then98_crit_edge ], [ %state, %if.end94.if.then98_crit_edge ]
  %call = tail call i32 @videobuf_iolock(ptr noundef %q, ptr noundef %vb, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp100.not = icmp eq i32 %call, 0
  br i1 %cmp100.not, label %if.then98.if.then105_crit_edge, label %if.then98.fail_crit_edge

if.then98.fail_crit_edge:                         ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.then98.if.then105_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105

if.then105:                                       ; preds = %if.then98.if.then105_crit_edge, %if.end94.thread.if.then105_crit_edge
  %state280 = phi ptr [ %state283, %if.then98.if.then105_crit_edge ], [ %state277, %if.end94.thread.if.then105_crit_edge ]
  %call107 = tail call ptr @videobuf_to_dma(ptr noundef %vb) #4
  %51 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp113.not = icmp eq i32 %52, 0
  br i1 %cmp113.not, label %if.then105.if.end125_crit_edge, label %if.then115

if.then105.if.end125_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

if.then115:                                       ; preds = %if.then105
  %top = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 6
  %sglist = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call107, i32 0, i32 9
  %53 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sglist, align 4
  %call120 = tail call i32 @bttv_risc_packed(ptr noundef %3, ptr noundef %top, ptr noundef %54, i32 noundef 0, i32 noundef 2044, i32 noundef 4, i32 noundef %skip_lines0.0, i32 noundef %52) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121.not = icmp eq i32 %call120, 0
  br i1 %cmp121.not, label %if.then115.if.end125_crit_edge, label %if.then115.fail_crit_edge

if.then115.fail_crit_edge:                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.then115.if.end125_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

if.end125:                                        ; preds = %if.then115.if.end125_crit_edge, %if.then105.if.end125_crit_edge
  %55 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp130.not = icmp eq i32 %56, 0
  br i1 %cmp130.not, label %if.end125.if.end152_crit_edge, label %if.then132

if.end125.if.end152_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.then132:                                       ; preds = %if.end125
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count, align 4
  %mul137 = shl i32 %58, 11
  %bottom = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 7
  %sglist138 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call107, i32 0, i32 9
  %59 = ptrtoint ptr %sglist138 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sglist138, align 4
  %call143 = tail call i32 @bttv_risc_packed(ptr noundef %3, ptr noundef %bottom, ptr noundef %60, i32 noundef %mul137, i32 noundef 2044, i32 noundef 4, i32 noundef %skip_lines1.0, i32 noundef %56) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144.not = icmp eq i32 %call143, 0
  br i1 %cmp144.not, label %if.then132.if.end152_crit_edge, label %if.then132.fail_crit_edge

if.then132.fail_crit_edge:                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.then132.if.end152_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

if.end152:                                        ; preds = %if.then132.if.end152_crit_edge, %if.end125.if.end152_crit_edge, %if.end94.if.end152_crit_edge
  %state281 = phi ptr [ %state280, %if.then132.if.end152_crit_edge ], [ %state280, %if.end125.if.end152_crit_edge ], [ %state, %if.end94.if.end152_crit_edge ]
  %end = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 12, i32 2
  %61 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %end, align 4
  %top154 = getelementptr inbounds %struct.bttv_tvnorm, ptr %16, i32 0, i32 17, i32 1, i32 1
  %63 = ptrtoint ptr %top154 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %top154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp155.not = icmp slt i32 %62, %64
  %sub163 = sub i32 %62, %64
  %65 = trunc i32 %sub163 to i16
  %phi.cast = add i16 %65, 2
  %min_vdelay.0 = select i1 %cmp155.not, i16 2, i16 %phi.cast
  %vdelay = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 5, i32 8
  %66 = ptrtoint ptr %vdelay to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %min_vdelay.0, ptr %vdelay, align 2
  %67 = ptrtoint ptr %state281 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %state281, align 4
  %field170 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %68 = ptrtoint ptr %field170 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %field, ptr %field170, align 8
  %69 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool171.not = icmp eq i32 %69, 0
  br i1 %tobool171.not, label %if.end152.cleanup189_crit_edge, label %do.body173

if.end152.cleanup189_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup189

do.body173:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_buffer_prepare.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_buffer_prepare, %if.then179)) #4
          to label %cleanup189 [label %if.then179], !srcloc !49

if.then179:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  %nr = getelementptr inbounds %struct.bttv_core, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr, align 8
  %top180 = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 6
  %bottom181 = getelementptr inbounds %struct.bttv_buffer, ptr %vb, i32 0, i32 7
  %72 = ptrtoint ptr %field170 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %field170, align 8
  %arrayidx184 = getelementptr [0 x ptr], ptr @v4l2_field_names, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx184, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_buffer_prepare.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.7, i32 noundef %71, ptr noundef %vb, ptr noundef %top180, ptr noundef %bottom181, ptr noundef %75) #4
  br label %cleanup189

fail:                                             ; preds = %if.then132.fail_crit_edge, %if.then115.fail_crit_edge, %if.then98.fail_crit_edge
  %rc.4 = phi i32 [ %call, %if.then98.fail_crit_edge ], [ %call143, %if.then132.fail_crit_edge ], [ %call120, %if.then115.fail_crit_edge ]
  tail call void @bttv_dma_free(ptr noundef %q, ptr noundef %3, ptr noundef %vb) #4
  br label %cleanup189

cleanup189:                                       ; preds = %fail, %if.then179, %do.body173, %if.end152.cleanup189_crit_edge, %land.lhs.true.cleanup189_crit_edge
  %retval.0 = phi i32 [ %rc.4, %fail ], [ -22, %land.lhs.true.cleanup189_crit_edge ], [ 0, %if.then179 ], [ 0, %if.end152.cleanup189_crit_edge ], [ 0, %do.body173 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_buffer_queue(ptr nocapture noundef readonly %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %btv1 = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btv1, align 4
  %4 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_buffer_queue.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_buffer_queue, %if.then7)) #4
          to label %do.end10 [label %if.then7], !srcloc !49

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %nr = getelementptr inbounds %struct.bttv_core, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_buffer_queue.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.10, i32 noundef %6, ptr noundef %vb) #4
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %state, align 4
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %vcapture = getelementptr inbounds %struct.bttv, ptr %3, i32 0, i32 69
  %prev.i = getelementptr inbounds %struct.bttv, ptr %3, i32 0, i32 69, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %9, ptr noundef %vcapture) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.end10.list_add_tail.exit_crit_edge

do.end10.list_add_tail.exit_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue, ptr %prev.i, align 4
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vcapture, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end10.list_add_tail.exit_crit_edge
  %cvbi = getelementptr inbounds %struct.bttv, ptr %3, i32 0, i32 71
  %14 = ptrtoint ptr %cvbi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cvbi, align 4
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %if.then13, label %list_add_tail.exit.if.end15_crit_edge

list_add_tail.exit.if.end15_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btv1, align 4
  %loop_irq = getelementptr inbounds %struct.bttv, ptr %17, i32 0, i32 72
  %18 = ptrtoint ptr %loop_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %loop_irq, align 8
  %or = or i32 %19, 4
  store i32 %or, ptr %loop_irq, align 8
  tail call void @bttv_set_dma(ptr noundef %3, i32 noundef 12) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %list_add_tail.exit.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_buffer_release(ptr noundef %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %btv1 = getelementptr inbounds %struct.bttv_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %btv1, align 4
  %4 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_buffer_release.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_buffer_release, %if.then7)) #4
          to label %do.end10 [label %if.then7], !srcloc !49

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %nr = getelementptr inbounds %struct.bttv_core, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_buffer_release.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.13, i32 noundef %6, ptr noundef %vb) #4
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %7 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btv1, align 4
  tail call void @bttv_dma_free(ptr noundef %q, ptr noundef %8, ptr noundef %vb) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_try_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %f, ptr nocapture noundef %frt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %btv1 = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btv1, align 4
  %lock = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %tvnorm2 = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %tvnorm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tvnorm2, align 4
  %arrayidx = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %3
  %crop_start3 = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 87
  %4 = ptrtoint ptr %crop_start3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crop_start3, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %frt, i32 0, i32 1
  %call = tail call fastcc i32 @try_fmt(ptr noundef %fmt, ptr noundef %arrayidx, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_fmt(ptr nocapture noundef %f, ptr nocapture noundef readonly %tvnorm, i32 noundef %crop_start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vbistart = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 16
  %0 = ptrtoint ptr %vbistart to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vbistart, align 4
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %crop_start, 1
  %sub = add nsw i32 %shr, -1
  %top = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 17, i32 1, i32 1
  %2 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %top, align 4
  %height = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 17, i32 1, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %add = add i32 %5, %3
  %shr3 = lshr i32 %add, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp.not = icmp sgt i32 %shr, %conv
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr3)
  %cmp5.not.not = icmp sgt i32 %shr, %shr3
  br i1 %cmp5.not.not, label %do.body9, label %do.end15, !prof !50

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-vbi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 253, 0\0A.popsection", ""() #4, !srcloc !51
  unreachable

do.end15:                                         ; preds = %do.body
  %Fsc = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 2
  %6 = ptrtoint ptr %Fsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %Fsc, align 4
  %8 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %f, align 4
  %samples_per_line = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 2
  %9 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2048, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 3
  %10 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 244, ptr %offset, align 4
  %arrayidx17 = getelementptr %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %13 to i32
  %14 = ptrtoint ptr %vbistart to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vbistart, align 4
  %conv21 = zext i16 %15 to i32
  %sub22 = sub nsw i32 %conv18, %conv21
  %arrayidx25 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 5, i32 0
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp26 = icmp eq i32 %17, 0
  br i1 %cmp26, label %do.end15.if.end72_crit_edge, label %if.else

do.end15.if.end72_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.else:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx31 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 4, i32 0
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx31, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 %conv)
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 %sub)
  %conv41 = sext i32 %21 to i64
  %conv44 = sext i32 %19 to i64
  %conv47 = zext i32 %17 to i64
  %add48 = add nsw i64 %conv44, %conv47
  %sub49 = sub nsw i64 %add48, %conv41
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx31, align 4
  %23 = tail call i64 @llvm.smax.i64(i64 %sub49, i64 1)
  %24 = zext i32 %shr3 to i64
  %sub61 = sub nsw i64 %24, %conv41
  %25 = tail call i64 @llvm.smin.i64(i64 %23, i64 %sub61)
  %cond68.off0 = trunc i64 %25 to i32
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond68.off0, ptr %arrayidx25, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else, %do.end15.if.end72_crit_edge
  %arrayidx25.1 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26.1 = icmp eq i32 %28, 0
  br i1 %cmp26.1, label %if.end72.if.end72.1_crit_edge, label %if.else.1

if.end72.if.end72.1_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72.1

if.else.1:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  %add75 = add i32 %shr3, %sub22
  %add74 = add nsw i32 %sub, %sub22
  %add73 = add nsw i32 %sub22, %conv
  %arrayidx31.1 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx31.1, align 4
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 %add73)
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 %add74)
  %conv41.1 = sext i32 %32 to i64
  %conv44.1 = sext i32 %30 to i64
  %conv47.1 = zext i32 %28 to i64
  %add48.1 = add nsw i64 %conv44.1, %conv47.1
  %sub49.1 = sub nsw i64 %add48.1, %conv41.1
  %33 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx31.1, align 4
  %34 = tail call i64 @llvm.smax.i64(i64 %sub49.1, i64 1)
  %conv60.1 = sext i32 %add75 to i64
  %sub61.1 = sub nsw i64 %conv60.1, %conv41.1
  %35 = tail call i64 @llvm.smin.i64(i64 %34, i64 %sub61.1)
  %cond68.off0.1 = trunc i64 %35 to i32
  %36 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond68.off0.1, ptr %arrayidx25.1, align 4
  br label %if.end72.1

if.end72.1:                                       ; preds = %if.else.1, %if.end72.if.end72.1_crit_edge
  %37 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx25, align 4
  %39 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx25.1, align 4
  %or = or i32 %40, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp80 = icmp eq i32 %or, 0
  br i1 %cmp80, label %if.then82, label %if.end72.1.if.end97_crit_edge

if.end72.1.if.end97_crit_edge:                    ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.then82:                                        ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %vbistart to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vbistart, align 4
  %conv85 = zext i16 %42 to i32
  %start86 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 4
  %43 = ptrtoint ptr %start86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv85, ptr %start86, align 4
  %44 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx17, align 2
  %conv90 = zext i16 %45 to i32
  %arrayidx92 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv90, ptr %arrayidx92, align 4
  %47 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %arrayidx25, align 4
  %48 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %arrayidx25.1, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then82, %if.end72.1.if.end97_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 6
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %flags, align 4
  %reserved = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 7
  %50 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %reserved, align 4
  %arrayidx100 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx100, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end97 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_s_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr noundef %f, ptr nocapture noundef %frt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %btv1 = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %btv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btv1, align 4
  %lock = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %resources = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resources, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end:                                           ; preds = %entry
  %tvnorm2 = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 42
  %4 = ptrtoint ptr %tvnorm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tvnorm2, align 4
  %arrayidx = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %5
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %frt, i32 0, i32 1
  %crop_start = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 87
  %6 = ptrtoint ptr %crop_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crop_start, align 8
  %call = tail call fastcc i32 @try_fmt(ptr noundef %fmt, ptr noundef %arrayidx, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end4, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %start = getelementptr inbounds %struct.v4l2_format, ptr %frt, i32 0, i32 1, i32 0, i32 4
  %arrayidx6 = getelementptr %struct.v4l2_format, ptr %frt, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %vbistart = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %5, i32 16
  %arrayidx7 = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %5, i32 16, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx7, align 2
  %conv = zext i16 %11 to i32
  %sub = sub i32 %9, %conv
  %12 = ptrtoint ptr %vbistart to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vbistart, align 4
  %conv10 = zext i16 %13 to i32
  %add = add i32 %sub, %conv10
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 %add)
  %mul = shl i32 %16, 1
  %add16 = add i32 %mul, 2
  %vbi = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %vbi, i32 noundef 0) #4
  %vbi_fmt = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 12
  %17 = call ptr @memcpy(ptr %vbi_fmt, ptr %fmt, i32 44)
  %tvnorm20 = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %tvnorm20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %tvnorm20, align 4
  %end22 = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 12, i32 2
  %19 = ptrtoint ptr %end22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add16, ptr %end22, align 4
  tail call void @mutex_unlock(ptr noundef %vbi) #4
  br label %fail

fail:                                             ; preds = %if.end4, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %rc.0 = phi i32 [ -16, %entry.fail_crit_edge ], [ %call, %if.end.fail_crit_edge ], [ 0, %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %rc.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_g_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %f, ptr nocapture noundef %frt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %frt, i32 0, i32 1
  %vbi_fmt = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 12
  %0 = call ptr @memcpy(ptr %fmt, ptr %vbi_fmt, i32 44)
  %btv = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 1
  %1 = ptrtoint ptr %btv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %btv, align 4
  %tvnorm2 = getelementptr inbounds %struct.bttv, ptr %2, i32 0, i32 42
  %3 = ptrtoint ptr %tvnorm2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tvnorm2, align 4
  %arrayidx = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %4
  %tvnorm4 = getelementptr inbounds %struct.bttv_fh, ptr %f, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %tvnorm4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tvnorm4, align 4
  %cmp.not = icmp eq ptr %arrayidx, %6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %top = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %4, i32 17, i32 1, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %top, align 4
  %height = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %4, i32 17, i32 1, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %add = add i32 %10, %8
  %shr = lshr i32 %add, 1
  %Fsc = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %4, i32 2
  %11 = ptrtoint ptr %Fsc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %Fsc, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fmt, align 4
  %start = getelementptr inbounds %struct.v4l2_format, ptr %frt, i32 0, i32 1, i32 0, i32 4
  %vbistart = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %4, i32 16
  %count = getelementptr inbounds %struct.v4l2_format, ptr %frt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx41 = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %4, i32 16, i32 1
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx41, align 2
  %conv42 = zext i16 %15 to i32
  %16 = ptrtoint ptr %vbistart to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vbistart, align 4
  %conv45 = zext i16 %17 to i32
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start, align 4
  %add12 = add i32 %19, %conv45
  %20 = ptrtoint ptr %tvnorm4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tvnorm4, align 4
  %arrayidx16 = getelementptr %struct.bttv_tvnorm, ptr %21, i32 0, i32 16, i32 0
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %23 to i32
  %sub = sub i32 %add12, %conv17
  %sub18 = add nsw i32 %shr, -1
  %24 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %sub18)
  %25 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %start, align 4
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  %sub29 = sub i32 %shr, %24
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %sub29)
  %29 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %count, align 4
  %sub46 = add nuw i32 %shr, %conv42
  %add47 = sub i32 %sub46, %conv45
  %arrayidx10.1 = getelementptr %struct.v4l2_format, ptr %frt, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10.1, align 4
  %add12.1 = add i32 %31, %conv42
  %32 = ptrtoint ptr %tvnorm4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tvnorm4, align 4
  %arrayidx16.1 = getelementptr %struct.bttv_tvnorm, ptr %33, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx16.1, align 2
  %conv17.1 = zext i16 %35 to i32
  %sub.1 = sub i32 %add12.1, %conv17.1
  %sub18.1 = add i32 %add47, -1
  %36 = tail call i32 @llvm.smin.i32(i32 %sub.1, i32 %sub18.1)
  %37 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx10.1, align 4
  %arrayidx25.1 = getelementptr %struct.v4l2_format, ptr %frt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx25.1, align 4
  %sub29.1 = sub i32 %add47, %36
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %sub29.1)
  %41 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx25.1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_vbi_fmt_reset(ptr nocapture noundef writeonly %f, i32 noundef %norm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %Fsc = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %norm, i32 2
  %0 = ptrtoint ptr %Fsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Fsc, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %f, align 4
  %samples_per_line = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 2
  %3 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2048, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 244, ptr %offset, align 4
  %vbistart = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %norm, i32 16
  %6 = ptrtoint ptr %vbistart to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vbistart, align 4
  %conv = zext i16 %7 to i32
  %start = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %start, align 4
  %arrayidx8 = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %norm, i32 16, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %10 to i32
  %arrayidx12 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %arrayidx12, align 4
  %count = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 5
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %count, align 4
  %arrayidx17 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %arrayidx17, align 4
  %flags = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags, align 4
  %reserved = getelementptr inbounds %struct.v4l2_vbi_format, ptr %f, i32 0, i32 7
  %15 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %reserved, align 4
  %arrayidx23 = getelementptr %struct.v4l2_vbi_format, ptr %f, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx23, align 4
  %top = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %norm, i32 17, i32 2, i32 1
  %17 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top, align 4
  %shr = ashr i32 %18, 1
  %sub = sub nsw i32 %shr, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp37 = icmp ugt i32 %sub, 16
  br i1 %cmp37, label %do.body46, label %do.end54, !prof !50

do.body46:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-vbi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #4, !srcloc !52
  unreachable

do.end54:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %norm
  %tvnorm55 = getelementptr inbounds %struct.bttv_vbi_fmt, ptr %f, i32 0, i32 1
  %19 = ptrtoint ptr %tvnorm55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx, ptr %tvnorm55, align 4
  %mul59 = shl nuw nsw i32 %conv, 1
  %add60 = add nuw nsw i32 %mul59, 2
  %end = getelementptr inbounds %struct.bttv_vbi_fmt, ptr %f, i32 0, i32 2
  %20 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add60, ptr %end, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_to_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_risc_packed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_dma_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_set_dma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__param_vbibufs, !1, !"__param_vbibufs", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_vbibufstype321, !1, !"__UNIQUE_ID_vbibufstype321", i1 false, i1 false}
!3 = !{ptr @__param_vbi_debug, !4, !"__param_vbi_debug", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 51, i32 1}
!5 = !{ptr @__UNIQUE_ID_vbi_debugtype322, !4, !"__UNIQUE_ID_vbi_debugtype322", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_vbibufs323, !7, !"__UNIQUE_ID_vbibufs323", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 52, i32 1}
!8 = !{ptr @__UNIQUE_ID_vbi_debug324, !9, !"__UNIQUE_ID_vbi_debug324", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 53, i32 1}
!10 = !{ptr @bttv_vbi_qops, !11, !"bttv_vbi_qops", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 224, i32 33}
!12 = !{ptr @vbi_debug, !13, !"vbi_debug", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 48, i32 21}
!14 = !{ptr @__param_str_vbibufs, !1, !"__param_str_vbibufs", i1 false, i1 false}
!15 = !{ptr @vbibufs, !16, !"vbibufs", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 47, i32 21}
!17 = !{ptr @__param_str_vbi_debug, !4, !"__param_str_vbi_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 81, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vbi_buffer_setup.__UNIQUE_ID_ddebug325, !19, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!24 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 188, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vbi_buffer_prepare.__UNIQUE_ID_ddebug330, !26, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!29 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 205, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vbi_buffer_queue.__UNIQUE_ID_ddebug331, !31, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/bt8xx/bttv-vbi.c", i32 220, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vbi_buffer_release.__UNIQUE_ID_ddebug332, !36, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!39 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148963584, i64 2148963589, i64 2148963602, i64 2148963646, i64 2148963680, i64 2148963701}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2157345556, i64 2157346055, i64 2157345593, i64 2157345649, i64 2157345683, i64 2157345707, i64 2157345748, i64 2157345769, i64 2157345797, i64 2157345831}
!52 = !{i64 2157374594, i64 2157375093, i64 2157374631, i64 2157374687, i64 2157374721, i64 2157374745, i64 2157374786, i64 2157374807, i64 2157374835, i64 2157374869}
