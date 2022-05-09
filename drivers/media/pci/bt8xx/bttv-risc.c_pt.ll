; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/bttv-risc.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/bttv-risc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bttv_tvnorm = type { i32, ptr, i32, i16, i16, i16, i8, i8, i8, i32, i16, i16, i16, i8, i16, i32, [2 x i16], %struct.v4l2_cropcap }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.bttv_core = type { %struct.v4l2_device, ptr, %struct.i2c_adapter, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.btcx_riscmem = type { i32, ptr, ptr, i32 }
%struct.bttv = type { %struct.bttv_core, i16, i8, ptr, i32, i32, i32, i32, i32, i8, %struct.bttv_pll_info, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, %struct.video_device, %struct.video_device, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, ptr, %struct.IR_i2c_init_data, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.v4l2_framebuffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bttv_tea575x_gpio, %struct.snd_tea575x, i32, i32, i32, [4 x i8], %struct.btcx_riscmem, ptr, %struct.list_head, %struct.list_head, %struct.bttv_buffer_set, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.bttv_suspend_state, i32, i32, i32, i32, i32, %struct.bttv_fh, %struct.work_struct, [2 x %struct.bttv_crop], i32, i32 }
%struct.bttv_pll_info = type { i32, i32, i32, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bttv_tea575x_gpio = type { i8, i8, i8, i8 }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bttv_buffer_set = type { ptr, ptr, i32, i32 }
%struct.bttv_suspend_state = type { i32, i32, i32, i32, %struct.bttv_buffer_set, ptr }
%struct.bttv_fh = type { %struct.v4l2_fh, ptr, i32, i32, %struct.videobuf_queue, ptr, i32, i32, ptr, %struct.bttv_overlay, i32, %struct.videobuf_queue, %struct.bttv_vbi_fmt }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.bttv_overlay = type { i32, %struct.v4l2_rect, i32, ptr, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.bttv_vbi_fmt = type { %struct.v4l2_vbi_format, ptr, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.bttv_crop = type { %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bttv_buffer = type { %struct.videobuf_buffer, ptr, i32, i32, i32, %struct.bttv_geometry, %struct.btcx_riscmem, %struct.btcx_riscmem, %struct.v4l2_rect, [2 x i32], [2 x i32] }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.bttv_geometry = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i16 }
%struct.bttv_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.videobuf_dmabuf = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.btcx_skiplist = type { i32, i32 }

@bttv_debug = external dso_local local_unnamed_addr global i32, align 4
@bttv_set_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%d: capctl=%x lirq=%d top=%08llx/%08llx even=%08llx/%08llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bttv_set_dma\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/bt8xx/bttv-risc.c\00", [60 x i8] zeroinitializer }, align 32
@bttv_set_dma._entry_ptr = internal global ptr @bttv_set_dma._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bttv_risc_init_main.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bttv\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bttv_risc_init_main\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d: risc main @ %08llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bttv: %d: risc main @ %08llx\0A\00", [34 x i8] zeroinitializer }, align 32
@bttv_risc_hook._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d: risc=%p slot[%d]=NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bttv_risc_hook\00", [17 x i8] zeroinitializer }, align 32
@bttv_risc_hook._entry_ptr = internal global ptr @bttv_risc_hook._entry, section ".printk_index", align 4
@bttv_risc_hook._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d: risc=%p slot[%d]=%08llx irq=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@bttv_risc_hook._entry_ptr.11 = internal global ptr @bttv_risc_hook._entry.9, section ".printk_index", align 4
@bttv_tvnorms = external dso_local constant [0 x %struct.bttv_tvnorm], align 4
@bttv_buffer_risc.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bttv_buffer_risc\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%d: buffer field: %s  format: 0x%08x  size: %dx%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bttv: %d: buffer field: %s  format: 0x%08x  size: %dx%d\0A\00", [39 x i8] zeroinitializer }, align 32
@v4l2_field_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@bttv_overlay_risc.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bttv_overlay_risc\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d: overlay fields: %s format: 0x%08x  size: %dx%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bttv: %d: overlay fields: %s format: 0x%08x  size: %dx%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 468, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 511, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 551, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 554, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 701, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [39 x i8] c"../drivers/media/pci/bt8xx/bttv-risc.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 862, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @bttv_risc_hook._entry, ptr @bttv_risc_hook._entry.9, ptr @bttv_risc_hook._entry_ptr, ptr @bttv_risc_hook._entry_ptr.11, ptr @bttv_set_dma._entry, ptr @bttv_set_dma._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_set_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_risc_hook._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_risc_hook._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_risc_packed(ptr nocapture noundef readonly %btv, ptr noundef %risc, ptr noundef %sglist, i32 noundef %offset, i32 noundef %bpl, i32 noundef %padding, i32 noundef %skip_lines, i32 noundef %store_lines) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %skip_lines, 2
  %add = add i32 %padding, %bpl
  %mul1 = mul i32 %add, %store_lines
  %div142 = lshr i32 %mul1, 12
  %add2 = add i32 %store_lines, 1
  %add3 = add i32 %add2, %div142
  %mul4 = shl i32 %add3, 3
  %add5 = add i32 %mul, 16
  %add6 = add i32 %add5, %mul4
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %call = tail call i32 @btcx_riscmem_alloc(ptr noundef %1, ptr noundef %risc, i32 noundef %add6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 1
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu, align 4
  %incdec.ptr = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100663424, ptr %3, align 4
  %incdec.ptr7 = getelementptr i32, ptr %3, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_lines)
  %cmp8.not143 = icmp eq i32 %skip_lines, 0
  br i1 %cmp8.not143, label %if.end.for.cond.preheader_crit_edge, label %while.body.lr.ph

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

while.body.lr.ph:                                 ; preds = %if.end
  %or = or i32 %bpl, 738197504
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  br label %while.body

for.cond.preheader:                               ; preds = %while.body.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  %rp.0.lcssa = phi ptr [ %incdec.ptr7, %if.end.for.cond.preheader_crit_edge ], [ %incdec.ptr9, %while.body.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %store_lines)
  %cmp10165.not = icmp eq i32 %store_lines, 0
  br i1 %cmp10165.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %opt_vcr_hack = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 52
  %sub = add i32 %store_lines, -4
  %or26 = or i32 %bpl, 469762048
  %7 = tail call i32 @llvm.bswap.i32(i32 %or26)
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %rp.0145 = phi ptr [ %incdec.ptr7, %while.body.lr.ph ], [ %incdec.ptr9, %while.body.while.body_crit_edge ]
  %skip_lines.addr.0144 = phi i32 [ %skip_lines, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %skip_lines.addr.0144, -1
  %incdec.ptr9 = getelementptr i32, ptr %rp.0145, i32 1
  %8 = ptrtoint ptr %rp.0145 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %rp.0145, align 4
  %cmp8.not = icmp eq i32 %dec, 0
  br i1 %cmp8.not, label %while.body.for.cond.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.for.cond.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rp.1169 = phi ptr [ %rp.0.lcssa, %for.body.lr.ph ], [ %rp.4, %for.inc.for.body_crit_edge ]
  %sg.0168 = phi ptr [ %sglist, %for.body.lr.ph ], [ %sg.4, %for.inc.for.body_crit_edge ]
  %line.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %offset.addr.0166 = phi i32 [ %offset, %for.body.lr.ph ], [ %offset.addr.3, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %opt_vcr_hack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opt_vcr_hack, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %line.0167, i32 %sub)
  %cmp11.not = icmp ult i32 %line.0167, %sub
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %while.cond14.preheader, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.cond14.preheader:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.addr.0166)
  %tobool15.not146 = icmp eq i32 %offset.addr.0166, 0
  br i1 %tobool15.not146, label %while.cond14.preheader.while.end21_crit_edge, label %while.cond14.preheader.land.rhs_crit_edge

while.cond14.preheader.land.rhs_crit_edge:        ; preds = %while.cond14.preheader
  br label %land.rhs

while.cond14.preheader.while.end21_crit_edge:     ; preds = %while.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end21

land.rhs:                                         ; preds = %while.body17.land.rhs_crit_edge, %while.cond14.preheader.land.rhs_crit_edge
  %sg.1148 = phi ptr [ %call20, %while.body17.land.rhs_crit_edge ], [ %sg.0168, %while.cond14.preheader.land.rhs_crit_edge ]
  %offset.addr.1147 = phi i32 [ %sub19, %while.body17.land.rhs_crit_edge ], [ %offset.addr.0166, %while.cond14.preheader.land.rhs_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.1148, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.1147, i32 %12)
  %cmp16.not = icmp ult i32 %offset.addr.1147, %12
  br i1 %cmp16.not, label %land.rhs.while.end21_crit_edge, label %while.body17

land.rhs.while.end21_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end21

while.body17:                                     ; preds = %land.rhs
  %sub19 = sub i32 %offset.addr.1147, %12
  %call20 = tail call ptr @sg_next(ptr noundef %sg.1148) #7
  %tobool15.not = icmp eq i32 %sub19, 0
  br i1 %tobool15.not, label %while.body17.while.end21_crit_edge, label %while.body17.land.rhs_crit_edge

while.body17.land.rhs_crit_edge:                  ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body17.while.end21_crit_edge:               ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end21

while.end21:                                      ; preds = %while.body17.while.end21_crit_edge, %land.rhs.while.end21_crit_edge, %while.cond14.preheader.while.end21_crit_edge
  %offset.addr.1.lcssa = phi i32 [ 0, %while.cond14.preheader.while.end21_crit_edge ], [ 0, %while.body17.while.end21_crit_edge ], [ %offset.addr.1147, %land.rhs.while.end21_crit_edge ]
  %sg.1.lcssa = phi ptr [ %sg.0168, %while.cond14.preheader.while.end21_crit_edge ], [ %call20, %while.body17.while.end21_crit_edge ], [ %sg.1148, %land.rhs.while.end21_crit_edge ]
  %dma_length22 = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length22, align 4
  %sub23 = sub i32 %14, %offset.addr.1.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %bpl)
  %cmp24.not = icmp ult i32 %sub23, %bpl
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %while.end21
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr27 = getelementptr i32, ptr %rp.1169, i32 1
  %15 = ptrtoint ptr %rp.1169 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %rp.1169, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  %add28 = add i32 %17, %offset.addr.1.lcssa
  %18 = tail call i32 @llvm.bswap.i32(i32 %add28)
  %incdec.ptr29 = getelementptr i32, ptr %rp.1169, i32 2
  %19 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr27, align 4
  %add30 = add i32 %offset.addr.1.lcssa, %bpl
  br label %if.end60

if.else:                                          ; preds = %while.end21
  %or33 = or i32 %sub23, 402653184
  %20 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %incdec.ptr34 = getelementptr i32, ptr %rp.1169, i32 1
  %21 = ptrtoint ptr %rp.1169 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rp.1169, align 4
  %dma_address35 = getelementptr inbounds %struct.scatterlist, ptr %sg.1.lcssa, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address35, align 4
  %add36 = add i32 %23, %offset.addr.1.lcssa
  %24 = tail call i32 @llvm.bswap.i32(i32 %add36)
  %25 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %incdec.ptr34, align 4
  %26 = ptrtoint ptr %dma_length22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_length22, align 4
  %sub39.neg = add i32 %offset.addr.1.lcssa, %bpl
  %sub40 = sub i32 %sub39.neg, %27
  %call41 = tail call ptr @sg_next(ptr noundef %sg.1.lcssa) #7
  %rp.2153 = getelementptr i32, ptr %rp.1169, i32 2
  %dma_length43154 = getelementptr inbounds %struct.scatterlist, ptr %call41, i32 0, i32 4
  %28 = ptrtoint ptr %dma_length43154 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length43154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub40, i32 %29)
  %cmp44155 = icmp ugt i32 %sub40, %29
  br i1 %cmp44155, label %if.else.while.body45_crit_edge, label %if.else.while.end54_crit_edge

if.else.while.end54_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end54

if.else.while.body45_crit_edge:                   ; preds = %if.else
  br label %while.body45

while.body45:                                     ; preds = %while.body45.while.body45_crit_edge, %if.else.while.body45_crit_edge
  %30 = phi i32 [ %40, %while.body45.while.body45_crit_edge ], [ %29, %if.else.while.body45_crit_edge ]
  %dma_length43160 = phi ptr [ %dma_length43, %while.body45.while.body45_crit_edge ], [ %dma_length43154, %if.else.while.body45_crit_edge ]
  %rp.2159 = phi ptr [ %rp.2, %while.body45.while.body45_crit_edge ], [ %rp.2153, %if.else.while.body45_crit_edge ]
  %rp.1.pn158 = phi ptr [ %rp.2159, %while.body45.while.body45_crit_edge ], [ %rp.1169, %if.else.while.body45_crit_edge ]
  %sg.2157 = phi ptr [ %call53, %while.body45.while.body45_crit_edge ], [ %call41, %if.else.while.body45_crit_edge ]
  %todo.0156 = phi i32 [ %sub52, %while.body45.while.body45_crit_edge ], [ %sub40, %if.else.while.body45_crit_edge ]
  %or47 = or i32 %30, 268435456
  %31 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %incdec.ptr48 = getelementptr i32, ptr %rp.1.pn158, i32 3
  %32 = ptrtoint ptr %rp.2159 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rp.2159, align 4
  %dma_address49 = getelementptr inbounds %struct.scatterlist, ptr %sg.2157, i32 0, i32 3
  %33 = ptrtoint ptr %dma_address49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_address49, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %incdec.ptr48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %incdec.ptr48, align 4
  %37 = ptrtoint ptr %dma_length43160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length43160, align 4
  %sub52 = sub i32 %todo.0156, %38
  %call53 = tail call ptr @sg_next(ptr noundef %sg.2157) #7
  %rp.2 = getelementptr i32, ptr %rp.2159, i32 2
  %dma_length43 = getelementptr inbounds %struct.scatterlist, ptr %call53, i32 0, i32 4
  %39 = ptrtoint ptr %dma_length43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_length43, align 4
  %cmp44 = icmp ugt i32 %sub52, %40
  br i1 %cmp44, label %while.body45.while.body45_crit_edge, label %while.body45.while.end54_crit_edge

while.body45.while.end54_crit_edge:               ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end54

while.body45.while.body45_crit_edge:              ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body45

while.end54:                                      ; preds = %while.body45.while.end54_crit_edge, %if.else.while.end54_crit_edge
  %todo.0.lcssa = phi i32 [ %sub40, %if.else.while.end54_crit_edge ], [ %sub52, %while.body45.while.end54_crit_edge ]
  %sg.2.lcssa = phi ptr [ %call41, %if.else.while.end54_crit_edge ], [ %call53, %while.body45.while.end54_crit_edge ]
  %rp.1.pn.lcssa = phi ptr [ %rp.1169, %if.else.while.end54_crit_edge ], [ %rp.2159, %while.body45.while.end54_crit_edge ]
  %rp.2.lcssa = phi ptr [ %rp.2153, %if.else.while.end54_crit_edge ], [ %rp.2, %while.body45.while.end54_crit_edge ]
  %or55 = or i32 %todo.0.lcssa, 335544320
  %41 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %incdec.ptr56 = getelementptr i32, ptr %rp.1.pn.lcssa, i32 3
  %42 = ptrtoint ptr %rp.2.lcssa to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rp.2.lcssa, align 4
  %dma_address57 = getelementptr inbounds %struct.scatterlist, ptr %sg.2.lcssa, i32 0, i32 3
  %43 = ptrtoint ptr %dma_address57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_address57, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %incdec.ptr58 = getelementptr i32, ptr %rp.1.pn.lcssa, i32 4
  %46 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %incdec.ptr56, align 4
  br label %if.end60

if.end60:                                         ; preds = %while.end54, %if.then25
  %offset.addr.2 = phi i32 [ %add30, %if.then25 ], [ %todo.0.lcssa, %while.end54 ]
  %sg.3 = phi ptr [ %sg.1.lcssa, %if.then25 ], [ %sg.2.lcssa, %while.end54 ]
  %rp.3 = phi ptr [ %incdec.ptr29, %if.then25 ], [ %incdec.ptr58, %while.end54 ]
  %add61 = add i32 %offset.addr.2, %padding
  br label %for.inc

for.inc:                                          ; preds = %if.end60, %for.body.for.inc_crit_edge
  %offset.addr.3 = phi i32 [ %add61, %if.end60 ], [ %offset.addr.0166, %for.body.for.inc_crit_edge ]
  %sg.4 = phi ptr [ %sg.3, %if.end60 ], [ %sg.0168, %for.body.for.inc_crit_edge ]
  %rp.4 = phi ptr [ %rp.3, %if.end60 ], [ %rp.1169, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %line.0167, 1
  %exitcond.not = icmp eq i32 %inc, %store_lines
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rp.1.lcssa = phi ptr [ %rp.0.lcssa, %for.cond.preheader.for.end_crit_edge ], [ %rp.4, %for.inc.for.end_crit_edge ]
  %jmp = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 2
  %47 = ptrtoint ptr %jmp to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rp.1.lcssa, ptr %jmp, align 4
  %48 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cpu, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %rp.1.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %49 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 8
  %mul65 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %50 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul65, i32 %51)
  %cmp66 = icmp ugt i32 %mul65, %51
  br i1 %cmp66, label %do.body70, label %for.end.cleanup_crit_edge, !prof !40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-risc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btcx_riscmem_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_set_dma(ptr noundef %btv, i32 noundef %override) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_ctl = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 74
  %curr = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 70
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 4
  %cmp.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %cmp.not, i32 0, i32 2
  %2 = ptrtoint ptr %cap_ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.store.select, ptr %cap_ctl, align 8
  %bottom = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 70, i32 1
  %3 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bottom, align 4
  %cmp3.not = icmp eq ptr %4, null
  br i1 %cmp3.not, label %entry.if.end7_crit_edge, label %if.then4

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %spec.store.select, 1
  %5 = ptrtoint ptr %cap_ctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or6, ptr %cap_ctl, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %entry.if.end7_crit_edge
  %cvbi = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 71
  %6 = ptrtoint ptr %cvbi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cvbi, align 4
  %cmp8.not = icmp eq ptr %7, null
  br i1 %cmp8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %cap_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cap_ctl, align 8
  %or11 = or i32 %9, 12
  store i32 %or11, ptr %cap_ctl, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %10 = ptrtoint ptr %cap_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap_ctl, align 8
  %and = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 3
  %and16 = and i32 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, i32 0, i32 12
  %or19 = or i32 %cond18, %override
  %or20 = or i32 %or19, %cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %12 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp21 = icmp ugt i32 %12, 1
  br i1 %cmp21, label %do.end, label %if.end12.do.end65_crit_edge

if.end12.do.end65_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end:                                           ; preds = %if.end12
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %13 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr, align 8
  %loop_irq = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 72
  %15 = ptrtoint ptr %loop_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %loop_irq, align 8
  br i1 %cmp8.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dma = getelementptr inbounds %struct.bttv_buffer, ptr %7, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  %conv = zext i32 %18 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond28 = phi i64 [ %conv, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  br i1 %cmp.not, label %cond.end.cond.end39_crit_edge, label %cond.true32

cond.end.cond.end39_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end39

cond.true32:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %dma36 = getelementptr inbounds %struct.bttv_buffer, ptr %1, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %dma36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma36, align 4
  %conv37 = zext i32 %20 to i64
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true32, %cond.end.cond.end39_crit_edge
  %cond40 = phi i64 [ %conv37, %cond.true32 ], [ 0, %cond.end.cond.end39_crit_edge ]
  br i1 %cmp8.not, label %cond.end39.cond.end49_crit_edge, label %cond.true43

cond.end39.cond.end49_crit_edge:                  ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end49

cond.true43:                                      ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #9
  %dma46 = getelementptr inbounds %struct.bttv_buffer, ptr %7, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %dma46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma46, align 4
  %conv47 = zext i32 %22 to i64
  br label %cond.end49

cond.end49:                                       ; preds = %cond.true43, %cond.end39.cond.end49_crit_edge
  %cond50 = phi i64 [ %conv47, %cond.true43 ], [ 0, %cond.end39.cond.end49_crit_edge ]
  br i1 %cmp3.not, label %cond.end49.cond.end61_crit_edge, label %cond.true54

cond.end49.cond.end61_crit_edge:                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end61

cond.true54:                                      ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #9
  %dma58 = getelementptr inbounds %struct.bttv_buffer, ptr %4, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %dma58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma58, align 4
  %conv59 = zext i32 %24 to i64
  br label %cond.end61

cond.end61:                                       ; preds = %cond.true54, %cond.end49.cond.end61_crit_edge
  %cond62 = phi i64 [ %conv59, %cond.true54 ], [ 0, %cond.end49.cond.end61_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %14, i32 noundef %or20, i32 noundef %16, i64 noundef %cond28, i64 noundef %cond40, i64 noundef %cond50, i64 noundef %cond62) #10
  br label %do.end65

do.end65:                                         ; preds = %cond.end61, %if.end12.do.end65_crit_edge
  %loop_irq66 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 72
  %25 = ptrtoint ptr %loop_irq66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %loop_irq66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool67.not = icmp eq i32 %26, 0
  br i1 %tobool67.not, label %if.end77, label %if.end77.thread

if.end77:                                         ; preds = %do.end65
  %frame_irq = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 70, i32 3
  %27 = ptrtoint ptr %frame_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool79.not = icmp eq i32 %28, 0
  br i1 %tobool79.not, label %lor.lhs.false82, label %if.end77.if.then85_crit_edge

if.end77.if.then85_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

if.end77.thread:                                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  %and71 = shl i32 %26, 16
  %shl = and i32 %and71, 983040
  %neg = shl i32 %26, 20
  %and74 = and i32 %neg, 15728640
  %or72 = or i32 %shl, %and74
  %or76 = xor i32 %or72, 1911554048
  br label %if.then85

lor.lhs.false82:                                  ; preds = %if.end77
  %29 = ptrtoint ptr %cvbi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cvbi, align 4
  %tobool84.not = icmp eq ptr %30, null
  br i1 %tobool84.not, label %if.else, label %lor.lhs.false82.if.then85_crit_edge

lor.lhs.false82.if.then85_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

if.then85:                                        ; preds = %lor.lhs.false82.if.then85_crit_edge, %if.end77.thread, %if.end77.if.then85_crit_edge
  %cmd.0203 = phi i32 [ 1879048192, %lor.lhs.false82.if.then85_crit_edge ], [ 1879048192, %if.end77.if.then85_crit_edge ], [ %or76, %if.end77.thread ]
  %timeout = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 50
  %call87 = tail call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add) #7
  br label %if.end90

if.else:                                          ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #9
  %timeout88 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 76
  %call89 = tail call i32 @del_timer(ptr noundef %timeout88) #7
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.then85
  %cmd.0202 = phi i32 [ 1879048192, %if.else ], [ %cmd.0203, %if.then85 ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %cmd.0202)
  %cpu = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpu, align 4
  %arrayidx = getelementptr i32, ptr %34, i32 14
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %36 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 220
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %39 = and i32 %38, -251658241
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %or98 = or i32 %40, %or20
  %41 = tail call i32 @llvm.bswap.i32(i32 %or98)
  %42 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr100 = getelementptr i8, ptr %43, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %41) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or20)
  %tobool101.not = icmp eq i32 %or20, 0
  %dma_on128 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 75
  %44 = ptrtoint ptr %dma_on128 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_on128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool129.not = icmp eq i32 %45, 0
  br i1 %tobool101.not, label %if.else127, label %if.then102

