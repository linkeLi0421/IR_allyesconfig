; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-cpld.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-cpld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.multiplier = type { i32, i32, i32 }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.107 }
%union.anon.107 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@cobalt_cpld_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: CPLD revision %u is not supported!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cobalt_cpld_status\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/cobalt/cobalt-cpld.c\00", [57 x i8] zeroinitializer }, align 32
@cobalt_cpld_status._entry_ptr = internal global ptr @cobalt_cpld_status._entry, section ".printk_index", align 4
@multipliers = internal constant { [280 x %struct.multiplier], [832 x i8] } { [280 x %struct.multiplier] [%struct.multiplier { i32 4, i32 4, i32 1 }, %struct.multiplier { i32 5, i32 5, i32 1 }, %struct.multiplier { i32 6, i32 6, i32 1 }, %struct.multiplier { i32 7, i32 7, i32 1 }, %struct.multiplier { i32 8, i32 4, i32 2 }, %struct.multiplier { i32 9, i32 9, i32 1 }, %struct.multiplier { i32 10, i32 5, i32 2 }, %struct.multiplier { i32 11, i32 11, i32 1 }, %struct.multiplier { i32 12, i32 6, i32 2 }, %struct.multiplier { i32 14, i32 7, i32 2 }, %struct.multiplier { i32 16, i32 4, i32 4 }, %struct.multiplier { i32 18, i32 9, i32 2 }, %struct.multiplier { i32 20, i32 5, i32 4 }, %struct.multiplier { i32 22, i32 11, i32 2 }, %struct.multiplier { i32 24, i32 4, i32 6 }, %struct.multiplier { i32 28, i32 7, i32 4 }, %struct.multiplier { i32 30, i32 5, i32 6 }, %struct.multiplier { i32 32, i32 4, i32 8 }, %struct.multiplier { i32 36, i32 6, i32 6 }, %struct.multiplier { i32 40, i32 4, i32 10 }, %struct.multiplier { i32 42, i32 7, i32 6 }, %struct.multiplier { i32 44, i32 11, i32 4 }, %struct.multiplier { i32 48, i32 4, i32 12 }, %struct.multiplier { i32 50, i32 5, i32 10 }, %struct.multiplier { i32 54, i32 9, i32 6 }, %struct.multiplier { i32 56, i32 4, i32 14 }, %struct.multiplier { i32 60, i32 5, i32 12 }, %struct.multiplier { i32 64, i32 4, i32 16 }, %struct.multiplier { i32 66, i32 11, i32 6 }, %struct.multiplier { i32 70, i32 5, i32 14 }, %struct.multiplier { i32 72, i32 4, i32 18 }, %struct.multiplier { i32 80, i32 4, i32 20 }, %struct.multiplier { i32 84, i32 6, i32 14 }, %struct.multiplier { i32 88, i32 11, i32 8 }, %struct.multiplier { i32 90, i32 5, i32 18 }, %struct.multiplier { i32 96, i32 4, i32 24 }, %struct.multiplier { i32 98, i32 7, i32 14 }, %struct.multiplier { i32 100, i32 5, i32 20 }, %struct.multiplier { i32 104, i32 4, i32 26 }, %struct.multiplier { i32 108, i32 6, i32 18 }, %struct.multiplier { i32 110, i32 11, i32 10 }, %struct.multiplier { i32 112, i32 4, i32 28 }, %struct.multiplier { i32 120, i32 4, i32 30 }, %struct.multiplier { i32 126, i32 7, i32 18 }, %struct.multiplier { i32 128, i32 4, i32 32 }, %struct.multiplier { i32 130, i32 5, i32 26 }, %struct.multiplier { i32 132, i32 11, i32 12 }, %struct.multiplier { i32 136, i32 4, i32 34 }, %struct.multiplier { i32 140, i32 5, i32 28 }, %struct.multiplier { i32 144, i32 4, i32 36 }, %struct.multiplier { i32 150, i32 5, i32 30 }, %struct.multiplier { i32 152, i32 4, i32 38 }, %struct.multiplier { i32 154, i32 11, i32 14 }, %struct.multiplier { i32 156, i32 6, i32 26 }, %struct.multiplier { i32 160, i32 4, i32 40 }, %struct.multiplier { i32 162, i32 9, i32 18 }, %struct.multiplier { i32 168, i32 4, i32 42 }, %struct.multiplier { i32 170, i32 5, i32 34 }, %struct.multiplier { i32 176, i32 11, i32 16 }, %struct.multiplier { i32 180, i32 5, i32 36 }, %struct.multiplier { i32 182, i32 7, i32 26 }, %struct.multiplier { i32 184, i32 4, i32 46 }, %struct.multiplier { i32 190, i32 5, i32 38 }, %struct.multiplier { i32 192, i32 4, i32 48 }, %struct.multiplier { i32 196, i32 7, i32 28 }, %struct.multiplier { i32 198, i32 11, i32 18 }, %struct.multiplier { i32 198, i32 9, i32 22 }, %struct.multiplier { i32 200, i32 4, i32 50 }, %struct.multiplier { i32 204, i32 6, i32 34 }, %struct.multiplier { i32 208, i32 4, i32 52 }, %struct.multiplier { i32 210, i32 5, i32 42 }, %struct.multiplier { i32 216, i32 4, i32 54 }, %struct.multiplier { i32 220, i32 11, i32 20 }, %struct.multiplier { i32 224, i32 4, i32 56 }, %struct.multiplier { i32 228, i32 6, i32 38 }, %struct.multiplier { i32 230, i32 5, i32 46 }, %struct.multiplier { i32 232, i32 4, i32 58 }, %struct.multiplier { i32 234, i32 9, i32 26 }, %struct.multiplier { i32 238, i32 7, i32 34 }, %struct.multiplier { i32 240, i32 4, i32 60 }, %struct.multiplier { i32 242, i32 11, i32 22 }, %struct.multiplier { i32 248, i32 4, i32 62 }, %struct.multiplier { i32 250, i32 5, i32 50 }, %struct.multiplier { i32 252, i32 6, i32 42 }, %struct.multiplier { i32 256, i32 4, i32 64 }, %struct.multiplier { i32 260, i32 5, i32 52 }, %struct.multiplier { i32 264, i32 11, i32 24 }, %struct.multiplier { i32 266, i32 7, i32 38 }, %struct.multiplier { i32 270, i32 5, i32 54 }, %struct.multiplier { i32 272, i32 4, i32 68 }, %struct.multiplier { i32 276, i32 6, i32 46 }, %struct.multiplier { i32 280, i32 4, i32 70 }, %struct.multiplier { i32 286, i32 11, i32 26 }, %struct.multiplier { i32 288, i32 4, i32 72 }, %struct.multiplier { i32 290, i32 5, i32 58 }, %struct.multiplier { i32 294, i32 7, i32 42 }, %struct.multiplier { i32 296, i32 4, i32 74 }, %struct.multiplier { i32 300, i32 5, i32 60 }, %struct.multiplier { i32 304, i32 4, i32 76 }, %struct.multiplier { i32 306, i32 9, i32 34 }, %struct.multiplier { i32 308, i32 11, i32 28 }, %struct.multiplier { i32 310, i32 5, i32 62 }, %struct.multiplier { i32 312, i32 4, i32 78 }, %struct.multiplier { i32 320, i32 4, i32 80 }, %struct.multiplier { i32 322, i32 7, i32 46 }, %struct.multiplier { i32 324, i32 6, i32 54 }, %struct.multiplier { i32 328, i32 4, i32 82 }, %struct.multiplier { i32 330, i32 11, i32 30 }, %struct.multiplier { i32 336, i32 4, i32 84 }, %struct.multiplier { i32 340, i32 5, i32 68 }, %struct.multiplier { i32 342, i32 9, i32 38 }, %struct.multiplier { i32 344, i32 4, i32 86 }, %struct.multiplier { i32 348, i32 6, i32 58 }, %struct.multiplier { i32 350, i32 5, i32 70 }, %struct.multiplier { i32 352, i32 11, i32 32 }, %struct.multiplier { i32 360, i32 4, i32 90 }, %struct.multiplier { i32 364, i32 7, i32 52 }, %struct.multiplier { i32 368, i32 4, i32 92 }, %struct.multiplier { i32 370, i32 5, i32 74 }, %struct.multiplier { i32 372, i32 6, i32 62 }, %struct.multiplier { i32 374, i32 11, i32 34 }, %struct.multiplier { i32 376, i32 4, i32 94 }, %struct.multiplier { i32 378, i32 7, i32 54 }, %struct.multiplier { i32 380, i32 5, i32 76 }, %struct.multiplier { i32 384, i32 4, i32 96 }, %struct.multiplier { i32 390, i32 5, i32 78 }, %struct.multiplier { i32 392, i32 4, i32 98 }, %struct.multiplier { i32 396, i32 11, i32 36 }, %struct.multiplier { i32 400, i32 4, i32 100 }, %struct.multiplier { i32 406, i32 7, i32 58 }, %struct.multiplier { i32 408, i32 4, i32 102 }, %struct.multiplier { i32 410, i32 5, i32 82 }, %struct.multiplier { i32 414, i32 9, i32 46 }, %struct.multiplier { i32 416, i32 4, i32 104 }, %struct.multiplier { i32 418, i32 11, i32 38 }, %struct.multiplier { i32 420, i32 5, i32 84 }, %struct.multiplier { i32 424, i32 4, i32 106 }, %struct.multiplier { i32 430, i32 5, i32 86 }, %struct.multiplier { i32 432, i32 4, i32 108 }, %struct.multiplier { i32 434, i32 7, i32 62 }, %struct.multiplier { i32 440, i32 11, i32 40 }, %struct.multiplier { i32 444, i32 6, i32 74 }, %struct.multiplier { i32 448, i32 4, i32 112 }, %struct.multiplier { i32 450, i32 5, i32 90 }, %struct.multiplier { i32 456, i32 4, i32 114 }, %struct.multiplier { i32 460, i32 5, i32 92 }, %struct.multiplier { i32 462, i32 11, i32 42 }, %struct.multiplier { i32 464, i32 4, i32 116 }, %struct.multiplier { i32 468, i32 6, i32 78 }, %struct.multiplier { i32 470, i32 5, i32 94 }, %struct.multiplier { i32 472, i32 4, i32 118 }, %struct.multiplier { i32 476, i32 7, i32 68 }, %struct.multiplier { i32 480, i32 4, i32 120 }, %struct.multiplier { i32 484, i32 11, i32 44 }, %struct.multiplier { i32 486, i32 9, i32 54 }, %struct.multiplier { i32 488, i32 4, i32 122 }, %struct.multiplier { i32 490, i32 5, i32 98 }, %struct.multiplier { i32 492, i32 6, i32 82 }, %struct.multiplier { i32 496, i32 4, i32 124 }, %struct.multiplier { i32 500, i32 5, i32 100 }, %struct.multiplier { i32 504, i32 4, i32 126 }, %struct.multiplier { i32 506, i32 11, i32 46 }, %struct.multiplier { i32 510, i32 5, i32 102 }, %struct.multiplier { i32 512, i32 4, i32 128 }, %struct.multiplier { i32 516, i32 6, i32 86 }, %struct.multiplier { i32 518, i32 7, i32 74 }, %struct.multiplier { i32 520, i32 5, i32 104 }, %struct.multiplier { i32 522, i32 9, i32 58 }, %struct.multiplier { i32 528, i32 11, i32 48 }, %struct.multiplier { i32 530, i32 5, i32 106 }, %struct.multiplier { i32 532, i32 7, i32 76 }, %struct.multiplier { i32 540, i32 5, i32 108 }, %struct.multiplier { i32 546, i32 7, i32 78 }, %struct.multiplier { i32 550, i32 11, i32 50 }, %struct.multiplier { i32 552, i32 6, i32 92 }, %struct.multiplier { i32 558, i32 9, i32 62 }, %struct.multiplier { i32 560, i32 5, i32 112 }, %struct.multiplier { i32 564, i32 6, i32 94 }, %struct.multiplier { i32 570, i32 5, i32 114 }, %struct.multiplier { i32 572, i32 11, i32 52 }, %struct.multiplier { i32 574, i32 7, i32 82 }, %struct.multiplier { i32 576, i32 6, i32 96 }, %struct.multiplier { i32 580, i32 5, i32 116 }, %struct.multiplier { i32 588, i32 6, i32 98 }, %struct.multiplier { i32 590, i32 5, i32 118 }, %struct.multiplier { i32 594, i32 11, i32 54 }, %struct.multiplier { i32 600, i32 5, i32 120 }, %struct.multiplier { i32 602, i32 7, i32 86 }, %struct.multiplier { i32 610, i32 5, i32 122 }, %struct.multiplier { i32 612, i32 6, i32 102 }, %struct.multiplier { i32 616, i32 11, i32 56 }, %struct.multiplier { i32 620, i32 5, i32 124 }, %struct.multiplier { i32 624, i32 6, i32 104 }, %struct.multiplier { i32 630, i32 5, i32 126 }, %struct.multiplier { i32 636, i32 6, i32 106 }, %struct.multiplier { i32 638, i32 11, i32 58 }, %struct.multiplier { i32 640, i32 5, i32 128 }, %struct.multiplier { i32 644, i32 7, i32 92 }, %struct.multiplier { i32 648, i32 6, i32 108 }, %struct.multiplier { i32 658, i32 7, i32 94 }, %struct.multiplier { i32 660, i32 11, i32 60 }, %struct.multiplier { i32 666, i32 9, i32 74 }, %struct.multiplier { i32 672, i32 6, i32 112 }, %struct.multiplier { i32 682, i32 11, i32 62 }, %struct.multiplier { i32 684, i32 6, i32 114 }, %struct.multiplier { i32 686, i32 7, i32 98 }, %struct.multiplier { i32 696, i32 6, i32 116 }, %struct.multiplier { i32 700, i32 7, i32 100 }, %struct.multiplier { i32 702, i32 9, i32 78 }, %struct.multiplier { i32 704, i32 11, i32 64 }, %struct.multiplier { i32 708, i32 6, i32 118 }, %struct.multiplier { i32 714, i32 7, i32 102 }, %struct.multiplier { i32 720, i32 6, i32 120 }, %struct.multiplier { i32 726, i32 11, i32 66 }, %struct.multiplier { i32 728, i32 7, i32 104 }, %struct.multiplier { i32 732, i32 6, i32 122 }, %struct.multiplier { i32 738, i32 9, i32 82 }, %struct.multiplier { i32 742, i32 7, i32 106 }, %struct.multiplier { i32 744, i32 6, i32 124 }, %struct.multiplier { i32 748, i32 11, i32 68 }, %struct.multiplier { i32 756, i32 6, i32 126 }, %struct.multiplier { i32 768, i32 6, i32 128 }, %struct.multiplier { i32 770, i32 11, i32 70 }, %struct.multiplier { i32 774, i32 9, i32 86 }, %struct.multiplier { i32 784, i32 7, i32 112 }, %struct.multiplier { i32 792, i32 11, i32 72 }, %struct.multiplier { i32 798, i32 7, i32 114 }, %struct.multiplier { i32 810, i32 9, i32 90 }, %struct.multiplier { i32 812, i32 7, i32 116 }, %struct.multiplier { i32 814, i32 11, i32 74 }, %struct.multiplier { i32 826, i32 7, i32 118 }, %struct.multiplier { i32 828, i32 9, i32 92 }, %struct.multiplier { i32 836, i32 11, i32 76 }, %struct.multiplier { i32 840, i32 7, i32 120 }, %struct.multiplier { i32 846, i32 9, i32 94 }, %struct.multiplier { i32 854, i32 7, i32 122 }, %struct.multiplier { i32 858, i32 11, i32 78 }, %struct.multiplier { i32 864, i32 9, i32 96 }, %struct.multiplier { i32 868, i32 7, i32 124 }, %struct.multiplier { i32 880, i32 11, i32 80 }, %struct.multiplier { i32 882, i32 7, i32 126 }, %struct.multiplier { i32 896, i32 7, i32 128 }, %struct.multiplier { i32 900, i32 9, i32 100 }, %struct.multiplier { i32 902, i32 11, i32 82 }, %struct.multiplier { i32 918, i32 9, i32 102 }, %struct.multiplier { i32 924, i32 11, i32 84 }, %struct.multiplier { i32 936, i32 9, i32 104 }, %struct.multiplier { i32 946, i32 11, i32 86 }, %struct.multiplier { i32 954, i32 9, i32 106 }, %struct.multiplier { i32 968, i32 11, i32 88 }, %struct.multiplier { i32 972, i32 9, i32 108 }, %struct.multiplier { i32 990, i32 11, i32 90 }, %struct.multiplier { i32 1008, i32 9, i32 112 }, %struct.multiplier { i32 1012, i32 11, i32 92 }, %struct.multiplier { i32 1026, i32 9, i32 114 }, %struct.multiplier { i32 1034, i32 11, i32 94 }, %struct.multiplier { i32 1044, i32 9, i32 116 }, %struct.multiplier { i32 1056, i32 11, i32 96 }, %struct.multiplier { i32 1062, i32 9, i32 118 }, %struct.multiplier { i32 1078, i32 11, i32 98 }, %struct.multiplier { i32 1080, i32 9, i32 120 }, %struct.multiplier { i32 1098, i32 9, i32 122 }, %struct.multiplier { i32 1100, i32 11, i32 100 }, %struct.multiplier { i32 1116, i32 9, i32 124 }, %struct.multiplier { i32 1122, i32 11, i32 102 }, %struct.multiplier { i32 1134, i32 9, i32 126 }, %struct.multiplier { i32 1144, i32 11, i32 104 }, %struct.multiplier { i32 1152, i32 9, i32 128 }, %struct.multiplier { i32 1166, i32 11, i32 106 }, %struct.multiplier { i32 1188, i32 11, i32 108 }, %struct.multiplier { i32 1210, i32 11, i32 110 }, %struct.multiplier { i32 1232, i32 11, i32 112 }, %struct.multiplier { i32 1254, i32 11, i32 114 }, %struct.multiplier { i32 1276, i32 11, i32 116 }, %struct.multiplier { i32 1298, i32 11, i32 118 }, %struct.multiplier { i32 1320, i32 11, i32 120 }, %struct.multiplier { i32 1342, i32 11, i32 122 }, %struct.multiplier { i32 1364, i32 11, i32 124 }, %struct.multiplier { i32 1386, i32 11, i32 126 }, %struct.multiplier { i32 1408, i32 11, i32 128 }], [832 x i8] zeroinitializer }, align 32
@cobalt_debug = external dso_local local_unnamed_addr global i32, align 4
@cobalt_cpld_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %u: %6ph\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cobalt_cpld_set_freq\00", [43 x i8] zeroinitializer }, align 32
@cobalt_cpld_set_freq._entry_ptr = internal global ptr @cobalt_cpld_set_freq._entry, section ".printk_index", align 4
@cobalt_cpld_set_freq._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: retry: %6ph\0A\00", [45 x i8] zeroinitializer }, align 32
@cobalt_cpld_set_freq._entry_ptr.7 = internal global ptr @cobalt_cpld_set_freq._entry.5, section ".printk_index", align 4
@cobalt_cpld_set_freq._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: Needed %d retries\0A\00", [39 x i8] zeroinitializer }, align 32
@cobalt_cpld_set_freq._entry_ptr.10 = internal global ptr @cobalt_cpld_set_freq._entry.8, section ".printk_index", align 4
@cpld_info_ver3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: CPLD System control register (read/write)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpld_info_ver3\00", [17 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr = internal global ptr @cpld_info_ver3._entry, section ".printk_index", align 4
@cpld_info_ver3._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: \09\09System control:  0x%04x (0x0f00)\0A\00", [54 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.15 = internal global ptr @cpld_info_ver3._entry.13, section ".printk_index", align 4
@cpld_info_ver3._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: CPLD Clock control register (read/write)\0A\00", [48 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.18 = internal global ptr @cpld_info_ver3._entry.16, section ".printk_index", align 4
@cpld_info_ver3._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: \09\09Clock control:   0x%04x (0x0000)\0A\00", [54 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.21 = internal global ptr @cpld_info_ver3._entry.19, section ".printk_index", align 4
@cpld_info_ver3._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016%s: CPLD HSMA Clk Osc register (read/write) - Must set wr trigger to load default values\0A\00", [36 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.24 = internal global ptr @cpld_info_ver3._entry.22, section ".printk_index", align 4
@cpld_info_ver3._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: \09\09Register #7:\090x%04x (0x0022)\0A\00", [58 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.27 = internal global ptr @cpld_info_ver3._entry.25, section ".printk_index", align 4
@cpld_info_ver3._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: \09\09Register #8:\090x%04x (0x0047)\0A\00", [58 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.30 = internal global ptr @cpld_info_ver3._entry.28, section ".printk_index", align 4
@cpld_info_ver3._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: \09\09Register #9:\090x%04x (0x00fa)\0A\00", [58 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.33 = internal global ptr @cpld_info_ver3._entry.31, section ".printk_index", align 4
@cpld_info_ver3._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.12, ptr @.str.2, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: \09\09Register #10:\090x%04x (0x0061)\0A\00", [57 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.36 = internal global ptr @cpld_info_ver3._entry.34, section ".printk_index", align 4
@cpld_info_ver3._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.12, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: \09\09Register #11:\090x%04x (0x001e)\0A\00", [57 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.39 = internal global ptr @cpld_info_ver3._entry.37, section ".printk_index", align 4
@cpld_info_ver3._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.12, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: \09\09Register #12:\090x%04x (0x0045)\0A\00", [57 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.42 = internal global ptr @cpld_info_ver3._entry.40, section ".printk_index", align 4
@cpld_info_ver3._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.12, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: \09\09Register #135:\090x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.45 = internal global ptr @cpld_info_ver3._entry.43, section ".printk_index", align 4
@cpld_info_ver3._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.12, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: \09\09Register #137:\090x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.48 = internal global ptr @cpld_info_ver3._entry.46, section ".printk_index", align 4
@cpld_info_ver3._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.12, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: CPLD System status register (read only)\0A\00", [49 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.51 = internal global ptr @cpld_info_ver3._entry.49, section ".printk_index", align 4
@cpld_info_ver3._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.12, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09System status:  0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.54 = internal global ptr @cpld_info_ver3._entry.52, section ".printk_index", align 4
@cpld_info_ver3._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.12, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: CPLD MAXII info register (read only)\0A\00", [52 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.57 = internal global ptr @cpld_info_ver3._entry.55, section ".printk_index", align 4
@cpld_info_ver3._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.12, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: \09\09Board serial number:     0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.60 = internal global ptr @cpld_info_ver3._entry.58, section ".printk_index", align 4
@cpld_info_ver3._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.12, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: \09\09MAXII program revision:  0x%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.63 = internal global ptr @cpld_info_ver3._entry.61, section ".printk_index", align 4
@cpld_info_ver3._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.12, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: CPLD temp and voltage ADT7411 registers (read only)\0A\00", [37 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.66 = internal global ptr @cpld_info_ver3._entry.64, section ".printk_index", align 4
@cpld_info_ver3._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.12, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: \09\09Board temperature:  %u Celsius\0A\00", [56 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.69 = internal global ptr @cpld_info_ver3._entry.67, section ".printk_index", align 4
@cpld_info_ver3._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.12, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: \09\09FPGA temperature:   %u Celsius\0A\00", [56 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.72 = internal global ptr @cpld_info_ver3._entry.70, section ".printk_index", align 4
@cpld_info_ver3._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.12, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09VDD 3V3:      %u,%03uV\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.75 = internal global ptr @cpld_info_ver3._entry.73, section ".printk_index", align 4
@cpld_info_ver3._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.12, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09ADC ch3 5V:   %u,%03uV\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.78 = internal global ptr @cpld_info_ver3._entry.76, section ".printk_index", align 4
@cpld_info_ver3._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.12, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09ADC ch4 3V:   %u,%03uV\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.81 = internal global ptr @cpld_info_ver3._entry.79, section ".printk_index", align 4
@cpld_info_ver3._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.12, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09ADC ch5 2V5:  %u,%03uV\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.84 = internal global ptr @cpld_info_ver3._entry.82, section ".printk_index", align 4
@cpld_info_ver3._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.12, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09ADC ch6 1V8:  %u,%03uV\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.87 = internal global ptr @cpld_info_ver3._entry.85, section ".printk_index", align 4
@cpld_info_ver3._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.12, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09ADC ch7 1V5:  %u,%03uV\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.90 = internal global ptr @cpld_info_ver3._entry.88, section ".printk_index", align 4
@cpld_info_ver3._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.12, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: \09\09ADC ch8 0V9:  %u,%03uV\0A\00", [32 x i8] zeroinitializer }, align 32
@cpld_info_ver3._entry_ptr.93 = internal global ptr @cpld_info_ver3._entry.91, section ".printk_index", align 4
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 100, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"multipliers\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 131, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 278, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 318, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 321, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 30, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 31, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 33, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 34, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 36, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 37, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 39, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 41, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 43, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 45, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 47, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 49, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 51, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 53, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 54, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 56, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 57, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 59, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 61, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 62, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 64, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 68, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 71, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 74, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 77, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 80, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 83, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [42 x i8] c"../drivers/media/pci/cobalt/cobalt-cpld.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 86, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @cobalt_cpld_set_freq._entry, ptr @cobalt_cpld_set_freq._entry.5, ptr @cobalt_cpld_set_freq._entry.8, ptr @cobalt_cpld_set_freq._entry_ptr, ptr @cobalt_cpld_set_freq._entry_ptr.10, ptr @cobalt_cpld_set_freq._entry_ptr.7, ptr @cobalt_cpld_status._entry, ptr @cobalt_cpld_status._entry_ptr, ptr @cpld_info_ver3._entry, ptr @cpld_info_ver3._entry.13, ptr @cpld_info_ver3._entry.16, ptr @cpld_info_ver3._entry.19, ptr @cpld_info_ver3._entry.22, ptr @cpld_info_ver3._entry.25, ptr @cpld_info_ver3._entry.28, ptr @cpld_info_ver3._entry.31, ptr @cpld_info_ver3._entry.34, ptr @cpld_info_ver3._entry.37, ptr @cpld_info_ver3._entry.40, ptr @cpld_info_ver3._entry.43, ptr @cpld_info_ver3._entry.46, ptr @cpld_info_ver3._entry.49, ptr @cpld_info_ver3._entry.52, ptr @cpld_info_ver3._entry.55, ptr @cpld_info_ver3._entry.58, ptr @cpld_info_ver3._entry.61, ptr @cpld_info_ver3._entry.64, ptr @cpld_info_ver3._entry.67, ptr @cpld_info_ver3._entry.70, ptr @cpld_info_ver3._entry.73, ptr @cpld_info_ver3._entry.76, ptr @cpld_info_ver3._entry.79, ptr @cpld_info_ver3._entry.82, ptr @cpld_info_ver3._entry.85, ptr @cpld_info_ver3._entry.88, ptr @cpld_info_ver3._entry.91, ptr @cpld_info_ver3._entry_ptr, ptr @cpld_info_ver3._entry_ptr.15, ptr @cpld_info_ver3._entry_ptr.18, ptr @cpld_info_ver3._entry_ptr.21, ptr @cpld_info_ver3._entry_ptr.24, ptr @cpld_info_ver3._entry_ptr.27, ptr @cpld_info_ver3._entry_ptr.30, ptr @cpld_info_ver3._entry_ptr.33, ptr @cpld_info_ver3._entry_ptr.36, ptr @cpld_info_ver3._entry_ptr.39, ptr @cpld_info_ver3._entry_ptr.42, ptr @cpld_info_ver3._entry_ptr.45, ptr @cpld_info_ver3._entry_ptr.48, ptr @cpld_info_ver3._entry_ptr.51, ptr @cpld_info_ver3._entry_ptr.54, ptr @cpld_info_ver3._entry_ptr.57, ptr @cpld_info_ver3._entry_ptr.60, ptr @cpld_info_ver3._entry_ptr.63, ptr @cpld_info_ver3._entry_ptr.66, ptr @cpld_info_ver3._entry_ptr.69, ptr @cpld_info_ver3._entry_ptr.72, ptr @cpld_info_ver3._entry_ptr.75, ptr @cpld_info_ver3._entry_ptr.78, ptr @cpld_info_ver3._entry_ptr.81, ptr @cpld_info_ver3._entry_ptr.84, ptr @cpld_info_ver3._entry_ptr.87, ptr @cpld_info_ver3._entry_ptr.90, ptr @cpld_info_ver3._entry_ptr.93, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @multipliers, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_cpld_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipliers to i32), i32 3360, i32 4192, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_cpld_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_cpld_set_freq._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_cpld_set_freq._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpld_info_ver3._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_cpld_status(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %0 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 805330944) #6, !srcloc !144
  %add.ptr3.i.i = getelementptr i8, ptr %1, i32 1540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !145
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv.i = trunc i32 %3 to i16
  %call.off = add i16 %conv.i, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %call.off)
  %switch = icmp ult i16 %call.off, 3
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i) #9
  %4 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 24576) #6, !srcloc !144
  %add.ptr3.i.i.i = getelementptr i8, ptr %5, i32 1540
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %8) #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i) #9
  %9 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i361.i = getelementptr i8, ptr %10, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i361.i, i32 67133440) #6, !srcloc !144
  %add.ptr3.i.i362.i = getelementptr i8, ptr %10, i32 1540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i362.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %12 = and i32 %11, -65536
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i, i32 noundef %13) #9
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i) #9
  %14 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i365.i = getelementptr i8, ptr %15, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i365.i, i32 134242304) #6, !srcloc !144
  %add.ptr3.i.i366.i = getelementptr i8, ptr %15, i32 1540
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i366.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %18) #9
  %19 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i369.i = getelementptr i8, ptr %20, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i369.i, i32 201351168) #6, !srcloc !144
  %add.ptr3.i.i370.i = getelementptr i8, ptr %20, i32 1540
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i370.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %22 = and i32 %21, -65536
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, i32 noundef %23) #9
  %24 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i373.i = getelementptr i8, ptr %25, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i373.i, i32 268460032) #6, !srcloc !144
  %add.ptr3.i.i374.i = getelementptr i8, ptr %25, i32 1540
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i374.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %27 = and i32 %26, -65536
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name.i, i32 noundef %28) #9
  %29 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i377.i = getelementptr i8, ptr %30, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i377.i, i32 335568896) #6, !srcloc !144
  %add.ptr3.i.i378.i = getelementptr i8, ptr %30, i32 1540
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i378.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %32 = and i32 %31, -65536
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i, i32 noundef %33) #9
  %34 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i381.i = getelementptr i8, ptr %35, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i381.i, i32 402677760) #6, !srcloc !144
  %add.ptr3.i.i382.i = getelementptr i8, ptr %35, i32 1540
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i382.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %37 = and i32 %36, -65536
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i, i32 noundef %38) #9
  %39 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i385.i = getelementptr i8, ptr %40, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i385.i, i32 469786624) #6, !srcloc !144
  %add.ptr3.i.i386.i = getelementptr i8, ptr %40, i32 1540
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i386.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %42 = and i32 %41, -65536
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %call96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name.i, i32 noundef %43) #9
  %44 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i389.i = getelementptr i8, ptr %45, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i389.i, i32 536895488) #6, !srcloc !144
  %add.ptr3.i.i390.i = getelementptr i8, ptr %45, i32 1540
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i390.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %47 = and i32 %46, -65536
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %call106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i, i32 noundef %48) #9
  %49 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i393.i = getelementptr i8, ptr %50, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i393.i, i32 604004352) #6, !srcloc !144
  %add.ptr3.i.i394.i = getelementptr i8, ptr %50, i32 1540
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i394.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %52 = and i32 %51, -65536
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %call116.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i, i32 noundef %53) #9
  %call124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name.i) #9
  %54 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i397.i = getelementptr i8, ptr %55, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i397.i, i32 671113216) #6, !srcloc !144
  %add.ptr3.i.i398.i = getelementptr i8, ptr %55, i32 1540
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i398.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %57 = and i32 %56, -65536
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  %call134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i, i32 noundef %58) #9
  %call142.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i) #9
  %59 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i401.i = getelementptr i8, ptr %60, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i401.i, i32 738222080) #6, !srcloc !144
  %add.ptr3.i.i402.i = getelementptr i8, ptr %60, i32 1540
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i402.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %62 = and i32 %61, -65536
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  %call152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i, i32 noundef %63) #9
  %64 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i405.i = getelementptr i8, ptr %65, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i405.i, i32 805330944) #6, !srcloc !144
  %add.ptr3.i.i406.i = getelementptr i8, ptr %65, i32 1540
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i406.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %67 = and i32 %66, -65536
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  %call162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name.i, i32 noundef %68) #9
  %call170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name.i) #9
  %69 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i409.i = getelementptr i8, ptr %70, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i409.i, i32 872439808) #6, !srcloc !144
  %add.ptr3.i.i410.i = getelementptr i8, ptr %70, i32 1540
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i410.i) #6, !srcloc !145
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %73 = lshr i32 %72, 2
  %div.i = and i32 %73, 16383
  %call180.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i, i32 noundef %div.i) #9
  %74 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i413.i = getelementptr i8, ptr %75, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i413.i, i32 939548672) #6, !srcloc !144
  %add.ptr3.i.i414.i = getelementptr i8, ptr %75, i32 1540
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i414.i) #6, !srcloc !145
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %78 = lshr i32 %77, 2
  %div190.i = and i32 %78, 16383
  %call191.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name.i, i32 noundef %div190.i) #9
  %79 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i417.i = getelementptr i8, ptr %80, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i417.i, i32 1006657536) #6, !srcloc !144
  %add.ptr3.i.i418.i = getelementptr i8, ptr %80, i32 1540
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i418.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %82 = and i32 %81, -65536
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  %mul194.i = mul nuw i32 %83, 33000
  %div195.i = udiv i32 %mul194.i, 4830
  %div203.i = udiv i32 %mul194.i, 4830000
  %rem.i = urem i32 %div195.i, 1000
  %call204.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name.i, i32 noundef %div203.i, i32 noundef %rem.i) #9
  %84 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i421.i = getelementptr i8, ptr %85, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i421.i, i32 1073766400) #6, !srcloc !144
  %add.ptr3.i.i422.i = getelementptr i8, ptr %85, i32 1540
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i422.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %87 = and i32 %86, -65536
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  %mul208.i = mul i32 %88, 162578
  %div209.i = udiv i32 %mul208.i, 27000
  %div217.i = udiv i32 %mul208.i, 27000000
  %rem218.i = urem i32 %div209.i, 1000
  %call219.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name.i, i32 noundef %div217.i, i32 noundef %rem218.i) #9
  %89 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i425.i = getelementptr i8, ptr %90, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i425.i, i32 1140875264) #6, !srcloc !144
  %add.ptr3.i.i426.i = getelementptr i8, ptr %90, i32 1540
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i426.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %92 = and i32 %91, -65536
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #6
  %mul223.i = mul i32 %93, 162578
  %div224.i = udiv i32 %mul223.i, 47000
  %div232.i = udiv i32 %mul223.i, 47000000
  %rem233.i = urem i32 %div224.i, 1000
  %call234.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name.i, i32 noundef %div232.i, i32 noundef %rem233.i) #9
  %94 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i429.i = getelementptr i8, ptr %95, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i429.i, i32 1207984128) #6, !srcloc !144
  %add.ptr3.i.i430.i = getelementptr i8, ptr %95, i32 1540
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i430.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %97 = and i32 %96, -65536
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #6
  %mul238.i = mul i32 %98, 125229
  %div239.i = udiv i32 %mul238.i, 47000
  %div247.i = udiv i32 %mul238.i, 47000000
  %rem248.i = urem i32 %div239.i, 1000
  %call249.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name.i, i32 noundef %div247.i, i32 noundef %rem248.i) #9
  %99 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i433.i = getelementptr i8, ptr %100, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i433.i, i32 1275092992) #6, !srcloc !144
  %add.ptr3.i.i434.i = getelementptr i8, ptr %100, i32 1540
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i434.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %102 = and i32 %101, -65536
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #6
  %mul252.i = mul nuw nsw i32 %103, 2197
  %div253.i = udiv i32 %mul252.i, 1000
  %div261.i = udiv i32 %mul252.i, 1000000
  %rem262.i = urem i32 %div253.i, 1000
  %call263.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name.i, i32 noundef %div261.i, i32 noundef %rem262.i) #9
  %104 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i437.i = getelementptr i8, ptr %105, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i437.i, i32 1342201856) #6, !srcloc !144
  %add.ptr3.i.i438.i = getelementptr i8, ptr %105, i32 1540
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i438.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %107 = and i32 %106, -65536
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #6
  %mul266.i = mul nuw nsw i32 %108, 2197
  %div267.i = udiv i32 %mul266.i, 1000
  %div275.i = udiv i32 %mul266.i, 1000000
  %rem276.i = urem i32 %div267.i, 1000
  %call277.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name.i, i32 noundef %div275.i, i32 noundef %rem276.i) #9
  %109 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i441.i = getelementptr i8, ptr %110, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i441.i, i32 1409310720) #6, !srcloc !144
  %add.ptr3.i.i442.i = getelementptr i8, ptr %110, i32 1540
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i442.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %112 = and i32 %111, -65536
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #6
  %mul280.i = mul nuw nsw i32 %113, 2197
  %div281.i = udiv i32 %mul280.i, 1000
  %div289.i = udiv i32 %mul280.i, 1000000
  %rem290.i = urem i32 %div281.i, 1000
  %call291.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name.i, i32 noundef %div289.i, i32 noundef %rem290.i) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = and i32 %3, 65535
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cobalt_cpld_set_freq(ptr noundef %cobalt, i32 noundef %f_out) local_unnamed_addr #0 align 64 {
entry:
  %regs = alloca [6 x i8], align 1
  %read_regs = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs) #6
  %0 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %regs, i32 0, i32 5
  %conv = zext i32 %f_out to i64
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %delta.0251 = phi i32 [ -1, %entry ], [ %delta.2, %cleanup.for.body_crit_edge ]
  %found.0250 = phi i32 [ 0, %entry ], [ %found.2, %cleanup.for.body_crit_edge ]
  %i.0248 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %i_best.0247 = phi i32 [ 0, %entry ], [ %i_best.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [280 x %struct.multiplier], ptr @multipliers, i32 0, i32 %i.0248
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %conv2 = zext i32 %6 to i64
  %mul = mul nuw i64 %conv2, %conv
  %7 = add i64 %mul, -5670000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -820000001, i64 %7)
  %8 = icmp ult i64 %7, -820000001
  br i1 %8, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i64 %mul, 28
  %add = or i64 %shl, 19585000
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 7901072499906690547, i64 %add) #10, !srcloc !147
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 7901072499906690547, i64 %add, i64 %9, i32 0) #10, !srcloc !148
  %asmresult10.i.i = extractvalue { i64, i32 } %10, 0
  %conv14.i = trunc i64 %add to i32
  %div1581.i = lshr i64 %asmresult10.i.i, 24
  %conv159.i = trunc i64 %div1581.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -39170000
  %sub161.i = add i32 %mul160.neg.i, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub161.i, i32 %delta.0251)
  %cmp7 = icmp ult i32 %sub161.i, %delta.0251
  %i_best.1 = select i1 %cmp7, i32 %i.0248, i32 %i_best.0247
  %found.1 = select i1 %cmp7, i32 1, i32 %found.0250
  %11 = tail call i32 @llvm.umin.i32(i32 %sub161.i, i32 %delta.0251)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %i_best.2 = phi i32 [ %i_best.1, %if.end ], [ %i_best.0247, %for.body.cleanup_crit_edge ]
  %found.2 = phi i32 [ %found.1, %if.end ], [ %found.0250, %for.body.cleanup_crit_edge ]
  %delta.2 = phi i32 [ %11, %if.end ], [ %delta.0251, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0248, 1
  %exitcond.not = icmp eq i32 %inc, 280
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.2)
  %tobool.not = icmp eq i32 %found.2, 0
  br i1 %tobool.not, label %for.end.cleanup134_crit_edge, label %if.end13

