; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/gl860/gl860-ov2640.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/gl860/gl860-ov2640.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.validx = type { i16, i16 }
%struct.sd = type { %struct.gspca_dev, %struct.sd_gl860, %struct.sd_gl860, %struct.sd_gl860, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, i32, i8 }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd_gl860 = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8 }

@tbl_init_at_startup = internal global { [21 x %struct.validx], [44 x i8] } { [21 x %struct.validx] [%struct.validx zeroinitializer, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 8, i16 192 }, %struct.validx { i16 1, i16 193 }, %struct.validx { i16 1, i16 194 }, %struct.validx { i16 32, i16 6 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 80, i16 0 }, %struct.validx { i16 65, i16 0 }, %struct.validx { i16 106, i16 7 }, %struct.validx { i16 97, i16 6 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 0, i16 192 }, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 1, i16 193 }, %struct.validx { i16 65, i16 194 }, %struct.validx { i16 4, i16 216 }, %struct.validx { i16 18, i16 4 }, %struct.validx { i16 0, i16 88 }, %struct.validx { i16 65, i16 0 }, %struct.validx { i16 97, i16 0 }], [44 x i8] zeroinitializer }, align 32
@dat_init1 = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\00A\07j\06a\0Dj\10\10\C1\01\00", [19 x i8] zeroinitializer }, align 32
@c61 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"a", [31 x i8] zeroinitializer }, align 32
@c51 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"Q", [31 x i8] zeroinitializer }, align 32
@tbl_common = internal global { [173 x %struct.validx], [172 x i8] } { [173 x %struct.validx] [%struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24831, i16 44 }, %struct.validx { i16 24799, i16 46 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24704, i16 18 }, %struct.validx { i16 24576, i16 0 }, %struct.validx { i16 24576, i16 69 }, %struct.validx { i16 24576, i16 16 }, %struct.validx { i16 24629, i16 60 }, %struct.validx { i16 24576, i16 17 }, %struct.validx { i16 24616, i16 4 }, %struct.validx { i16 24805, i16 19 }, %struct.validx { i16 24712, i16 20 }, %struct.validx { i16 24588, i16 44 }, %struct.validx { i16 24696, i16 51 }, %struct.validx { i16 24823, i16 59 }, %struct.validx { i16 24576, i16 62 }, %struct.validx { i16 24593, i16 67 }, %struct.validx { i16 24592, i16 22 }, %struct.validx { i16 24706, i16 57 }, %struct.validx { i16 24712, i16 53 }, %struct.validx { i16 24586, i16 34 }, %struct.validx { i16 24640, i16 55 }, %struct.validx { i16 24576, i16 35 }, %struct.validx { i16 24736, i16 52 }, %struct.validx { i16 24602, i16 54 }, %struct.validx { i16 24578, i16 6 }, %struct.validx { i16 24768, i16 7 }, %struct.validx { i16 24759, i16 13 }, %struct.validx { i16 24577, i16 14 }, %struct.validx { i16 24576, i16 76 }, %struct.validx { i16 24705, i16 74 }, %struct.validx { i16 24729, i16 33 }, %struct.validx { i16 24578, i16 9 }, %struct.validx { i16 24638, i16 36 }, %struct.validx { i16 24628, i16 37 }, %struct.validx { i16 24705, i16 38 }, %struct.validx { i16 24576, i16 0 }, %struct.validx { i16 24576, i16 69 }, %struct.validx { i16 24576, i16 16 }, %struct.validx { i16 24576, i16 92 }, %struct.validx { i16 24576, i16 99 }, %struct.validx { i16 24576, i16 124 }, %struct.validx { i16 24688, i16 97 }, %struct.validx { i16 24704, i16 98 }, %struct.validx { i16 24704, i16 32 }, %struct.validx { i16 24624, i16 40 }, %struct.validx { i16 24576, i16 108 }, %struct.validx { i16 24576, i16 110 }, %struct.validx { i16 24578, i16 112 }, %struct.validx { i16 24724, i16 113 }, %struct.validx { i16 24769, i16 115 }, %struct.validx { i16 24628, i16 61 }, %struct.validx { i16 24663, i16 90 }, %struct.validx { i16 24763, i16 79 }, %struct.validx { i16 24732, i16 80 }, %struct.validx { i16 24704, i16 109 }, %struct.validx { i16 24578, i16 57 }, %struct.validx { i16 24627, i16 58 }, %struct.validx { i16 24817, i16 59 }, %struct.validx { i16 24625, i16 60 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24596, i16 224 }, %struct.validx { i16 24831, i16 118 }, %struct.validx { i16 24736, i16 51 }, %struct.validx { i16 24608, i16 66 }, %struct.validx { i16 24600, i16 67 }, %struct.validx { i16 24576, i16 76 }, %struct.validx { i16 24784, i16 135 }, %struct.validx { i16 24591, i16 136 }, %struct.validx { i16 24579, i16 215 }, %struct.validx { i16 24592, i16 217 }, %struct.validx { i16 24581, i16 218 }, %struct.validx { i16 24706, i16 211 }, %struct.validx { i16 24768, i16 249 }, %struct.validx { i16 24582, i16 68 }, %struct.validx { i16 24583, i16 209 }, %struct.validx { i16 24578, i16 210 }, %struct.validx { i16 24576, i16 210 }, %struct.validx { i16 24593, i16 216 }, %struct.validx { i16 24584, i16 200 }, %struct.validx { i16 24704, i16 201 }, %struct.validx { i16 24584, i16 124 }, %struct.validx { i16 24608, i16 125 }, %struct.validx { i16 24608, i16 125 }, %struct.validx { i16 24576, i16 144 }, %struct.validx { i16 24590, i16 145 }, %struct.validx { i16 24602, i16 145 }, %struct.validx { i16 24625, i16 145 }, %struct.validx { i16 24666, i16 145 }, %struct.validx { i16 24681, i16 145 }, %struct.validx { i16 24693, i16 145 }, %struct.validx { i16 24702, i16 145 }, %struct.validx { i16 24712, i16 145 }, %struct.validx { i16 24719, i16 145 }, %struct.validx { i16 24726, i16 145 }, %struct.validx { i16 24739, i16 145 }, %struct.validx { i16 24751, i16 145 }, %struct.validx { i16 24772, i16 145 }, %struct.validx { i16 24791, i16 145 }, %struct.validx { i16 24808, i16 145 }, %struct.validx { i16 24608, i16 145 }, %struct.validx { i16 24576, i16 146 }, %struct.validx { i16 24582, i16 147 }, %struct.validx { i16 24803, i16 147 }, %struct.validx { i16 24581, i16 147 }, %struct.validx { i16 24581, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24580, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24576, i16 147 }, %struct.validx { i16 24576, i16 150 }, %struct.validx { i16 24584, i16 151 }, %struct.validx { i16 24601, i16 151 }, %struct.validx { i16 24578, i16 151 }, %struct.validx { i16 24588, i16 151 }, %struct.validx { i16 24612, i16 151 }, %struct.validx { i16 24624, i16 151 }, %struct.validx { i16 24616, i16 151 }, %struct.validx { i16 24614, i16 151 }, %struct.validx { i16 24578, i16 151 }, %struct.validx { i16 24728, i16 151 }, %struct.validx { i16 24704, i16 151 }, %struct.validx { i16 24576, i16 151 }, %struct.validx { i16 24576, i16 151 }, %struct.validx { i16 24813, i16 195 }, %struct.validx { i16 24730, i16 196 }, %struct.validx { i16 24576, i16 164 }, %struct.validx { i16 24593, i16 197 }, %struct.validx { i16 24657, i16 198 }, %struct.validx { i16 24592, i16 199 }, %struct.validx { i16 24678, i16 182 }, %struct.validx { i16 24741, i16 184 }, %struct.validx { i16 24676, i16 183 }, %struct.validx { i16 24700, i16 185 }, %struct.validx { i16 24751, i16 179 }, %struct.validx { i16 24727, i16 180 }, %struct.validx { i16 24831, i16 181 }, %struct.validx { i16 24773, i16 176 }, %struct.validx { i16 24724, i16 177 }, %struct.validx { i16 24591, i16 178 }, %struct.validx { i16 24668, i16 196 }, %struct.validx { i16 24576, i16 168 }, %struct.validx { i16 24776, i16 192 }, %struct.validx { i16 24726, i16 193 }, %struct.validx { i16 24605, i16 134 }, %struct.validx { i16 24576, i16 80 }, %struct.validx { i16 24720, i16 81 }, %struct.validx { i16 24600, i16 82 }, %struct.validx { i16 24576, i16 83 }, %struct.validx { i16 24576, i16 84 }, %struct.validx { i16 24712, i16 85 }, %struct.validx { i16 24576, i16 87 }, %struct.validx { i16 24720, i16 90 }, %struct.validx { i16 24600, i16 91 }, %struct.validx { i16 24581, i16 92 }, %struct.validx { i16 24813, i16 195 }, %struct.validx { i16 24576, i16 127 }, %struct.validx { i16 24581, i16 218 }, %struct.validx { i16 24607, i16 229 }, %struct.validx { i16 24679, i16 225 }, %struct.validx { i16 24576, i16 224 }, %struct.validx { i16 24831, i16 221 }, %struct.validx { i16 24576, i16 5 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24576, i16 0 }, %struct.validx { i16 24576, i16 69 }, %struct.validx { i16 24576, i16 16 }], [172 x i8] zeroinitializer }, align 32
@tbl_sensor_settings_common1 = internal global { [20 x %struct.validx], [48 x i8] } { [20 x %struct.validx] [%struct.validx { i16 65, i16 0 }, %struct.validx { i16 106, i16 7 }, %struct.validx { i16 239, i16 6 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 0, i16 192 }, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 1, i16 193 }, %struct.validx { i16 65, i16 194 }, %struct.validx { i16 4, i16 216 }, %struct.validx { i16 18, i16 4 }, %struct.validx { i16 0, i16 88 }, %struct.validx { i16 65, i16 0 }, %struct.validx { i16 50, i16 -1 }, %struct.validx { i16 97, i16 0 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24576, i16 124 }, %struct.validx { i16 24583, i16 125 }, %struct.validx { i16 30, i16 -1 }, %struct.validx { i16 64, i16 0 }], [48 x i8] zeroinitializer }, align 32
@dat_post = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\00A\07j\06\EF\0Dj\10\10\C1\01\00", [19 x i8] zeroinitializer }, align 32
@tbl_640 = internal global { [42 x %struct.validx], [56 x i8] } { [42 x %struct.validx] [%struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24817, i16 221 }, %struct.validx { i16 24580, i16 224 }, %struct.validx { i16 24679, i16 225 }, %struct.validx { i16 24580, i16 218 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24817, i16 221 }, %struct.validx { i16 24580, i16 224 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24576, i16 18 }, %struct.validx { i16 24576, i16 17 }, %struct.validx { i16 24593, i16 23 }, %struct.validx { i16 24693, i16 24 }, %struct.validx { i16 24577, i16 25 }, %struct.validx { i16 24727, i16 26 }, %struct.validx { i16 24630, i16 50 }, %struct.validx { i16 24763, i16 79 }, %struct.validx { i16 24663, i16 90 }, %struct.validx { i16 24732, i16 80 }, %struct.validx { i16 24704, i16 109 }, %struct.validx { i16 24722, i16 38 }, %struct.validx { i16 24831, i16 32 }, %struct.validx { i16 24576, i16 39 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24776, i16 192 }, %struct.validx { i16 24726, i16 193 }, %struct.validx { i16 24576, i16 140 }, %struct.validx { i16 24637, i16 134 }, %struct.validx { i16 24713, i16 80 }, %struct.validx { i16 24720, i16 81 }, %struct.validx { i16 24620, i16 82 }, %struct.validx { i16 24576, i16 83 }, %struct.validx { i16 24576, i16 84 }, %struct.validx { i16 24712, i16 85 }, %struct.validx { i16 24576, i16 87 }, %struct.validx { i16 24736, i16 90 }, %struct.validx { i16 24696, i16 91 }, %struct.validx { i16 24576, i16 92 }, %struct.validx { i16 24580, i16 211 }, %struct.validx { i16 24576, i16 224 }, %struct.validx { i16 24831, i16 221 }, %struct.validx { i16 24737, i16 90 }], [56 x i8] zeroinitializer }, align 32
@dat_640 = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\01\D1\08\D2\E0\D3\02\D4\10\D5\81\00", [19 x i8] zeroinitializer }, align 32
@tbl_800 = internal global { [36 x %struct.validx], [48 x i8] } { [36 x %struct.validx] [%struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24817, i16 221 }, %struct.validx { i16 24580, i16 224 }, %struct.validx { i16 24679, i16 225 }, %struct.validx { i16 24580, i16 218 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24817, i16 221 }, %struct.validx { i16 24580, i16 224 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24640, i16 18 }, %struct.validx { i16 24576, i16 17 }, %struct.validx { i16 24593, i16 23 }, %struct.validx { i16 24643, i16 24 }, %struct.validx { i16 24576, i16 25 }, %struct.validx { i16 24651, i16 26 }, %struct.validx { i16 24585, i16 50 }, %struct.validx { i16 24778, i16 79 }, %struct.validx { i16 24744, i16 80 }, %struct.validx { i16 24576, i16 109 }, %struct.validx { i16 24632, i16 61 }, %struct.validx { i16 24776, i16 53 }, %struct.validx { i16 24576, i16 34 }, %struct.validx { i16 24722, i16 38 }, %struct.validx { i16 24831, i16 32 }, %struct.validx { i16 24576, i16 39 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24676, i16 192 }, %struct.validx { i16 24651, i16 193 }, %struct.validx { i16 24576, i16 140 }, %struct.validx { i16 24605, i16 134 }, %struct.validx { i16 24706, i16 211 }, %struct.validx { i16 24576, i16 224 }, %struct.validx { i16 24831, i16 221 }, %struct.validx { i16 24608, i16 140 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24644, i16 24 }], [48 x i8] zeroinitializer }, align 32
@dat_800 = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\01\D1\10\D2X\D3\02\D4\18\D5!\00", [19 x i8] zeroinitializer }, align 32
@tbl_big1 = internal global { [27 x %struct.validx], [52 x i8] } { [27 x %struct.validx] [%struct.validx { i16 2, i16 193 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24817, i16 221 }, %struct.validx { i16 24580, i16 224 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24576, i16 18 }, %struct.validx { i16 24576, i16 0 }, %struct.validx { i16 24576, i16 69 }, %struct.validx { i16 24576, i16 16 }, %struct.validx { i16 24576, i16 17 }, %struct.validx { i16 24593, i16 23 }, %struct.validx { i16 24693, i16 24 }, %struct.validx { i16 24577, i16 25 }, %struct.validx { i16 24727, i16 26 }, %struct.validx { i16 24630, i16 50 }, %struct.validx { i16 24763, i16 79 }, %struct.validx { i16 24732, i16 80 }, %struct.validx { i16 24663, i16 90 }, %struct.validx { i16 24704, i16 109 }, %struct.validx { i16 24643, i16 15 }, %struct.validx { i16 24719, i16 3 }, %struct.validx { i16 24581, i16 124 }, %struct.validx { i16 24705, i16 38 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24776, i16 192 }, %struct.validx { i16 24726, i16 193 }, %struct.validx { i16 24576, i16 140 }], [52 x i8] zeroinitializer }, align 32
@tbl_big2 = internal global { [13 x %struct.validx], [44 x i8] } { [13 x %struct.validx] [%struct.validx { i16 24637, i16 134 }, %struct.validx { i16 24576, i16 80 }, %struct.validx { i16 24720, i16 81 }, %struct.validx { i16 24620, i16 82 }, %struct.validx { i16 24576, i16 83 }, %struct.validx { i16 24576, i16 84 }, %struct.validx { i16 24712, i16 85 }, %struct.validx { i16 24576, i16 87 }, %struct.validx { i16 24640, i16 90 }, %struct.validx { i16 24816, i16 91 }, %struct.validx { i16 24577, i16 92 }, %struct.validx { i16 24706, i16 211 }, %struct.validx { i16 24576, i16 142 }], [44 x i8] zeroinitializer }, align 32
@tbl_big3 = internal global { [39 x %struct.validx], [36 x i8] } { [39 x %struct.validx] [%struct.validx { i16 24580, i16 218 }, %struct.validx { i16 24576, i16 224 }, %struct.validx { i16 24679, i16 225 }, %struct.validx { i16 24831, i16 221 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24817, i16 221 }, %struct.validx { i16 24580, i16 224 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24576, i16 17 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24592, i16 199 }, %struct.validx { i16 24576, i16 146 }, %struct.validx { i16 24582, i16 147 }, %struct.validx { i16 24803, i16 147 }, %struct.validx { i16 24581, i16 147 }, %struct.validx { i16 24581, i16 147 }, %struct.validx { i16 24813, i16 195 }, %struct.validx { i16 24576, i16 164 }, %struct.validx { i16 24784, i16 135 }, %struct.validx { i16 24579, i16 150 }, %struct.validx { i16 24588, i16 151 }, %struct.validx { i16 24612, i16 151 }, %struct.validx { i16 24624, i16 151 }, %struct.validx { i16 24616, i16 151 }, %struct.validx { i16 24614, i16 151 }, %struct.validx { i16 24578, i16 151 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24643, i16 15 }, %struct.validx { i16 24719, i16 3 }, %struct.validx { i16 24576, i16 45 }, %struct.validx { i16 24576, i16 46 }, %struct.validx { i16 24586, i16 34 }, %struct.validx { i16 24578, i16 112 }, %struct.validx { i16 24584, i16 20 }, %struct.validx { i16 24648, i16 20 }, %struct.validx { i16 24576, i16 255 }, %struct.validx { i16 24576, i16 224 }, %struct.validx { i16 24831, i16 221 }], [36 x i8] zeroinitializer }, align 32
@dat_1280 = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\01\D1\18\D2\C0\D3\02\D4(\D5\01\00", [19 x i8] zeroinitializer }, align 32
@dat_1600 = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\01\D1 \D2\B0\D3\02\D40\D5A\00", [19 x i8] zeroinitializer }, align 32
@tbl_sensor_settings_common2 = internal global { [4 x %struct.validx], [16 x i8] } { [4 x %struct.validx] [%struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24632, i16 12 }, %struct.validx { i16 10, i16 -1 }, %struct.validx { i16 24576, i16 17 }], [16 x i8] zeroinitializer }, align 32
@c28 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"(", [31 x i8] zeroinitializer }, align 32
@ca8 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\A8", [31 x i8] zeroinitializer }, align 32
@c50 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"P", [31 x i8] zeroinitializer }, align 32
@tbl_post_unset_alt = internal global { [9 x %struct.validx], [60 x i8] } { [9 x %struct.validx] [%struct.validx { i16 106, i16 13 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24705, i16 38 }, %struct.validx { i16 24576, i16 0 }, %struct.validx { i16 24576, i16 69 }, %struct.validx { i16 24576, i16 16 }, %struct.validx { i16 24680, i16 13 }, %struct.validx { i16 50, i16 -1 }, %struct.validx { i16 33, i16 0 }], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"tbl_init_at_startup\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 26, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"dat_init1\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 10, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [4 x i8] c"c61\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 12, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"c51\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 13, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"tbl_common\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 35, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"tbl_sensor_settings_common1\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 82, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"dat_post\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 18, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"tbl_640\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 100, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"dat_640\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 21, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"tbl_800\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 114, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"dat_800\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 22, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"tbl_big1\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 126, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"tbl_big2\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 136, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"tbl_big3\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 143, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"dat_1280\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 23, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"dat_1600\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 24, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"tbl_sensor_settings_common2\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 94, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant [4 x i8] c"c28\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 15, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [4 x i8] c"ca8\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 16, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [4 x i8] c"c50\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 14, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"tbl_post_unset_alt\00", align 1
@___asan_gen_.62 = private constant [48 x i8] c"../drivers/media/usb/gspca/gl860/gl860-ov2640.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 156, i32 22 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @tbl_init_at_startup, ptr @dat_init1, ptr @c61, ptr @c51, ptr @tbl_common, ptr @tbl_sensor_settings_common1, ptr @dat_post, ptr @tbl_640, ptr @dat_640, ptr @tbl_800, ptr @dat_800, ptr @tbl_big1, ptr @tbl_big2, ptr @tbl_big3, ptr @dat_1280, ptr @dat_1600, ptr @tbl_sensor_settings_common2, ptr @c28, ptr @ca8, ptr @c50, ptr @tbl_post_unset_alt], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_at_startup to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_init1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c51 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_common to i32), i32 692, i32 864, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_sensor_settings_common1 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_640 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_640 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_800 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_800 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_big1 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_big2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_big3 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_1280 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_1600 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_sensor_settings_common2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c50 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_post_unset_alt to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ov2640_init_settings(ptr noundef writeonly %gspca_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vcur = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %vcur to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 32, ptr %vcur, align 8
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %brightness, align 2
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %sharpness to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 6, ptr %sharpness, align 4
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %contrast, align 2
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %gamma to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 32, ptr %gamma, align 8
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %hue to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %hue, align 2
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %saturation to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 128, ptr %saturation, align 4
  %whitebal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %whitebal to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 64, ptr %whitebal, align 2
  %mirror = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %mirror to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mirror, align 8
  %flip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %flip to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %flip, align 1
  %vmax = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %10 = ptrtoint ptr %vmax to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 64, ptr %vmax, align 8
  %brightness12 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %brightness12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 255, ptr %brightness12, align 2
  %sharpness14 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %sharpness14 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 31, ptr %sharpness14, align 4
  %contrast16 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %contrast16 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 255, ptr %contrast16, align 2
  %gamma18 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %gamma18 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 64, ptr %gamma18, align 8
  %hue20 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %hue20 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 256, ptr %hue20, align 2
  %saturation22 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %saturation22 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 255, ptr %saturation22, align 4
  %whitebal24 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %whitebal24 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 128, ptr %whitebal24, align 2
  %mirror26 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %mirror26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %mirror26, align 8
  %flip28 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %flip28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %flip28, align 1
  %AC50Hz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 10
  %20 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %AC50Hz, align 2
  %dev_camera_settings = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %21 = ptrtoint ptr %dev_camera_settings to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ov2640_camera_settings, ptr %dev_camera_settings, align 4
  %dev_init_at_startup = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %22 = ptrtoint ptr %dev_init_at_startup to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ov2640_init_at_startup, ptr %dev_init_at_startup, align 8
  %dev_configure_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %23 = ptrtoint ptr %dev_configure_alt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ov2640_configure_alt, ptr %dev_configure_alt, align 4
  %dev_init_pre_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %24 = ptrtoint ptr %dev_init_pre_alt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ov2640_init_pre_alt, ptr %dev_init_pre_alt, align 4
  %dev_post_unset_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %25 = ptrtoint ptr %dev_post_unset_alt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ov2640_post_unset_alt, ptr %dev_post_unset_alt, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_camera_settings(ptr noundef %gspca_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vcur = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %vcur to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vcur, align 8
  %conv = zext i16 %1 to i32
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %brightness, align 2
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %sharpness to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sharpness, align 4
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %gamma to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gamma, align 8
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %contrast to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %contrast, align 2
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %saturation to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %saturation, align 4
  %hue13 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %hue13 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hue13, align 2
  %whitebal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %whitebal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %whitebal, align 2
  %mirror18 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %mirror18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mirror18, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp ne i8 %17, 0
  %mirrorMask = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %mirrorMask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mirrorMask, align 1
  %20 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %20)
  %cmp22 = icmp eq i8 %19, %20
  %flip25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %21 = ptrtoint ptr %flip25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flip25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp27 = icmp ne i8 %22, 0
  %23 = zext i1 %cmp27 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %23)
  %cmp32 = icmp eq i8 %19, %23
  %vold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %24 = ptrtoint ptr %vold to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vold, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %25)
  %cmp36.not = icmp eq i16 %1, %25
  br i1 %cmp36.not, label %entry.if.end50_crit_edge, label %lor.lhs.false

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vmax = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %vmax to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vmax, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %27)
  %cmp42 = icmp ugt i16 %1, %27
  %spec.select = select i1 %cmp42, i32 0, i32 %conv
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %28 = trunc i32 %spec.select to i16
  %conv45 = add i16 %28, 24606
  %call46 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv45, i16 noundef zeroext 36, i32 noundef 0, ptr noundef null) #4
  %conv48 = add i16 %28, 24596
  %call49 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv48, i16 noundef zeroext 37, i32 noundef 0, ptr noundef null) #4
  br label %if.end50