if.then102:                                       ; preds = %if.end90
  br i1 %tobool129.not, label %do.body106, label %if.then102.cleanup_crit_edge

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body106:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %dma110 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %46 = ptrtoint ptr %dma110 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma110, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr112 = getelementptr i8, ptr %50, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %48) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr119 = getelementptr i8, ptr %52, i32 268
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %54 = or i32 %53, 50331648
  %55 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr125 = getelementptr i8, ptr %56, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %54) #7, !srcloc !45
  br label %cleanup.sink.split

if.else127:                                       ; preds = %if.end90
  br i1 %tobool129.not, label %if.else127.cleanup_crit_edge, label %do.body132

if.else127.cleanup_crit_edge:                     ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body132:                                       ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr138 = getelementptr i8, ptr %58, i32 268
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %60 = and i32 %59, -50331649
  %61 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr144 = getelementptr i8, ptr %62, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %60) #7, !srcloc !45
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body132, %do.body106
  %.sink = phi i32 [ 1, %do.body106 ], [ 0, %do.body132 ]
  %63 = ptrtoint ptr %dma_on128 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink, ptr %dma_on128, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else127.cleanup_crit_edge, %if.then102.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_risc_init_main(ptr noundef %btv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %main = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66
  %call = tail call i32 @btcx_riscmem_alloc(ptr noundef %1, ptr noundef %main, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %2 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp1.not, label %do.body.do.end13_crit_edge, label %do.body3

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bttv_risc_init_main.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bttv_risc_init_main, %if.then7)) #7
          to label %do.end13 [label %if.then7], !srcloc !51

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %dma = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  %conv = zext i32 %6 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bttv_risc_init_main.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.6, i32 noundef %4, i64 noundef %conv) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %do.body3, %do.body.do.end13_crit_edge
  %cpu = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 75497600, ptr %8, align 4
  %10 = load ptr, ptr %cpu, align 4
  %arrayidx17 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx17, align 4
  %12 = load ptr, ptr %cpu, align 4
  %arrayidx20 = getelementptr i32, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 112, ptr %arrayidx20, align 4
  %dma22 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %14 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma22, align 4
  %add = add i32 %15, 16
  %16 = tail call i32 @llvm.bswap.i32(i32 %add)
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu, align 4
  %arrayidx25 = getelementptr i32, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %arrayidx25, align 4
  %20 = load ptr, ptr %cpu, align 4
  %arrayidx28 = getelementptr i32, ptr %20, i32 4
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 112, ptr %arrayidx28, align 4
  %22 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma22, align 4
  %add31 = add i32 %23, 24
  %24 = tail call i32 @llvm.bswap.i32(i32 %add31)
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpu, align 4
  %arrayidx34 = getelementptr i32, ptr %26, i32 5
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %arrayidx34, align 4
  %28 = load ptr, ptr %cpu, align 4
  %arrayidx37 = getelementptr i32, ptr %28, i32 6
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 112, ptr %arrayidx37, align 4
  %30 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma22, align 4
  %add40 = add i32 %31, 32
  %32 = tail call i32 @llvm.bswap.i32(i32 %add40)
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpu, align 4
  %arrayidx43 = getelementptr i32, ptr %34, i32 7
  %35 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %arrayidx43, align 4
  %36 = load ptr, ptr %cpu, align 4
  %arrayidx46 = getelementptr i32, ptr %36, i32 8
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 209715328, ptr %arrayidx46, align 4
  %38 = load ptr, ptr %cpu, align 4
  %arrayidx49 = getelementptr i32, ptr %38, i32 9
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx49, align 4
  %40 = load ptr, ptr %cpu, align 4
  %arrayidx52 = getelementptr i32, ptr %40, i32 10
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 112, ptr %arrayidx52, align 4
  %42 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma22, align 4
  %add55 = add i32 %43, 48
  %44 = tail call i32 @llvm.bswap.i32(i32 %add55)
  %45 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpu, align 4
  %arrayidx58 = getelementptr i32, ptr %46, i32 11
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %arrayidx58, align 4
  %48 = load ptr, ptr %cpu, align 4
  %arrayidx61 = getelementptr i32, ptr %48, i32 12
  %49 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 112, ptr %arrayidx61, align 4
  %50 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma22, align 4
  %add64 = add i32 %51, 56
  %52 = tail call i32 @llvm.bswap.i32(i32 %add64)
  %53 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cpu, align 4
  %arrayidx67 = getelementptr i32, ptr %54, i32 13
  %55 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %arrayidx67, align 4
  %56 = load ptr, ptr %cpu, align 4
  %arrayidx70 = getelementptr i32, ptr %56, i32 14
  %57 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 112, ptr %arrayidx70, align 4
  %58 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma22, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cpu, align 4
  %arrayidx76 = getelementptr i32, ptr %62, i32 15
  %63 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %arrayidx76, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end13 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_risc_hook(ptr nocapture noundef readonly %btv, i32 noundef %slot, ptr noundef %risc, i32 noundef %irqflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 4
  %add = shl i32 %slot, 2
  %shl = add i32 %add, 8
  %add1 = add i32 %shl, %1
  %cmp = icmp eq ptr %risc, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %2 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  br i1 %cmp2, label %do.end, label %do.body.if.end38_crit_edge

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %4, ptr noundef null, i32 noundef %slot) #10
  br label %if.end38

do.body9:                                         ; preds = %entry
  br i1 %cmp2, label %do.end14, label %do.body9.do.end22_crit_edge

do.body9.do.end22_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %nr17 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %5 = ptrtoint ptr %nr17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr17, align 8
  %dma18 = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 3
  %7 = ptrtoint ptr %dma18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma18, align 4
  %conv = zext i32 %8 to i64
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %6, ptr noundef nonnull %risc, i32 noundef %slot, i64 noundef %conv, i32 noundef %irqflags) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %do.body9.do.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irqflags)
  %tobool.not = icmp eq i32 %irqflags, 0
  %and = shl i32 %irqflags, 16
  %shl24 = and i32 %and, 983040
  %neg = shl i32 %irqflags, 20
  %and26 = and i32 %neg, 15728640
  %or25 = or i32 %shl24, %and26
  %or28 = xor i32 %or25, 1911554048
  %cmd.0 = select i1 %tobool.not, i32 1879048192, i32 %or28
  %9 = tail call i32 @llvm.bswap.i32(i32 %cmd.0)
  %jmp = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 2
  %10 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jmp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %11, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %add1)
  %14 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jmp, align 4
  %arrayidx32 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %arrayidx32, align 4
  %dma33 = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 3
  %17 = ptrtoint ptr %dma33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma33, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end22, %do.end, %do.body.if.end38_crit_edge
  %.sink61 = phi i32 [ %18, %do.end22 ], [ %add1, %do.end ], [ %add1, %do.body.if.end38_crit_edge ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %.sink61)
  %cpu35 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %20 = ptrtoint ptr %cpu35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpu35, align 4
  %add36 = add i32 %slot, 1
  %arrayidx37 = getelementptr i32, ptr %21, i32 %add36
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx37, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_dma_free(ptr noundef %q, ptr nocapture noundef readonly %btv, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @videobuf_to_dma(ptr noundef %buf) #7
  %call2 = tail call i32 @videobuf_waiton(ptr noundef %q, ptr noundef %buf, i32 noundef 0, i32 noundef 0) #7
  %dev = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 @videobuf_dma_unmap(ptr noundef %1, ptr noundef %call) #7
  %call4 = tail call i32 @videobuf_dma_free(ptr noundef %call) #7
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 8
  %bottom = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  tail call void @btcx_riscmem_free(ptr noundef %3, ptr noundef %bottom) #7
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 8
  %top = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  tail call void @btcx_riscmem_free(ptr noundef %5, ptr noundef %top) #7
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_to_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_waiton(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dma_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dma_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btcx_riscmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_buffer_activate_vbi(ptr nocapture noundef readonly %btv, ptr noundef %vbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vbi, null
  br i1 %tobool.not, label %entry.if.end51.thread_crit_edge, label %if.then

entry.if.end51.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.thread

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vbi, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %state, align 4
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %vbi, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbi, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vbi, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %9 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !43
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %13 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !43
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %and = shl i32 %12, 2
  %shl = and i32 %and, 768
  %add = add i32 %16, %shl
  %vdelay10 = getelementptr inbounds %struct.bttv_buffer, ptr %vbi, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %vdelay10 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vdelay10, align 2
  %conv = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ult i32 %add, %conv
  br i1 %cmp, label %if.then12, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then12:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and17 = and i32 %12, 63
  %19 = lshr i32 %conv, 2
  %and21 = and i32 %19, 192
  %or = or i32 %and21, %and17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %and16 = shl i32 %conv, 24
  %20 = and i32 %and16, -33554432
  %21 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr23 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %20) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %23 = shl nuw i32 %or, 24
  %24 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %23) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %27, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %20) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr38 = getelementptr i8, ptr %29, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %23) #7, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then12, %list_del.exit.if.end_crit_edge
  %vbi_count = getelementptr inbounds %struct.bttv_buffer, ptr %vbi, i32 0, i32 10
  %30 = ptrtoint ptr %vbi_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vbi_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp39.not = icmp eq i32 %31, 0
  %top42 = getelementptr inbounds %struct.bttv_buffer, ptr %vbi, i32 0, i32 6
  %spec.select = select i1 %cmp39.not, i32 0, i32 4
  %arrayidx45 = getelementptr %struct.bttv_buffer, ptr %vbi, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp46.not = icmp eq i32 %33, 0
  %bottom49 = getelementptr inbounds %struct.bttv_buffer, ptr %vbi, i32 0, i32 7
  %bottom_irq_flags.0 = select i1 %cmp46.not, i32 0, i32 4
  %top_irq_flags.1 = select i1 %cmp46.not, i32 %spec.select, i32 0
  %bottom.0 = select i1 %cmp46.not, ptr null, ptr %bottom49
  br i1 %cmp39.not, label %if.end.if.end51.thread_crit_edge, label %if.end51

if.end.if.end51.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.thread

if.end51.thread:                                  ; preds = %if.end.if.end51.thread_crit_edge, %entry.if.end51.thread_crit_edge
  %bottom_irq_flags.1.ph = phi i32 [ 0, %entry.if.end51.thread_crit_edge ], [ %bottom_irq_flags.0, %if.end.if.end51.thread_crit_edge ]
  %bottom.1.ph = phi ptr [ null, %entry.if.end51.thread_crit_edge ], [ %bottom.0, %if.end.if.end51.thread_crit_edge ]
  %dma.i110 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %34 = ptrtoint ptr %dma.i110 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma.i110, align 4
  %add1.i111 = add i32 %35, 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %36 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp2.i113 = icmp ugt i32 %36, 1
  br i1 %cmp2.i113, label %if.end51.thread.do.end.i_crit_edge, label %if.end51.thread.bttv_risc_hook.exit_crit_edge

if.end51.thread.bttv_risc_hook.exit_crit_edge:    ; preds = %if.end51.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit

if.end51.thread.do.end.i_crit_edge:               ; preds = %if.end51.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end51:                                         ; preds = %if.end
  %dma.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %37 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma.i, align 4
  %add1.i = add i32 %38, 24
  %cmp.i = icmp eq ptr %top42, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %39 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp2.i = icmp ugt i32 %39, 1
  br i1 %cmp.i, label %do.body.i, label %do.body9.i

do.body.i:                                        ; preds = %if.end51
  br i1 %cmp2.i, label %do.body.i.do.end.i_crit_edge, label %do.body.i.bttv_risc_hook.exit_crit_edge

do.body.i.bttv_risc_hook.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.do.end.i_crit_edge, %if.end51.thread.do.end.i_crit_edge
  %bottom_irq_flags.1115125 = phi i32 [ %bottom_irq_flags.1.ph, %if.end51.thread.do.end.i_crit_edge ], [ %bottom_irq_flags.0, %do.body.i.do.end.i_crit_edge ]
  %bottom.1117124 = phi ptr [ %bottom.1.ph, %if.end51.thread.do.end.i_crit_edge ], [ %bottom.0, %do.body.i.do.end.i_crit_edge ]
  %dma.i119123 = phi ptr [ %dma.i110, %if.end51.thread.do.end.i_crit_edge ], [ %dma.i, %do.body.i.do.end.i_crit_edge ]
  %add1.i120122 = phi i32 [ %add1.i111, %if.end51.thread.do.end.i_crit_edge ], [ %add1.i, %do.body.i.do.end.i_crit_edge ]
  %nr.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %40 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %41, ptr noundef null, i32 noundef 4) #10
  br label %bttv_risc_hook.exit

do.body9.i:                                       ; preds = %if.end51
  br i1 %cmp2.i, label %do.end14.i, label %do.body9.i.do.end22.i_crit_edge

do.body9.i.do.end22.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr17.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %42 = ptrtoint ptr %nr17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr17.i, align 8
  %dma18.i = getelementptr inbounds %struct.bttv_buffer, ptr %vbi, i32 0, i32 6, i32 3
  %44 = ptrtoint ptr %dma18.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma18.i, align 4
  %conv.i = zext i32 %45 to i64
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %43, ptr noundef nonnull %top42, i32 noundef 4, i64 noundef %conv.i, i32 noundef %top_irq_flags.1) #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end22.i_crit_edge
  %or25.i = mul nuw nsw i32 %top_irq_flags.1, 1114112
  %or28.i = xor i32 %or25.i, 1911554048
  %cmd.0.i = select i1 %cmp46.not, i32 %or28.i, i32 1879048192
  %46 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i) #7
  %jmp.i = getelementptr inbounds %struct.bttv_buffer, ptr %vbi, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %jmp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %jmp.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %48, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %add1.i) #7
  %51 = ptrtoint ptr %jmp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %jmp.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %52, i32 1
  %53 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %arrayidx32.i, align 4
  %dma33.i = getelementptr inbounds %struct.bttv_buffer, ptr %vbi, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %dma33.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma33.i, align 4
  br label %bttv_risc_hook.exit