for.end.cleanup134_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup134

if.end13:                                         ; preds = %for.end
  %arrayidx15 = getelementptr [280 x %struct.multiplier], ptr @multipliers, i32 0, i32 %i_best.2
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 4
  %conv17 = zext i32 %13 to i64
  %n120 = getelementptr [280 x %struct.multiplier], ptr @multipliers, i32 0, i32 %i_best.2, i32 2
  %14 = ptrtoint ptr %n120 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n120, align 4
  %conv21 = add i32 %15, 255
  %hsdiv23 = getelementptr [280 x %struct.multiplier], ptr @multipliers, i32 0, i32 %i_best.2, i32 1
  %16 = ptrtoint ptr %hsdiv23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hsdiv23, align 4
  %mul18 = shl nuw nsw i64 %conv, 28
  %shl26 = mul i64 %mul18, %conv17
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 7901072499906690547, i64 %shl26) #10, !srcloc !147
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 7901072499906690547, i64 %shl26, i64 %18, i32 0) #10, !srcloc !148
  %asmresult10.i.i.i = extractvalue { i64, i32 } %19, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 24
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %20 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67133440) #6, !srcloc !144
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 1540
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv25 = shl i32 %17, 5
  %conv29 = add i32 %conv25, 128
  %conv31 = lshr i32 %conv21, 2
  %23 = and i32 %conv31, 63
  %or = or i32 %conv29, %23
  %conv32 = trunc i32 %or to i8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv32, ptr %regs, align 1
  %and = shl i32 %conv21, 6
  %25 = zext i32 %and to i64
  %shr37 = lshr i64 %asmresult10.i.i.i, 56
  %or38 = or i64 %shr37, %25
  %conv39 = trunc i64 %or38 to i8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv39, ptr %0, align 1
  %shr41 = lshr i64 %asmresult10.i.i.i, 48
  %conv43 = trunc i64 %shr41 to i8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv43, ptr %1, align 1
  %shr45 = lshr i64 %asmresult10.i.i.i, 40
  %conv47 = trunc i64 %shr45 to i8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv47, ptr %2, align 1
  %shr49 = lshr i64 %asmresult10.i.i.i, 32
  %conv51 = trunc i64 %shr49 to i8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv51, ptr %3, align 1
  %conv54 = trunc i64 %div1581.i.i to i8
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv54, ptr %4, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %31 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp56 = icmp sgt i32 %31, 0
  br i1 %cmp56, label %do.end, label %if.end13.do.end64_crit_edge