if.end50:                                         ; preds = %lor.lhs.false, %entry.if.end50_crit_edge
  %backlight.1 = phi i32 [ %spec.select, %lor.lhs.false ], [ %conv, %entry.if.end50_crit_edge ]
  %brightness52 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %brightness52 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %brightness52, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %30)
  %cmp54.not = icmp eq i16 %3, %30
  br i1 %cmp54.not, label %if.end50.if.end75_crit_edge, label %if.then56

if.end50.if.end75_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %brightness52 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %3, ptr %brightness52, align 2
  %brightness64 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %brightness64 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %brightness64, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %33)
  %cmp66 = icmp ugt i16 %3, %33
  %call70 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call71 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24585, i16 noundef zeroext 124, i32 noundef 0, ptr noundef null) #4
  %.op = add i16 %3, 24576
  %add72 = select i1 %cmp66, i16 24576, i16 %.op
  %call74 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add72, i16 noundef zeroext 125, i32 noundef 0, ptr noundef null) #4
  br label %if.end75

if.end75:                                         ; preds = %if.then56, %if.end50.if.end75_crit_edge
  %whitebal77 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 7
  %34 = ptrtoint ptr %whitebal77 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %whitebal77, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %35)
  %cmp79.not = icmp eq i16 %15, %35
  br i1 %cmp79.not, label %if.end75.if.end100_crit_edge, label %if.then81