bttv_risc_hook.exit:                              ; preds = %do.end22.i, %do.end.i, %do.body.i.bttv_risc_hook.exit_crit_edge, %if.end51.thread.bttv_risc_hook.exit_crit_edge
  %dma.i118 = phi ptr [ %dma.i, %do.end22.i ], [ %dma.i119123, %do.end.i ], [ %dma.i, %do.body.i.bttv_risc_hook.exit_crit_edge ], [ %dma.i110, %if.end51.thread.bttv_risc_hook.exit_crit_edge ]
  %bottom.1116 = phi ptr [ %bottom.0, %do.end22.i ], [ %bottom.1117124, %do.end.i ], [ %bottom.0, %do.body.i.bttv_risc_hook.exit_crit_edge ], [ %bottom.1.ph, %if.end51.thread.bttv_risc_hook.exit_crit_edge ]
  %bottom_irq_flags.1114 = phi i32 [ %bottom_irq_flags.0, %do.end22.i ], [ %bottom_irq_flags.1115125, %do.end.i ], [ %bottom_irq_flags.0, %do.body.i.bttv_risc_hook.exit_crit_edge ], [ %bottom_irq_flags.1.ph, %if.end51.thread.bttv_risc_hook.exit_crit_edge ]
  %.sink61.i = phi i32 [ %55, %do.end22.i ], [ %add1.i120122, %do.end.i ], [ %add1.i, %do.body.i.bttv_risc_hook.exit_crit_edge ], [ %add1.i111, %if.end51.thread.bttv_risc_hook.exit_crit_edge ]
  %56 = tail call i32 @llvm.bswap.i32(i32 %.sink61.i) #7
  %cpu35.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %57 = ptrtoint ptr %cpu35.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cpu35.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %58, i32 5
  %59 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %arrayidx37.i, align 4
  %60 = ptrtoint ptr %dma.i118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma.i118, align 4
  %add1.i77 = add i32 %61, 48
  %cmp.i78 = icmp eq ptr %bottom.1116, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %62 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp2.i79 = icmp ugt i32 %62, 1
  br i1 %cmp.i78, label %do.body.i80, label %do.body9.i84

do.body.i80:                                      ; preds = %bttv_risc_hook.exit
  br i1 %cmp2.i79, label %do.end.i83, label %do.body.i80.bttv_risc_hook.exit105_crit_edge

do.body.i80.bttv_risc_hook.exit105_crit_edge:     ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit105

do.end.i83:                                       ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i81 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %63 = ptrtoint ptr %nr.i81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr.i81, align 8
  %call.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %64, ptr noundef null, i32 noundef 10) #10
  br label %bttv_risc_hook.exit105

do.body9.i84:                                     ; preds = %bttv_risc_hook.exit
  br i1 %cmp2.i79, label %do.end14.i89, label %do.body9.i84.do.end22.i101_crit_edge

do.body9.i84.do.end22.i101_crit_edge:             ; preds = %do.body9.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i101

do.end14.i89:                                     ; preds = %do.body9.i84
  call void @__sanitizer_cov_trace_pc() #9
  %nr17.i85 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %65 = ptrtoint ptr %nr17.i85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr17.i85, align 8
  %dma18.i86 = getelementptr inbounds %struct.btcx_riscmem, ptr %bottom.1116, i32 0, i32 3
  %67 = ptrtoint ptr %dma18.i86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma18.i86, align 4
  %conv.i87 = zext i32 %68 to i64
  %call19.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %66, ptr noundef nonnull %bottom.1116, i32 noundef 10, i64 noundef %conv.i87, i32 noundef %bottom_irq_flags.1114) #10
  br label %do.end22.i101

do.end22.i101:                                    ; preds = %do.end14.i89, %do.body9.i84.do.end22.i101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bottom_irq_flags.1114)
  %tobool.not.i90 = icmp eq i32 %bottom_irq_flags.1114, 0
  %and.i91 = shl nuw nsw i32 %bottom_irq_flags.1114, 16
  %shl24.i92 = and i32 %and.i91, 983040
  %neg.i93 = shl nuw nsw i32 %bottom_irq_flags.1114, 20
  %and26.i94 = and i32 %neg.i93, 15728640
  %or25.i95 = or i32 %shl24.i92, %and26.i94
  %or28.i96 = xor i32 %or25.i95, 1911554048
  %cmd.0.i97 = select i1 %tobool.not.i90, i32 1879048192, i32 %or28.i96
  %69 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i97) #7
  %jmp.i98 = getelementptr inbounds %struct.btcx_riscmem, ptr %bottom.1116, i32 0, i32 2
  %70 = ptrtoint ptr %jmp.i98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %jmp.i98, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %71, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %add1.i77) #7
  %74 = ptrtoint ptr %jmp.i98 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %jmp.i98, align 4
  %arrayidx32.i99 = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx32.i99 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %arrayidx32.i99, align 4
  %dma33.i100 = getelementptr inbounds %struct.btcx_riscmem, ptr %bottom.1116, i32 0, i32 3
  %77 = ptrtoint ptr %dma33.i100 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma33.i100, align 4
  br label %bttv_risc_hook.exit105

bttv_risc_hook.exit105:                           ; preds = %do.end22.i101, %do.end.i83, %do.body.i80.bttv_risc_hook.exit105_crit_edge
  %.sink61.i102 = phi i32 [ %78, %do.end22.i101 ], [ %add1.i77, %do.end.i83 ], [ %add1.i77, %do.body.i80.bttv_risc_hook.exit105_crit_edge ]
  %79 = tail call i32 @llvm.bswap.i32(i32 %.sink61.i102) #7
  %80 = ptrtoint ptr %cpu35.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cpu35.i, align 4
  %arrayidx37.i104 = getelementptr i32, ptr %81, i32 11
  %82 = ptrtoint ptr %arrayidx37.i104 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %79, ptr %arrayidx37.i104, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_buffer_activate_video(ptr noundef readonly %btv, ptr nocapture noundef readonly %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set, align 4
  %cmp.not = icmp eq ptr %1, null
  %bottom136 = getelementptr inbounds %struct.bttv_buffer_set, ptr %set, i32 0, i32 1
  %2 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bottom136, align 4
  %cmp137.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.else135, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp137.not, label %if.then80, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %cmp4 = icmp eq ptr %1, %3
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state, align 4
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %5 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set, align 4
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then5.if.end39_crit_edge, label %if.then9

if.then5.if.end39_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then9:                                         ; preds = %if.then5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.if.end39.sink.split_crit_edge

if.then9.if.end39.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %6, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %if.end39.sink.split

if.else:                                          ; preds = %if.then
  %15 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bottom136, align 4
  %state18 = getelementptr inbounds %struct.videobuf_buffer, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %state18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %state18, align 4
  %18 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set, align 4
  %queue21 = getelementptr inbounds %struct.videobuf_buffer, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %queue21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue21, align 8
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %if.else.if.end28_crit_edge, label %if.then24

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.else
  %call.i.i269 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue21) #7
  br i1 %call.i.i269, label %if.end.i.i272, label %if.then24.list_del.exit274_crit_edge

if.then24.list_del.exit274_crit_edge:             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit274

if.end.i.i272:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i270 = getelementptr inbounds %struct.videobuf_buffer, ptr %19, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %prev.i.i270 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i270, align 4
  %24 = ptrtoint ptr %queue21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue21, align 4
  %prev1.i.i.i271 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i271 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i271, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit274

list_del.exit274:                                 ; preds = %if.end.i.i272, %if.then24.list_del.exit274_crit_edge
  %28 = ptrtoint ptr %queue21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %queue21, align 4
  %prev.i273 = getelementptr inbounds %struct.videobuf_buffer, ptr %19, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %prev.i273 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i273, align 4
  br label %if.end28

if.end28:                                         ; preds = %list_del.exit274, %if.else.if.end28_crit_edge
  %30 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bottom136, align 4
  %queue31 = getelementptr inbounds %struct.videobuf_buffer, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %queue31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue31, align 8
  %tobool33.not = icmp eq ptr %33, null
  br i1 %tobool33.not, label %if.end28.if.end39_crit_edge, label %if.then34

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then34:                                        ; preds = %if.end28
  %call.i.i275 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue31) #7
  br i1 %call.i.i275, label %if.end.i.i278, label %if.then34.if.end39.sink.split_crit_edge

if.then34.if.end39.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split

if.end.i.i278:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i276 = getelementptr inbounds %struct.videobuf_buffer, ptr %31, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %prev.i.i276 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i276, align 4
  %36 = ptrtoint ptr %queue31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue31, align 4
  %prev1.i.i.i277 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i277 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i277, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.end.i.i278, %if.then34.if.end39.sink.split_crit_edge, %if.end.i.i, %if.then9.if.end39.sink.split_crit_edge
  %queue31.sink = phi ptr [ %queue, %if.then9.if.end39.sink.split_crit_edge ], [ %queue, %if.end.i.i ], [ %queue31, %if.then34.if.end39.sink.split_crit_edge ], [ %queue31, %if.end.i.i278 ]
  %.sink = phi ptr [ %6, %if.then9.if.end39.sink.split_crit_edge ], [ %6, %if.end.i.i ], [ %31, %if.then34.if.end39.sink.split_crit_edge ], [ %31, %if.end.i.i278 ]
  %40 = ptrtoint ptr %queue31.sink to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %queue31.sink, align 4
  %prev.i279 = getelementptr inbounds %struct.videobuf_buffer, ptr %.sink, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %prev.i279 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i279, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.end28.if.end39_crit_edge, %if.then5.if.end39_crit_edge
  %42 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set, align 4
  %geo = getelementptr inbounds %struct.bttv_buffer, ptr %43, i32 0, i32 5
  tail call fastcc void @bttv_apply_geo(ptr noundef %btv, ptr noundef %geo, i32 noundef 1)
  %44 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bottom136, align 4
  %geo42 = getelementptr inbounds %struct.bttv_buffer, ptr %45, i32 0, i32 5
  tail call fastcc void @bttv_apply_geo(ptr noundef %btv, ptr noundef %geo42, i32 noundef 0)
  %46 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set, align 4
  %top44 = getelementptr inbounds %struct.bttv_buffer, ptr %47, i32 0, i32 6
  %top_irq = getelementptr inbounds %struct.bttv_buffer_set, ptr %set, i32 0, i32 2
  %48 = ptrtoint ptr %top_irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %top_irq, align 4
  %dma.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %50 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma.i, align 4
  %add1.i = add i32 %51, 32
  %cmp.i = icmp eq ptr %top44, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %52 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp2.i = icmp ugt i32 %52, 1
  br i1 %cmp.i, label %do.body.i, label %do.body9.i

do.body.i:                                        ; preds = %if.end39
  br i1 %cmp2.i, label %do.end.i, label %do.body.i.bttv_risc_hook.exit_crit_edge

do.body.i.bttv_risc_hook.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %53 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %54, ptr noundef null, i32 noundef 6) #10
  br label %bttv_risc_hook.exit

do.body9.i:                                       ; preds = %if.end39
  br i1 %cmp2.i, label %do.end14.i, label %do.body9.i.do.end22.i_crit_edge

do.body9.i.do.end22.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr17.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %55 = ptrtoint ptr %nr17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr17.i, align 8
  %dma18.i = getelementptr inbounds %struct.bttv_buffer, ptr %47, i32 0, i32 6, i32 3
  %57 = ptrtoint ptr %dma18.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma18.i, align 4
  %conv.i = zext i32 %58 to i64
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %56, ptr noundef nonnull %top44, i32 noundef 6, i64 noundef %conv.i, i32 noundef %49) #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  %and.i = shl i32 %49, 16
  %shl24.i = and i32 %and.i, 983040
  %neg.i = shl i32 %49, 20
  %and26.i = and i32 %neg.i, 15728640
  %or25.i = or i32 %shl24.i, %and26.i
  %or28.i = xor i32 %or25.i, 1911554048
  %cmd.0.i = select i1 %tobool.not.i, i32 1879048192, i32 %or28.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i) #7
  %jmp.i = getelementptr inbounds %struct.bttv_buffer, ptr %47, i32 0, i32 6, i32 2
  %60 = ptrtoint ptr %jmp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %jmp.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %61, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %add1.i) #7
  %64 = ptrtoint ptr %jmp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %jmp.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %arrayidx32.i, align 4
  %dma33.i = getelementptr inbounds %struct.bttv_buffer, ptr %47, i32 0, i32 6, i32 3
  %67 = ptrtoint ptr %dma33.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma33.i, align 4
  br label %bttv_risc_hook.exit

bttv_risc_hook.exit:                              ; preds = %do.end22.i, %do.end.i, %do.body.i.bttv_risc_hook.exit_crit_edge
  %.sink61.i = phi i32 [ %68, %do.end22.i ], [ %add1.i, %do.end.i ], [ %add1.i, %do.body.i.bttv_risc_hook.exit_crit_edge ]
  %69 = tail call i32 @llvm.bswap.i32(i32 %.sink61.i) #7
  %cpu35.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %70 = ptrtoint ptr %cpu35.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cpu35.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %71, i32 7
  %72 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %arrayidx37.i, align 4
  %73 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bottom136, align 4
  %bottom46 = getelementptr inbounds %struct.bttv_buffer, ptr %74, i32 0, i32 7
  %frame_irq = getelementptr inbounds %struct.bttv_buffer_set, ptr %set, i32 0, i32 3
  %75 = ptrtoint ptr %frame_irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %frame_irq, align 4
  %77 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma.i, align 4
  %add1.i282 = add i32 %78, 56
  %cmp.i283 = icmp eq ptr %bottom46, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %79 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp2.i284 = icmp ugt i32 %79, 1
  br i1 %cmp.i283, label %do.body.i285, label %do.body9.i289

do.body.i285:                                     ; preds = %bttv_risc_hook.exit
  br i1 %cmp2.i284, label %do.end.i288, label %do.body.i285.bttv_risc_hook.exit310_crit_edge

do.body.i285.bttv_risc_hook.exit310_crit_edge:    ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit310

do.end.i288:                                      ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i286 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %80 = ptrtoint ptr %nr.i286 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr.i286, align 8
  %call.i287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %81, ptr noundef null, i32 noundef 12) #10
  br label %bttv_risc_hook.exit310

do.body9.i289:                                    ; preds = %bttv_risc_hook.exit
  br i1 %cmp2.i284, label %do.end14.i294, label %do.body9.i289.do.end22.i306_crit_edge

do.body9.i289.do.end22.i306_crit_edge:            ; preds = %do.body9.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i306

do.end14.i294:                                    ; preds = %do.body9.i289
  call void @__sanitizer_cov_trace_pc() #9
  %nr17.i290 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %82 = ptrtoint ptr %nr17.i290 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr17.i290, align 8
  %dma18.i291 = getelementptr inbounds %struct.bttv_buffer, ptr %74, i32 0, i32 7, i32 3
  %84 = ptrtoint ptr %dma18.i291 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma18.i291, align 4
  %conv.i292 = zext i32 %85 to i64
  %call19.i293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %83, ptr noundef nonnull %bottom46, i32 noundef 12, i64 noundef %conv.i292, i32 noundef %76) #10
  br label %do.end22.i306

do.end22.i306:                                    ; preds = %do.end14.i294, %do.body9.i289.do.end22.i306_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i295 = icmp eq i32 %76, 0
  %and.i296 = shl i32 %76, 16
  %shl24.i297 = and i32 %and.i296, 983040
  %neg.i298 = shl i32 %76, 20
  %and26.i299 = and i32 %neg.i298, 15728640
  %or25.i300 = or i32 %shl24.i297, %and26.i299
  %or28.i301 = xor i32 %or25.i300, 1911554048
  %cmd.0.i302 = select i1 %tobool.not.i295, i32 1879048192, i32 %or28.i301
  %86 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i302) #7
  %jmp.i303 = getelementptr inbounds %struct.bttv_buffer, ptr %74, i32 0, i32 7, i32 2
  %87 = ptrtoint ptr %jmp.i303 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %jmp.i303, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %88, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %add1.i282) #7
  %91 = ptrtoint ptr %jmp.i303 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %jmp.i303, align 4
  %arrayidx32.i304 = getelementptr i32, ptr %92, i32 1
  %93 = ptrtoint ptr %arrayidx32.i304 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %arrayidx32.i304, align 4
  %dma33.i305 = getelementptr inbounds %struct.bttv_buffer, ptr %74, i32 0, i32 7, i32 3
  %94 = ptrtoint ptr %dma33.i305 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma33.i305, align 4
  br label %bttv_risc_hook.exit310

bttv_risc_hook.exit310:                           ; preds = %do.end22.i306, %do.end.i288, %do.body.i285.bttv_risc_hook.exit310_crit_edge
  %.sink61.i307 = phi i32 [ %95, %do.end22.i306 ], [ %add1.i282, %do.end.i288 ], [ %add1.i282, %do.body.i285.bttv_risc_hook.exit310_crit_edge ]
  %96 = tail call i32 @llvm.bswap.i32(i32 %.sink61.i307) #7
  %97 = ptrtoint ptr %cpu35.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cpu35.i, align 4
  %arrayidx37.i309 = getelementptr i32, ptr %98, i32 13
  %99 = ptrtoint ptr %arrayidx37.i309 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %arrayidx37.i309, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set, align 4
  %btformat = getelementptr inbounds %struct.bttv_buffer, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %btformat to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %btformat, align 8
  %and = and i32 %103, 240
  %104 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bottom136, align 4
  %btformat50 = getelementptr inbounds %struct.bttv_buffer, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %btformat50 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %btformat50, align 8
  %and51 = and i32 %107, 15
  %or = or i32 %and51, %and
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %108 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %109, i32 212
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %111 = and i32 %110, 16777215
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %or55 = or i32 %or, %112
  %113 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %114 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr57 = getelementptr i8, ptr %115, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %113) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %116 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set, align 4
  %btswap = getelementptr inbounds %struct.bttv_buffer, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %btswap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %btswap, align 4
  %and61 = and i32 %119, 10
  %120 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bottom136, align 4
  %btswap63 = getelementptr inbounds %struct.bttv_buffer, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %btswap63 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %btswap63, align 4
  %and64 = and i32 %123, 5
  %or65 = or i32 %and64, %and61
  %124 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr69 = getelementptr i8, ptr %125, i32 216
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %127 = and i32 %126, -251658241
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %or74 = or i32 %or65, %128
  %129 = tail call i32 @llvm.bswap.i32(i32 %or74)
  %130 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr76 = getelementptr i8, ptr %131, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %129) #7, !srcloc !45
  br label %if.end198

if.then80:                                        ; preds = %land.lhs.true
  %state83 = getelementptr inbounds %struct.videobuf_buffer, ptr %1, i32 0, i32 7
  %132 = ptrtoint ptr %state83 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %state83, align 4
  %133 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %set, align 4
  %queue86 = getelementptr inbounds %struct.videobuf_buffer, ptr %134, i32 0, i32 9
  %135 = ptrtoint ptr %queue86 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %queue86, align 8
  %tobool88.not = icmp eq ptr %136, null
  br i1 %tobool88.not, label %if.then80.if.end93_crit_edge, label %if.then89

if.then80.if.end93_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then89:                                        ; preds = %if.then80
  %call.i.i311 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue86) #7
  br i1 %call.i.i311, label %if.end.i.i314, label %if.then89.list_del.exit316_crit_edge

if.then89.list_del.exit316_crit_edge:             ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit316

if.end.i.i314:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i312 = getelementptr inbounds %struct.videobuf_buffer, ptr %134, i32 0, i32 9, i32 1
  %137 = ptrtoint ptr %prev.i.i312 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i312, align 4
  %139 = ptrtoint ptr %queue86 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %queue86, align 4
  %prev1.i.i.i313 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i313 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i313, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del.exit316

list_del.exit316:                                 ; preds = %if.end.i.i314, %if.then89.list_del.exit316_crit_edge
  %143 = ptrtoint ptr %queue86 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 256 to ptr), ptr %queue86, align 4
  %prev.i315 = getelementptr inbounds %struct.videobuf_buffer, ptr %134, i32 0, i32 9, i32 1
  %144 = ptrtoint ptr %prev.i315 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i315, align 4
  br label %if.end93