if.end13.do.end64_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %f_out, ptr noundef nonnull %regs) #9
  br label %do.end64

do.end64:                                         ; preds = %do.end, %if.end13.do.end64_crit_edge
  %32 = getelementptr inbounds [6 x i8], ptr %read_regs, i32 0, i32 1
  %33 = getelementptr inbounds [6 x i8], ptr %read_regs, i32 0, i32 2
  %34 = getelementptr inbounds [6 x i8], ptr %read_regs, i32 0, i32 3
  %35 = getelementptr inbounds [6 x i8], ptr %read_regs, i32 0, i32 4
  %36 = getelementptr inbounds [6 x i8], ptr %read_regs, i32 0, i32 5
  %name111 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup118.while.body_crit_edge, %do.end64
  %dec253 = phi i32 [ 2, %do.end64 ], [ %dec, %cleanup118.while.body_crit_edge ]
  %retries.0252 = phi i32 [ 3, %do.end64 ], [ %dec253, %cleanup118.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %read_regs) #6
  %37 = call ptr @memset(ptr %read_regs, i32 255, i32 6)
  %38 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i183 = getelementptr i8, ptr %39, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i183, i32 67133440) #6, !srcloc !144
  %add.ptr6.i.i = getelementptr i8, ptr %39, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 -1073741824) #6, !srcloc !144
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %regs, align 1
  %42 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i185 = getelementptr i8, ptr %43, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i185, i32 134242304) #6, !srcloc !144
  %conv4.i.i = zext i8 %41 to i32
  %add.ptr6.i.i186 = getelementptr i8, ptr %43, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  %44 = shl nuw i32 %conv4.i.i, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i186, i32 %44) #6, !srcloc !144
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %0, align 1
  %47 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i188 = getelementptr i8, ptr %48, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i188, i32 201351168) #6, !srcloc !144
  %conv4.i.i189 = zext i8 %46 to i32
  %add.ptr6.i.i190 = getelementptr i8, ptr %48, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  %49 = shl nuw i32 %conv4.i.i189, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i190, i32 %49) #6, !srcloc !144
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %1, align 1
  %52 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i192 = getelementptr i8, ptr %53, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i192, i32 268460032) #6, !srcloc !144
  %conv4.i.i193 = zext i8 %51 to i32
  %add.ptr6.i.i194 = getelementptr i8, ptr %53, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  %54 = shl nuw i32 %conv4.i.i193, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i194, i32 %54) #6, !srcloc !144
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %2, align 1
  %57 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i196 = getelementptr i8, ptr %58, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i196, i32 335568896) #6, !srcloc !144
  %conv4.i.i197 = zext i8 %56 to i32
  %add.ptr6.i.i198 = getelementptr i8, ptr %58, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  %59 = shl nuw i32 %conv4.i.i197, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i198, i32 %59) #6, !srcloc !144
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %3, align 1
  %62 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i200 = getelementptr i8, ptr %63, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i200, i32 402677760) #6, !srcloc !144
  %conv4.i.i201 = zext i8 %61 to i32
  %add.ptr6.i.i202 = getelementptr i8, ptr %63, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  %64 = shl nuw i32 %conv4.i.i201, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i202, i32 %64) #6, !srcloc !144
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %4, align 1
  %67 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i204 = getelementptr i8, ptr %68, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i204, i32 469786624) #6, !srcloc !144
  %conv4.i.i205 = zext i8 %66 to i32
  %add.ptr6.i.i206 = getelementptr i8, ptr %68, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  %69 = shl nuw i32 %conv4.i.i205, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i206, i32 %69) #6, !srcloc !144
  %70 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i208 = getelementptr i8, ptr %71, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i208, i32 67133440) #6, !srcloc !144
  %add.ptr6.i.i209 = getelementptr i8, ptr %71, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i209, i32 1073872896) #6, !srcloc !144
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %72 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i211 = getelementptr i8, ptr %73, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i211, i32 67133440) #6, !srcloc !144
  %add.ptr6.i.i212 = getelementptr i8, ptr %73, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i212, i32 -1073741824) #6, !srcloc !144
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %74 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i214 = getelementptr i8, ptr %75, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i214, i32 134242304) #6, !srcloc !144
  %add.ptr3.i.i215 = getelementptr i8, ptr %75, i32 1540
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i215) #6, !srcloc !145
  %77 = lshr i32 %76, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv79 = trunc i32 %77 to i8
  %78 = ptrtoint ptr %read_regs to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv79, ptr %read_regs, align 1
  %79 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i218 = getelementptr i8, ptr %80, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i218, i32 201351168) #6, !srcloc !144
  %add.ptr3.i.i219 = getelementptr i8, ptr %80, i32 1540
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i219) #6, !srcloc !145
  %82 = lshr i32 %81, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv82 = trunc i32 %82 to i8
  %83 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv82, ptr %32, align 1
  %84 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i222 = getelementptr i8, ptr %85, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i222, i32 268460032) #6, !srcloc !144
  %add.ptr3.i.i223 = getelementptr i8, ptr %85, i32 1540
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i223) #6, !srcloc !145
  %87 = lshr i32 %86, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv85 = trunc i32 %87 to i8
  %88 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv85, ptr %33, align 1
  %89 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i226 = getelementptr i8, ptr %90, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i226, i32 335568896) #6, !srcloc !144
  %add.ptr3.i.i227 = getelementptr i8, ptr %90, i32 1540
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i227) #6, !srcloc !145
  %92 = lshr i32 %91, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv88 = trunc i32 %92 to i8
  %93 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv88, ptr %34, align 1
  %94 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i230 = getelementptr i8, ptr %95, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i230, i32 402677760) #6, !srcloc !144
  %add.ptr3.i.i231 = getelementptr i8, ptr %95, i32 1540
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i231) #6, !srcloc !145
  %97 = lshr i32 %96, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv91 = trunc i32 %97 to i8
  %98 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv91, ptr %35, align 1
  %99 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i234 = getelementptr i8, ptr %100, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i234, i32 469786624) #6, !srcloc !144
  %add.ptr3.i.i235 = getelementptr i8, ptr %100, i32 1540
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i235) #6, !srcloc !145
  %102 = lshr i32 %101, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %conv94 = trunc i32 %102 to i8
  %103 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv94, ptr %36, align 1
  %104 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i238 = getelementptr i8, ptr %105, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i238, i32 67133440) #6, !srcloc !144
  %add.ptr6.i.i239 = getelementptr i8, ptr %105, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i239, i32 -1073676288) #6, !srcloc !144
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %106 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i.i241 = getelementptr i8, ptr %107, i32 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i241, i32 67133440) #6, !srcloc !144
  %add.ptr6.i.i242 = getelementptr i8, ptr %107, i32 1540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i242, i32 1073741824) #6, !srcloc !144
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %read_regs, ptr noundef nonnull dereferenceable(6) %regs, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool99.not = icmp eq i32 %bcmp, 0
  br i1 %tobool99.not, label %while.end, label %do.body102