if.end75.if.end100_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %whitebal77 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %15, ptr %whitebal77, align 2
  %whitebal89 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 7
  %37 = ptrtoint ptr %whitebal89 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %whitebal89, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %38)
  %cmp91 = icmp ugt i16 %15, %38
  %call95 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call96 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24579, i16 noundef zeroext 124, i32 noundef 0, ptr noundef null) #4
  %.op409 = add i16 %15, 24576
  %add97 = select i1 %cmp91, i16 24576, i16 %.op409
  %call99 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add97, i16 noundef zeroext 125, i32 noundef 0, ptr noundef null) #4
  br label %if.end100

if.end100:                                        ; preds = %if.then81, %if.end75.if.end100_crit_edge
  %contrast102 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %contrast102 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %contrast102, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %40)
  %cmp104.not = icmp eq i16 %9, %40
  br i1 %cmp104.not, label %if.end100.if.end125_crit_edge, label %if.then106

if.end100.if.end125_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

if.then106:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %contrast102 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %9, ptr %contrast102, align 2
  %contrast114 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %contrast114 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %contrast114, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %43)
  %cmp116 = icmp ugt i16 %9, %43
  %call120 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call121 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24583, i16 noundef zeroext 124, i32 noundef 0, ptr noundef null) #4
  %.op410 = add i16 %9, 24576
  %add122 = select i1 %cmp116, i16 24576, i16 %.op410
  %call124 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add122, i16 noundef zeroext 125, i32 noundef 0, ptr noundef null) #4
  br label %if.end125