if.end93:                                         ; preds = %list_del.exit316, %if.then80.if.end93_crit_edge
  %145 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %set, align 4
  %geo95 = getelementptr inbounds %struct.bttv_buffer, ptr %146, i32 0, i32 5
  tail call fastcc void @bttv_apply_geo(ptr noundef %btv, ptr noundef %geo95, i32 noundef 1)
  %147 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %set, align 4
  %geo97 = getelementptr inbounds %struct.bttv_buffer, ptr %148, i32 0, i32 5
  tail call fastcc void @bttv_apply_geo(ptr noundef %btv, ptr noundef %geo97, i32 noundef 0)
  %149 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %set, align 4
  %top99 = getelementptr inbounds %struct.bttv_buffer, ptr %150, i32 0, i32 6
  %frame_irq100 = getelementptr inbounds %struct.bttv_buffer_set, ptr %set, i32 0, i32 3
  %151 = ptrtoint ptr %frame_irq100 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %frame_irq100, align 4
  %dma.i317 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %153 = ptrtoint ptr %dma.i317 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dma.i317, align 4
  %add1.i318 = add i32 %154, 32
  %cmp.i319 = icmp eq ptr %top99, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %155 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp2.i320 = icmp ugt i32 %155, 1
  br i1 %cmp.i319, label %do.body.i321, label %do.body9.i325

do.body.i321:                                     ; preds = %if.end93
  br i1 %cmp2.i320, label %do.end.i324, label %do.body.i321.bttv_risc_hook.exit346_crit_edge

do.body.i321.bttv_risc_hook.exit346_crit_edge:    ; preds = %do.body.i321
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit346

do.end.i324:                                      ; preds = %do.body.i321
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i322 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %156 = ptrtoint ptr %nr.i322 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nr.i322, align 8
  %call.i323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %157, ptr noundef null, i32 noundef 6) #10
  br label %bttv_risc_hook.exit346

do.body9.i325:                                    ; preds = %if.end93
  br i1 %cmp2.i320, label %do.end14.i330, label %do.body9.i325.do.end22.i342_crit_edge

do.body9.i325.do.end22.i342_crit_edge:            ; preds = %do.body9.i325
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i342

do.end14.i330:                                    ; preds = %do.body9.i325
  call void @__sanitizer_cov_trace_pc() #9
  %nr17.i326 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %158 = ptrtoint ptr %nr17.i326 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %nr17.i326, align 8
  %dma18.i327 = getelementptr inbounds %struct.bttv_buffer, ptr %150, i32 0, i32 6, i32 3
  %160 = ptrtoint ptr %dma18.i327 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dma18.i327, align 4
  %conv.i328 = zext i32 %161 to i64
  %call19.i329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %159, ptr noundef nonnull %top99, i32 noundef 6, i64 noundef %conv.i328, i32 noundef %152) #10
  br label %do.end22.i342

do.end22.i342:                                    ; preds = %do.end14.i330, %do.body9.i325.do.end22.i342_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.i331 = icmp eq i32 %152, 0
  %and.i332 = shl i32 %152, 16
  %shl24.i333 = and i32 %and.i332, 983040
  %neg.i334 = shl i32 %152, 20
  %and26.i335 = and i32 %neg.i334, 15728640
  %or25.i336 = or i32 %shl24.i333, %and26.i335
  %or28.i337 = xor i32 %or25.i336, 1911554048
  %cmd.0.i338 = select i1 %tobool.not.i331, i32 1879048192, i32 %or28.i337
  %162 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i338) #7
  %jmp.i339 = getelementptr inbounds %struct.bttv_buffer, ptr %150, i32 0, i32 6, i32 2
  %163 = ptrtoint ptr %jmp.i339 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %jmp.i339, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %162, ptr %164, align 4
  %166 = tail call i32 @llvm.bswap.i32(i32 %add1.i318) #7
  %167 = ptrtoint ptr %jmp.i339 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %jmp.i339, align 4
  %arrayidx32.i340 = getelementptr i32, ptr %168, i32 1
  %169 = ptrtoint ptr %arrayidx32.i340 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %166, ptr %arrayidx32.i340, align 4
  %dma33.i341 = getelementptr inbounds %struct.bttv_buffer, ptr %150, i32 0, i32 6, i32 3
  %170 = ptrtoint ptr %dma33.i341 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %dma33.i341, align 4
  br label %bttv_risc_hook.exit346

bttv_risc_hook.exit346:                           ; preds = %do.end22.i342, %do.end.i324, %do.body.i321.bttv_risc_hook.exit346_crit_edge
  %.sink61.i343 = phi i32 [ %171, %do.end22.i342 ], [ %add1.i318, %do.end.i324 ], [ %add1.i318, %do.body.i321.bttv_risc_hook.exit346_crit_edge ]
  %172 = tail call i32 @llvm.bswap.i32(i32 %.sink61.i343) #7
  %cpu35.i344 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %173 = ptrtoint ptr %cpu35.i344 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cpu35.i344, align 4
  %arrayidx37.i345 = getelementptr i32, ptr %174, i32 7
  %175 = ptrtoint ptr %arrayidx37.i345 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %172, ptr %arrayidx37.i345, align 4
  %176 = ptrtoint ptr %dma.i317 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dma.i317, align 4
  %add1.i348 = add i32 %177, 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %178 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %178)
  %cmp2.i349 = icmp ugt i32 %178, 1
  br i1 %cmp2.i349, label %do.end.i353, label %bttv_risc_hook.exit346.bttv_risc_hook.exit357_crit_edge

bttv_risc_hook.exit346.bttv_risc_hook.exit357_crit_edge: ; preds = %bttv_risc_hook.exit346
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit357

do.end.i353:                                      ; preds = %bttv_risc_hook.exit346
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i351 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %179 = ptrtoint ptr %nr.i351 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nr.i351, align 8
  %call.i352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %180, ptr noundef null, i32 noundef 12) #10
  br label %bttv_risc_hook.exit357

bttv_risc_hook.exit357:                           ; preds = %do.end.i353, %bttv_risc_hook.exit346.bttv_risc_hook.exit357_crit_edge
  %181 = tail call i32 @llvm.bswap.i32(i32 %add1.i348) #7
  %182 = ptrtoint ptr %cpu35.i344 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cpu35.i344, align 4
  %arrayidx37.i356 = getelementptr i32, ptr %183, i32 13
  %184 = ptrtoint ptr %arrayidx37.i356 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %181, ptr %arrayidx37.i356, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %185 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %set, align 4
  %btformat106 = getelementptr inbounds %struct.bttv_buffer, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %btformat106 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %btformat106, align 8
  %and107 = and i32 %188, 255
  %bt848_mmio110 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %189 = ptrtoint ptr %bt848_mmio110 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %bt848_mmio110, align 4
  %add.ptr111 = getelementptr i8, ptr %190, i32 212
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %192 = and i32 %191, 16777215
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  %or116 = or i32 %193, %and107
  %194 = tail call i32 @llvm.bswap.i32(i32 %or116)
  %195 = ptrtoint ptr %bt848_mmio110 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bt848_mmio110, align 4
  %add.ptr118 = getelementptr i8, ptr %196, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %194) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %197 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %set, align 4
  %btswap122 = getelementptr inbounds %struct.bttv_buffer, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %btswap122 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %btswap122, align 4
  %and123 = and i32 %200, 15
  %201 = ptrtoint ptr %bt848_mmio110 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bt848_mmio110, align 4
  %add.ptr127 = getelementptr i8, ptr %202, i32 216
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %204 = and i32 %203, -251658241
  %205 = tail call i32 @llvm.bswap.i32(i32 %204)
  %or132 = or i32 %205, %and123
  %206 = tail call i32 @llvm.bswap.i32(i32 %or132)
  %207 = ptrtoint ptr %bt848_mmio110 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bt848_mmio110, align 4
  %add.ptr134 = getelementptr i8, ptr %208, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %206) #7, !srcloc !45
  br label %if.end198

if.else135:                                       ; preds = %entry
  br i1 %cmp137.not, label %if.else193, label %if.then138

if.then138:                                       ; preds = %if.else135
  %state141 = getelementptr inbounds %struct.videobuf_buffer, ptr %3, i32 0, i32 7
  %209 = ptrtoint ptr %state141 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 3, ptr %state141, align 4
  %210 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bottom136, align 4
  %queue144 = getelementptr inbounds %struct.videobuf_buffer, ptr %211, i32 0, i32 9
  %212 = ptrtoint ptr %queue144 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %queue144, align 8
  %tobool146.not = icmp eq ptr %213, null
  br i1 %tobool146.not, label %if.then138.if.end151_crit_edge, label %if.then147

if.then138.if.end151_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then147:                                       ; preds = %if.then138
  %call.i.i358 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue144) #7
  br i1 %call.i.i358, label %if.end.i.i361, label %if.then147.list_del.exit363_crit_edge

if.then147.list_del.exit363_crit_edge:            ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit363

if.end.i.i361:                                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i359 = getelementptr inbounds %struct.videobuf_buffer, ptr %211, i32 0, i32 9, i32 1
  %214 = ptrtoint ptr %prev.i.i359 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i.i359, align 4
  %216 = ptrtoint ptr %queue144 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %queue144, align 4
  %prev1.i.i.i360 = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %prev1.i.i.i360 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %215, ptr %prev1.i.i.i360, align 4
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %217, ptr %215, align 4
  br label %list_del.exit363

list_del.exit363:                                 ; preds = %if.end.i.i361, %if.then147.list_del.exit363_crit_edge
  %220 = ptrtoint ptr %queue144 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr inttoptr (i32 256 to ptr), ptr %queue144, align 4
  %prev.i362 = getelementptr inbounds %struct.videobuf_buffer, ptr %211, i32 0, i32 9, i32 1
  %221 = ptrtoint ptr %prev.i362 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i362, align 4
  br label %if.end151

if.end151:                                        ; preds = %list_del.exit363, %if.then138.if.end151_crit_edge
  %222 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %bottom136, align 4
  %geo153 = getelementptr inbounds %struct.bttv_buffer, ptr %223, i32 0, i32 5
  tail call fastcc void @bttv_apply_geo(ptr noundef %btv, ptr noundef %geo153, i32 noundef 1)
  %224 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %bottom136, align 4
  %geo155 = getelementptr inbounds %struct.bttv_buffer, ptr %225, i32 0, i32 5
  tail call fastcc void @bttv_apply_geo(ptr noundef %btv, ptr noundef %geo155, i32 noundef 0)
  %dma.i364 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %226 = ptrtoint ptr %dma.i364 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %dma.i364, align 4
  %add1.i365 = add i32 %227, 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %228 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %228)
  %cmp2.i366 = icmp ugt i32 %228, 1
  br i1 %cmp2.i366, label %do.end.i370, label %if.end151.bttv_risc_hook.exit374_crit_edge

if.end151.bttv_risc_hook.exit374_crit_edge:       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit374

do.end.i370:                                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i368 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %229 = ptrtoint ptr %nr.i368 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %nr.i368, align 8
  %call.i369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %230, ptr noundef null, i32 noundef 6) #10
  br label %bttv_risc_hook.exit374

bttv_risc_hook.exit374:                           ; preds = %do.end.i370, %if.end151.bttv_risc_hook.exit374_crit_edge
  %231 = tail call i32 @llvm.bswap.i32(i32 %add1.i365) #7
  %cpu35.i372 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %232 = ptrtoint ptr %cpu35.i372 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cpu35.i372, align 4
  %arrayidx37.i373 = getelementptr i32, ptr %233, i32 7
  %234 = ptrtoint ptr %arrayidx37.i373 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %231, ptr %arrayidx37.i373, align 4
  %235 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bottom136, align 4
  %bottom158 = getelementptr inbounds %struct.bttv_buffer, ptr %236, i32 0, i32 7
  %frame_irq159 = getelementptr inbounds %struct.bttv_buffer_set, ptr %set, i32 0, i32 3
  %237 = ptrtoint ptr %frame_irq159 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %frame_irq159, align 4
  %239 = ptrtoint ptr %dma.i364 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %dma.i364, align 4
  %add1.i376 = add i32 %240, 56
  %cmp.i377 = icmp eq ptr %bottom158, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %241 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %241)
  %cmp2.i378 = icmp ugt i32 %241, 1
  br i1 %cmp.i377, label %do.body.i379, label %do.body9.i383

do.body.i379:                                     ; preds = %bttv_risc_hook.exit374
  br i1 %cmp2.i378, label %do.end.i382, label %do.body.i379.bttv_risc_hook.exit404_crit_edge

do.body.i379.bttv_risc_hook.exit404_crit_edge:    ; preds = %do.body.i379
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit404

do.end.i382:                                      ; preds = %do.body.i379
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i380 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %242 = ptrtoint ptr %nr.i380 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %nr.i380, align 8
  %call.i381 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %243, ptr noundef null, i32 noundef 12) #10
  br label %bttv_risc_hook.exit404

do.body9.i383:                                    ; preds = %bttv_risc_hook.exit374
  br i1 %cmp2.i378, label %do.end14.i388, label %do.body9.i383.do.end22.i400_crit_edge

do.body9.i383.do.end22.i400_crit_edge:            ; preds = %do.body9.i383
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22.i400

do.end14.i388:                                    ; preds = %do.body9.i383
  call void @__sanitizer_cov_trace_pc() #9
  %nr17.i384 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %244 = ptrtoint ptr %nr17.i384 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %nr17.i384, align 8
  %dma18.i385 = getelementptr inbounds %struct.bttv_buffer, ptr %236, i32 0, i32 7, i32 3
  %246 = ptrtoint ptr %dma18.i385 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %dma18.i385, align 4
  %conv.i386 = zext i32 %247 to i64
  %call19.i387 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %245, ptr noundef nonnull %bottom158, i32 noundef 12, i64 noundef %conv.i386, i32 noundef %238) #10
  br label %do.end22.i400

do.end22.i400:                                    ; preds = %do.end14.i388, %do.body9.i383.do.end22.i400_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.not.i389 = icmp eq i32 %238, 0
  %and.i390 = shl i32 %238, 16
  %shl24.i391 = and i32 %and.i390, 983040
  %neg.i392 = shl i32 %238, 20
  %and26.i393 = and i32 %neg.i392, 15728640
  %or25.i394 = or i32 %shl24.i391, %and26.i393
  %or28.i395 = xor i32 %or25.i394, 1911554048
  %cmd.0.i396 = select i1 %tobool.not.i389, i32 1879048192, i32 %or28.i395
  %248 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i396) #7
  %jmp.i397 = getelementptr inbounds %struct.bttv_buffer, ptr %236, i32 0, i32 7, i32 2
  %249 = ptrtoint ptr %jmp.i397 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %jmp.i397, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %248, ptr %250, align 4
  %252 = tail call i32 @llvm.bswap.i32(i32 %add1.i376) #7
  %253 = ptrtoint ptr %jmp.i397 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %jmp.i397, align 4
  %arrayidx32.i398 = getelementptr i32, ptr %254, i32 1
  %255 = ptrtoint ptr %arrayidx32.i398 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %252, ptr %arrayidx32.i398, align 4
  %dma33.i399 = getelementptr inbounds %struct.bttv_buffer, ptr %236, i32 0, i32 7, i32 3
  %256 = ptrtoint ptr %dma33.i399 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %dma33.i399, align 4
  br label %bttv_risc_hook.exit404

bttv_risc_hook.exit404:                           ; preds = %do.end22.i400, %do.end.i382, %do.body.i379.bttv_risc_hook.exit404_crit_edge
  %.sink61.i401 = phi i32 [ %257, %do.end22.i400 ], [ %add1.i376, %do.end.i382 ], [ %add1.i376, %do.body.i379.bttv_risc_hook.exit404_crit_edge ]
  %258 = tail call i32 @llvm.bswap.i32(i32 %.sink61.i401) #7
  %259 = ptrtoint ptr %cpu35.i372 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %cpu35.i372, align 4
  %arrayidx37.i403 = getelementptr i32, ptr %260, i32 13
  %261 = ptrtoint ptr %arrayidx37.i403 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %258, ptr %arrayidx37.i403, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %262 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %bottom136, align 4
  %btformat164 = getelementptr inbounds %struct.bttv_buffer, ptr %263, i32 0, i32 3
  %264 = ptrtoint ptr %btformat164 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %btformat164, align 8
  %and165 = and i32 %265, 255
  %bt848_mmio168 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %266 = ptrtoint ptr %bt848_mmio168 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %bt848_mmio168, align 4
  %add.ptr169 = getelementptr i8, ptr %267, i32 212
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %269 = and i32 %268, 16777215
  %270 = tail call i32 @llvm.bswap.i32(i32 %269)
  %or174 = or i32 %270, %and165
  %271 = tail call i32 @llvm.bswap.i32(i32 %or174)
  %272 = ptrtoint ptr %bt848_mmio168 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %bt848_mmio168, align 4
  %add.ptr176 = getelementptr i8, ptr %273, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176, i32 %271) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %274 = ptrtoint ptr %bottom136 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %bottom136, align 4
  %btswap180 = getelementptr inbounds %struct.bttv_buffer, ptr %275, i32 0, i32 4
  %276 = ptrtoint ptr %btswap180 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %btswap180, align 4
  %and181 = and i32 %277, 15
  %278 = ptrtoint ptr %bt848_mmio168 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %bt848_mmio168, align 4
  %add.ptr185 = getelementptr i8, ptr %279, i32 216
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %281 = and i32 %280, -251658241
  %282 = tail call i32 @llvm.bswap.i32(i32 %281)
  %or190 = or i32 %282, %and181
  %283 = tail call i32 @llvm.bswap.i32(i32 %or190)
  %284 = ptrtoint ptr %bt848_mmio168 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %bt848_mmio168, align 4
  %add.ptr192 = getelementptr i8, ptr %285, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 %283) #7, !srcloc !45
  br label %if.end198

if.else193:                                       ; preds = %if.else135
  %dma.i405 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 3
  %286 = ptrtoint ptr %dma.i405 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %dma.i405, align 4
  %add1.i406 = add i32 %287, 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %288 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %288)
  %cmp2.i407 = icmp ugt i32 %288, 1
  br i1 %cmp2.i407, label %do.end.i411, label %if.else193.bttv_risc_hook.exit415_crit_edge

if.else193.bttv_risc_hook.exit415_crit_edge:      ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit415

do.end.i411:                                      ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i409 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %289 = ptrtoint ptr %nr.i409 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %nr.i409, align 8
  %call.i410 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %290, ptr noundef null, i32 noundef 6) #10
  br label %bttv_risc_hook.exit415