do.body102:                                       ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %108 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp103 = icmp sgt i32 %108, 0
  br i1 %cmp103, label %do.end108, label %do.body102.cleanup118_crit_edge

do.body102.cleanup118_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name111, ptr noundef nonnull %read_regs) #9
  br label %cleanup118

cleanup118:                                       ; preds = %do.end108, %do.body102.cleanup118_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %read_regs) #6
  %dec = add nsw i32 %dec253, -1
  %cond = icmp eq i32 %dec253, 0
  br i1 %cond, label %cleanup118.do.end126_crit_edge, label %cleanup118.while.body_crit_edge

cleanup118.while.body_crit_edge:                  ; preds = %cleanup118
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup118.do.end126_crit_edge:                   ; preds = %cleanup118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end126

while.end:                                        ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %read_regs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retries.0252)
  %tobool122.not = icmp eq i32 %retries.0252, 3
  br i1 %tobool122.not, label %while.end.cleanup134_crit_edge, label %while.end.do.end126_crit_edge

while.end.do.end126_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end126

while.end.cleanup134_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup134

do.end126:                                        ; preds = %while.end.do.end126_crit_edge, %cleanup118.do.end126_crit_edge
  %retries.0246 = phi i32 [ %retries.0252, %while.end.do.end126_crit_edge ], [ 0, %cleanup118.do.end126_crit_edge ]
  %sub121 = sub i32 3, %retries.0246
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name111, i32 noundef %sub121) #9
  br label %cleanup134