if.end125:                                        ; preds = %if.then106, %if.end100.if.end125_crit_edge
  %saturation127 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %saturation127 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %saturation127, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %45)
  %cmp129.not = icmp eq i16 %11, %45
  br i1 %cmp129.not, label %if.end125.if.end150_crit_edge, label %if.then131

if.end125.if.end150_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

if.then131:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %saturation127 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %11, ptr %saturation127, align 4
  %saturation139 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %saturation139 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %saturation139, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %48)
  %cmp141 = icmp ugt i16 %11, %48
  %call145 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call146 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 124, i32 noundef 0, ptr noundef null) #4
  %.op411 = add i16 %11, 24576
  %add147 = select i1 %cmp141, i16 24576, i16 %.op411
  %call149 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add147, i16 noundef zeroext 125, i32 noundef 0, ptr noundef null) #4
  br label %if.end150

if.end150:                                        ; preds = %if.then131, %if.end125.if.end150_crit_edge
  %sharpness152 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %sharpness152 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sharpness152, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %50)
  %cmp154.not = icmp eq i16 %5, %50
  br i1 %cmp154.not, label %if.end150.if.end175_crit_edge, label %if.then156

if.end150.if.end175_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end175

if.then156:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %sharpness152 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %5, ptr %sharpness152, align 4
  %sharpness164 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %sharpness164 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sharpness164, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %53)
  %cmp166 = icmp ugt i16 %5, %53
  %call170 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call171 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 146, i32 noundef 0, ptr noundef null) #4
  %.op412 = add i16 %5, 24768
  %add172 = select i1 %cmp166, i16 24768, i16 %.op412
  %call174 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add172, i16 noundef zeroext 147, i32 noundef 0, ptr noundef null) #4
  br label %if.end175