bttv_risc_hook.exit415:                           ; preds = %do.end.i411, %if.else193.bttv_risc_hook.exit415_crit_edge
  %291 = tail call i32 @llvm.bswap.i32(i32 %add1.i406) #7
  %cpu35.i413 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 66, i32 1
  %292 = ptrtoint ptr %cpu35.i413 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cpu35.i413, align 4
  %arrayidx37.i414 = getelementptr i32, ptr %293, i32 7
  %294 = ptrtoint ptr %arrayidx37.i414 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %291, ptr %arrayidx37.i414, align 4
  %295 = ptrtoint ptr %dma.i405 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %dma.i405, align 4
  %add1.i417 = add i32 %296, 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %297 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %297)
  %cmp2.i418 = icmp ugt i32 %297, 1
  br i1 %cmp2.i418, label %do.end.i422, label %bttv_risc_hook.exit415.bttv_risc_hook.exit426_crit_edge

bttv_risc_hook.exit415.bttv_risc_hook.exit426_crit_edge: ; preds = %bttv_risc_hook.exit415
  call void @__sanitizer_cov_trace_pc() #9
  br label %bttv_risc_hook.exit426

do.end.i422:                                      ; preds = %bttv_risc_hook.exit415
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i420 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %298 = ptrtoint ptr %nr.i420 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %nr.i420, align 8
  %call.i421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %299, ptr noundef null, i32 noundef 12) #10
  br label %bttv_risc_hook.exit426

bttv_risc_hook.exit426:                           ; preds = %do.end.i422, %bttv_risc_hook.exit415.bttv_risc_hook.exit426_crit_edge
  %300 = tail call i32 @llvm.bswap.i32(i32 %add1.i417) #7
  %301 = ptrtoint ptr %cpu35.i413 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cpu35.i413, align 4
  %arrayidx37.i425 = getelementptr i32, ptr %302, i32 13
  %303 = ptrtoint ptr %arrayidx37.i425 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %300, ptr %arrayidx37.i425, align 4
  br label %if.end198

if.end198:                                        ; preds = %bttv_risc_hook.exit426, %bttv_risc_hook.exit404, %bttv_risc_hook.exit357, %bttv_risc_hook.exit310
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bttv_apply_geo(ptr nocapture noundef readonly %btv, ptr nocapture noundef readonly %geo, i32 noundef %odd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %odd)
  %tobool.not = icmp eq i32 %odd, 0
  %cond = select i1 %tobool.not, i32 0, i32 128
  %comb = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 2
  %0 = ptrtoint ptr %comb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %comb, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %bt848_mmio11 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %2 = ptrtoint ptr %bt848_mmio11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt848_mmio11, align 4
  %add12 = or i32 %cond, 76
  %add.ptr13 = getelementptr i8, ptr %3, i32 %add12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool1.not, label %do.body6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = or i32 %4, 1073741824
  %6 = ptrtoint ptr %bt848_mmio11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt848_mmio11, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #7, !srcloc !45
  br label %do.body20

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = and i32 %4, -1073741825
  %9 = ptrtoint ptr %bt848_mmio11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt848_mmio11, align 4
  %add.ptr19 = getelementptr i8, ptr %10, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %8) #7, !srcloc !45
  br label %do.body20

do.body20:                                        ; preds = %do.body6, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %geo to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %geo, align 2
  %conv = zext i8 %12 to i32
  %13 = shl nuw i32 %conv, 24
  %bt848_mmio23 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %14 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt848_mmio23, align 4
  %add24 = or i32 %cond, 108
  %add.ptr25 = getelementptr i8, ptr %15, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %13) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %hscale = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 4
  %16 = ptrtoint ptr %hscale to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hscale, align 2
  %18 = lshr i16 %17, 8
  %19 = zext i16 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bt848_mmio23, align 4
  %add31 = or i32 %cond, 32
  %add.ptr32 = getelementptr i8, ptr %22, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %20) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %hscale to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hscale, align 2
  %25 = and i16 %24, 255
  %and38 = zext i16 %25 to i32
  %26 = shl nuw i32 %and38, 24
  %27 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bt848_mmio23, align 4
  %add40 = or i32 %cond, 36
  %add.ptr41 = getelementptr i8, ptr %28, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %26) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %vscale = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 7
  %29 = ptrtoint ptr %vscale to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vscale, align 2
  %31 = lshr i16 %30, 8
  %32 = zext i16 %31 to i32
  %33 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bt848_mmio23, align 4
  %add.ptr51 = getelementptr i8, ptr %34, i32 %add12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %or56165 = shl nuw i32 %32, 24
  %call52.mask = and i32 %35, -536870912
  %36 = or i32 %call52.mask, %or56165
  %37 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bt848_mmio23, align 4
  %add.ptr59 = getelementptr i8, ptr %38, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %36) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %vscale to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vscale, align 2
  %41 = and i16 %40, 255
  %and65 = zext i16 %41 to i32
  %42 = shl nuw i32 %and65, 24
  %43 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bt848_mmio23, align 4
  %add67 = or i32 %cond, 80
  %add.ptr68 = getelementptr i8, ptr %44, i32 %add67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %42) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %width = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 3
  %45 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %width, align 2
  %47 = and i16 %46, 255
  %and73 = zext i16 %47 to i32
  %48 = shl nuw i32 %and73, 24
  %49 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bt848_mmio23, align 4
  %add75 = or i32 %cond, 28
  %add.ptr76 = getelementptr i8, ptr %50, i32 %add75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %48) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %hdelay = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 5
  %51 = ptrtoint ptr %hdelay to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hdelay, align 2
  %53 = and i16 %52, 255
  %and81 = zext i16 %53 to i32
  %54 = shl nuw i32 %and81, 24
  %55 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bt848_mmio23, align 4
  %add83 = or i32 %cond, 24
  %add.ptr84 = getelementptr i8, ptr %56, i32 %add83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %54) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %sheight = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 6
  %57 = ptrtoint ptr %sheight to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sheight, align 2
  %59 = and i16 %58, 255
  %and89 = zext i16 %59 to i32
  %60 = shl nuw i32 %and89, 24
  %61 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bt848_mmio23, align 4
  %add91 = or i32 %cond, 20
  %add.ptr92 = getelementptr i8, ptr %62, i32 %add91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %60) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %vdelay = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 8
  %63 = ptrtoint ptr %vdelay to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vdelay, align 2
  %65 = and i16 %64, 255
  %and97 = zext i16 %65 to i32
  %66 = shl nuw i32 %and97, 24
  %67 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bt848_mmio23, align 4
  %add99 = or i32 %cond, 16
  %add.ptr100 = getelementptr i8, ptr %68, i32 %add99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %66) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %crop = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 1
  %69 = ptrtoint ptr %crop to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %crop, align 1
  %conv104 = zext i8 %70 to i32
  %71 = shl nuw i32 %conv104, 24
  %72 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bt848_mmio23, align 4
  %add106 = or i32 %cond, 12
  %add.ptr107 = getelementptr i8, ptr %73, i32 %add106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %71) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %vtotal = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 9
  %74 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vtotal, align 2
  %76 = lshr i16 %75, 8
  %77 = zext i16 %76 to i32
  %78 = shl nuw i32 %77, 24
  %79 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bt848_mmio23, align 4
  %add.ptr114 = getelementptr i8, ptr %80, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %78) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %81 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vtotal, align 2
  %83 = and i16 %82, 255
  %and120 = zext i16 %83 to i32
  %84 = shl nuw i32 %and120, 24
  %85 = ptrtoint ptr %bt848_mmio23 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bt848_mmio23, align 4
  %add.ptr122 = getelementptr i8, ptr %86, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %84) #7, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_buffer_risc(ptr noundef readonly %btv, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tvnorm1 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %tvnorm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tvnorm1, align 4
  %add.ptr = getelementptr %struct.bttv_tvnorm, ptr @bttv_tvnorms, i32 %1
  %call = tail call ptr @videobuf_to_dma(ptr noundef %buf) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %2 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end12_crit_edge, label %do.body2

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bttv_buffer_risc.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bttv_buffer_risc, %if.then6)) #7
          to label %do.end12 [label %if.then6], !srcloc !51

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %field = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 6
  %5 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field, align 8
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_field_names, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %fmt = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %width = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bttv_buffer_risc.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.14, i32 noundef %4, ptr noundef %8, i32 noundef %12, i32 noundef %14, i32 noundef %16) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then6, %do.body2, %entry.do.end12_crit_edge
  %fmt13 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 1
  %17 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt13, align 8
  %flags = getelementptr inbounds %struct.bttv_format, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.end12.if.end86_crit_edge, label %if.then15

do.end12.if.end86_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then15:                                        ; preds = %do.end12
  %depth = getelementptr inbounds %struct.bttv_format, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %depth, align 4
  %shr = ashr i32 %22, 3
  %width18 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 2
  %23 = ptrtoint ptr %width18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width18, align 8
  %mul = mul i32 %shr, %24
  %height20 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 3
  %25 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height20, align 4
  %shr21 = lshr i32 %26, 1
  %mul22 = mul i32 %shr21, %mul
  %geo = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 5
  %field28 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 6
  %27 = ptrtoint ptr %field28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %field28, align 8
  %switch.tableidx = add i32 %28, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 6
  br i1 %29, label %switch.hole_check, label %if.then15.lor.rhs_crit_edge

if.then15.lor.rhs_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %if.then15.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp43 = icmp eq i32 %28, 6
  %phi.cast = zext i1 %cmp43 to i32
  br label %lor.end

switch.hole_check:                                ; preds = %if.then15
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %30 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.lobit.not = icmp eq i8 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %31 = phi i32 [ %phi.cast, %lor.rhs ], [ 1, %switch.hole_check.lor.end_crit_edge ]
  %crop = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 8
  tail call fastcc void @bttv_calc_geo(ptr noundef %btv, ptr noundef %geo, i32 noundef %24, i32 noundef %26, i32 noundef %31, ptr noundef %add.ptr, ptr noundef %crop)
  %32 = ptrtoint ptr %field28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field28, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %do.body80 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb49
    i32 4, label %sw.bb54
    i32 5, label %sw.bb67
  ]

sw.bb:                                            ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %top = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  %sglist = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %35 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sglist, align 4
  %37 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height20, align 4
  %call48 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %top, ptr noundef %36, i32 noundef 0, i32 noundef %mul, i32 noundef 0, i32 noundef 0, i32 noundef %38)
  br label %if.end86

sw.bb49:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %bottom = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  %sglist50 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %39 = ptrtoint ptr %sglist50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sglist50, align 4
  %41 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height20, align 4
  %call53 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %bottom, ptr noundef %40, i32 noundef 0, i32 noundef %mul, i32 noundef 0, i32 noundef 0, i32 noundef %42)
  br label %if.end86

sw.bb54:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %top55 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  %sglist56 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %43 = ptrtoint ptr %sglist56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sglist56, align 4
  %45 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height20, align 4
  %shr59 = lshr i32 %46, 1
  %call60 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %top55, ptr noundef %44, i32 noundef 0, i32 noundef %mul, i32 noundef %mul, i32 noundef 0, i32 noundef %shr59)
  %bottom61 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  %47 = ptrtoint ptr %sglist56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sglist56, align 4
  %49 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height20, align 4
  %shr65 = lshr i32 %50, 1
  %call66 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %bottom61, ptr noundef %48, i32 noundef %mul, i32 noundef %mul, i32 noundef %mul, i32 noundef 0, i32 noundef %shr65)
  br label %if.end86

sw.bb67:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %top68 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  %sglist69 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %51 = ptrtoint ptr %sglist69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sglist69, align 4
  %53 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height20, align 4
  %shr72 = lshr i32 %54, 1
  %call73 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %top68, ptr noundef %52, i32 noundef 0, i32 noundef %mul, i32 noundef 0, i32 noundef 0, i32 noundef %shr72)
  %bottom74 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  %55 = ptrtoint ptr %sglist69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sglist69, align 4
  %57 = ptrtoint ptr %height20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height20, align 4
  %shr78 = lshr i32 %58, 1
  %call79 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %bottom74, ptr noundef %56, i32 noundef %mul22, i32 noundef %mul, i32 noundef 0, i32 noundef 0, i32 noundef %shr78)
  br label %if.end86

do.body80:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-risc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 738, 0\0A.popsection", ""() #7, !srcloc !83
  unreachable

if.end86:                                         ; preds = %sw.bb67, %sw.bb54, %sw.bb49, %sw.bb, %do.end12.if.end86_crit_edge
  %59 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fmt13, align 8
  %flags88 = getelementptr inbounds %struct.bttv_format, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags88, align 4
  %and89 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end86.if.end246_crit_edge, label %if.then91

if.end86.if.end246_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then91:                                        ; preds = %if.end86
  %width93 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 2
  %63 = ptrtoint ptr %width93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %width93, align 8
  %height95 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 3
  %65 = ptrtoint ptr %height95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height95, align 4
  %mul96 = mul i32 %66, %64
  %and104 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %hshift112 = getelementptr inbounds %struct.bttv_format, ptr %60, i32 0, i32 5
  %67 = ptrtoint ptr %hshift112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hshift112, align 4
  %shr113 = ashr i32 %mul96, %68
  %vshift115 = getelementptr inbounds %struct.bttv_format, ptr %60, i32 0, i32 6
  %69 = ptrtoint ptr %vshift115 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vshift115, align 4
  %shr116 = ashr i32 %shr113, %70
  %add117 = add i32 %shr116, %mul96
  %mul96.add117 = select i1 %tobool105.not, i32 %mul96, i32 %add117
  %add117.mul96 = select i1 %tobool105.not, i32 %add117, i32 %mul96
  %field120 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 6
  %71 = ptrtoint ptr %field120 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %field120, align 8
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %72, label %do.body239 [
    i32 2, label %sw.bb121
    i32 3, label %sw.bb139
    i32 4, label %sw.bb157
    i32 5, label %sw.bb194
  ]

sw.bb121:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %geo122 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 5
  %crop127 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 8
  tail call fastcc void @bttv_calc_geo(ptr noundef %btv, ptr noundef %geo122, i32 noundef %64, i32 noundef %66, i32 noundef 0, ptr noundef %add.ptr, ptr noundef %crop127)
  %top128 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  %sglist129 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %74 = ptrtoint ptr %sglist129 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sglist129, align 4
  %76 = ptrtoint ptr %width93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %width93, align 8
  %78 = ptrtoint ptr %height95 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height95, align 4
  %80 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fmt13, align 8
  %hshift135 = getelementptr inbounds %struct.bttv_format, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %hshift135 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hshift135, align 4
  %vshift137 = getelementptr inbounds %struct.bttv_format, ptr %81, i32 0, i32 6
  %84 = ptrtoint ptr %vshift137 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vshift137, align 4
  tail call fastcc void @bttv_risc_planar(ptr noundef %btv, ptr noundef %top128, ptr noundef %75, i32 noundef 0, i32 noundef %77, i32 noundef 0, i32 noundef %79, i32 noundef %mul96.add117, i32 noundef %add117.mul96, i32 noundef %83, i32 noundef %85, i32 noundef 0)
  br label %if.end246

sw.bb139:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %geo140 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 5
  %crop145 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 8
  tail call fastcc void @bttv_calc_geo(ptr noundef %btv, ptr noundef %geo140, i32 noundef %64, i32 noundef %66, i32 noundef 0, ptr noundef %add.ptr, ptr noundef %crop145)
  %bottom146 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  %sglist147 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %86 = ptrtoint ptr %sglist147 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sglist147, align 4
  %88 = ptrtoint ptr %width93 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %width93, align 8
  %90 = ptrtoint ptr %height95 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %height95, align 4
  %92 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fmt13, align 8
  %hshift153 = getelementptr inbounds %struct.bttv_format, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %hshift153 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hshift153, align 4
  %vshift155 = getelementptr inbounds %struct.bttv_format, ptr %93, i32 0, i32 6
  %96 = ptrtoint ptr %vshift155 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vshift155, align 4
  tail call fastcc void @bttv_risc_planar(ptr noundef %btv, ptr noundef %bottom146, ptr noundef %87, i32 noundef 0, i32 noundef %89, i32 noundef 0, i32 noundef %91, i32 noundef %mul96.add117, i32 noundef %add117.mul96, i32 noundef %95, i32 noundef %97, i32 noundef 0)
  br label %if.end246

sw.bb157:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %geo158 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 5
  %crop163 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 8
  tail call fastcc void @bttv_calc_geo(ptr noundef %btv, ptr noundef %geo158, i32 noundef %64, i32 noundef %66, i32 noundef 1, ptr noundef %add.ptr, ptr noundef %crop163)
  %98 = ptrtoint ptr %height95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height95, align 4
  %shr166 = lshr i32 %99, 1
  %100 = ptrtoint ptr %width93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %width93, align 8
  %102 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fmt13, align 8
  %hshift172 = getelementptr inbounds %struct.bttv_format, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %hshift172 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hshift172, align 4
  %shr173 = lshr i32 %101, %105
  %top174 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  %sglist175 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %106 = ptrtoint ptr %sglist175 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sglist175, align 4
  %vshift181 = getelementptr inbounds %struct.bttv_format, ptr %103, i32 0, i32 6
  %108 = ptrtoint ptr %vshift181 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vshift181, align 4
  tail call fastcc void @bttv_risc_planar(ptr noundef %btv, ptr noundef %top174, ptr noundef %107, i32 noundef 0, i32 noundef %101, i32 noundef %101, i32 noundef %shr166, i32 noundef %mul96.add117, i32 noundef %add117.mul96, i32 noundef %105, i32 noundef %109, i32 noundef %shr173)
  %bottom183 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  %110 = ptrtoint ptr %sglist175 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sglist175, align 4
  %112 = ptrtoint ptr %width93 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %width93, align 8
  %add187 = add i32 %shr173, %mul96.add117
  %add188 = add i32 %shr173, %add117.mul96
  %114 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fmt13, align 8
  %hshift190 = getelementptr inbounds %struct.bttv_format, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %hshift190 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hshift190, align 4
  %vshift192 = getelementptr inbounds %struct.bttv_format, ptr %115, i32 0, i32 6
  %118 = ptrtoint ptr %vshift192 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vshift192, align 4
  tail call fastcc void @bttv_risc_planar(ptr noundef %btv, ptr noundef %bottom183, ptr noundef %111, i32 noundef %101, i32 noundef %113, i32 noundef %101, i32 noundef %shr166, i32 noundef %add187, i32 noundef %add188, i32 noundef %117, i32 noundef %119, i32 noundef %shr173)
  br label %if.end246