cleanup134:                                       ; preds = %do.end126, %while.end.cleanup134_crit_edge, %for.end.cleanup134_crit_edge
  %109 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs) #6
  ret i1 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 100, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cobalt_cpld_status._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cobalt_cpld_status._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 278, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cobalt_cpld_set_freq._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @cobalt_cpld_set_freq._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 318, i32 3}
!13 = !{ptr @cobalt_cpld_set_freq._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @cobalt_cpld_set_freq._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 321, i32 3}
!17 = !{ptr @cobalt_cpld_set_freq._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cobalt_cpld_set_freq._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 30, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cpld_info_ver3._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cpld_info_ver3._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 31, i32 2}
!26 = !{ptr @cpld_info_ver3._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cpld_info_ver3._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 33, i32 2}
!30 = !{ptr @cpld_info_ver3._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cpld_info_ver3._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 34, i32 2}
!34 = !{ptr @cpld_info_ver3._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cpld_info_ver3._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 36, i32 2}
!38 = !{ptr @cpld_info_ver3._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cpld_info_ver3._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 37, i32 2}
!42 = !{ptr @cpld_info_ver3._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cpld_info_ver3._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 39, i32 2}
!46 = !{ptr @cpld_info_ver3._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cpld_info_ver3._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 41, i32 2}
!50 = !{ptr @cpld_info_ver3._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cpld_info_ver3._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 43, i32 2}
!54 = !{ptr @cpld_info_ver3._entry.34, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cpld_info_ver3._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 45, i32 2}
!58 = !{ptr @cpld_info_ver3._entry.37, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cpld_info_ver3._entry_ptr.39, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 47, i32 2}
!62 = !{ptr @cpld_info_ver3._entry.40, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cpld_info_ver3._entry_ptr.42, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.44, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 49, i32 2}
!66 = !{ptr @cpld_info_ver3._entry.43, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cpld_info_ver3._entry_ptr.45, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.47, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 51, i32 2}
!70 = !{ptr @cpld_info_ver3._entry.46, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cpld_info_ver3._entry_ptr.48, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.50, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 53, i32 2}
!74 = !{ptr @cpld_info_ver3._entry.49, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cpld_info_ver3._entry_ptr.51, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.53, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 54, i32 2}
!78 = !{ptr @cpld_info_ver3._entry.52, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cpld_info_ver3._entry_ptr.54, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.56, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 56, i32 2}
!82 = !{ptr @cpld_info_ver3._entry.55, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cpld_info_ver3._entry_ptr.57, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.59, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 57, i32 2}
!86 = !{ptr @cpld_info_ver3._entry.58, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cpld_info_ver3._entry_ptr.60, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.62, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 59, i32 2}
!90 = !{ptr @cpld_info_ver3._entry.61, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cpld_info_ver3._entry_ptr.63, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.65, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 61, i32 2}
!94 = !{ptr @cpld_info_ver3._entry.64, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cpld_info_ver3._entry_ptr.66, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.68, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 62, i32 2}
!98 = !{ptr @cpld_info_ver3._entry.67, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cpld_info_ver3._entry_ptr.69, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.71, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 64, i32 2}
!102 = !{ptr @cpld_info_ver3._entry.70, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cpld_info_ver3._entry_ptr.72, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.74, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 68, i32 2}
!106 = !{ptr @cpld_info_ver3._entry.73, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cpld_info_ver3._entry_ptr.75, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.77, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 71, i32 2}
!110 = !{ptr @cpld_info_ver3._entry.76, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @cpld_info_ver3._entry_ptr.78, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.80, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 74, i32 2}
!114 = !{ptr @cpld_info_ver3._entry.79, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cpld_info_ver3._entry_ptr.81, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.83, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 77, i32 2}
!118 = !{ptr @cpld_info_ver3._entry.82, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cpld_info_ver3._entry_ptr.84, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.86, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 80, i32 2}
!122 = !{ptr @cpld_info_ver3._entry.85, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @cpld_info_ver3._entry_ptr.87, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.89, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 83, i32 2}
!126 = !{ptr @cpld_info_ver3._entry.88, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cpld_info_ver3._entry_ptr.90, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.92, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 86, i32 2}
!130 = !{ptr @cpld_info_ver3._entry.91, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cpld_info_ver3._entry_ptr.93, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @multipliers, !133, !"multipliers", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cobalt/cobalt-cpld.c", i32 131, i32 32}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2152551025}
!144 = !{i64 5008903}
!145 = !{i64 5009321}
!146 = !{i64 2152549670}
!147 = !{i64 485143, i64 485170}
!148 = !{i64 485838, i64 485865, i64 485898, i64 485919, i64 485946, i64 485972}