if.end175:                                        ; preds = %if.then156, %if.end150.if.end175_crit_edge
  %hue177 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 5
  %54 = ptrtoint ptr %hue177 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hue177, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %55)
  %cmp179.not = icmp eq i16 %13, %55
  br i1 %cmp179.not, label %if.end175.if.end207_crit_edge, label %if.then181

if.end175.if.end207_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end207

if.then181:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %hue177 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %13, ptr %hue177, align 2
  %hue189 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 5
  %57 = ptrtoint ptr %hue189 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hue189, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %58)
  %cmp191 = icmp ugt i16 %13, %58
  %narrow = select i1 %cmp191, i16 0, i16 %13
  %call195 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call196 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24578, i16 noundef zeroext 124, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %narrow)
  %cmp197 = icmp ult i16 %narrow, 255
  %59 = add i16 %narrow, 24576
  %conv200 = select i1 %cmp197, i16 %59, i16 24576
  %call201 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv200, i16 noundef zeroext 125, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %narrow)
  %cmp202 = icmp ugt i16 %narrow, 254
  %swapRB = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %. = zext i1 %cmp202 to i8
  %60 = ptrtoint ptr %swapRB to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %., ptr %swapRB, align 8
  br label %if.end207

if.end207:                                        ; preds = %if.then181, %if.end175.if.end207_crit_edge
  %gamma209 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 4
  %61 = ptrtoint ptr %gamma209 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %gamma209, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %62)
  %cmp211.not = icmp eq i16 %7, %62
  br i1 %cmp211.not, label %if.end207.if.end232_crit_edge, label %if.then213