sw.bb194:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %geo195 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 5
  %crop200 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 8
  tail call fastcc void @bttv_calc_geo(ptr noundef %btv, ptr noundef %geo195, i32 noundef %64, i32 noundef %66, i32 noundef 1, ptr noundef %add.ptr, ptr noundef %crop200)
  %120 = ptrtoint ptr %height95 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %height95, align 4
  %shr203 = lshr i32 %121, 1
  %122 = ptrtoint ptr %width93 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %width93, align 8
  %124 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fmt13, align 8
  %hshift209 = getelementptr inbounds %struct.bttv_format, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %hshift209 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hshift209, align 4
  %top211 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  %sglist212 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %128 = ptrtoint ptr %sglist212 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sglist212, align 4
  %shr215 = ashr i32 %mul96.add117, 1
  %shr216 = ashr i32 %add117.mul96, 1
  %vshift220 = getelementptr inbounds %struct.bttv_format, ptr %125, i32 0, i32 6
  %130 = ptrtoint ptr %vshift220 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vshift220, align 4
  tail call fastcc void @bttv_risc_planar(ptr noundef %btv, ptr noundef %top211, ptr noundef %129, i32 noundef 0, i32 noundef %123, i32 noundef 0, i32 noundef %shr203, i32 noundef %shr215, i32 noundef %shr216, i32 noundef %127, i32 noundef %131, i32 noundef 0)
  %bottom222 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  %132 = ptrtoint ptr %sglist212 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sglist212, align 4
  %mul224 = mul i32 %shr203, %123
  %134 = ptrtoint ptr %width93 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %width93, align 8
  %add229 = add i32 %mul224, %shr215
  %add232 = add i32 %mul224, %shr216
  %136 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fmt13, align 8
  %hshift234 = getelementptr inbounds %struct.bttv_format, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %hshift234 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hshift234, align 4
  %vshift236 = getelementptr inbounds %struct.bttv_format, ptr %137, i32 0, i32 6
  %140 = ptrtoint ptr %vshift236 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %vshift236, align 4
  tail call fastcc void @bttv_risc_planar(ptr noundef %btv, ptr noundef %bottom222, ptr noundef %133, i32 noundef %mul224, i32 noundef %135, i32 noundef 0, i32 noundef %shr203, i32 noundef %add229, i32 noundef %add232, i32 noundef %139, i32 noundef %141, i32 noundef 0)
  br label %if.end246

do.body239:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-risc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 829, 0\0A.popsection", ""() #7, !srcloc !84
  unreachable

if.end246:                                        ; preds = %sw.bb194, %sw.bb157, %sw.bb139, %sw.bb121, %if.end86.if.end246_crit_edge
  %142 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %fmt13, align 8
  %flags248 = getelementptr inbounds %struct.bttv_format, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %flags248 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags248, align 4
  %and249 = and i32 %145, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end246.if.end264_crit_edge, label %if.then251

if.end246.if.end264_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end264

if.then251:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  %field253 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 6
  %146 = ptrtoint ptr %field253 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 5, ptr %field253, align 8
  %geo254 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 5
  %swidth = getelementptr %struct.bttv_tvnorm, ptr @bttv_tvnorms, i32 %1, i32 3
  %147 = ptrtoint ptr %swidth to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %swidth, align 4
  %conv = zext i16 %148 to i32
  %sheight = getelementptr %struct.bttv_tvnorm, ptr @bttv_tvnorms, i32 %1, i32 4
  %149 = ptrtoint ptr %sheight to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %sheight, align 2
  %conv255 = zext i16 %150 to i32
  %crop256 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 8
  tail call fastcc void @bttv_calc_geo(ptr noundef %btv, ptr noundef %geo254, i32 noundef %conv, i32 noundef %conv255, i32 noundef 1, ptr noundef %add.ptr, ptr noundef %crop256)
  %top257 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  %sglist258 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call, i32 0, i32 9
  %151 = ptrtoint ptr %sglist258 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sglist258, align 4
  %call259 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %top257, ptr noundef %152, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 0, i32 noundef 640)
  %bottom260 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  %153 = ptrtoint ptr %sglist258 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sglist258, align 4
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 5
  %155 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %size, align 4
  %div453 = lshr i32 %156, 1
  %call263 = tail call i32 @bttv_risc_packed(ptr noundef %btv, ptr noundef %bottom260, ptr noundef %154, i32 noundef %div453, i32 noundef 1024, i32 noundef 0, i32 noundef 0, i32 noundef 640)
  br label %if.end264

if.end264:                                        ; preds = %if.then251, %if.end246.if.end264_crit_edge
  %157 = ptrtoint ptr %fmt13 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fmt13, align 8
  %btformat = getelementptr inbounds %struct.bttv_format, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %btformat to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %btformat, align 4
  %btformat266 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 3
  %161 = ptrtoint ptr %btformat266 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %btformat266, align 8
  %btswap = getelementptr inbounds %struct.bttv_format, ptr %158, i32 0, i32 2
  %162 = ptrtoint ptr %btswap to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %btswap, align 4
  %btswap268 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 4
  %164 = ptrtoint ptr %btswap268 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %btswap268, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @bttv_calc_geo(ptr nocapture noundef readonly %btv, ptr noundef %geo, i32 noundef %width, i32 noundef %height, i32 noundef %both_fields, ptr nocapture noundef readonly %tvnorm, ptr nocapture noundef readonly %crop) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crop, align 4
  %defrect = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %defrect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %defrect, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 1
  %4 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %top, align 4
  %top4 = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 17, i32 2, i32 1
  %6 = ptrtoint ptr %top4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5 = icmp eq i32 %5, %7
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %width7 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 2
  %8 = ptrtoint ptr %width7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width7, align 4
  %width10 = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 17, i32 2, i32 2
  %10 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11 = icmp eq i32 %9, %11
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true6.lor.lhs.false_crit_edge

land.lhs.true6.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true12:                                  ; preds = %land.lhs.true6
  %height13 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 3
  %12 = ptrtoint ptr %height13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height13, align 4
  %height16 = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 17, i32 2, i32 3
  %14 = ptrtoint ptr %height16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp17 = icmp eq i32 %13, %15
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true12.lor.lhs.false_crit_edge

land.lhs.true12.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true18:                                  ; preds = %land.lhs.true12
  %swidth = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 3
  %16 = ptrtoint ptr %swidth to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %swidth, align 4
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %width)
  %cmp19.not = icmp ult i32 %conv, %width
  br i1 %cmp19.not, label %land.lhs.true18.lor.lhs.false_crit_edge, label %land.lhs.true18.if.then_crit_edge

land.lhs.true18.if.then_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true18.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true18.lor.lhs.false_crit_edge, %land.lhs.true12.lor.lhs.false_crit_edge, %land.lhs.true6.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %input = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 38
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input, align 4
  %dig = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 8
  %20 = ptrtoint ptr %dig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dig, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp21 = icmp eq i32 %19, %21
  br i1 %cmp21, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true18.if.then_crit_edge
  %swidth1.i = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 3
  %22 = ptrtoint ptr %swidth1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %swidth1.i, align 4
  %conv.i = zext i16 %23 to i32
  %totalwidth2.i = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 5
  %24 = ptrtoint ptr %totalwidth2.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %totalwidth2.i, align 4
  %conv3.i = zext i16 %25 to i32
  %scaledtwidth4.i = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 9
  %26 = ptrtoint ptr %scaledtwidth4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scaledtwidth4.i, align 4
  %input.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 38
  %28 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %input.i, align 4
  %dig.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 8
  %30 = ptrtoint ptr %dig.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dig.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i = icmp eq i32 %29, %31
  %swidth.0.i = select i1 %cmp.i, i32 720, i32 %conv.i
  %scaledtwidth.0.i = select i1 %cmp.i, i32 858, i32 %27
  %vdelay6.i = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 12
  %32 = ptrtoint ptr %vdelay6.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vdelay6.i, align 4
  %mul.i = mul i32 %scaledtwidth.0.i, %width
  %div.i = sdiv i32 %mul.i, %swidth.0.i
  %conv3.op.i = shl nuw nsw i32 %conv3.i, 12
  %mul8.i = select i1 %cmp.i, i32 3514368, i32 %conv3.op.i
  %div9.i = udiv i32 %mul8.i, %div.i
  %34 = trunc i32 %div9.i to i16
  %conv10.i = add i16 %34, -4096
  %hscale.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 4
  %35 = ptrtoint ptr %hscale.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv10.i, ptr %hscale.i, align 2
  %hdelayx1.i = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 10
  %36 = ptrtoint ptr %hdelayx1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdelayx1.i, align 4
  %hdelay.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 5
  %conv12.i = zext i16 %37 to i32
  %mul13.i = mul i32 %conv12.i, %width
  %div14.i = sdiv i32 %mul13.i, %swidth.0.i
  %38 = trunc i32 %div14.i to i16
  %conv19.i = and i16 %38, 1022
  %39 = ptrtoint ptr %hdelay.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv19.i, ptr %hdelay.i, align 2
  %sheight.i = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 4
  %40 = ptrtoint ptr %sheight.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sheight.i, align 2
  %conv20.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %both_fields)
  %tobool.not.i = icmp eq i32 %both_fields, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %shr.i = lshr i32 %conv20.i, %cond.i
  %mul21.i = shl nuw nsw i32 %shr.i, 9
  %div22.i = sdiv i32 %mul21.i, %height
  %42 = trunc i32 %div22.i to i16
  %43 = sub i16 512, %42
  %conv26.i = and i16 %43, 8191
  %vscale.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 7
  %44 = ptrtoint ptr %vscale.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv26.i, ptr %vscale.i, align 2
  %45 = lshr i32 %width, 8
  %and28.i = and i32 %45, 3
  %46 = lshr i32 %div14.i, 6
  %47 = and i32 %46, 12
  %48 = ptrtoint ptr %sheight.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sheight.i, align 2
  %50 = lshr i16 %49, 4
  %51 = and i16 %50, 48
  %and36.i = zext i16 %51 to i32
  %52 = lshr i16 %33, 2
  %53 = and i16 %52, 192
  %and39.i = zext i16 %53 to i32
  %or.i = or i32 %and28.i, %and39.i
  %or37.i = or i32 %or.i, %47
  %or40.i = or i32 %or37.i, %and36.i
  %conv41.i = trunc i32 %or40.i to i8
  %crop.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 1
  %54 = ptrtoint ptr %crop.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv41.i, ptr %crop.i, align 1
  %cond43.i = select i1 %tobool.not.i, i16 0, i16 8192
  %or46.i = or i16 %conv26.i, %cond43.i
  store i16 %or46.i, ptr %vscale.i, align 2
  %vdelay49.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 8
  %55 = ptrtoint ptr %vdelay49.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %33, ptr %vdelay49.i, align 2
  %conv50.i = trunc i32 %width to i16
  %width51.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 3
  %56 = ptrtoint ptr %width51.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv50.i, ptr %width51.i, align 2
  %57 = load i16, ptr %sheight.i, align 2
  %sheight53.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 6
  %58 = ptrtoint ptr %sheight53.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %sheight53.i, align 2
  %vtotal.i = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 14
  %59 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vtotal.i, align 4
  %vtotal54.i = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 9
  %61 = ptrtoint ptr %vtotal54.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %vtotal54.i, align 2
  %opt_combfilter.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 50
  %62 = ptrtoint ptr %opt_combfilter.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %opt_combfilter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool55.not.i = icmp eq i32 %63, 0
  br i1 %tobool55.not.i, label %if.else.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %width)
  %cmp57.i = icmp slt i32 %width, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 385, i32 %width)
  %cmp59.i = icmp slt i32 %width, 385
  %phi.cast.i = zext i1 %cmp59.i to i8
  %cond62.i = select i1 %cmp57.i, i8 2, i8 %phi.cast.i
  %64 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %cond62.i, ptr %geo, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %width)
  %cmp64.i = icmp slt i32 %width, 769
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %geo, align 2
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %width23 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 2
  %66 = ptrtoint ptr %width23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width23, align 4
  %mul = shl i32 %width, 4
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 %mul)
  %height26 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 3
  %69 = ptrtoint ptr %height26 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height26, align 4
  %mul27 = shl i32 %height, 4
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 %mul27)
  %conv35 = trunc i32 %width to i16
  %width36 = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 3
  %72 = ptrtoint ptr %width36 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv35, ptr %width36, align 2
  %mul37 = shl i32 %68, 12
  %shr = lshr i32 %width, 1
  %add = add i32 %mul37, %shr
  %div = udiv i32 %add, %width
  %73 = trunc i32 %div to i16
  %conv38 = add i16 %73, -4096
  %hscale = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 4
  %74 = ptrtoint ptr %hscale to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv38, ptr %hscale, align 2
  %75 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %crop, align 4
  %mul40 = mul i32 %76, %width
  %add41 = add i32 %mul40, %68
  %div42 = udiv i32 %add41, %68
  %77 = trunc i32 %div42 to i16
  %conv43 = and i16 %77, -2
  %hdelay = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 5
  %78 = ptrtoint ptr %hdelay to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv43, ptr %hdelay, align 2
  %conv44 = trunc i32 %71 to i16
  %sheight = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 6
  %79 = ptrtoint ptr %sheight to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv44, ptr %sheight, align 2
  %top45 = getelementptr inbounds %struct.v4l2_rect, ptr %crop, i32 0, i32 1
  %80 = ptrtoint ptr %top45 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %top45, align 4
  %top47 = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 17, i32 1, i32 1
  %82 = ptrtoint ptr %top47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %top47, align 4
  %sub48 = sub i32 %81, %83
  %84 = trunc i32 %sub48 to i16
  %conv50 = add i16 %84, 2
  %vdelay = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 8
  %85 = ptrtoint ptr %vdelay to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv50, ptr %vdelay, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %both_fields)
  %tobool.not = icmp eq i32 %both_fields, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %shr51 = lshr i32 %71, %lnot.ext
  %mul52 = shl i32 %shr51, 9
  %shr53 = lshr i32 %height, 1
  %add54 = add i32 %mul52, %shr53
  %div55 = udiv i32 %add54, %height
  %86 = sub i32 512, %div55
  %conv59 = and i32 %86, 8191
  %vscale = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 7
  %cond61 = select i1 %tobool.not, i32 0, i32 8192
  %or = or i32 %conv59, %cond61
  %conv64 = trunc i32 %or to i16
  %87 = ptrtoint ptr %vscale to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv64, ptr %vscale, align 2
  %vtotal = getelementptr inbounds %struct.bttv_tvnorm, ptr %tvnorm, i32 0, i32 14
  %88 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vtotal, align 4
  %vtotal65 = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 9
  %90 = ptrtoint ptr %vtotal65 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %vtotal65, align 2
  %91 = lshr i16 %conv35, 8
  %92 = and i16 %91, 3
  %93 = lshr i16 %77, 6
  %94 = and i16 %93, 12
  %95 = lshr i16 %conv44, 4
  %96 = and i16 %95, 48
  %97 = lshr i16 %conv50, 2
  %98 = and i16 %97, 192
  %or74165 = or i16 %96, %92
  %or79166 = or i16 %or74165, %94
  %or84167 = or i16 %or79166, %98
  %conv85 = trunc i16 %or84167 to i8
  %crop86 = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 1
  %99 = ptrtoint ptr %crop86 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv85, ptr %crop86, align 1
  %opt_combfilter = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 50
  %100 = ptrtoint ptr %opt_combfilter to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %opt_combfilter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool87.not = icmp eq i32 %101, 0
  br i1 %tobool87.not, label %if.else, label %if.then88

if.then88:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %width)
  %cmp89 = icmp ult i32 %width, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 385, i32 %width)
  %cmp93 = icmp ult i32 %width, 385
  %phi.cast = zext i1 %cmp93 to i8
  %cond97 = select i1 %cmp89, i8 2, i8 %phi.cast
  %102 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %cond97, ptr %geo, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %width)
  %cmp99 = icmp ult i32 %width, 769
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %geo, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then88, %if.else.i, %if.then56.i
  %conv102.sink.shrunk = phi i1 [ %cmp99, %if.then88 ], [ false, %if.else ], [ false, %if.else.i ], [ %cmp64.i, %if.then56.i ]
  %conv102.sink = zext i1 %conv102.sink.shrunk to i8
  %comb = getelementptr inbounds %struct.bttv_geometry, ptr %geo, i32 0, i32 2
  %104 = ptrtoint ptr %comb to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv102.sink, ptr %comb, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bttv_risc_planar(ptr nocapture noundef readonly %btv, ptr noundef %risc, ptr noundef %sglist, i32 noundef %yoffset, i32 noundef %ybpl, i32 noundef %ypadding, i32 noundef %ylines, i32 noundef %uoffset, i32 noundef %voffset, i32 noundef %hshift, i32 noundef %vshift, i32 noundef %cpadding) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %yoffset)
  %cmp = icmp eq i32 %yoffset, 0
  %add = add i32 %ypadding, %ybpl
  %mul = shl i32 %ylines, 1
  %mul1 = mul i32 %mul, %add
  %add2 = add i32 %mul1, 3
  %div1 = lshr i32 %add2, 12
  %add3 = add i32 %div1, %ylines
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %2 = mul i32 %add3, 20
  %mul6 = add i32 %2, 40
  %call = tail call i32 @btcx_riscmem_alloc(ptr noundef %1, ptr noundef %risc, i32 noundef %mul6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 1
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpu, align 4
  %incdec.ptr = getelementptr i32, ptr %4, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 234881152, ptr %4, align 4
  %incdec.ptr9 = getelementptr i32, ptr %4, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ylines)
  %cmp1039.not = icmp eq i32 %ylines, 0
  br i1 %cmp1039.not, label %if.end.for.end140_crit_edge, label %for.body.lr.ph

if.end.for.end140_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end140

for.body.lr.ph:                                   ; preds = %if.end
  %opt_vcr_hack = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 52
  %sub = add i32 %ylines, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ybpl)
  %cmp37.not23 = icmp eq i32 %ybpl, 0
  br label %for.body

for.body:                                         ; preds = %for.inc139.for.body_crit_edge, %for.body.lr.ph
  %vsg.047 = phi ptr [ %sglist, %for.body.lr.ph ], [ %vsg.4, %for.inc139.for.body_crit_edge ]
  %usg.046 = phi ptr [ %sglist, %for.body.lr.ph ], [ %usg.4, %for.inc139.for.body_crit_edge ]
  %ysg.045 = phi ptr [ %sglist, %for.body.lr.ph ], [ %ysg.3, %for.inc139.for.body_crit_edge ]
  %rp.044 = phi ptr [ %incdec.ptr9, %for.body.lr.ph ], [ %rp.3, %for.inc139.for.body_crit_edge ]
  %line.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc139.for.body_crit_edge ]
  %yoffset.addr.042 = phi i32 [ %yoffset, %for.body.lr.ph ], [ %yoffset.addr.3, %for.inc139.for.body_crit_edge ]
  %uoffset.addr.041 = phi i32 [ %uoffset, %for.body.lr.ph ], [ %uoffset.addr.5, %for.inc139.for.body_crit_edge ]
  %voffset.addr.040 = phi i32 [ %voffset, %for.body.lr.ph ], [ %voffset.addr.5, %for.inc139.for.body_crit_edge ]
  %7 = ptrtoint ptr %opt_vcr_hack to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opt_vcr_hack, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %line.043, i32 %sub)
  %cmp12.not = icmp ult i32 %line.043, %sub
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %if.end15, label %for.body.for.inc139_crit_edge

for.body.for.inc139_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc139

if.end15:                                         ; preds = %for.body
  %9 = zext i32 %vshift to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %vshift, label %sw.default [
    i32 0, label %if.end15.sw.epilog_crit_edge
    i32 1, label %sw.bb16
    i32 2, label %sw.bb25
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end15
  %and = and i32 %line.043, 1
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19 = icmp eq i32 %and, 0
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp22 = icmp ne i32 %and, 0
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end15
  %and28 = and i32 %line.043, 3
  br i1 %cmp, label %if.then27, label %if.else31

if.then27:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 0
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and28)
  %cmp33 = icmp eq i32 %and28, 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else31, %if.then27, %if.else, %if.then18, %if.end15.sw.epilog_crit_edge
  %chroma.0.shrunk = phi i1 [ false, %sw.default ], [ %cmp29, %if.then27 ], [ %cmp33, %if.else31 ], [ %cmp19, %if.then18 ], [ %cmp22, %if.else ], [ true, %if.end15.sw.epilog_crit_edge ]
  br i1 %cmp37.not23, label %sw.epilog.for.end_crit_edge, label %sw.epilog.while.cond.preheader_crit_edge