if.end207.if.end232_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end232

if.then213:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %gamma209 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %7, ptr %gamma209, align 4
  %gamma221 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %gamma221 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %gamma221, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %65)
  %cmp223 = icmp ugt i16 %7, %65
  %call227 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call228 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24584, i16 noundef zeroext 124, i32 noundef 0, ptr noundef null) #4
  %.op413 = add i16 %7, 24576
  %add229 = select i1 %cmp223, i16 24576, i16 %.op413
  %call231 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add229, i16 noundef zeroext 125, i32 noundef 0, ptr noundef null) #4
  br label %if.end232

if.end232:                                        ; preds = %if.then213, %if.end207.if.end232_crit_edge
  %mirror234 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 8
  %66 = ptrtoint ptr %mirror234 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mirror234, align 4
  %68 = zext i1 %cmp22 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %68)
  %cmp236.not = icmp eq i8 %67, %68
  br i1 %cmp236.not, label %lor.lhs.false238, label %if.end232.if.then244_crit_edge

if.end232.if.then244_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = zext i1 %cmp32 to i8
  br label %if.then244

lor.lhs.false238:                                 ; preds = %if.end232
  %flip240 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 9
  %69 = ptrtoint ptr %flip240 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %flip240, align 1
  %71 = zext i1 %cmp32 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %71)
  %cmp242.not = icmp eq i8 %70, %71
  br i1 %cmp242.not, label %lor.lhs.false238.if.end267_crit_edge, label %lor.lhs.false238.if.then244_crit_edge

lor.lhs.false238.if.then244_crit_edge:            ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then244

lor.lhs.false238.if.end267_crit_edge:             ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end267

if.then244:                                       ; preds = %lor.lhs.false238.if.then244_crit_edge, %if.end232.if.then244_crit_edge
  %conv248.pre-phi = phi i8 [ %.pre, %if.end232.if.then244_crit_edge ], [ %71, %lor.lhs.false238.if.then244_crit_edge ]
  %72 = ptrtoint ptr %mirror234 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %68, ptr %mirror234, align 4
  %flip250 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 9
  %73 = ptrtoint ptr %flip250 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv248.pre-phi, ptr %flip250, align 1
  %mul251 = select i1 %cmp22, i32 128, i32 0
  %call252 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call253 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext -32764, i32 noundef 0, ptr noundef null) #4
  %call254 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32764, i32 noundef 1, ptr noundef nonnull @c28) #4
  %74 = trunc i32 %mul251 to i16
  %conv256 = or i16 %74, 24616
  %call257 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv256, i16 noundef zeroext 4, i32 noundef 0, ptr noundef null) #4
  %mul258 = select i1 %cmp32, i32 80, i32 0
  %add259 = or i32 %mul258, %mul251
  %call260 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call261 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24576, i16 noundef zeroext -32764, i32 noundef 0, ptr noundef null) #4
  %call262 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32764, i32 noundef 1, ptr noundef nonnull @ca8) #4
  %75 = trunc i32 %add259 to i16
  %conv264 = or i16 %75, 24616
  %call265 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv264, i16 noundef zeroext 4, i32 noundef 0, ptr noundef null) #4
  %call266 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull @c50) #4
  br label %if.end267

if.end267:                                        ; preds = %if.then244, %lor.lhs.false238.if.end267_crit_edge
  %76 = ptrtoint ptr %vold to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vold, align 4
  %conv270 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %backlight.1, i32 %conv270)
  %cmp271.not = icmp eq i32 %backlight.1, %conv270
  br i1 %cmp271.not, label %if.end267.if.end285_crit_edge, label %if.then273

if.end267.if.end285_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end285

if.then273:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #6
  %conv274 = trunc i32 %backlight.1 to i16
  %78 = ptrtoint ptr %vold to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv274, ptr %vold, align 4
  %call277 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %conv279 = add i16 %conv274, 24606
  %call280 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv279, i16 noundef zeroext 36, i32 noundef 0, ptr noundef null) #4
  %conv283 = add i16 %conv274, 24596
  %call284 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv283, i16 noundef zeroext 37, i32 noundef 0, ptr noundef null) #4
  br label %if.end285