sw.epilog.while.cond.preheader_crit_edge:         ; preds = %sw.epilog
  br label %while.cond.preheader

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %sw.epilog.while.cond.preheader_crit_edge
  %vsg.131 = phi ptr [ %vsg.3, %for.inc.while.cond.preheader_crit_edge ], [ %vsg.047, %sw.epilog.while.cond.preheader_crit_edge ]
  %usg.130 = phi ptr [ %usg.3, %for.inc.while.cond.preheader_crit_edge ], [ %usg.046, %sw.epilog.while.cond.preheader_crit_edge ]
  %ysg.129 = phi ptr [ %ysg.2.lcssa, %for.inc.while.cond.preheader_crit_edge ], [ %ysg.045, %sw.epilog.while.cond.preheader_crit_edge ]
  %rp.128 = phi ptr [ %rp.2, %for.inc.while.cond.preheader_crit_edge ], [ %rp.044, %sw.epilog.while.cond.preheader_crit_edge ]
  %todo.027 = phi i32 [ %sub132, %for.inc.while.cond.preheader_crit_edge ], [ %ybpl, %sw.epilog.while.cond.preheader_crit_edge ]
  %yoffset.addr.126 = phi i32 [ %add118, %for.inc.while.cond.preheader_crit_edge ], [ %yoffset.addr.042, %sw.epilog.while.cond.preheader_crit_edge ]
  %uoffset.addr.125 = phi i32 [ %uoffset.addr.4, %for.inc.while.cond.preheader_crit_edge ], [ %uoffset.addr.041, %sw.epilog.while.cond.preheader_crit_edge ]
  %voffset.addr.124 = phi i32 [ %voffset.addr.4, %for.inc.while.cond.preheader_crit_edge ], [ %voffset.addr.040, %sw.epilog.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %yoffset.addr.126)
  %tobool40.not3 = icmp eq i32 %yoffset.addr.126, 0
  br i1 %tobool40.not3, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %ysg.25 = phi ptr [ %call45, %while.body.land.rhs_crit_edge ], [ %ysg.129, %while.cond.preheader.land.rhs_crit_edge ]
  %yoffset.addr.24 = phi i32 [ %sub44, %while.body.land.rhs_crit_edge ], [ %yoffset.addr.126, %while.cond.preheader.land.rhs_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %ysg.25, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %yoffset.addr.24, i32 %11)
  %cmp41.not = icmp ult i32 %yoffset.addr.24, %11
  br i1 %cmp41.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %sub44 = sub i32 %yoffset.addr.24, %11
  %call45 = tail call ptr @sg_next(ptr noundef %ysg.25) #7
  %tobool40.not = icmp eq i32 %sub44, 0
  br i1 %tobool40.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %yoffset.addr.2.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %yoffset.addr.24, %land.rhs.while.end_crit_edge ]
  %ysg.2.lcssa = phi ptr [ %ysg.129, %while.cond.preheader.while.end_crit_edge ], [ %call45, %while.body.while.end_crit_edge ], [ %ysg.25, %land.rhs.while.end_crit_edge ]
  %add46 = add i32 %yoffset.addr.2.lcssa, %todo.027
  %dma_length47 = getelementptr inbounds %struct.scatterlist, ptr %ysg.2.lcssa, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %13)
  %cmp48 = icmp ugt i32 %add46, %13
  %sub52 = sub i32 %13, %yoffset.addr.2.lcssa
  %spec.select = select i1 %cmp48, i32 %sub52, i32 %todo.027
  br i1 %chroma.0.shrunk, label %while.cond56.preheader, label %while.end.if.end99_crit_edge

while.end.if.end99_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

while.cond56.preheader:                           ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uoffset.addr.125)
  %tobool57.not9 = icmp eq i32 %uoffset.addr.125, 0
  br i1 %tobool57.not9, label %while.cond56.preheader.while.end67_crit_edge, label %while.cond56.preheader.land.rhs58_crit_edge

while.cond56.preheader.land.rhs58_crit_edge:      ; preds = %while.cond56.preheader
  br label %land.rhs58

while.cond56.preheader.while.end67_crit_edge:     ; preds = %while.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end67

land.rhs58:                                       ; preds = %while.body63.land.rhs58_crit_edge, %while.cond56.preheader.land.rhs58_crit_edge
  %usg.211 = phi ptr [ %call66, %while.body63.land.rhs58_crit_edge ], [ %usg.130, %while.cond56.preheader.land.rhs58_crit_edge ]
  %uoffset.addr.210 = phi i32 [ %sub65, %while.body63.land.rhs58_crit_edge ], [ %uoffset.addr.125, %while.cond56.preheader.land.rhs58_crit_edge ]
  %dma_length59 = getelementptr inbounds %struct.scatterlist, ptr %usg.211, i32 0, i32 4
  %14 = ptrtoint ptr %dma_length59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_length59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uoffset.addr.210, i32 %15)
  %cmp60.not = icmp ult i32 %uoffset.addr.210, %15
  br i1 %cmp60.not, label %land.rhs58.while.end67_crit_edge, label %while.body63

land.rhs58.while.end67_crit_edge:                 ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end67

while.body63:                                     ; preds = %land.rhs58
  %sub65 = sub i32 %uoffset.addr.210, %15
  %call66 = tail call ptr @sg_next(ptr noundef %usg.211) #7
  %tobool57.not = icmp eq i32 %sub65, 0
  br i1 %tobool57.not, label %while.body63.while.end67_crit_edge, label %while.body63.land.rhs58_crit_edge

while.body63.land.rhs58_crit_edge:                ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs58

while.body63.while.end67_crit_edge:               ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end67

while.end67:                                      ; preds = %while.body63.while.end67_crit_edge, %land.rhs58.while.end67_crit_edge, %while.cond56.preheader.while.end67_crit_edge
  %uoffset.addr.2.lcssa = phi i32 [ 0, %while.cond56.preheader.while.end67_crit_edge ], [ 0, %while.body63.while.end67_crit_edge ], [ %uoffset.addr.210, %land.rhs58.while.end67_crit_edge ]
  %usg.2.lcssa = phi ptr [ %usg.130, %while.cond56.preheader.while.end67_crit_edge ], [ %call66, %while.body63.while.end67_crit_edge ], [ %usg.211, %land.rhs58.while.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voffset.addr.124)
  %tobool69.not16 = icmp eq i32 %voffset.addr.124, 0
  br i1 %tobool69.not16, label %while.end67.while.end79_crit_edge, label %while.end67.land.rhs70_crit_edge

while.end67.land.rhs70_crit_edge:                 ; preds = %while.end67
  br label %land.rhs70

while.end67.while.end79_crit_edge:                ; preds = %while.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end79

land.rhs70:                                       ; preds = %while.body75.land.rhs70_crit_edge, %while.end67.land.rhs70_crit_edge
  %vsg.218 = phi ptr [ %call78, %while.body75.land.rhs70_crit_edge ], [ %vsg.131, %while.end67.land.rhs70_crit_edge ]
  %voffset.addr.217 = phi i32 [ %sub77, %while.body75.land.rhs70_crit_edge ], [ %voffset.addr.124, %while.end67.land.rhs70_crit_edge ]
  %dma_length71 = getelementptr inbounds %struct.scatterlist, ptr %vsg.218, i32 0, i32 4
  %16 = ptrtoint ptr %dma_length71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_length71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %voffset.addr.217, i32 %17)
  %cmp72.not = icmp ult i32 %voffset.addr.217, %17
  br i1 %cmp72.not, label %land.rhs70.while.end79_crit_edge, label %while.body75

land.rhs70.while.end79_crit_edge:                 ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end79

while.body75:                                     ; preds = %land.rhs70
  %sub77 = sub i32 %voffset.addr.217, %17
  %call78 = tail call ptr @sg_next(ptr noundef %vsg.218) #7
  %tobool69.not = icmp eq i32 %sub77, 0
  br i1 %tobool69.not, label %while.body75.while.end79_crit_edge, label %while.body75.land.rhs70_crit_edge

while.body75.land.rhs70_crit_edge:                ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs70

while.body75.while.end79_crit_edge:               ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end79

while.end79:                                      ; preds = %while.body75.while.end79_crit_edge, %land.rhs70.while.end79_crit_edge, %while.end67.while.end79_crit_edge
  %voffset.addr.2.lcssa = phi i32 [ 0, %while.end67.while.end79_crit_edge ], [ 0, %while.body75.while.end79_crit_edge ], [ %voffset.addr.217, %land.rhs70.while.end79_crit_edge ]
  %vsg.2.lcssa = phi ptr [ %vsg.131, %while.end67.while.end79_crit_edge ], [ %call78, %while.body75.while.end79_crit_edge ], [ %vsg.218, %land.rhs70.while.end79_crit_edge ]
  %shr = lshr i32 %spec.select, %hshift
  %add80 = add i32 %uoffset.addr.2.lcssa, %shr
  %dma_length81 = getelementptr inbounds %struct.scatterlist, ptr %usg.2.lcssa, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add80, i32 %19)
  %cmp82 = icmp ugt i32 %add80, %19
  %sub86 = sub i32 %19, %uoffset.addr.2.lcssa
  %shl = shl i32 %sub86, %hshift
  %ylen.1 = select i1 %cmp82, i32 %shl, i32 %spec.select
  %shr88 = lshr i32 %ylen.1, %hshift
  %add89 = add i32 %shr88, %voffset.addr.2.lcssa
  %dma_length90 = getelementptr inbounds %struct.scatterlist, ptr %vsg.2.lcssa, i32 0, i32 4
  %20 = ptrtoint ptr %dma_length90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add89, i32 %21)
  %cmp91 = icmp ugt i32 %add89, %21
  %sub95 = sub i32 %21, %voffset.addr.2.lcssa
  %shl96 = shl i32 %sub95, %hshift
  %ylen.2 = select i1 %cmp91, i32 %shl96, i32 %ylen.1
  br label %if.end99

if.end99:                                         ; preds = %while.end79, %while.end.if.end99_crit_edge
  %voffset.addr.3 = phi i32 [ %voffset.addr.2.lcssa, %while.end79 ], [ %voffset.addr.124, %while.end.if.end99_crit_edge ]
  %uoffset.addr.3 = phi i32 [ %uoffset.addr.2.lcssa, %while.end79 ], [ %uoffset.addr.125, %while.end.if.end99_crit_edge ]
  %ylen.3 = phi i32 [ %ylen.2, %while.end79 ], [ %spec.select, %while.end.if.end99_crit_edge ]
  %ri.0 = phi i32 [ -1879048192, %while.end79 ], [ -1342177280, %while.end.if.end99_crit_edge ]
  %usg.3 = phi ptr [ %usg.2.lcssa, %while.end79 ], [ %usg.130, %while.end.if.end99_crit_edge ]
  %vsg.3 = phi ptr [ %vsg.2.lcssa, %while.end79 ], [ %vsg.131, %while.end.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %todo.027, i32 %ybpl)
  %cmp100 = icmp eq i32 %todo.027, %ybpl
  %or = or i32 %ri.0, 134217728
  %spec.select2 = select i1 %cmp100, i32 %or, i32 %ri.0
  call void @__sanitizer_cov_trace_cmp4(i32 %todo.027, i32 %ylen.3)
  %cmp104 = icmp eq i32 %todo.027, %ylen.3
  %or107 = or i32 %spec.select2, 67108864
  %ri.2 = select i1 %cmp104, i32 %or107, i32 %spec.select2
  %or109 = or i32 %ri.2, %ylen.3
  %22 = tail call i32 @llvm.bswap.i32(i32 %or109)
  %incdec.ptr110 = getelementptr i32, ptr %rp.128, i32 1
  %23 = ptrtoint ptr %rp.128 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rp.128, align 4
  %shr111 = lshr i32 %ylen.3, %hshift
  %shl112 = shl i32 %shr111, 16
  %or114 = or i32 %shl112, %shr111
  %24 = tail call i32 @llvm.bswap.i32(i32 %or114)
  %incdec.ptr115 = getelementptr i32, ptr %rp.128, i32 2
  %25 = ptrtoint ptr %incdec.ptr110 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %incdec.ptr110, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %ysg.2.lcssa, i32 0, i32 3
  %26 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_address, align 4
  %add116 = add i32 %27, %yoffset.addr.2.lcssa
  %28 = tail call i32 @llvm.bswap.i32(i32 %add116)
  %incdec.ptr117 = getelementptr i32, ptr %rp.128, i32 3
  %29 = ptrtoint ptr %incdec.ptr115 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr115, align 4
  %add118 = add i32 %ylen.3, %yoffset.addr.2.lcssa
  br i1 %chroma.0.shrunk, label %if.then120, label %if.end99.for.inc_crit_edge

if.end99.for.inc_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then120:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address121 = getelementptr inbounds %struct.scatterlist, ptr %usg.3, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address121 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_address121, align 4
  %add122 = add i32 %31, %uoffset.addr.3
  %32 = tail call i32 @llvm.bswap.i32(i32 %add122)
  %incdec.ptr123 = getelementptr i32, ptr %rp.128, i32 4
  %33 = ptrtoint ptr %incdec.ptr117 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr117, align 4
  %add125 = add i32 %shr111, %uoffset.addr.3
  %dma_address126 = getelementptr inbounds %struct.scatterlist, ptr %vsg.3, i32 0, i32 3
  %34 = ptrtoint ptr %dma_address126 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address126, align 4
  %add127 = add i32 %35, %voffset.addr.3
  %36 = tail call i32 @llvm.bswap.i32(i32 %add127)
  %incdec.ptr128 = getelementptr i32, ptr %rp.128, i32 5
  %37 = ptrtoint ptr %incdec.ptr123 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr123, align 4
  %add130 = add i32 %shr111, %voffset.addr.3
  br label %for.inc

for.inc:                                          ; preds = %if.then120, %if.end99.for.inc_crit_edge
  %voffset.addr.4 = phi i32 [ %add130, %if.then120 ], [ %voffset.addr.3, %if.end99.for.inc_crit_edge ]
  %uoffset.addr.4 = phi i32 [ %add125, %if.then120 ], [ %uoffset.addr.3, %if.end99.for.inc_crit_edge ]
  %rp.2 = phi ptr [ %incdec.ptr128, %if.then120 ], [ %incdec.ptr117, %if.end99.for.inc_crit_edge ]
  %sub132 = sub i32 %todo.027, %ylen.3
  %cmp37.not = icmp eq i32 %sub132, 0
  br i1 %cmp37.not, label %for.inc.for.end_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %voffset.addr.1.lcssa = phi i32 [ %voffset.addr.040, %sw.epilog.for.end_crit_edge ], [ %voffset.addr.4, %for.inc.for.end_crit_edge ]
  %uoffset.addr.1.lcssa = phi i32 [ %uoffset.addr.041, %sw.epilog.for.end_crit_edge ], [ %uoffset.addr.4, %for.inc.for.end_crit_edge ]
  %yoffset.addr.1.lcssa = phi i32 [ %yoffset.addr.042, %sw.epilog.for.end_crit_edge ], [ %add118, %for.inc.for.end_crit_edge ]
  %rp.1.lcssa = phi ptr [ %rp.044, %sw.epilog.for.end_crit_edge ], [ %rp.2, %for.inc.for.end_crit_edge ]
  %ysg.1.lcssa = phi ptr [ %ysg.045, %sw.epilog.for.end_crit_edge ], [ %ysg.2.lcssa, %for.inc.for.end_crit_edge ]
  %usg.1.lcssa = phi ptr [ %usg.046, %sw.epilog.for.end_crit_edge ], [ %usg.3, %for.inc.for.end_crit_edge ]
  %vsg.1.lcssa = phi ptr [ %vsg.047, %sw.epilog.for.end_crit_edge ], [ %vsg.3, %for.inc.for.end_crit_edge ]
  %add133 = add i32 %yoffset.addr.1.lcssa, %ypadding
  br i1 %chroma.0.shrunk, label %if.then135, label %for.end.for.inc139_crit_edge

for.end.for.inc139_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc139

if.then135:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %add136 = add i32 %uoffset.addr.1.lcssa, %cpadding
  %add137 = add i32 %voffset.addr.1.lcssa, %cpadding
  br label %for.inc139

for.inc139:                                       ; preds = %if.then135, %for.end.for.inc139_crit_edge, %for.body.for.inc139_crit_edge
  %voffset.addr.5 = phi i32 [ %add137, %if.then135 ], [ %voffset.addr.1.lcssa, %for.end.for.inc139_crit_edge ], [ %voffset.addr.040, %for.body.for.inc139_crit_edge ]
  %uoffset.addr.5 = phi i32 [ %add136, %if.then135 ], [ %uoffset.addr.1.lcssa, %for.end.for.inc139_crit_edge ], [ %uoffset.addr.041, %for.body.for.inc139_crit_edge ]
  %yoffset.addr.3 = phi i32 [ %add133, %if.then135 ], [ %add133, %for.end.for.inc139_crit_edge ], [ %yoffset.addr.042, %for.body.for.inc139_crit_edge ]
  %rp.3 = phi ptr [ %rp.1.lcssa, %if.then135 ], [ %rp.1.lcssa, %for.end.for.inc139_crit_edge ], [ %rp.044, %for.body.for.inc139_crit_edge ]
  %ysg.3 = phi ptr [ %ysg.1.lcssa, %if.then135 ], [ %ysg.1.lcssa, %for.end.for.inc139_crit_edge ], [ %ysg.045, %for.body.for.inc139_crit_edge ]
  %usg.4 = phi ptr [ %usg.1.lcssa, %if.then135 ], [ %usg.1.lcssa, %for.end.for.inc139_crit_edge ], [ %usg.046, %for.body.for.inc139_crit_edge ]
  %vsg.4 = phi ptr [ %vsg.1.lcssa, %if.then135 ], [ %vsg.1.lcssa, %for.end.for.inc139_crit_edge ], [ %vsg.047, %for.body.for.inc139_crit_edge ]
  %inc = add nuw i32 %line.043, 1
  %exitcond.not = icmp eq i32 %inc, %ylines
  br i1 %exitcond.not, label %for.inc139.for.end140_crit_edge, label %for.inc139.for.body_crit_edge

for.inc139.for.body_crit_edge:                    ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc139.for.end140_crit_edge:                  ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end140

for.end140:                                       ; preds = %for.inc139.for.end140_crit_edge, %if.end.for.end140_crit_edge
  %rp.0.lcssa = phi ptr [ %incdec.ptr9, %if.end.for.end140_crit_edge ], [ %rp.3, %for.inc139.for.end140_crit_edge ]
  %jmp = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 2
  %38 = ptrtoint ptr %jmp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rp.0.lcssa, ptr %jmp, align 4
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpu, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %rp.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 8
  %mul144 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %41 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul144, i32 %42)
  %cmp145 = icmp ugt i32 %mul144, %42
  br i1 %cmp145, label %do.body150, label %for.end140.cleanup_crit_edge, !prof !40