if.end285:                                        ; preds = %if.then273, %if.end267.if.end285_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_init_at_startup(ptr noundef %gspca_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_at_startup, i32 noundef 21) #4
  %call1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull @dat_init1) #4
  %call.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common, i32 noundef 173) #4
  %call2 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 0, i16 noundef zeroext 6, i32 noundef 1, ptr noundef nonnull @c61) #4
  %call3 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 239, i16 noundef zeroext 6, i32 noundef 0, ptr noundef null) #4
  %call4 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull @c51) #4
  %call5 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 81, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2640_configure_alt(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %conv, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.shiftamt = shl i32 %5, 3
  %switch.downshift = lshr i32 33686020, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %alt2 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %7 = ptrtoint ptr %alt2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %switch.masked, ptr %alt2, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_init_pre_alt(ptr noundef %gspca_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mirrorMask = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %mirrorMask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mirrorMask, align 1
  %vold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %cam.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %1 = call ptr @memset(ptr %vold, i32 255, i32 18)
  %2 = ptrtoint ptr %cam.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cam.i, align 4
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_mode.i, align 1
  %conv.i = zext i8 %5 to i32
  %priv.i = getelementptr %struct.v4l2_pix_format, ptr %3, i32 %conv.i, i32 7
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priv.i, align 4
  %call.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #4
  %call1.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_sensor_settings_common1, i32 noundef 20) #4
  %call2.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull @dat_post) #4
  %call.i.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common, i32 noundef 173) #4
  %call3.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_sensor_settings_common1, i32 noundef 20, i32 noundef %call1.i) #4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.ov2640_init_post_alt.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 3, label %entry.sw.bb9.i_crit_edge
    i32 2, label %entry.sw.bb9.i_crit_edge21
  ]

entry.sw.bb9.i_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb9.i

entry.sw.bb9.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb9.i

entry.ov2640_init_post_alt.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ov2640_init_post_alt.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_640, i32 noundef 42) #4
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_800, i32 noundef 36) #4
  br label %sw.epilog.sink.split.i

sw.bb9.i:                                         ; preds = %entry.sw.bb9.i_crit_edge, %entry.sw.bb9.i_crit_edge21
  %call10.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_big1, i32 noundef 27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_big2, i32 noundef 13) #4
  %call16.c1.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_big3, i32 noundef 39) #4
  %call20.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  br label %sw.epilog.sink.split.i

if.else.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #6
  %call13.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24605, i16 noundef zeroext 134, i32 noundef 0, ptr noundef null) #4
  %call14.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 215, i32 noundef 0, ptr noundef null) #4
  %call15.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24706, i16 noundef zeroext 211, i32 noundef 0, ptr noundef null) #4
  %call16.c.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_big3, i32 noundef 39) #4
  %call23.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24608, i16 noundef zeroext 140, i32 noundef 0, ptr noundef null) #4
  %call24.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24577, i16 noundef zeroext 255, i32 noundef 0, ptr noundef null) #4
  %call25.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 24694, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.else.i, %if.then.i, %sw.bb6.i, %sw.bb.i
  %dat_1280.sink.i = phi ptr [ @dat_1280, %if.then.i ], [ @dat_1600, %if.else.i ], [ @dat_800, %sw.bb6.i ], [ @dat_640, %sw.bb.i ]
  %call21.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull %dat_1280.sink.i) #4
  br label %ov2640_init_post_alt.exit

ov2640_init_post_alt.exit:                        ; preds = %sw.epilog.sink.split.i, %entry.ov2640_init_post_alt.exit_crit_edge
  %call28.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_sensor_settings_common2, i32 noundef 4) #4
  %call29.i = tail call i32 @ov2640_camera_settings(ptr noundef %gspca_dev) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ov2640_post_unset_alt(ptr noundef %gspca_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #4
  tail call void @msleep(i32 noundef 20) #4
  %call1 = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_post_unset_alt, i32 noundef 9) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fetch_validx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gl860_RTx(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keep_on_fetching_validx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @tbl_init_at_startup, !1, !"tbl_init_at_startup", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 26, i32 22}
!2 = !{ptr @dat_init1, !3, !"dat_init1", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 10, i32 11}
!4 = !{ptr @tbl_common, !5, !"tbl_common", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 35, i32 22}
!6 = !{ptr @c61, !7, !"c61", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 12, i32 11}
!8 = !{ptr @c51, !9, !"c51", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 13, i32 11}
!10 = !{ptr @tbl_sensor_settings_common1, !11, !"tbl_sensor_settings_common1", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 82, i32 22}
!12 = !{ptr @dat_post, !13, !"dat_post", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 18, i32 11}
!14 = !{ptr @tbl_640, !15, !"tbl_640", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 100, i32 22}
!16 = !{ptr @dat_640, !17, !"dat_640", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 21, i32 11}
!18 = !{ptr @tbl_800, !19, !"tbl_800", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 114, i32 22}
!20 = !{ptr @dat_800, !21, !"dat_800", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 22, i32 11}
!22 = !{ptr @tbl_big1, !23, !"tbl_big1", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 126, i32 22}
!24 = !{ptr @tbl_big2, !25, !"tbl_big2", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 136, i32 22}
!26 = !{ptr @tbl_big3, !27, !"tbl_big3", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 143, i32 22}
!28 = !{ptr @dat_1280, !29, !"dat_1280", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 23, i32 11}
!30 = !{ptr @dat_1600, !31, !"dat_1600", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 24, i32 11}
!32 = !{ptr @tbl_sensor_settings_common2, !33, !"tbl_sensor_settings_common2", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 94, i32 22}
!34 = !{ptr @c28, !35, !"c28", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 15, i32 11}
!36 = !{ptr @ca8, !37, !"ca8", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 16, i32 11}
!38 = !{ptr @c50, !39, !"c50", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 14, i32 11}
!40 = !{ptr @tbl_post_unset_alt, !41, !"tbl_post_unset_alt", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov2640.c", i32 156, i32 22}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