for.end140.cleanup_crit_edge:                     ; preds = %for.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body150:                                       ; preds = %for.end140
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-risc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #7, !srcloc !85
  unreachable

cleanup:                                          ; preds = %for.end140.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_overlay_risc(ptr nocapture noundef readonly %btv, ptr nocapture noundef readonly %ov, ptr nocapture noundef readonly %fmt, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_debug to i32))
  %0 = load i32, ptr @bttv_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bttv_overlay_risc.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bttv_overlay_risc, %if.then4)) #7
          to label %do.end7 [label %if.then4], !srcloc !51

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr, align 8
  %field = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 6
  %3 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %field, align 8
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_field_names, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  %width = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bttv_overlay_risc.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.17, i32 noundef %2, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %geo = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 5
  %width9 = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %width9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width9, align 4
  %height11 = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height11, align 4
  %field12 = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 2
  %17 = ptrtoint ptr %field12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %field12, align 4
  %switch.tableidx = add i32 %18, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 6
  br i1 %19, label %switch.hole_check, label %do.end7.lor.rhs_crit_edge

do.end7.lor.rhs_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %switch.hole_check.lor.rhs_crit_edge, %do.end7.lor.rhs_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp23 = icmp eq i32 %18, 6
  %phi.cast = zext i1 %cmp23 to i32
  br label %lor.end

switch.hole_check:                                ; preds = %do.end7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %20 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %switch.lobit.not = icmp eq i8 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.rhs_crit_edge, label %switch.hole_check.lor.end_crit_edge

switch.hole_check.lor.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

switch.hole_check.lor.rhs_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.end:                                          ; preds = %switch.hole_check.lor.end_crit_edge, %lor.rhs
  %21 = phi i32 [ %phi.cast, %lor.rhs ], [ 1, %switch.hole_check.lor.end_crit_edge ]
  %22 = ptrtoint ptr %ov to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ov, align 4
  %arrayidx24 = getelementptr [0 x %struct.bttv_tvnorm], ptr @bttv_tvnorms, i32 0, i32 %23
  %crop = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 8
  tail call fastcc void @bttv_calc_geo(ptr noundef %btv, ptr noundef %geo, i32 noundef %14, i32 noundef %16, i32 noundef %21, ptr noundef %arrayidx24, ptr noundef %crop)
  %24 = ptrtoint ptr %field12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field12, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %25, label %do.body34 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb27
    i32 4, label %sw.bb29
  ]

sw.bb:                                            ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %top = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  tail call fastcc void @bttv_risc_overlay(ptr noundef %btv, ptr noundef %top, ptr noundef %fmt, ptr noundef %ov, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

sw.bb27:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %bottom = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  tail call fastcc void @bttv_risc_overlay(ptr noundef %btv, ptr noundef %bottom, ptr noundef %fmt, ptr noundef %ov, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

sw.bb29:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %top30 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 6
  tail call fastcc void @bttv_risc_overlay(ptr noundef %btv, ptr noundef %top30, ptr noundef %fmt, ptr noundef %ov, i32 noundef 0, i32 noundef 1)
  %bottom32 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 7
  tail call fastcc void @bttv_risc_overlay(ptr noundef %btv, ptr noundef %bottom32, ptr noundef %fmt, ptr noundef %ov, i32 noundef 1, i32 noundef 0)
  br label %sw.epilog

do.body34:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-risc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 884, 0\0A.popsection", ""() #7, !srcloc !86
  unreachable

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb27, %sw.bb
  %btformat = getelementptr inbounds %struct.bttv_format, ptr %fmt, i32 0, i32 1
  %27 = ptrtoint ptr %btformat to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %btformat, align 4
  %btformat38 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 3
  %29 = ptrtoint ptr %btformat38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %btformat38, align 8
  %btswap = getelementptr inbounds %struct.bttv_format, ptr %fmt, i32 0, i32 2
  %30 = ptrtoint ptr %btswap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %btswap, align 4
  %btswap39 = getelementptr inbounds %struct.bttv_buffer, ptr %buf, i32 0, i32 4
  %32 = ptrtoint ptr %btswap39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %btswap39, align 4
  %33 = ptrtoint ptr %field12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %field12, align 4
  %field42 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 6
  %35 = ptrtoint ptr %field42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %field42, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bttv_risc_overlay(ptr nocapture noundef readonly %btv, ptr noundef %risc, ptr nocapture noundef readonly %fmt, ptr nocapture noundef readonly %ov, i32 noundef %skip_even, i32 noundef %skip_odd) unnamed_addr #0 align 64 {
entry:
  %maxy = alloca i32, align 4
  %nskips = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nskips) #7
  %0 = ptrtoint ptr %nskips to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nskips, align 4, !annotation !87
  %nclips = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 4
  %1 = ptrtoint ptr %nclips to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nclips, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8) #7
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end7.i, !prof !40

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #11
  %cmp = icmp eq ptr %call8.i, null
  br i1 %cmp, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %6 = ptrtoint ptr %nclips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nclips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_even)
  %tobool.not = icmp eq i32 %skip_even, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_odd)
  %tobool2.not = icmp eq i32 %skip_odd, 0
  %8 = or i32 %skip_odd, %skip_even
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %height5 = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height5, align 4
  %add3 = add i32 %11, 1
  %shr = lshr i32 %add3, 1
  %cond = select i1 %9, i32 %11, i32 %shr
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 8
  %add = mul i32 %7, 12
  %mul6 = add i32 %add, 8
  %add7 = mul i32 %mul6, %cond
  %mul8 = add i32 %add7, 16
  %call9 = tail call i32 @btcx_riscmem_alloc(ptr noundef %13, ptr noundef %risc, i32 noundef %mul8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %cpu = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 1
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu, align 4
  %incdec.ptr = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100663424, ptr %15, align 4
  %incdec.ptr13 = getelementptr i32, ptr %15, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %incdec.ptr, align 4
  %base = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 48, i32 2
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %bytesperline = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 48, i32 3, i32 4
  %20 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesperline, align 4
  %w16 = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1
  %top = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top, align 4
  %depth = getelementptr inbounds %struct.bttv_format, ptr %fmt, i32 0, i32 3
  %24 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %depth, align 4
  %26 = ptrtoint ptr %w16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %w16, align 4
  %28 = ptrtoint ptr %maxy to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %maxy, align 4
  %height24 = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %height24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2525.not = icmp eq i32 %30, 0
  br i1 %cmp2525.not, label %if.end12.for.end100_crit_edge, label %for.body.lr.ph

if.end12.for.end100_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.body.lr.ph:                                   ; preds = %if.end12
  %mul17 = mul i32 %23, %21
  %31 = ptrtoint ptr %19 to i32
  %add18 = add i32 %mul17, %31
  %shr19 = ashr i32 %25, 3
  %mul21 = mul i32 %shr19, %27
  %add22 = add i32 %add18, %mul21
  %opt_vcr_hack = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 52
  %width = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 1, i32 2
  %clips = getelementptr inbounds %struct.bttv_overlay, ptr %ov, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc94.for.body_crit_edge, %for.body.lr.ph
  %32 = phi i32 [ %30, %for.body.lr.ph ], [ %65, %for.inc94.for.body_crit_edge ]
  %addr.030 = phi i32 [ %add22, %for.body.lr.ph ], [ %add99, %for.inc94.for.body_crit_edge ]
  %rp.029 = phi ptr [ %incdec.ptr13, %for.body.lr.ph ], [ %rp.3, %for.inc94.for.body_crit_edge ]
  %line.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc95, %for.inc94.for.body_crit_edge ]
  %33 = ptrtoint ptr %opt_vcr_hack to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %opt_vcr_hack, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool26.not = icmp eq i32 %34, 0
  %sub = add i32 %32, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %line.026, i32 %sub)
  %cmp29.not = icmp ult i32 %line.026, %sub
  %or.cond1 = select i1 %tobool26.not, i1 true, i1 %cmp29.not
  br i1 %or.cond1, label %if.end31, label %for.body.for.inc94_crit_edge

for.body.for.inc94_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc94

if.end31:                                         ; preds = %for.body
  %rem = srem i32 %line.026, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp32 = icmp ne i32 %rem, 0
  %brmerge = or i1 %tobool.not, %cmp32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem)
  %cmp38 = icmp ne i32 %rem, 1
  %or.cond2 = or i1 %tobool2.not, %cmp38
  %or.cond19 = and i1 %brmerge, %or.cond2
  br i1 %or.cond19, label %if.end42, label %if.end31.for.inc94_crit_edge

if.end31.for.inc94_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc94

if.end42:                                         ; preds = %if.end31
  %35 = ptrtoint ptr %maxy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maxy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %line.026, i32 %36)
  %cmp43 = icmp sgt i32 %line.026, %36
  br i1 %cmp43, label %if.then44, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width, align 4
  %39 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clips, align 4
  %41 = ptrtoint ptr %nclips to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nclips, align 4
  call void @btcx_calc_skips(i32 noundef %line.026, i32 noundef %38, ptr noundef nonnull %maxy, ptr noundef nonnull %call8.i, ptr noundef nonnull %nskips, ptr noundef %40, i32 noundef %42) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42.if.end47_crit_edge
  %43 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp5120.not = icmp eq i32 %44, 0
  br i1 %cmp5120.not, label %if.end47.for.inc94_crit_edge, label %if.end47.for.body52_crit_edge

if.end47.for.body52_crit_edge:                    ; preds = %if.end47
  br label %for.body52

if.end47.for.inc94_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc94

for.body52:                                       ; preds = %for.inc.for.body52_crit_edge, %if.end47.for.body52_crit_edge
  %45 = phi i32 [ %61, %for.inc.for.body52_crit_edge ], [ %44, %if.end47.for.body52_crit_edge ]
  %rp.124 = phi ptr [ %rp.2, %for.inc.for.body52_crit_edge ], [ %rp.029, %if.end47.for.body52_crit_edge ]
  %skip.023 = phi i32 [ %skip.115, %for.inc.for.body52_crit_edge ], [ 0, %if.end47.for.body52_crit_edge ]
  %start.021 = phi i32 [ %end.013, %for.inc.for.body52_crit_edge ], [ 0, %if.end47.for.body52_crit_edge ]
  %46 = ptrtoint ptr %nskips to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nskips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.023, i32 %47)
  %cmp53.not = icmp ult i32 %skip.023, %47
  br i1 %cmp53.not, label %if.else, label %for.body52.if.then68_crit_edge

for.body52.if.then68_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68

if.else:                                          ; preds = %for.body52
  %arrayidx = getelementptr %struct.btcx_skiplist, ptr %call8.i, i32 %skip.023
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %start.021, i32 %49)
  %cmp58 = icmp slt i32 %start.021, %49
  br i1 %cmp58, label %if.else.if.then68_crit_edge, label %if.end66

if.else.if.then68_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then68

if.end66:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %end64 = getelementptr %struct.btcx_skiplist, ptr %call8.i, i32 %skip.023, i32 1
  %50 = ptrtoint ptr %end64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end64, align 4
  %inc = add nuw i32 %skip.023, 1
  br label %if.end74

if.then68:                                        ; preds = %if.else.if.then68_crit_edge, %for.body52.if.then68_crit_edge
  %end.0.ph = phi i32 [ %49, %if.else.if.then68_crit_edge ], [ %45, %for.body52.if.then68_crit_edge ]
  %52 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %depth, align 4
  %shr70 = ashr i32 %53, 3
  %mul71 = mul i32 %shr70, %start.021
  %add72 = add i32 %mul71, %addr.030
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %if.end66
  %ri.017 = phi i32 [ 268435456, %if.then68 ], [ 536870912, %if.end66 ]
  %skip.115 = phi i32 [ %skip.023, %if.then68 ], [ %inc, %if.end66 ]
  %end.013 = phi i32 [ %end.0.ph, %if.then68 ], [ %51, %if.end66 ]
  %ra.0 = phi i32 [ %add72, %if.then68 ], [ 0, %if.end66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.021)
  %cmp75 = icmp eq i32 %start.021, 0
  %or = or i32 %ri.017, 134217728
  %spec.select = select i1 %cmp75, i32 %or, i32 %ri.017
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %end.013)
  %cmp80 = icmp eq i32 %45, %end.013
  %or82 = or i32 %spec.select, 67108864
  %ri.2 = select i1 %cmp80, i32 %or82, i32 %spec.select
  %54 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %depth, align 4
  %shr85 = ashr i32 %55, 3
  %sub86 = sub i32 %end.013, %start.021
  %mul87 = mul i32 %shr85, %sub86
  %or88 = or i32 %mul87, %ri.2
  %56 = call i32 @llvm.bswap.i32(i32 %or88)
  %incdec.ptr89 = getelementptr i32, ptr %rp.124, i32 1
  %57 = ptrtoint ptr %rp.124 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rp.124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ra.0)
  %cmp90.not = icmp eq i32 %ra.0, 0
  br i1 %cmp90.not, label %if.end74.for.inc_crit_edge, label %if.then91

if.end74.for.inc_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then91:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %58 = call i32 @llvm.bswap.i32(i32 %ra.0)
  %incdec.ptr92 = getelementptr i32, ptr %rp.124, i32 2
  %59 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %incdec.ptr89, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then91, %if.end74.for.inc_crit_edge
  %rp.2 = phi ptr [ %incdec.ptr92, %if.then91 ], [ %incdec.ptr89, %if.end74.for.inc_crit_edge ]
  %60 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %width, align 4
  %cmp51 = icmp ult i32 %end.013, %61
  br i1 %cmp51, label %for.inc.for.body52_crit_edge, label %for.inc.for.inc94_crit_edge

for.inc.for.inc94_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc94

for.inc.for.body52_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

for.inc94:                                        ; preds = %for.inc.for.inc94_crit_edge, %if.end47.for.inc94_crit_edge, %if.end31.for.inc94_crit_edge, %for.body.for.inc94_crit_edge
  %rp.3 = phi ptr [ %rp.029, %for.body.for.inc94_crit_edge ], [ %rp.029, %if.end31.for.inc94_crit_edge ], [ %rp.029, %if.end47.for.inc94_crit_edge ], [ %rp.2, %for.inc.for.inc94_crit_edge ]
  %inc95 = add nuw i32 %line.026, 1
  %62 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytesperline, align 4
  %add99 = add i32 %63, %addr.030
  %64 = ptrtoint ptr %height24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height24, align 4
  %cmp25 = icmp ult i32 %inc95, %65
  br i1 %cmp25, label %for.inc94.for.body_crit_edge, label %for.inc94.for.end100_crit_edge

for.inc94.for.end100_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.inc94.for.body_crit_edge:                     ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end100:                                       ; preds = %for.inc94.for.end100_crit_edge, %if.end12.for.end100_crit_edge
  %rp.0.lcssa = phi ptr [ %incdec.ptr13, %if.end12.for.end100_crit_edge ], [ %rp.3, %for.inc94.for.end100_crit_edge ]
  %jmp = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 2
  %66 = ptrtoint ptr %jmp to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %rp.0.lcssa, ptr %jmp, align 4
  %67 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cpu, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %rp.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %68 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 8
  %mul104 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %69 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul104, i32 %70)
  %cmp105 = icmp ugt i32 %mul104, %70
  br i1 %cmp105, label %do.body109, label %do.end115, !prof !40

do.body109:                                       ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/bt8xx/bttv-risc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 318, 0\0A.popsection", ""() #7, !srcloc !88
  unreachable

do.end115:                                        ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %if.then11, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nskips) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxy) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btcx_calc_skips(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/bttv-risc.c", i32 468, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bttv_set_dma._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bttv_set_dma._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/bt8xx/bttv-risc.c", i32 511, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bttv_risc_init_main.__UNIQUE_ID_ddebug325, !7, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/bt8xx/bttv-risc.c", i32 551, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bttv_risc_hook._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @bttv_risc_hook._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/bt8xx/bttv-risc.c", i32 554, i32 3}
!19 = !{ptr @bttv_risc_hook._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bttv_risc_hook._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/bt8xx/bttv-risc.c", i32 701, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bttv_buffer_risc.__UNIQUE_ID_ddebug326, !22, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/bt8xx/bttv-risc.c", i32 862, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bttv_overlay_risc.__UNIQUE_ID_ddebug327, !27, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!30 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2157334531, i64 2157335031, i64 2157334568, i64 2157334624, i64 2157334658, i64 2157334682, i64 2157334723, i64 2157334744, i64 2157334772, i64 2157334806}
!42 = !{i64 2157362712}
!43 = !{i64 5395941}
!44 = !{i64 2157363731}
!45 = !{i64 5395523}
!46 = !{i64 2157364046}
!47 = !{i64 2157365671}
!48 = !{i64 2157366632}
!49 = !{i64 2157368049}
!50 = !{i64 2157369013}
!51 = !{i64 2148976788, i64 2148976793, i64 2148976806, i64 2148976850, i64 2148976884, i64 2148976905}
!52 = !{i64 2157378014}
!53 = !{i64 2157378573}
!54 = !{i64 2157378858}
!55 = !{i64 2157379343}
!56 = !{i64 2157379826}
!57 = !{i64 2157380311}
!58 = !{i64 2157382167}
!59 = !{i64 2157383348}
!60 = !{i64 2157384976}
!61 = !{i64 2157386145}
!62 = !{i64 2157387709}
!63 = !{i64 2157388785}
!64 = !{i64 2157390314}
!65 = !{i64 2157391384}
!66 = !{i64 2157392957}
!67 = !{i64 2157394042}
!68 = !{i64 2157395580}
!69 = !{i64 2157396659}
!70 = !{i64 2157349979}
!71 = !{i64 2157350509}
!72 = !{i64 2157351067}
!73 = !{i64 2157352856}
!74 = !{i64 2157353922}
!75 = !{i64 2157354257}
!76 = !{i64 2157354819}
!77 = !{i64 2157355380}
!78 = !{i64 2157355946}
!79 = !{i64 2157356513}
!80 = !{i64 2157357059}
!81 = !{i64 2157357575}
!82 = !{i64 2157358108}
!83 = !{i64 2157400340, i64 2157400840, i64 2157400377, i64 2157400433, i64 2157400467, i64 2157400491, i64 2157400532, i64 2157400553, i64 2157400581, i64 2157400615}
!84 = !{i64 2157401876, i64 2157402376, i64 2157401913, i64 2157401969, i64 2157402003, i64 2157402027, i64 2157402068, i64 2157402089, i64 2157402117, i64 2157402151}
!85 = !{i64 2157337695, i64 2157338195, i64 2157337732, i64 2157337788, i64 2157337822, i64 2157337846, i64 2157337887, i64 2157337908, i64 2157337936, i64 2157337970}
!86 = !{i64 2157406735, i64 2157407235, i64 2157406772, i64 2157406828, i64 2157406862, i64 2157406886, i64 2157406927, i64 2157406948, i64 2157406976, i64 2157407010}
!87 = !{!"auto-init"}
!88 = !{i64 2157340104, i64 2157340604, i64 2157340141, i64 2157340197, i64 2157340231, i64 2157340255, i64 2157340296, i64 2157340317, i64 2157340345, i64 2157340379}
